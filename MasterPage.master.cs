﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
    
}
    public String PiedDePage
    {
        get 
        {
            return ltlPiedDePage.Text;
        }

        set
        {
            ltlPiedDePage.Text = value;
        }
    }

}
