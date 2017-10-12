using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ItemComponent : MonoBehaviour
{
    [SerializeField]
    string _name;
    [SerializeField]
    string _prefabName;
    [SerializeField]
    int _count;
    [SerializeField]
    bool _canBePicked;

    bool _isHovered;
    GameObject _textObj;

	void Start ()
    {
        var obj = transform.Find("Canvas");
        Text text = null;
        if (obj != null)
            obj = obj.Find("Text");
        if (obj != null)
            text = obj.GetComponent<Text>();
        if (text != null)
            text.text = _name;
        _textObj = obj.gameObject;

        hover(false);
	}
	
	void Update ()
    {
        _textObj.transform.forward = Camera.main.transform.forward;
	}

    public void hover(bool value)
    {
        _isHovered = value;
        _textObj.SetActive(value);
    }

    public Inventory.Item toItem()
    {
        return new Inventory.Item(_name, _prefabName, 1);
    }

    public bool canBePicked()
    {
        return _canBePicked;
    }
}
