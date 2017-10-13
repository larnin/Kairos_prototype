using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CursorLogic : MonoBehaviour {

    [SerializeField]
    private float m_speed = 1000f;
    [SerializeField]
    private int borderOffset = 25;

    private Camera m_camera;
    private const string m_horizontalInputName = "CursorHorizontal";
    private const string m_VerticalInputName = "CursorVertical";


    // Use this for initialization
    void Start ()
    {
        m_camera = Camera.main; 

    }
	
	// Update is called once per frame
	void Update ()
    {
        float HorizontalInputValue = Input.GetAxis(m_horizontalInputName);
        float VerticalInputValue = Input.GetAxis(m_VerticalInputName);
        
        if (HorizontalInputValue != 0 || VerticalInputValue != 0)
        {
            // move the cursor along the screen even if it's a 3D object.
            Vector3 currentScreenPosition = m_camera.WorldToScreenPoint(transform.position);
            Vector3 newScreenPosition = currentScreenPosition + (new Vector3(HorizontalInputValue, -VerticalInputValue)) * m_speed * Time.deltaTime;

            newScreenPosition.x = Mathf.Clamp(newScreenPosition.x, 0f + borderOffset, Screen.width - borderOffset);
            newScreenPosition.y = Mathf.Clamp(newScreenPosition.y, 0f + borderOffset, Screen.height - borderOffset);

            transform.position = m_camera.ScreenToWorldPoint(newScreenPosition);
        }   
	}
}
