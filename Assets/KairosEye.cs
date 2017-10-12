using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.ImageEffects;

public class KairosEye : MonoBehaviour {

    public GameObject mainCameraObject;
    public Camera mainCamera;
    public Transform mainCameraTransform;
    public float apparitionSpeed ;
    public Material kairosEyePostFXMat;
    public Material bordersPostFXMat;
    public SkinnedMeshRenderer eyeRenderer;

    private VignetteAndChromaticAberration vignetteScript;
    private Fisheye fisheyeScript;
    private MotionBlur motionBlurScript;
    private Animator cameraAnimator;

    private float timer = 0;

    SubscriberList _subscriberList = new SubscriberList();
    
    void Awake()
    {
        _subscriberList.Add(new Event<StartEyeTransitionEvent>.Subscriber(onStartEyeTransition));
        _subscriberList.Subscribe();
    }

    void OnDestroy()
    {
        _subscriberList.Unsubscribe();
    }

	void Start () {

        vignetteScript = mainCameraObject.GetComponent<VignetteAndChromaticAberration>();
        fisheyeScript = mainCameraObject.GetComponent<Fisheye>();
        motionBlurScript = mainCameraObject.GetComponent<MotionBlur>();
        cameraAnimator = mainCameraObject.GetComponent<Animator>();

        fisheyeScript.strengthX = 0.15f;
        fisheyeScript.strengthY = 0.05f;
        vignetteScript.intensity = 0;
        vignetteScript.blur = 0;
        motionBlurScript.blurAmount = 0;
        kairosEyePostFXMat.SetFloat("_Intensity", 0);
        bordersPostFXMat.SetFloat("_Intensity", 0.5f);
        eyeRenderer.enabled = true;
    }
	
	/*void Update () {

        if (Input.GetKeyUp("a"))
        {
            KairosEyeStart();
        }
        if(Input.GetKeyUp("e"))
        {
            KairosEyeStop();
        }
	}*/


    public void onStartEyeTransition(StartEyeTransitionEvent e)
    {
        if (e.side)
            KairosEyeStart();
        else KairosEyeStop();
    }

    public void KairosEyeStart()
    {
        timer = 0;
        //cameraAnimator.SetBool("KairosEye", true);
        StartCoroutine(KairosEyeApparition());
    }

    public void KairosEyeStop()
    {
        timer = 0;
        //cameraAnimator.SetBool("KairosEye", false);
        StartCoroutine(KairosEyeDisparition());
    }

    IEnumerator KairosEyeApparition()
    {
        while(timer * apparitionSpeed < 1)
        {
            motionBlurScript.blurAmount = 0.8f;
            timer += Time.deltaTime;
            vignetteScript.intensity = Mathf.Lerp(0, 0.325f, timer * apparitionSpeed);
            vignetteScript.blur = Mathf.Lerp(0, 0.5f, timer * apparitionSpeed);
            kairosEyePostFXMat.SetFloat("_Intensity", Mathf.Lerp(0, 1f, timer * apparitionSpeed));
            bordersPostFXMat.SetFloat("_Intensity", Mathf.Lerp(0.5f,1f,timer * apparitionSpeed));
            fisheyeScript.strengthX = Mathf.Lerp(0.15f, 0.3f, timer * apparitionSpeed);
            fisheyeScript.strengthY = Mathf.Lerp(0.05f, 0.3f, timer * apparitionSpeed);
            if(eyeRenderer.enabled == true)
            {
                eyeRenderer.enabled = false;
            }
            yield return null;
        }
        eyeRenderer.enabled = true;
        motionBlurScript.blurAmount = 0;
        timer = 0;
        yield return null;
    }

    IEnumerator KairosEyeDisparition()
    {
        while (timer * apparitionSpeed < 1)
        {
            motionBlurScript.blurAmount = 0.8f;
            timer += Time.deltaTime;
            vignetteScript.intensity = Mathf.Lerp(0.325f, 0, timer * apparitionSpeed);
            vignetteScript.blur = Mathf.Lerp(0.5f, 0, timer * apparitionSpeed);
            kairosEyePostFXMat.SetFloat("_Intensity", Mathf.Lerp(1, 0, timer * apparitionSpeed));
            bordersPostFXMat.SetFloat("_Intensity", Mathf.Lerp(1f, 0.5f, timer * apparitionSpeed));
            fisheyeScript.strengthX = Mathf.Lerp(0.3f, 0.15f, timer * apparitionSpeed);
            fisheyeScript.strengthY = Mathf.Lerp(0.3f, 0.05f, timer * apparitionSpeed);
            if (eyeRenderer.enabled == true)
            {
                eyeRenderer.enabled = false;
            }
            yield return null;
        }
        eyeRenderer.enabled = true;
        motionBlurScript.blurAmount = 0;
        timer = 0;
        yield return null;
    }
}
