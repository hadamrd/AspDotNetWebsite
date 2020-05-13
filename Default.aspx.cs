using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text = "Bienvenu sur le N°1 des sites de bonnes affaires";
        Master.PiedDePage = "Merci de prendre quelques instants pour répondre à notre <a href = EnqueteSatisfaction.aspx> enquête de satisfaction </a> ";
       
    }
}