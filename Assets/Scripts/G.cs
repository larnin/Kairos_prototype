
using UnityEngine;

public sealed class G
{
    private static volatile G m_instance;
    private Inventory m_inventory = new Inventory();


    public static G sys
    {
        get
        {
            if (G.m_instance == null)
                G.m_instance = new G();
            return G.m_instance;
        }
    }

    public Inventory inventory
    {
        get { return m_inventory; }
    }
}