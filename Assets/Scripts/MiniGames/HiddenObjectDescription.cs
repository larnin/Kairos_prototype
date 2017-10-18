using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HiddenObjectDescription : Interactable
{
    [TextArea(1, 6)]
    public string m_baseDescription;

    [TextArea(1, 6)]
    public string m_specialDescription;

    [TextArea(1, 6)]
    public string m_CardName;

    [TextArea(1, 6)]
    public string m_CardDescription;

    [SerializeField]
    private Color m_highlightColor = new Color(0.5f, 0.5f, 1f);

    public Transform m_visibleMark;

    private Material m_material;
    private Color m_baseColor;

    private void Awake()
    {
        m_material = GetComponent<Renderer>().material;
        m_baseColor = m_material.color;
    }

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

    public override void hoverEnter()
    {
        m_material.color = m_highlightColor;
    }

    public override void hoverExit()
    {
        m_material.color = m_baseColor;
    }

    public override void select()
    {
        Event<SelectHidenObjectEvent>.Broadcast(new SelectHidenObjectEvent(this));
        hoverExit();
    }
}
