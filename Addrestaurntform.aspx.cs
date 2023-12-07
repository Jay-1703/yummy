using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;

namespace yummy
{
    public partial class Addrestaurntform : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addRestaurant_Click(object sender, EventArgs e)
        {
            connection.Open();
            string sql = "INSERT INTO [frenchies] (username,email,password,address,city,state,websiteurl,role) values('" + restaurantname.Text + "','" + email.Text + "'," +
                "'" + password.Text + "','" + address.Text + "','" + city.Text + "','" + state.Text + "','" + weburl.Text + "', " + 6 + ")";
            SqlCommand cmd = new SqlCommand(sql, connection);
            cmd.ExecuteNonQuery();

            string sql2 = "SELECT rolename FROM roles WHERE id = " + 3 + "";
            SqlDataAdapter data = new SqlDataAdapter(sql2, connection);
            DataTable dataTable = new DataTable();
            data.Fill(dataTable);
            if (dataTable.Rows.Count >= 0)
            {
                string roleName = dataTable.Rows[0]["rolename"].ToString();
                if (!string.IsNullOrEmpty(roleName))
                {
                    Session["role"] = roleName;
                    Session["restaurantName"] = restaurantname.Text;
                    Session["email"] = email.Text;
              
                    Response.Redirect("admin/dashboard.aspx");
                }
                else
                {
                    Response.Write("Role not found for the specified ID.");
                }
            }
            connection.Close();
        }
    }
}