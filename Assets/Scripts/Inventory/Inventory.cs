using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

[Serializable]
public struct CardData
{
    public CardData(string _name, string _description)
    {
        name = _name;
        description = _description;
    }

    public string name;
    public string description;
}

public class Inventory : List<CardData>
{

}
