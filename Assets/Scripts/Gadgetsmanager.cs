using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Gadgetsmanager : MonoBehaviour
{
    public GameObject eyePrefab;
    public GameObject itemPrefab;
    public GameObject InventoryPrefab;

    bool eyeInTransition = false;
    SubscriberList _subscriberList = new SubscriberList();

    void Awake()
    {
        G.Sys.gadgetmanager = this;
        _subscriberList.Add(new Event<EyeTransitionEndedEvent>.Subscriber(onEyeTransitionEnd));
        _subscriberList.Subscribe();
    }

    void OnDestroy()
    {
        _subscriberList.Unsubscribe();
    }

	void Update ()
    {
        if (!G.Sys.gamemanager.itemShowed)
        {
            if (Input.GetButtonDown("Inventory") && !G.Sys.gamemanager.inventoryShowed)
                showInventory();
            if (Input.GetButtonDown("Eye") && !eyeInTransition)
                EnableEye();
        }

    }

    public void showInventory()
    {
        G.Sys.gamemanager.inventoryShowed = true;
        Instantiate(InventoryPrefab);
    }

    public void showItem(GameObject itemInScene)
    {
        G.Sys.gamemanager.itemShowed = true;

        var view = Instantiate(itemPrefab);
        var comp = view.GetComponent<ItemView>();
        if(comp != null)
            comp.itemInScene = itemInScene;

    }

    public void EnableEye()
    {
        Event<StartEyeTransitionEvent>.Broadcast(new StartEyeTransitionEvent(!G.Sys.gamemanager.eyeEnabled));
        eyeInTransition = true;
        G.Sys.gamemanager.eyeEnabled = !G.Sys.gamemanager.eyeEnabled;
    }

    public void onEyeTransitionEnd(EyeTransitionEndedEvent e)
    {
        eyeInTransition = false;
    }
}
