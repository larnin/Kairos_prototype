using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using NRand;

public class ExampleEventAndRandom : MonoBehaviour
{
    SubscriberList m_subscriberList = new SubscriberList();

    // Use this for initialization
    void Start ()
    {
        Event<TestInitializedEvent>.Broadcast(new TestInitializedEvent(5));

    }
	
	// Update is called once per frame
	void Update ()
    {
		
	}

    void Awake()
    {
        G.sys.test = this;

        m_subscriberList.Add(new Event<TestInitializedEvent>.Subscriber(onTestInitializedEvent));
        m_subscriberList.Subscribe();
    }

    void OnDestroy()
    {
        m_subscriberList.Unsubscribe();
    }

    void onTestInitializedEvent(TestInitializedEvent e)
    {
        //  StaticRandomGenerator<DefaultRandomGenerator> 
        var gen = new StaticRandomGenerator<DefaultRandomGenerator>();
        var p = new UniformVector2CircleSurfaceDistribution(2);
       //  Vector2 yolo = p.Next(gen);

       // Vector2 yolo2 = new UniformVector2CircleSurfaceDistribution(2).Next(new StaticRandomGenerator<DefaultRandomGenerator>());

    }
}
