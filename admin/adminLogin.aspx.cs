using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yummy.Comman;
namespace yummy.admin
{
    public partial class adminLogin : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM [users] WHERE username = '" + username.Text + "' AND email = '" + email.Text + "' AND password = '" + password.Text + "";
            DataTable data = Sevices.select(sql, connection);
            if (data.Rows.Count >= 0)
            {
                //int userRoleId = data['id'];

                //string sql2 = "SELECT * FROM [roles] where id = ";
            }
        }
    }
}