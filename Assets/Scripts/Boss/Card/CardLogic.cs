using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CardLogic : Interactable
{
    [SerializeField] string m_text = "Name";
    [Tooltip("Showed when the card is selected")]
    [SerializeField] string m_description = "";

    Color selectedColor = new Color(0, 1, 0);
    Color hoveredColor = new Color(1, 0.5f, 0);

    bool m_hovered = false;
    bool m_selected = false;
    Outline m_outlineComp = null;
    Text m_textComp = null;

    public bool hovered
    {
        get { return m_hovered; }
        set
        {
            m_hovered = value;
            if (m_outlineComp != null && m_selected == false)
            {
                m_outlineComp.enabled = value;
                m_outlineComp.effectColor = hoveredColor;
            }
        }
    }

    public string text
    {
        get { return m_text; }
        set
        {
            m_text = value;
            if (m_textComp != null)
                m_textComp.text = m_text;
        }
    }

    public void selected(bool value)
    {
        m_selected = value;
        if (m_outlineComp != null)
        {
            m_outlineComp.enabled = value;
            m_outlineComp.effectColor = selectedColor;
        }

        Event<SelectCardEvent>.Broadcast(new SelectCardEvent(this));
    }

    public string description
    {
        get { return m_description; }
        set { m_description = value; }
    }

    public override void hoverEnter()
    {
        hovered = true;
    }

    public override void hoverExit()
    {
        hovered = false;
    }

    public override void select()
    {
        selected(true);
    }

    void Awake()
    {
        m_outlineComp = GetComponent<Outline>();
        m_outlineComp.enabled = m_hovered;
        m_textComp = transform.Find("Text").GetComponent<Text>();
        m_textComp.text = m_text;
	}

    private void OnValidate()
    {
        var textComp = transform.Find("Text").GetComponent<Text>().text;
        if (textComp != null)
            textComp = m_text;
    }
}
