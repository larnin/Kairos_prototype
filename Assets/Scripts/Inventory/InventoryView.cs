using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class InventoryView : MonoBehaviour
{
    public string prefabDir = "InventoryObjects/";
    public GameObject textPrefab;
    public float textPosX = 100;
    public float textSelectOffsetX = 30;
    public float textIntervalY = 100;
    public float rotationSentibility = 1;

    Canvas _canvas;
    GraphicRaycaster _graphicRaycaster;
    GameObject _currentObject;
    GameObject _objectCenter;
    Vector2 _objectOrientation;
    int _currentIndex = 0;
    List<Text> _texts = new List<Text>();
    bool _moveObject = false;

	void Start ()
    {
        _canvas = GetComponent<Canvas>();
        _graphicRaycaster = GetComponent<GraphicRaycaster>();
        _canvas.worldCamera = G.Sys.UICamera;
        _canvas.planeDistance = G.Sys.UICamera.nearClipPlane + 0.1f;
        _objectCenter = transform.Find("ObjectCenter").gameObject;

        InitializeTexts();
        OnIndexChange();
    }

    void Update()
    {
        if (Input.GetButtonDown("Vertical"))
        {
            if (Input.GetAxisRaw("Vertical") > 0 && _currentIndex > 0)
            {
                _currentIndex--;
                OnIndexChange();
            }
            else if (Input.GetAxisRaw("Vertical") < 0 && _currentIndex < _texts.Count - 1)
            {
                _currentIndex++;
                OnIndexChange();
            }
        }
        if (Input.GetMouseButtonDown(0))
        {
            PointerEventData pointerData = new PointerEventData(EventSystem.current);
            pointerData.position = Input.mousePosition;
            List<RaycastResult> results = new List<RaycastResult>();
            _graphicRaycaster.Raycast(pointerData, results);
            int index = -1;
            for(int i = 0; i < _texts.Count; i++)
            {
                if (i == _currentIndex)
                    continue;
                foreach(var r in results)
                    if(r.gameObject == _texts[i].gameObject)
                    {
                        index = i;
                        break;
                    }
                if (index >= 0)
                    break;
            }
            if(index >= 0)
            {
                _currentIndex = index;
                OnIndexChange();
            }
            else
            {
                _moveObject = true;
            }
        }
        if (Input.GetMouseButtonUp(0))
            _moveObject = false;
        if(_moveObject && _currentObject)
        {
            Vector2 delta = new Vector2(Input.GetAxis("Yaw") / 1000 * rotationSentibility, Input.GetAxis("Pitch") / 1000 * rotationSentibility);
            if (_objectOrientation.y + delta.y < -90)
                delta.y = -90 - _objectOrientation.y;
            if (_objectOrientation.y + delta.y > 90)
                delta.y = 90 - _objectOrientation.y;
            _objectOrientation += delta;
            _currentObject.transform.rotation = Quaternion.Euler(_objectOrientation.y, 0, 0)*Quaternion.Euler(0, -_objectOrientation.x, 0);
        }
    }

    void OnIndexChange()
    {
        float height = _currentIndex * textIntervalY;
        foreach(var text in _texts)
        {
            if (text == _texts[_currentIndex])
            {
                text.rectTransform.anchoredPosition3D = new Vector3(textPosX + textSelectOffsetX, height, 0);
                text.fontSize = 30;
            }
            else
            {
                text.rectTransform.anchoredPosition3D = new Vector3(textPosX, height, 0);
                text.fontSize = 20;
            }
            height -= textIntervalY;
        }

        _objectOrientation = new Vector2();

        UpdateShowedObject();
    }

    public void onExitPress()
    {
        G.Sys.gamemanager.inventoryShowed = false;
        Destroy(gameObject);
    }

    void UpdateShowedObject()
    {
        if(_currentObject != null)
            Destroy(_currentObject);
        if (_currentIndex < 0 || _currentIndex >= _texts.Count)
            return;

        string name = G.Sys.inventory.itemsName()[_currentIndex];
        _currentObject = Instantiate(Resources.Load(prefabDir + G.Sys.inventory.PrefabName(name), typeof(GameObject))) as GameObject;
        _currentObject.transform.parent = _objectCenter.transform;
        _currentObject.transform.localPosition = new Vector3(0, 0, 0);
        _currentObject.transform.localScale = new Vector3(100, 100, 100);
    }

    void InitializeTexts()
    {
        _texts.Clear();
        var rect = _canvas.GetComponent<RectTransform>();

        foreach(var item in G.Sys.inventory.itemsName())
        {
            int count = G.Sys.inventory.count(item);

            var text = CreateTextObject(rect);
            text.text = item;
            if (count > 1)
                text.text += " (" + count.ToString() + ")";
            _texts.Add(text);
        }
    }

    Text CreateTextObject(RectTransform rect)
    {
        var obj = Instantiate(textPrefab);
        var rectTransform = obj.GetComponent<RectTransform>();
        rectTransform.SetParent(rect);
        rectTransform.localScale = new Vector3(1, 1, 1);
        rectTransform.anchoredPosition3D = new Vector3(textPosX, 0, 0);
        rectTransform.localRotation = new Quaternion();
        return obj.GetComponent<Text>();
    }
}
