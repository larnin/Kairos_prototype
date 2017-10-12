using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

public sealed class G
{
    private static volatile G _instance;
    private Player _player;
    private Inventory _inventory = new Inventory();
    private bool _paused = false;
    private Gamemanager _gamemanager;
    private Gadgetsmanager _gadgetmanager;
    private Camera _uiCamera;

    public static G Sys
    {
        get
        {
            if (G._instance == null)
                G._instance = new G();
            return G._instance;
        }
    }

    public Player player
    {
        get { return _player; }
        set
        {
            if (_player != null)
                Debug.Log("2 Players instanciated !");
            _player = value;
        }
    }

    public Inventory inventory
    { get { return _inventory; } }

    public bool paused
    {
        get { return _paused; }
        set { _paused = value; }
    }

    public Gamemanager gamemanager
    {
        get { return _gamemanager; }
        set
        {
            if (_gamemanager != null)
                Debug.Log("2 Gamemanager instanciated !");
            _gamemanager = value;
        }
    }

    public Gadgetsmanager gadgetmanager
    {
        get { return _gadgetmanager; }
        set
        {
            if (_gadgetmanager != null)
                Debug.Log("2 Gadgetmanager instanciated !");
            _gadgetmanager = value;
        }
    }

    public Camera UICamera
    {
        get { return _uiCamera; }
        set
        {
            if (_uiCamera != null)
                Debug.Log("2 UI Camera instanciated !");
            _uiCamera = value;
        }
    }
}
