using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SwitchToHiddenObject : MonoBehaviour
{
    [SerializeField]
    private GameObject MiniGameTriggered;
    [SerializeField]
    private GameObject AcceptButton;

    private GameObject Player;

    private const string m_CursorClickInputName = "CursorClickButton";

    private void OnEnable()
    {
        if(Player)
            Player.SetActive(true);
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
        if (Input.GetButtonDown(m_CursorClickInputName) && Player)
        {
            transform.parent.GetComponent<HiddenObjectManager>().play();
            Player.SetActive(false);
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
}
