using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HiddenObjectManager : MonoBehaviour {

    public GameObject hiddenObjectGameToPlay;
    private bool gameOn;

    public void play()
    {
        hiddenObjectGameToPlay.GetComponent<ExamineObjectHidden>().StartMiniGame();
        gameOn = true;
    }

    public void exit()
    {
        hiddenObjectGameToPlay.GetComponent<ExamineObjectHidden>().StopMiniGame();
        gameOn = false;
    }

    public void Update()
    {
        if(Input.GetButtonDown("Cancel") && !hiddenObjectGameToPlay.activeInHierarchy && gameOn)
        {
            exit();
        }
    }
}
