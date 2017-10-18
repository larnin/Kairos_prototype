using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


public class SelectHidenObjectEvent : EventArgs
{
    public SelectHidenObjectEvent(HiddenObjectDescription _object)
    {
        hiddenObject = _object;
    }

    public HiddenObjectDescription hiddenObject;
}
