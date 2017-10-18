using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraSwitcherByTrigger : MonoBehaviour {

    [SerializeField]
    private Camera cameraToSwitchWhenEntered;
    [SerializeField]
    private Camera cameraToSwitchWhenExited;
    [SerializeField]
    private float scaleMultiplier = 1.3f;
    [SerializeField]
    private float delayToReturn = 1.0f;

    const float halfTransitionDelay = 0.4f;

    private Camera cameraPlayer;

    private Vector3 normalScale;

    private bool isNotEntered = true;

    private void Start()
    {
        normalScale = transform.localScale;
    }
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" && isNotEntered)
        {
            if(cameraPlayer == null)
            { 
                cameraPlayer = Camera.main;
            }

            isNotEntered = false;
            StartCoroutine(transitionCoroutine(other, true));
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            float positionZ = transform.InverseTransformPoint(other.transform.position).z;

            // the character exit the "door" from the inside of the house. 
            if(positionZ > 0f)
            {
                isNotEntered = true;
                StartCoroutine(transitionCoroutine(other, false));
            }
        }
    }

    private void scaleReturnToNormal()
    {
        transform.localScale = normalScale;
    }

    IEnumerator transitionCoroutine(Collider other, bool isIn)
    {
        Time.timeScale = 0.0f;

        UnityEngine.UI.Image FadeTransition = GameObject.FindWithTag("FadeTransition").GetComponent<UnityEngine.UI.Image>();
        float timeElapsed = 0f;
        
        while(timeElapsed < halfTransitionDelay)
        {
            timeElapsed += Time.unscaledDeltaTime;
            float value = timeElapsed / halfTransitionDelay;
            Color color = FadeTransition.color;
            color.a = value;
            FadeTransition.color = color;
            yield return null;
        }

        if (isIn)
        {
            G.sys.SetActiveCamera(cameraToSwitchWhenEntered);
            other.GetComponent<UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl>().SetCamera(cameraToSwitchWhenEntered.transform);
            transform.localScale = transform.localScale * scaleMultiplier;
            Invoke("scaleReturnToNormal", delayToReturn);
        }
        else
        {
            if (cameraToSwitchWhenExited)
            { 
                other.GetComponent<UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl>().SetCamera(cameraToSwitchWhenExited.transform);
                G.sys.SetActiveCamera(cameraToSwitchWhenExited);
            }
            else
            {
                other.GetComponent<UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl>().SetCamera(cameraPlayer.transform);
                G.sys.SetActiveCamera(cameraPlayer);
                G.sys.lastCameraUsed = null;
            }
            
            transform.localScale = transform.localScale / scaleMultiplier;
            Invoke("scaleReturnToNormal", delayToReturn);
        }
        
        yield return null;
        timeElapsed = 0.0f;

        while (timeElapsed < halfTransitionDelay)
        {
            timeElapsed += Time.unscaledDeltaTime;
            float value = 1.0f - timeElapsed / halfTransitionDelay;
            Color color = FadeTransition.color;
            color.a = value;
            FadeTransition.color = color;
            yield return null;
        }

        Time.timeScale = 1.0f;
    }
}
