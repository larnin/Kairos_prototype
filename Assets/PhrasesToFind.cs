using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PhrasesToFind : MonoBehaviour {


    //private string[]

    private List<string> selectedPhrases = new List<string>();



    // Use this for initialization
    void Start ()
    {
        selectedPhrases.Clear();
    }

    public void SelectPhrase(string phrase)
    {

    }

    public void UnSelectPhrase(string phrase)
    {
        selectedPhrases.Remove(phrase);
    }
}
