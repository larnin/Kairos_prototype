using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraSwitcherByTrigger : MonoBehaviour {

    [SerializeField]
    private Camera cameraToSwitch;
    [SerializeField]
    private float scaleMultiplier = 1.1f;
    [SerializeField]
    private float delayToReturn = 1.0f;
    private Camera cameraPlayer;

    private Vector3 normalScale;

    private void Start()
    {
        normalScale = transform.localScale;
    }


    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player" && G.sys.lastCameraUsed == null)
        {
            if(cameraPlayer == null)
            { 
                cameraPlayer = Camera.main;
            }

            G.sys.SetActiveCamera(cameraToSwitch);
            other.GetComponent<UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl>().SetCamera(cameraToSwitch.transform);
            transform.localScale = transform.localScale * scaleMultiplier;
            Invoke("scaleReturnToNormal", delayToReturn);
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
                other.GetComponent<UnityStandardAssets.Characters.ThirdPerson.ThirdPersonUserControl>().SetCamera(cameraPlayer.transform);
                G.sys.SetActiveCamera(cameraPlayer);
                G.sys.lastCameraUsed = null;
            }
        }
    }

    private void scaleReturnToNormal()
    {
        transform.localScale = normalScale;
    }

}
