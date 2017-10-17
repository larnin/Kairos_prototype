using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class CardLogic : MonoBehaviour
{
    [SerializeField] string m_text = "Name";
    [Tooltip("Showed when the card is selected")]
    [SerializeField] string m_description = "";

    bool m_hovered = false;
    Outline m_outlineComp = null;
    Text m_textComp = null;

    public bool hovered
    {
        get { return m_hovered; }
        set
        {
            m_hovered = value;
            if (m_outlineComp != null)
                m_outlineComp.enabled = value;
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

    public string description
    {
        get { return m_description; }
        set { m_description = value; }
    }

	void Awake()
    {
        m_outlineComp = transform.Find("Visual").GetComponent<Outline>();
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
