using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Player : MonoBehaviour
{
    public float rotationSensibility;
    public float moveSpeed;
    public float groundDetectionDistance = 0.1f;
    public float jumpForce = 2.0f;
    public float jumpDelay = 0.7f;

    Rigidbody _rigidbody;
    CapsuleCollider _collider;
    bool _grounded = false;
    Animator _animator;
    Transform _perso;
    bool _onTransition = false;
    SubscriberList _subscriberList = new SubscriberList();

    bool _jumping = false;
    float _timeAfterJump = 0;

    void Awake()
    {
        G.Sys.player = this;
        _subscriberList.Add(new Event<StartEyeTransitionEvent>.Subscriber(onStartEyeTransition));
        _subscriberList.Add(new Event<EyeTransitionEndedEvent>.Subscriber(onEyeTransitionEnd));
        _subscriberList.Subscribe();
    }

    void OnDestroy()
    {
        _subscriberList.Unsubscribe();
    }

	void Start()
    {
        _rigidbody = GetComponent<Rigidbody>();
        _collider = GetComponent<CapsuleCollider>();
        _perso = transform.Find("SM_Perso");
        if(_perso != null)
            _animator = _perso.GetComponent<Animator>();
	}
	
	void Update()
    {
        _timeAfterJump += Time.deltaTime;
        if (_onTransition)
            return;
        if(G.Sys.gamemanager.eyeEnabled)
        {
            transform.Rotate(0, Input.GetAxis("Yaw") * rotationSensibility / 1000, 0);
            return;
        }
        if (!G.Sys.gamemanager.playerCanMove())
            return;
        if (G.Sys.paused)
            return;


        if (!G.Sys.gamemanager.inventoryShowed && !G.Sys.gamemanager.itemShowed)
            transform.Rotate(0, Input.GetAxis("Yaw") * rotationSensibility / 1000, 0);

        var dir = new Vector3(Input.GetAxis("Horizontal"), 0, Input.GetAxis("Vertical"));
        dir = transform.rotation * dir * moveSpeed;
        /*if (_jumping)
            dir = new Vector3();*/

        _rigidbody.velocity = new Vector3(dir.x, _rigidbody.velocity.y, dir.z);

        _grounded = false;
        foreach(var o in Physics.SphereCastAll(transform.position + _collider.center, _collider.radius - 0.01f, -transform.up, (_collider.height - 2*_collider.radius) / 2 + groundDetectionDistance))
        {
            if (o.collider.gameObject == gameObject)
                continue;
            _grounded = true;
        }

        if (_grounded && !_jumping && _timeAfterJump > 0.2f)
            _animator.SetBool("Jumping", false);
        if (_grounded && Input.GetButtonDown("Jump") && !_jumping)
        {
            _animator.SetBool("Jumping", true);
            StartCoroutine(jumping());
        }

        var horisontalMove = new Vector2(_rigidbody.velocity.x, _rigidbody.velocity.z);
        _animator.SetBool("Walking", horisontalMove.magnitude > 0.2f);
        _animator.SetFloat("Running", horisontalMove.magnitude / 5);
        _perso.transform.LookAt(_perso.transform.position + new Vector3(horisontalMove.x, 0, horisontalMove.y));
    }

    void onStartEyeTransition(StartEyeTransitionEvent e)
    {
        _animator.SetBool("Walking", false);
        _onTransition = true;
    }

    void onEyeTransitionEnd(EyeTransitionEndedEvent e)
    {
        _onTransition = false;
    }

    IEnumerator jumping()
    {
        _jumping = true;
        float time = 0;
        while(time < jumpDelay)
        {
            time += Time.deltaTime;
            yield return new WaitForFixedUpdate();
        }
        _jumping = false;

        _rigidbody.velocity += new Vector3(0, jumpForce, 0);
        _timeAfterJump = 0;
    }
}
