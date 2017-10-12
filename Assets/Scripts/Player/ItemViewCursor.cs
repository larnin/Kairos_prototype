using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemViewCursor : MonoBehaviour
{
    public ItemView view;
    
    void OnTriggerEnter(Collider c)
    {
        var txt = c.GetComponent<ItemViewTriggerText>();
        if (txt != null)
            view.setText(txt.text, txt.time);
    }
}
