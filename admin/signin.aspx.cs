using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yummy.Comman;
using System.Data;
using System.Data.SqlClient;
using System.Web.DynamicData;

namespace yummy.admin
{
    public partial class signin : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");        

        protected void loginBtn_Click1(object sender, EventArgs e)
        {
            string sql = "SELECT * FROM [users] WHERE email = '" + userEmail.Text + "' AND password = '" + userPassword.Text + "'";
            DataTable data = Sevices.select(sql, connection);
            if (data.Rows.Count >= 0)
            {
                DataRow row = data.Rows[0];
                int id = Convert.ToInt32(row["role"]);
                string role = "SELECT * FROM [roles] WHERE id = " + id;
                DataTable data2 = Sevices.select(role, connection);

                if (data2.Rows.Count > 0)
                {
                    DataRow row2 = data2.Rows[0];
                    int id2 = Convert.ToInt32(row2["id"]);
                    if (id2 == id)
                    {
                        string roleName = (string)row2["rolename"];
                        if (roleName != null)
                        {
                            Session["role"] = roleName;
                            Session["user"] = (string)(row["username"]);
                            Session["email"] = (string)row["email"];
                            Session["id"] = (int)row["id"];
                            Response.Redirect("../index.aspx");
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