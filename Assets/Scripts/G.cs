
using UnityEngine;

public sealed class G
{
    private static volatile G m_instance;
    private ExampleEventAndRandom m_test = null;


    public static G sys
    {
        get
        {
            if (G.m_instance == null)
                G.m_instance = new G();
            return G.m_instance;
        }
    }

    public ExampleEventAndRandom test
    {
        get
        {
            return m_test;
        }

        set
        {
            if (test != null)
                Debug.LogError("Test instancied 2 times");
            test = value;
        }
    }
}