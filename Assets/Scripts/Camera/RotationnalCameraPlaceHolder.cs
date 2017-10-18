using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotationnalCameraPlaceHolder : MonoBehaviour {

    public Transform CameraUsed;
    public Transform PivotUsed;
    public Transform Player;

    const string YAxisCameraInputName = "CameraVertical";
    const string XAxisCameraInputName = "CameraHorizontal";
    
    void Awake()
    {
        G.sys.SetActiveCamera(Camera.main);
    }

    // Update is called once per frame
    void Update () {
        CameraUsed.LookAt(PivotUsed);

        float MoveUpDown = Input.GetAxis(YAxisCameraInputName);
        float MoveLeftRight = Input.GetAxis(XAxisCameraInputName);


        if (MoveUpDown != 0)
        {
            CameraUsed.RotateAround(Player.position, -PivotUsed.right, MoveUpDown * 10.0f * Time.deltaTime);
            PivotUsed.RotateAround(Player.position, -PivotUsed.right, MoveUpDown * 10.0f * Time.deltaTime);
        }

        if(MoveLeftRight != 0)
        {
            Player.RotateAround(Player.position, Vector3.up, MoveLeftRight * 50.0f * Time.deltaTime);
           // CameraUsed.RotateAround(Player.position, PivotUsed.up, MoveLeftRight * 10.0f * Time.deltaTime);
           // PivotUsed.RotateAround(Player.position, PivotUsed.up, MoveLeftRight * 10.0f * Time.deltaTime);
        }
    }
}
