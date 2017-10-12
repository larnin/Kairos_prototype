using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class ItemView : MonoBehaviour
{
    public float objectScale = 1.0f;
    public string prefabDir = "InventoryObjects/";
    public GameObject itemInScene;
    public float rotationSentibility = 1;

    Canvas _canvas;
    GameObject _itemObj;

    Vector2 _objectOrientation;

    Coroutine _textCoroutine;
    Text _text;

    void Start ()
    {
        _canvas = GetComponent<Canvas>();
        _canvas.worldCamera = G.Sys.UICamera;
        _canvas.planeDistance = G.Sys.UICamera.nearClipPlane + 0.1f;

        var comp = itemInScene.GetComponent<ItemComponent>();
        if(comp == null)
        {
            close();
            return;
        }

        var rsc = Resources.Load(prefabDir + comp.toItem().prefabName, typeof(GameObject));
        if(rsc == null)
        {
            close();
            return;
        }

        var obj = Instantiate(rsc) as GameObject;
        var parent = transform.Find("Item");
        obj.transform.parent = parent;
        obj.transform.localScale = new Vector3(100 * objectScale, 100 * objectScale, 100 * objectScale);
        obj.transform.localPosition = new Vector3();
        _itemObj = obj;

        if (!comp.canBePicked())
        {
            var takeButton = transform.Find("Take");
            if (takeButton != null)
                takeButton.gameObject.SetActive(false);
            var throwButton = transform.Find("Throw");
            if (throwButton != null)
                throwButton.localPosition = new Vector3(0, throwButton.localPosition.y, throwButton.localPosition.z);
        }
        
        var text = transform.Find("Title");
        if(text != null)
        {
            var textComp = text.GetComponent<Text>();
            if(textComp != null)
                textComp.text = comp.toItem().name;
        }

        _text = transform.Find("Text").GetComponent<Text>();
        _text.gameObject.SetActive(false);
    }
	
	void Update ()
    {
        if (Input.GetMouseButton(0))
        {
            Vector2 delta = new Vector2(Input.GetAxis("Yaw") / 1000 * rotationSentibility, Input.GetAxis("Pitch") / 1000 * rotationSentibility);
            if (_objectOrientation.y + delta.y < -90)
                delta.y = -90 - _objectOrientation.y;
            if (_objectOrientation.y + delta.y > 90)
                delta.y = 90 - _objectOrientation.y;
            _objectOrientation += delta;
            _itemObj.transform.rotation = Quaternion.Euler(_objectOrientation.y, 0, 0) * Quaternion.Euler(0, -_objectOrientation.x, 0);
        }
    }

    public void onTake()
    {
        var item = itemInScene.GetComponent<ItemComponent>().toItem();
        G.Sys.inventory.add(item.name, item.prefabName, item.quantity, true);
        Destroy(itemInScene);
        close();
    }

    public void onThrow()
    {
        close();
    }

    public void close()
    {
        G.Sys.gamemanager.itemShowed = false;
        Destroy(gameObject);
    }

    public void setText(string text, float time)
    {
        _text.text = text;
        if (_textCoroutine != null)
            StopCoroutine(_textCoroutine);
        _textCoroutine = StartCoroutine(showTextCoroutine(time));
    }

    IEnumerator showTextCoroutine(float time)
    {
        _text.gameObject.SetActive(true);
        yield return new WaitForSeconds(time);
        _text.gameObject.SetActive(false);
    }
}
