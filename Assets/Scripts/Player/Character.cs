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

    Rigidbody m_rigidbody;
    CapsuleCollider m_capsuleCollider;
    Animator m_animator;

    bool m_moving = false;
    bool m_grounded = true;
    Vector3 m_groundNormal = Vector3.up;
    Vector3 m_movingCommand = Vector3.zero;
    Vector3 m_movingSpeed = Vector3.zero;
    float m_turnAmount = 0;
    float m_forwardAmount = 0;

    void Awake ()
    {
        m_rigidbody = GetComponent<Rigidbody>();
        m_capsuleCollider = GetComponent<CapsuleCollider>();
        m_animator = GetComponent<Animator>();

        m_rigidbody.constraints = RigidbodyConstraints.FreezeRotationX | RigidbodyConstraints.FreezeRotationY | RigidbodyConstraints.FreezeRotationZ;
    }

    public void move(Vector2 move)
    {/*
        move = transform.InverseTransformDirection(move);
        checkGroundStatus();
        move = Vector3.ProjectOnPlane(move, m_groundNormal);
        m_turnAmount = Mathf.Atan2(move.x, move.y);
        m_forwardAmount = move.y;

        applyExtraTurnRotation();
        
        if (m_grounded)
        {
            HandleGroundedMovement(crouch, jump);
        }
        else
        {
            HandleAirborneMovement();
        }

        ScaleCapsuleForCrouching(crouch);
        PreventStandingInLowHeadroom();

        // send input and other state parameters to the animator
        UpdateAnimator(move);*/
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
        /*// help the character turn faster (this is in addition to root rotation in the animation)
        float turnSpeed = Mathf.Lerp(m_StationaryTurnSpeed, m_MovingTurnSpeed, m_ForwardAmount);
        transform.Rotate(0, m_TurnAmount * turnSpeed * Time.deltaTime, 0);*/
    }

}
