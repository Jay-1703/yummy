using System;
using System.Data;
using System.Data.SqlClient;
using yummy.Comman;

namespace yummy.admin
{
    public partial class Addproducts : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (! IsPostBack)
            {
                int id = Convert.ToInt32(Session["id"]);
                string sql = "SELECT * FROM [categorys] WHERE restaurantId = " + id + "";
                DataTable data = Sevices.select(sql, connection);
                if (data.Rows.Count >= 0)
                {
                    categoryList.DataSource = data;
                    categoryList.DataTextField = "categoryname";
                    categoryList.DataValueField = "id";
                    categoryList.DataBind();
                }
            }
        }

        protected void addproduct_Click(object sender, EventArgs e)
        {
            string sql2 = "INSERT INTO [products] (productname,price,categoryId,qty) values('" + productname.Text + "','" + productprice.Text + "'," + categoryList.SelectedValue + ",'" + quantity.Text + "')";
            int response = Sevices.execute(sql2, connection);
            if (response != 0)
            {
                Response.Redirect("/admin/dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Product not added !!')</script>");
            }
        }
    }
}