using System;
using System.Data;
using System.Data.SqlClient;
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

                string sql2 = "SELECT products.id, products.productname, products.price, products.qty,products.image, products.categoryId, categorys.categoryname " +
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
            if (e.CommandName == "ShowEditProductsModal")
            {             
                string id = e.CommandArgument.ToString();
                GetDataProductsById(id);            
                ScriptManager.RegisterStartupScript(this, GetType(), "showModal", "$('#updateProductsModal').modal('show');", true);
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
            if (e.CommandName == "showUpdateCategoryModel")
            {
                string id = e.CommandArgument.ToString();
                GetDataCategoryById(id);
                ScriptManager.RegisterStartupScript(this, GetType(), "showModal", "$('#updateCategoriesModal').modal('show');", true);
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

        private void GetDataProductsById(string Id)
        {
            int restauranId = Convert.ToInt32(Session["restauranId"]);

            string sql2 = "SELECT * from products WHERE id = " + Id;
            DataTable dt = Sevices.select(sql2, connection);
            DataRow productRow = dt.Rows[0];
            productname.Text = productRow["productname"].ToString();
            productprice.Text = productRow["price"].ToString();
            quantity.Text = productRow["qty"].ToString();
            productid.Text = productRow["id"].ToString();
            
            string sql = "SELECT * FROM [categorys] WHERE restaurantId = " + restauranId;
            DataTable data = Sevices.select(sql, connection);
            if(dt.Rows.Count > 0)
            {
                categoryList.DataSource = data;
                categoryList.DataValueField = "id";
                categoryList.DataTextField = "categoryname";
                categoryList.DataBind();
            }


            if (categoryList.Items.FindByValue(productRow["categoryId"].ToString()) != null)
            {
                categoryList.Items.FindByValue(productRow["categoryId"].ToString()).Selected = true;
            }
        }

        private void GetDataCategoryById(string Id)
        {            
            string sql = "SELECT * from categorys WHERE id = " + Id;
            DataTable dt = Sevices.select(sql, connection);
            DataRow categoryRow = dt.Rows[0];
            categoryname.Text = categoryRow["categoryname"].ToString();            
            categoryid.Text = categoryRow["id"].ToString();           
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(productid.Text);

            string sql = "UPDATE products set categoryId = " + categoryList.SelectedValue + ", productname = '" + productname.Text + "',price = '" + productprice.Text + "', qty = '" + quantity.Text + "' WHERE id = " + id;
            int affectedRows = Sevices.execute(sql, connection);
            if (affectedRows > 0)
            {
                Response.Redirect("dashboard.aspx");
                UpdatePanel1.Update();
                showProducts.DataBind();
            }

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(categoryid.Text);

            string sql = "UPDATE categorys set categoryname = '" + categoryname.Text + "' WHERE id = " + id;
            int affectedRows = Sevices.execute(sql, connection);
            if (affectedRows > 0)
            {
                Response.Redirect("dashboard.aspx");
                UpdatePanel2.Update();
                showCategorys.DataBind();
            }
        }
    }
}