using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


public class CardAndSentenseSelectedEvent : EventArgs
{
    public CardAndSentenseSelectedEvent(string _cardName, string _bossSentense, int _cardIndex, int _sentenseIndex)
    {
        cardName = _cardName;
        bossSentense = _bossSentense;
        cardIndex = _cardIndex;
        sentenseIndex = _sentenseIndex;
    }

    string cardName;
    string bossSentense;
    int cardIndex;
    int sentenseIndex;
}