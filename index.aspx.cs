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
                    ScriptManager.RegisterStartupScript(this, GetType(), "showModal", "$('#showOrderModel').modal('show');", true);
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
             "frenchies.id AS FrenchieId, " +
             "frenchies.address AS FrenchieAddress, " +
             "frenchies.city AS FrenchieCity, " +
             "frenchies.state AS FrenchieState, " +
             "categorys.categoryname AS CategoryName, " +
             "products.productname AS ProductName, " +
             "products.price AS ProductPrice, " +
             "products.qty AS ProductQty, " +
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
                qty.Text = row["ProductQty"].ToString();
                int totalPrice = Convert.ToInt32(row["ProductQty"]) * Convert.ToInt32(row["ProductPrice"]);
                totalprice.Text = totalPrice.ToString();
                resid.Text = row["FrenchieId"].ToString();
            }
        }

        protected void placeOrder_Click(object sender, EventArgs e)
        {
            int totalPrice = Convert.ToInt32(qty.Text) * Convert.ToInt32(price.Text);
            totalprice.Text = totalPrice.ToString();

            string userId = Session["id"].ToString();            // Assuming userId is a string type
            int resId = Convert.ToInt32(resid.Text);
            string productName = productname.Text; // Assuming productname is a string type
            string quantity = qty.Text; // Assuming qty is a string type
            string productPrice = price.Text; // Assuming price is a string type
            string userAddress = useraddress.Text; // You need to define userAddress, as it's not clear from the provided code

            string sql = "INSERT INTO [orders] (userId, productname, quantity, productprice, totalprice, status, resId, useraddress) VALUES (" + Convert.ToInt32(userId) + ", '" + productName + "', " + Convert.ToInt32(quantity) + ", " + Convert.ToInt32(productPrice) + ", " + Convert.ToInt32(totalPrice) + ", 'Pending', " + resId + ", '" + userAddress + "')";

            int response = Sevices.execute(sql, connection);

            if (response == 1)
            {
                if (Sevices.SendEmail("pjay41907@gmail.com", "Jay"))
                {
                    Response.Write("<script>alert('mail ok!')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Something goes wrong for mail!')</script>");
                }
                //ScriptManager.RegisterStartupScript(this, GetType(), "showModal", "$('#showOrderSuccessModel').modal('show');", true);
                //Response.Redirect("/index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Something goes wrong!')</script>");
            }

        }
    }
}