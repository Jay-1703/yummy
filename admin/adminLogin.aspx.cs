using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.DynamicData;
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
            string sql = "SELECT * FROM [users] WHERE username = '" + username.Text + "' AND email = '" + email.Text + "' AND password = '" + password.Text + "'";
            DataTable data = Sevices.select(sql, connection);
            if (data.Rows.Count >= 0)
            {
                DataRow row = data.Rows[0];
                int id = Convert.ToInt32(row["role"]);

                string role = "SELECT * FROM [roles] WHERE id = " + id;
                SqlCommand command2 = new SqlCommand(role, connection);
                SqlDataAdapter da = new SqlDataAdapter(command2);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count > 0)
                {
                    DataRow row2 = dt.Rows[0];
                    int id2 = Convert.ToInt32(row2["id"]);
                    if (id2 == id)
                    {
                        string roleName = (string)row2["rolename"];
                        if (roleName != null)
                        {
                            Session["role"] = roleName;
                            Session["admin"] = (string)(row["username"]);
                            Session["email"] = (string)row["email"];
                            Session["id"] = (int)row["id"];
                            Response.Redirect("dashboard.aspx");
                        }
                    }
                    else
                    {
                        Response.Write("Role not found for the specified ID.");
                    }

                }
            }
        }
    }
}