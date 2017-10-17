using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using DG.Tweening;

public class ExamineObjectHidden : MonoBehaviour
{
    [SerializeField]
    private float m_rotationSpeed = 125.0f;
    [SerializeField]
    private float m_delayToMoveObject = 0.5f;
    [SerializeField]
    private GameObject m_cursor;
    [SerializeField]
    private GameObject m_UIDescriptiveText;
    [SerializeField]
    private GameObject m_UIDescriptiveAcceptButton;
    [SerializeField]
    private GameObject m_UIDescriptiveCancelButton;



    private bool m_isObjectMovingToSnapPoint = false;
    private SubscriberList m_subscriberList = new SubscriberList();
    private Transform m_examinedObjectTransform = null; 
    private HiddenObjectDescription m_hiddenObjectDescription = null;

    private Vector3 m_objectBasePosition;
    private Quaternion m_objectBaseRotation;

    private Camera m_camera;

    private const string m_horizontalInputName = "Horizontal";
    private const string m_VerticalInputName = "Vertical";
    private const string m_CancelInputName = "Cancel";
    private const string m_AcceptInputName = "CursorClickButton";


    void Awake ()
    {
        m_subscriberList.Add(new Event<SelectHidenObjectEvent>.Subscriber(onObjectSelect));
        m_subscriberList.Subscribe();
        gameObject.SetActive(false);
    }

    void OnDestroy()
    {
        m_subscriberList.Unsubscribe();
    }
    
    // Update is called once per frame
    void Update ()
    {
        if(!m_isObjectMovingToSnapPoint)
        {
            // rotate Object
            float horizontalInputValue = Input.GetAxis(m_horizontalInputName);
            float verticalInputValue = Input.GetAxis(m_VerticalInputName);
            m_examinedObjectTransform.Rotate(transform.right, verticalInputValue * m_rotationSpeed * Time.deltaTime, Space.World);
            m_examinedObjectTransform.Rotate(-transform.up, horizontalInputValue * m_rotationSpeed * Time.deltaTime, Space.World);

            // exit
            if(Input.GetButtonDown(m_CancelInputName))
            {
                m_isObjectMovingToSnapPoint = true;
                m_examinedObjectTransform.DORotateQuaternion(m_objectBaseRotation, m_delayToMoveObject);
                m_examinedObjectTransform.DOMove(m_objectBasePosition, m_delayToMoveObject).OnComplete(ObjectReturnedToInitialPosition);
            }

            // Obtain card if possible
            if (m_hiddenObjectDescription.m_visibleMark)
            {
                RaycastHit HitInfo;
                // determine if the mark is visible (by using a raycast)
                if (! m_hiddenObjectDescription.isDiscovered 
                    && Physics.Raycast(m_camera.transform.position, 
                    m_hiddenObjectDescription.m_visibleMark.position - m_camera.transform.position,out HitInfo, 100.0f))
                {
                    if (!m_hiddenObjectDescription.isDiscovered && HitInfo.transform == m_hiddenObjectDescription.m_visibleMark)
                    {
                        m_hiddenObjectDescription.isDiscovered = true;
                        UpdateDescriptiveText(true);
                        m_UIDescriptiveAcceptButton.SetActive(true);
                        m_UIDescriptiveAcceptButton.transform.GetChild(0).GetComponent<UnityEngine.UI.Text>().text = "Obtenir la carte";
                    }
                }

                // the playe get the new Card
                if(Input.GetButtonDown(m_AcceptInputName) && m_hiddenObjectDescription.isDiscovered && ! m_hiddenObjectDescription.isCardObtained)
                {
                    m_hiddenObjectDescription.isCardObtained = true;
                    m_UIDescriptiveAcceptButton.SetActive(false);
                    Event<CardObtainedEvent>.Broadcast(new CardObtainedEvent(m_hiddenObjectDescription.m_CardName, m_hiddenObjectDescription.m_specialDescription));
                }
            }
        }
    }

    void onObjectSelect(SelectHidenObjectEvent e)
    {
        m_camera = Camera.current;

        m_isObjectMovingToSnapPoint = true;
        m_cursor.SetActive(false);
        m_examinedObjectTransform = e.hiddenObject.transform;
        m_hiddenObjectDescription = e.hiddenObject;

        m_objectBasePosition = m_examinedObjectTransform.position;
        m_objectBaseRotation = m_examinedObjectTransform.rotation;
        m_examinedObjectTransform.parent = transform;
        m_examinedObjectTransform.DOMove(transform.position, m_delayToMoveObject).OnComplete(ObjetMovedToRotationnalPosition);
        m_UIDescriptiveAcceptButton.SetActive(false);
        gameObject.SetActive(true);
    }

    void ObjetMovedToRotationnalPosition()
    {
        m_UIDescriptiveText.SetActive(true);
        UpdateDescriptiveText(m_hiddenObjectDescription.isDiscovered);
        m_isObjectMovingToSnapPoint = false;

        // if we can obtain a "card" update the UI.
        if (m_hiddenObjectDescription.isDiscovered && ! m_hiddenObjectDescription.isCardObtained)
        {
            m_UIDescriptiveAcceptButton.SetActive(true);
            m_UIDescriptiveAcceptButton.transform.GetChild(0).GetComponent<UnityEngine.UI.Text>().text = "Obtenir la carte";
        }
        

    }

    private void UpdateDescriptiveText(bool isDiscovered)
    {
        m_UIDescriptiveText.transform.GetChild(0).GetComponent<UnityEngine.UI.Text>().text = 
            isDiscovered ? m_hiddenObjectDescription.m_specialDescription: 
                           m_hiddenObjectDescription.m_baseDescription;
    }

    void ObjectReturnedToInitialPosition()
    {
        m_UIDescriptiveText.SetActive(false);
        m_examinedObjectTransform.parent = null;
        gameObject.SetActive(false);
        m_cursor.SetActive(true);
        m_UIDescriptiveAcceptButton.SetActive(true);
        m_UIDescriptiveAcceptButton.transform.GetChild(0).GetComponent<UnityEngine.UI.Text>().text = "Selectionner un objet";
        m_hiddenObjectDescription.hoverEnter();
    }
}
