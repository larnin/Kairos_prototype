using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CursorLogic : MonoBehaviour
{
    [SerializeField]
    private float m_speed = 1000f;
    [SerializeField]
    private int m_borderOffset = 50;
    [SerializeField]
    private LayerMask m_layerMask;

    [SerializeField]
    private Color m_highlightColor;
    private Color m_baseColor;
    
    private Camera m_camera;
    private const float m_rayDistance = 100.0f;
    private GameObject m_currentObjecthighlighted = null;

    private const string m_horizontalInputName = "Horizontal";
    private const string m_VerticalInputName = "Vertical";
    private const string m_CursorClickInputName = "CursorClickButton";

    // Use this for initialization
    void Start()
    {
        m_camera = Camera.main;
    }

    // Update is called once per frame
    void Update()
    {
        float HorizontalInputValue = Input.GetAxis(m_horizontalInputName);
        float VerticalInputValue = Input.GetAxis(m_VerticalInputName);
        Vector3 currentScreenPosition = transform.position;
        
        // move cursor
        if (HorizontalInputValue != 0 || VerticalInputValue != 0)
        {
            Vector3 newScreenPosition = currentScreenPosition + (new Vector3(HorizontalInputValue, VerticalInputValue)) * m_speed * Time.deltaTime;

            newScreenPosition.x = Mathf.Clamp(newScreenPosition.x, 0f + m_borderOffset, Screen.width - m_borderOffset);
            newScreenPosition.y = Mathf.Clamp(newScreenPosition.y, 0f + m_borderOffset, Screen.height - m_borderOffset);

            transform.position = newScreenPosition;
        }

        // highlight object
        Ray ray = m_camera.ScreenPointToRay(currentScreenPosition);
        RaycastHit HitInfo;

        if( Physics.Raycast(ray,out HitInfo, m_rayDistance, m_layerMask) )
        {
            GameObject gameObjectTouched = HitInfo.collider.gameObject;

            if (m_currentObjecthighlighted != gameObjectTouched) 
            {
                m_currentObjecthighlighted = gameObjectTouched;
                highlightObject(true);
            }
        }
        else if(m_currentObjecthighlighted)
        {
            highlightObject(false);
            m_currentObjecthighlighted = null;
        }

        // send event OnCursorClick
        if(Input.GetButtonDown(m_CursorClickInputName))
        {
           if( m_currentObjecthighlighted)
           {
                highlightObject(false);
                Event<CursorClickEvent>.Broadcast(new CursorClickEvent(m_currentObjecthighlighted, this));
            }
        }
    }

    public void highlightObject(bool isEntering)
    {
        Material material = m_currentObjecthighlighted.GetComponent<Renderer>().material;

        if (isEntering)
        {
            m_baseColor = material.color;
        }
        material.color = isEntering ? m_highlightColor : m_baseColor;
    }
}
