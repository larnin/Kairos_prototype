using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class ItemTakenEvent : EventArgs
{
    public ItemTakenEvent(string _name, string _prefabName, int _count)
    {
        name = _name;
        prefabName = _prefabName;
        count = _count;
    }

    public string name;
    public string prefabName;
    public int count;
}
