using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class FollowCamera : MonoBehaviour
{
    public enum UpdateType
    {
        UPDATE,
        LATE_UPDATE,
        FIXED_UPDATE,
    }

    [SerializeField] float m_acceleration = 1f;
    [SerializeField] float m_maxSpeed = 1f;
    [SerializeField] UpdateType m_updateType = UpdateType.UPDATE;
    [SerializeField] Transform m_target = null;

    float m_speed = 0f;

    private void Awake()
    {
        
    }

    private void Update ()
    {
        if (Time.deltaTime > 0 && m_updateType == UpdateType.UPDATE)
            onUpdate();
	}

    private void FixedUpdate()
    {
        if (Time.deltaTime > 0 && m_updateType == UpdateType.FIXED_UPDATE)
            onUpdate();
    }

    private void LateUpdate()
    {
        if (Time.deltaTime > 0 && m_updateType == UpdateType.LATE_UPDATE)
            onUpdate();
    }

    void onUpdate()
    {
        Vector3 pos = transform.position;
        Vector3 targetPos = m_target.position;
        float acceleration = m_acceleration * Time.deltaTime;
        float maxSpeed = getMaxSpeedFromOffset((pos - targetPos).magnitude);
        if (m_speed > maxSpeed)
            m_speed = Mathf.Max(m_speed - acceleration, maxSpeed);
        else if (m_speed < maxSpeed)
            m_speed = Mathf.Min(m_speed + acceleration, maxSpeed);

        var speedDir = (targetPos - pos).normalized * m_speed;
        if (speedDir.sqrMagnitude > (targetPos - pos).sqrMagnitude)
            speedDir = targetPos - pos;
        transform.LookAt(m_target);

        transform.position += speedDir;
    }

    float getMaxSpeedFromOffset(float offset)
    {
        return offset * m_maxSpeed;
    }
}
