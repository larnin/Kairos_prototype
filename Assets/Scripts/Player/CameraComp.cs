using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraComp : MonoBehaviour
{
    public float minVerticalRotation = -70;
    public float maxVerticalRotation = 85;
    public Vector3 offset = new Vector3(1, 1, 5);
    public float transitionTime = 1.5f;

    float _verticalRot = 0;

    SubscriberList _subscriberList = new SubscriberList();
    Vector3 _targetPos;
    Vector3 _lookAt;
    bool onTransition = false;

    void Awake()
    {
        G.Sys.UICamera = transform.Find("UICamera").GetComponent<Camera>();
        _subscriberList.Add(new Event<StartEyeTransitionEvent>.Subscriber(onStartEyeTransition));
        _subscriberList.Subscribe();
    }

    void OnDestroy()
    {
        _subscriberList.Unsubscribe();
    }

    void LateUpdate()
    {
        transform.position = _targetPos;
        transform.LookAt(_lookAt);
        if (onTransition)
            return;

        if (!G.Sys.gamemanager.inventoryShowed && !G.Sys.gamemanager.itemShowed)
        {
            _verticalRot += Input.GetAxis("Pitch") * G.Sys.player.rotationSensibility / 1000;
            _verticalRot = Mathf.Clamp(_verticalRot, minVerticalRotation, maxVerticalRotation);
        }
        if (G.Sys.gamemanager.eyeEnabled)
        {
            transform.rotation = G.Sys.player.transform.rotation * Quaternion.Euler(_verticalRot, 0, 0);
            return;
        }
        if (!G.Sys.gamemanager.playerCanMove())
            return;

        float dist = cameraDist();
        _targetPos = calculatePosition(dist);
        _lookAt = calculateLookPosition(dist);
        transform.position = _targetPos;
        transform.LookAt(_lookAt);
    }

    float cameraDist()
    {
        var pos = G.Sys.player.transform.position + G.Sys.player.transform.right.normalized * offset.x + G.Sys.player.transform.up.normalized * offset.y;
        var cameraOffset = G.Sys.player.transform.rotation * Quaternion.Euler(_verticalRot, 0, 0) * new Vector3(0, 0, -offset.z);
        var cameraTargetPos = pos + cameraOffset;
        var originalPos = G.Sys.player.transform.position + G.Sys.player.transform.up.normalized * offset.y;

        float maxDist = offset.z;
        foreach (var o in Physics.SphereCastAll(originalPos - 0.4f * (cameraTargetPos - originalPos).normalized, 0.4f, (cameraTargetPos - originalPos).normalized, maxDist))
        {
            if (o.collider.gameObject == G.Sys.player.gameObject)
                continue;
            float dist = (o.point - pos).magnitude;
            if (dist < maxDist)
                maxDist = dist;
        }

        return maxDist / offset.z;
    }

    Vector3 calculatePosition(float dist)
    {
        var pos = calculateLookPosition(dist);
        var cameraOffset = G.Sys.player.transform.rotation * Quaternion.Euler(_verticalRot, 0, 0) * new Vector3(0, 0, -offset.z);
        return pos + cameraOffset * dist;
    }

    Vector3 calculateLookPosition(float dist)
    {
        return G.Sys.player.transform.position + G.Sys.player.transform.right.normalized * offset.x * dist + G.Sys.player.transform.up.normalized * offset.y;
    }

    void onStartEyeTransition(StartEyeTransitionEvent e)
    {
        StartCoroutine(TransitionCoroutine(e.side));
    }

    IEnumerator TransitionCoroutine(bool side)
    {
        onTransition = true;
        float currentTime = 0f;
        Vector3 startPos = transform.position;
        Vector3 endPos = side ? G.Sys.player.transform.position + G.Sys.player.transform.up.normalized * offset.y : calculatePosition(cameraDist());
        Vector3 lookDir = transform.forward;

        while(currentTime < transitionTime)
        {
            currentTime += Time.deltaTime;
            float l = Mathf.Min(currentTime / transitionTime, 1);
            
            _targetPos = endPos * l + startPos * (1 - l);
            _lookAt = _targetPos + lookDir;

            yield return new WaitForFixedUpdate();
        }
        _targetPos = endPos;
        _lookAt = _targetPos + lookDir;

        onTransition = false;
        Event<EyeTransitionEndedEvent>.Broadcast(new EyeTransitionEndedEvent());
    }
}
