
using UnityEngine;

public sealed class G
{
    private static volatile G m_instance;
    private Inventory m_inventory = new Inventory();
    private TrailerManager m_trailerManager;

    
    public Camera currentCamera;
    public Camera lastCameraUsed = null;
    
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

    public void SetActiveCamera(Camera camera)
    {
        if(currentCamera)
        { 
            currentCamera.enabled = false;
        }
        lastCameraUsed = currentCamera;
        camera.enabled = true;
        currentCamera = camera;
        
    }

    public void ResetActiveCamera()
    {
        currentCamera.enabled = false;
        lastCameraUsed.enabled = true;
        Camera temp = currentCamera;
        currentCamera = lastCameraUsed;
        lastCameraUsed = temp;
    }

}