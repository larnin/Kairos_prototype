using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class Inventory
{
    public class Item
    {
        public Item(string _name, string _prefabName, int _quantity)
        {
            name = _name;
            prefabName = _prefabName;
            quantity = _quantity;
        }

        public string name;
        public string prefabName;
        public int quantity;
    }
    
    List<Item> items = new List<Item>();
    
    public bool Exist(string name)
    {
        foreach (var v in items)
            if (v.name == name)
                return true;
        return false;
    }

    public int count(string name)
    {
        var item = get(name);
        if (item != null)
            return item.quantity;
        return 0;
    }

    public string PrefabName(string name)
    {
        var item = get(name);
        if (item != null)
            return item.prefabName;
        return null;
    }

    public void add(string name, string prefabName, bool replace = false)
    {
        add(name, prefabName, 1, replace);
    }

    public void add(string name, string prefabName, int quantity, bool replace = false)
    {
        if (quantity == 0)
            return;
        if(quantity < 0)
        {
            del(name, -quantity);
            return;
        }

        var item = get(name);
        if(item != null)
        {
            item.quantity += quantity;
            if (replace)
                item.prefabName = prefabName;
        }
        else items.Add(new Item(name, prefabName, quantity));
    }

    public void del(string name, int quantity = 1)
    {
        var item = get(name);
        if (item == null)
            return;
        if (item.quantity <= quantity)
            items.Remove(get(name));
        else item.quantity -= quantity;
    }

    public List<string> itemsName()
    {
        List<string> names = new List<string>();
        foreach (var v in items)
            names.Add(v.name);
        return names;
    }

    Item get(string name)
    {
        foreach (var v in items)
            if (v.name == name)
                return v;
        return null;
    }
}