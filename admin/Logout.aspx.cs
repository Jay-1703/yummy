using System;

namespace yummy.admin
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if ((string)Session["role"] == "restaurant")
                {
                    Session.Clear();
                    Response.Redirect("../Restaurantlogin.aspx");
                }
                if ((string)Session["role"] == "admin")
                {
                    Session.Clear();
                    Response.Redirect("adminLogin.aspx");
                }
                if ((string)Session["role"] == "user")
                {
                    Session.Clear();
                    Response.Redirect("../index.aspx");
                }
            }
        }
    }
}