using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yummy
{
    public partial class yummy : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {
                logout.Visible = true;                
                signin.Visible = false;
                signup.Visible = false;
                addrestaurnt.Visible = false;
            }
            else
            {
                logout.Visible = false;                
                signin.Visible = true; 
                signup.Visible = true;  
                addrestaurnt.Visible = true;
            }
        }
    }
}