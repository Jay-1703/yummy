using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yummy.Comman;
using System.Data;
using System.Reflection.Emit;
using System.Configuration;
using System.EnterpriseServices;
using System.Web.Services.Description;
using System.Xml.Linq;

namespace yummy
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                display_data();
            }
        }

        protected void display_data()
        {

            try
            {
                string sql = "SELECT frenchies.id AS FrenchieId, " +
                               "frenchies.username AS FrenchieUsername, " +
                               "frenchies.address AS FrenchieAddress, " +
                               "frenchies.city AS FrenchieCity, " +
                               "frenchies.state AS FrenchieState, " +
                               "categorys.id AS CategoryId, " +
                               "categorys.categoryname AS CategoryName, " +
                               "products.id AS ProductId, " +
                               "products.productname AS ProductName, " +
                               "products.price AS ProductPrice, " +
                               "products.image AS Productimage " +
                               "FROM [frenchies] " +
                               "INNER JOIN [categorys] ON frenchies.id = categorys.restaurantId " +
                               "INNER JOIN [products] ON categorys.id = products.categoryId";

                DataTable data = Sevices.select(sql, connection);

                if (data.Rows.Count > 0)
                {
                    cardRepeater.DataSource = data;
                    cardRepeater.DataBind();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void Order_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ShowOrderModel")
            {
                if (Session["user"] != null)
                {
                    string id = e.CommandArgument.ToString();
                    GetDataById(id);
                    ScriptManager.RegisterStartupScript(this, GetType(), "showModal", "$('#exampleModal').modal('show');", true);
                }
                else
                {
                    //Response.Write("<script>alert('Login is required for order!')</script>");
                    ScriptManager.RegisterStartupScript(this, GetType(), "loginAlert", "alert('Login is required for order!');", true);
                }
            }
        }

        private void GetDataById(string Id)
        {
            string sql = "SELECT " +
             "frenchies.username AS FrenchieUsername, " +
             "frenchies.address AS FrenchieAddress, " +
             "frenchies.city AS FrenchieCity, " +
             "frenchies.state AS FrenchieState, " +
             "categorys.categoryname AS CategoryName, " +
             "products.productname AS ProductName, " +
             "products.price AS ProductPrice, " +
             "products.image AS ProductImage " +
             "FROM [frenchies] " +
             "INNER JOIN [categorys] ON frenchies.id = categorys.restaurantId " +
             "INNER JOIN [products] ON categorys.id = products.categoryId " +
             "WHERE products.id = " + Id;

            DataTable data = Sevices.select(sql, connection);

            if (data.Rows.Count > 0)
            {
                DataRow row = data.Rows[0];                
                restaurantname.Text = row["FrenchieUsername"].ToString();
                city.Text = row["FrenchieCity"].ToString();                
                state.Text = row["FrenchieState"].ToString();
                categoryname.Text = row["CategoryName"].ToString();
                productname.Text = row["ProductName"].ToString();
                price.Text = row["ProductPrice"].ToString();                               
            }
        }
    }
}