
using UnityEngine;

public sealed class G
{
    private static volatile G m_instance;
    private Inventory m_inventory = new Inventory();
    private TrailerManager m_trailerManager;

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

    public TrailerManager trailerManager
    {
        get { return m_trailerManager; }
        set
        {
            if (m_trailerManager != null)
                Debug.LogError("2 TrailerManager instanciated !");
            m_trailerManager = value;
        }
    }
}