﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class SelectCardEvent : EventArgs
{
    public SelectCardEvent(CardLogic _card)
    {
        card = _card;
    }

    CardLogic card;
}
