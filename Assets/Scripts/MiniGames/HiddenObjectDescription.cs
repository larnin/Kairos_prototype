using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HiddenObjectDescription : MonoBehaviour
{
    [TextArea(1, 6)]
    public string m_baseDescription;

    [TextArea(1, 6)]
    public string m_specialDescription;

    [TextArea(1, 6)]
    public string m_CardName;

    [TextArea(1, 6)]
    public string m_CardDescription;
    
    public Transform m_visibleMark;

    public bool isDiscovered
    {
        get;
        set;
    }

    public bool isCardObtained
    {
        get;
        set;
    }
}
