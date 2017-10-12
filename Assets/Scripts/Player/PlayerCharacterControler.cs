using UnityEngine;

[RequireComponent(typeof(Character))]
class PlayerCharacterControler : MonoBehaviour
{
    const string moveXAxis = "Horizontal";
    const string moveYAxis = "Vertical";

    Character m_character;
    Transform m_cameraTransform;

    private void Awake()
    {
        m_character = GetComponent<Character>();
        m_cameraTransform = Camera.main.transform;
    }

    private void Update()
    {
        var dir = new Vector2(Input.GetAxisRaw(moveXAxis), Input.GetAxisRaw(moveYAxis));

        var camDir = m_cameraTransform.forward;
        var camDir2D = new Vector2(camDir.x, camDir.z).normalized;
        var camDir2DOthro = new Vector2(camDir2D.y, -camDir2D.x);
        dir = dir.x * camDir2D + dir.y * camDir2DOthro;

        m_character.move(dir);
    }
}