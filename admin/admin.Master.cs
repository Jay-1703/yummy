using System;

namespace yummy.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] == "restaurant")
            {
                Name.Text = (string)Session["restaurantName"];                
            }
            else if((string)Session["role"] == "admin")
            {
                addItems.Visible = false;
                showOrder.Visible = false;
            }
            else if((string)Session["role"] == "restaurant")
            {
                Response.Redirect("Restaurantlogin.aspx");
            }
            else if ((string)Session["role"] == "admin")
            {
                Response.Redirect("signin.aspx");
            }
        }
    }
}