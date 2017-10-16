using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

class InventoryFillLogic : MonoBehaviour
{
    [SerializeField] CardData[] m_cards = new CardData[] { };

    private void Awake()
    {
        G.sys.inventory.Clear();
        foreach (var c in m_cards)
            G.sys.inventory.Add(c);
    }
}
