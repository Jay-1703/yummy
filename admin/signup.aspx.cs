using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace yummy.admin
{
    public partial class signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpBtn_Click(object sender, EventArgs e)
        {
            var username = userName.Text;
            var email = userEmail.Text;
            var password = userPassword.Text;
            Session["username"] = username;
            Response.Redirect("dashboard.aspx");
        }
    }
}