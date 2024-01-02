using System;
using System.Data;
using System.Data.SqlClient;

namespace yummy
{
    public partial class Restaurantlogin : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginCafe_Click(object sender, EventArgs e)
        {
            try
            {
                connection.Open();

                string user = "SELECT * FROM [frenchies] WHERE email = '" + email.Text + "' AND password = '" + password.Text + "'";
                SqlCommand command = new SqlCommand(user, connection);
                SqlDataAdapter data = new SqlDataAdapter(command);
                DataTable dataTable = new DataTable();
                data.Fill(dataTable);
               
                if (dataTable.Rows.Count >= 0)
                {
                    DataRow row = dataTable.Rows[0];
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
                                Session["restaurantName"] = (string)(row["username"]);
                                Session["email"] = (string)row["email"];
                                Session["restauranId"] = (int)row["id"];
                                Response.Redirect("admin/dashboard.aspx");
                            }
                        }
                        else
                        {
                            Response.Write("Role not found for the specified ID.");
                        }

                    }

                }
                connection.Close();
            }
            catch (Exception error)
            {
                Response.Write(error);
            }
        }
    }
}