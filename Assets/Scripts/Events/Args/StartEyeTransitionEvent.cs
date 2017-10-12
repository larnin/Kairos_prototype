using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class StartEyeTransitionEvent : EventArgs
{
    public StartEyeTransitionEvent(bool _side)
    {
        side = _side;
    }

    public bool side;
}