using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using yummy.Comman;

namespace yummy.admin
{
    public partial class signup : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void signUpBtn_Click(object sender, EventArgs e)
        {
            string sql = "INSERT INTO [users] (username,password,role,email) values('" + userName.Text + "','" + userPassword.Text + "'," + 5 + ",'" + userEmail.Text + "')";
            int response = Sevices.execute(sql, connection);
            if (response != 0)
            {
                string user = "SELECT * FROM [users] WHERE email = '" + userEmail.Text + "' AND password = '" + userPassword.Text + "'";
                DataTable data = Sevices.select(user, connection);
                if (data.Rows.Count > 0)
                {
                    DataRow row = data.Rows[0];
                    int id2 = Convert.ToInt32(row["role"]);
                    if (id2 == 5)
                    {
                        string role = "SELECT * FROM [roles] WHERE id = "+id2+"";
                        DataTable data2 = Sevices.select(role, connection);

                        if(data2.Rows.Count > 0)
                        {
                            DataRow row2 = data2.Rows[0];
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