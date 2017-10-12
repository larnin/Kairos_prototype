using UnityEngine;
using System.Collections;

[ExecuteInEditMode]
public class PostFX : MonoBehaviour
{

    //public float intensity;
    public Material material;

    // Postprocess the image
    void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        /*if (intensity == 0)
        {
            Graphics.Blit(source, destination);
            return;
        }
        */
       // material.SetFloat("_Intensity", intensity);
        Graphics.Blit(source, destination, material);
    }
}