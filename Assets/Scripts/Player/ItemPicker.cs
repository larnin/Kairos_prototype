using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemPicker : MonoBehaviour
{
    [SerializeField]
    float maxDIstance = 10;

    ItemComponent _currentItem = null;

	void Start ()
    {
		
	}
	
	void Update ()
    {
        var results = Physics.RaycastAll(transform.position, transform.forward, maxDIstance);
        float dist = float.MaxValue;
        GameObject obj = null;
        foreach(var result in results)
        {
            if (result.collider.gameObject == G.Sys.player.gameObject)
                continue;
            if(result.distance < dist)
            {
                obj = result.collider.gameObject;
                dist = result.distance;
            }
        }
        
        if (obj == null)
        {
            setCurrentItem(null);
            return;
        }
        checkInteractable(obj);
        if (obj.tag != "Item")
        {
            setCurrentItem(null);
            return;
        }
        var comp = obj.GetComponent<ItemComponent>();
        if(comp == null)
        {
            setCurrentItem(null);
            return;
        }
        if (Input.GetMouseButtonDown(0) && !G.Sys.gamemanager.itemShowed)
            G.Sys.gadgetmanager.showItem(obj);
        if (_currentItem != null && _currentItem.gameObject == obj)
            return;
        setCurrentItem(comp);
	}

    void checkInteractable(GameObject obj)
    {
        if (!Input.GetMouseButtonDown(0))
            return;
        var comp = obj.GetComponent<AInteractable>();
        if (comp == null)
            return;
        comp.interact();
    }

    void setCurrentItem(ItemComponent item)
    {
        if (item == _currentItem)
            return;
        if (_currentItem != null)
            _currentItem.hover(false);
        _currentItem = item;
        if (_currentItem != null)
            _currentItem.hover(true);
    }
}
