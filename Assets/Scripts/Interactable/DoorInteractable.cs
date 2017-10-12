using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

class DoorInteractable : AInteractable
{
    Animator _animator;

    void Start()
    {
        _animator = GetComponent<Animator>();
    }

    public override void interact()
    {
        _animator.SetBool("Open", !_animator.GetBool("Open"));
    }
}
