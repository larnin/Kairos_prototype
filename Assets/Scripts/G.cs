
public sealed class G
{
    private static volatile G m_instance;

    public static G sys
    {
        get
        {
            if (G.m_instance == null)
                G.m_instance = new G();
            return G.m_instance;
        }
    }
}