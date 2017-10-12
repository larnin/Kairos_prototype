using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Gamemanager : MonoBehaviour
{
    [HideInInspector]
    public bool itemShowed = false;
    [HideInInspector]
    public bool inventoryShowed = false;
    [HideInInspector]
    public bool eyeEnabled = false;

    void Awake()
    {
        G.Sys.gamemanager = this;
    }

    public bool playerCanMove()
    {
        return !(eyeEnabled || inventoryShowed || itemShowed);
    }
}
