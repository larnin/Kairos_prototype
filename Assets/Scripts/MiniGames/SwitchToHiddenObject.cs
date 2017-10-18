using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class SwitchToHiddenObject : MonoBehaviour
{
    [SerializeField]
    private GameObject MiniGameTriggered;
    [SerializeField]
    private GameObject AcceptButton;

    private GameObject Player;

    private Vector3 OldCameraPosition;
    private Vector3 OldCameraRotation;

    private const string m_CursorClickInputName = "CursorClickButton";

    private bool gameHasStart = false;

    private void OnEnable()
    {
        if(Player)
            Player.SetActive(true);
        
        if (gameHasStart)
        {
            G.sys.lastCameraUsed.transform.transform.DOMove(OldCameraPosition, 1.0f).SetUpdate(true);
            G.sys.lastCameraUsed.transform.DORotate(OldCameraRotation, 1.0f).SetUpdate(true); //.OnComplete(transitionEnterGameEnd);
            gameHasStart = false;
        }

    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            AcceptButton.SetActive(true);
            AcceptButton.transform.GetComponentInChildren<UnityEngine.UI.Text>().text = "Fouiller le tiroir";
            Player = other.gameObject;
        }
    }

    private void Update()
    {
        if (Input.GetButtonDown(m_CursorClickInputName) && Player && !gameHasStart)
        {
            Time.timeScale = 0.0f;
            Transform CameraToGo = transform.parent.GetComponent<HiddenObjectManager>().hiddenObjectGameToPlay.transform.parent;

            OldCameraPosition = G.sys.currentCamera.transform.position;
            OldCameraRotation = G.sys.currentCamera.transform.rotation.eulerAngles;

            G.sys.currentCamera.transform.transform.DOMove(CameraToGo.position, 1.0f).SetUpdate(true);
            G.sys.currentCamera.transform.DORotate(CameraToGo.rotation.eulerAngles, 1.0f).SetUpdate(true).OnComplete(transitionEnterGameEnd);
            gameObject.SetActive(false);
        }
    }

    private void OnTriggerExit(Collider other)
    {
        if (other.gameObject.tag == "Player")
        {
            AcceptButton.SetActive(false);
            Player = null;
        }
    }

    public void transitionEnterGameEnd()
    {
        transform.parent.GetComponent<HiddenObjectManager>().play();
        Player.SetActive(false);
        Time.timeScale = 1.0f;
        gameHasStart = true;
    }

}

