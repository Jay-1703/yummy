﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Common;
using System.Data;
using System.Windows.Input;

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
            int primaryKey;
            string sql = "INSERT INTO [frenchies] (username,email,password,address,city,state,websiteurl,role) values('" + restaurantname.Text + "','" + email.Text + "'," +
                "'" + password.Text + "','" + address.Text + "','" + city.Text + "','" + state.Text + "','" + weburl.Text + "', " + 6 + ") SELECT SCOPE_IDENTITY()";
            SqlCommand cmd = new SqlCommand(sql, connection);
            cmd.ExecuteNonQuery();

            // Execute the INSERT query and retrieve the last inserted ID
            string res = "SELECT * FROM frenchies WHERE username = " + restaurantname.Text+ "";
            SqlDataAdapter da = new SqlDataAdapter(res, connection);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if (dt.Rows.Count >= 0)
            {
                primaryKey = Convert.ToInt32(dt.Rows[0]["id"]);
                Session["restauranId"] = primaryKey;
  
            }

          
            string sql2 = "SELECT rolename FROM roles WHERE id = " + 6 + "";
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