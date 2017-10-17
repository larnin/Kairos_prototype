using System;

public class TestInitializedEvent : EventArgs
{
    public int value;

    public TestInitializedEvent(int _value)
    {
        value = _value;
    }
}
