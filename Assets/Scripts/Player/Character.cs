using System.Collections;
using System.Collections.Generic;
using UnityEngine;

    [RequireComponent(typeof(Rigidbody))]
    [RequireComponent(typeof(CapsuleCollider))]
    [RequireComponent(typeof(Animator))]
public class Character : MonoBehaviour
{
    [SerializeField] float m_moveSpeed = 1f;
    [SerializeField] float m_movingTurnSpeed = 360f;
    [SerializeField] float m_stationaryTurnSpeed = 180f;
    [SerializeField] float m_groundCheckDistance = 0.2f;
    [SerializeField] float m_gravityMultiplier = 1f;
    [SerializeField] float m_animSpeedMultiplier = 1f;

    Rigidbody m_rigidbody;
    Animator m_animator;

    bool m_moving = false;
    bool m_grounded = true;
    Vector3 m_groundNormal = Vector3.up;
    float m_turnAmount = 0;
    float m_forwardAmount = 0;

    void Awake ()
    {
        m_rigidbody = GetComponent<Rigidbody>();
        m_animator = GetComponent<Animator>();

        m_rigidbody.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY | RigidbodyConstraints.FreezeRotationZ;
    }

    public void move(Vector3 move)
    {
        move = transform.InverseTransformDirection(move);
        checkGroundStatus();
        move = Vector3.ProjectOnPlane(move, m_groundNormal);
        m_turnAmount = Mathf.Atan2(move.x, move.z);
        m_forwardAmount = move.z;

        applyExtraTurnRotation();
        
        if (!m_grounded)
            handleAirborneMovement();

        updateAnimator(move);
    }

    public bool moving { get { return m_moving; } }

    public bool grounded { get { return m_grounded; } }

    void checkGroundStatus()
    {
        RaycastHit hitInfo;

        if (Physics.Raycast(transform.position + (Vector3.up * 0.1f), Vector3.down, out hitInfo, m_groundCheckDistance))
        {
            m_groundNormal = hitInfo.normal;
            m_grounded = true;
            m_animator.applyRootMotion = true;
        }
        else
        {
            m_grounded = false;
            m_groundNormal = Vector3.up;
            m_animator.applyRootMotion = false;
        }
    }

    void applyExtraTurnRotation()
    {
        float turnSpeed = Mathf.Lerp(m_stationaryTurnSpeed, m_movingTurnSpeed, m_forwardAmount);
        transform.Rotate(0, m_turnAmount * turnSpeed * Time.deltaTime, 0);
    }
    
    void handleAirborneMovement()
    {
        Vector3 extraGravityForce = (Physics.gravity * m_gravityMultiplier) - Physics.gravity;
        m_rigidbody.AddForce(extraGravityForce);
    }

    void updateAnimator(Vector3 move)
    {
        m_animator.SetFloat("Forward", m_forwardAmount, 0.1f, Time.deltaTime);
        m_animator.SetFloat("Turn", m_turnAmount, 0.1f, Time.deltaTime);
        m_animator.SetBool("OnGround", m_grounded);
        if (!m_grounded)
        {
            m_animator.SetFloat("Jump", m_rigidbody.velocity.y);
        }
    
        if (m_grounded && move.magnitude > 0)
            m_animator.speed = m_animSpeedMultiplier;
        else
            m_animator.speed = 1;
    }

    public void OnAnimatorMove()
    {
        if (m_grounded && Time.deltaTime > 0)
        {
            Vector3 v = (m_animator.deltaPosition * m_moveSpeed) / Time.deltaTime;
            v.y = m_rigidbody.velocity.y;
            m_rigidbody.velocity = v;
        }
    }
}
