using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;
using yummy.Comman;

namespace yummy.admin
{
    public partial class index : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                if ((string)Session["role"] == "restaurant")
                {

                    Label1.Visible = true;
                    Label1.Text = "List of categotys";
                    Label2.Visible = true;
                    Label2.Text = "List of products";

                    display_categorysdata();
                    display_productsdata();
                }
                else if ((string)Session["role"] == "admin")
                {
                    display_restaurantsdata();
                    Label1.Visible = true;
                    Label1.Text = "List of restaurants";
                    Label2.Visible = false;
                }
            }
        }
        protected void display_categorysdata()
        {
            int restauranId = Convert.ToInt32(Session["restauranId"]);
            try
            {
                Response.Write("<script>alert('" + restauranId + "')</script>");
                string sql = "SELECT * FROM [categorys] WHERE restaurantId = " + restauranId + "";
                DataTable dt = Sevices.select(sql, connection);

                if (dt.Rows.Count > 0)
                {
                    showCategorys.DataSource = dt;
                    showCategorys.DataBind();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        protected void display_productsdata()
        {

            try
            {
                int restauranId = Convert.ToInt32(Session["restauranId"]);

                string sql2 = "SELECT products.id, products.productname, products.price, products.qty, products.categoryId, categorys.categoryname " +
              "FROM [products] " +
              "INNER JOIN [categorys] ON products.categoryId = categorys.id " +
              "WHERE categorys.restaurantId = " + restauranId;

                DataTable dt2 = Sevices.select(sql2, connection);

                if (dt2.Rows.Count > 0)
                {
                    showProducts.DataSource = dt2;
                    showProducts.DataBind();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        protected void display_restaurantsdata()
        {

            try
            {
                string sql = "SELECT * FROM [frenchies]";
                DataTable dt = Sevices.select(sql, connection);

                if (dt.Rows.Count > 0)
                {
                    restaurantData.DataSource = dt;
                    restaurantData.DataBind();
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }

        protected void showProducts_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DeleteRecord")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                String sql = "DELETE FROM [products] WHERE id = " + id + "";
                int response = Sevices.execute(sql, connection);
                if (response != 0)
                {
                    Response.Redirect("dashboard.aspx");
                }
            }
        }

        protected void showCategorys_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DeleteCategotyRecord")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                string sql = "DELETE FROM [products] WHERE categoryId = " + id + "";
                int response = Sevices.execute(sql, connection);

                if (response != 0)
                {
                    String sql2 = "DELETE FROM [categorys] WHERE id = " + id + "";
                    int response2 = Sevices.execute(sql2, connection);
                    if (response2 != 0)
                    {
                        Response.Redirect("dashboard.aspx");
                    }
                }
            }
        }

        protected void restaurantData_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "DeleteRestaurantRecord")
            {
                int id = Convert.ToInt32(e.CommandArgument);
                string sql = "DELETE FROM [products] WHERE categoryId = " + id + "";
                int response = Sevices.execute(sql, connection);

                String sql2 = "DELETE FROM [categorys] WHERE restaurantId = " + id + "";
                int response2 = Sevices.execute(sql2, connection);

                String sql3 = "DELETE FROM [frenchies] WHERE id = " + id + "";
                int response3 = Sevices.execute(sql3, connection);
                if (response3 != 0)
                {
                    Response.Redirect("dashboard.aspx");
                }
            }

        }
    }
}