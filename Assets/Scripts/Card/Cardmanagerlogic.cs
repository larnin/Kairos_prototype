using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using UnityEngine;

class CardManagerLogic : MonoBehaviour
{
    [SerializeField] GameObject m_cardTemplate;

    List<CardLogic> m_cards;

    private void Awake()
    {
        
    }
}