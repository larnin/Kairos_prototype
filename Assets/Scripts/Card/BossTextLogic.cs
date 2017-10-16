using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;
using UnityEngine.UI;

public class BossTextLogic : MonoBehaviour
{
    [SerializeField] string m_text = "Name";

    Color m_selectedColor = new Color(255, 128, 0);
    Color m_basicColor = new Color(255, 255, 255);

    bool m_hovered = false;
    Text m_textComp = null;

    public bool hovered
    {
        get { return m_hovered; }
        set
        {
            m_hovered = value;
            if (m_textComp != null)
                m_textComp.color = value ? m_selectedColor : m_basicColor;
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

    void Awake()
    {
        m_textComp = transform.GetComponent<Text>();
        m_textComp.text = m_text;
    }

    private void OnValidate()
    {
        var textComp = transform.GetComponent<Text>();
        if (textComp != null)
            textComp.text = m_text;
    }
}
