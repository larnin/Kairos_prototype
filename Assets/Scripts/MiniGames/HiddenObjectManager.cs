using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HiddenObjectManager : MonoBehaviour {

    public GameObject HiddenObjectGameToPlay;

    public void play()
    {
        HiddenObjectGameToPlay.GetComponent<ExamineObjectHidden>().StartMiniGame();
    }

    public void exit()
    {
        HiddenObjectGameToPlay.GetComponent<ExamineObjectHidden>().StopMiniGame();
    }

    public void Update()
    {
        if(Input.GetButtonDown("Cancel") && !HiddenObjectGameToPlay.activeInHierarchy)
        {
            exit();
        }
    }
}
