using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using yummy.Comman;
namespace yummy.admin
{
    public partial class Addfooditems : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void addFoodItem_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(Session["id"]);
            string sql = "INSERT INTO [categorys] (categoryname,restaurantId) values('" + categoryname.Text + "'," + id + ")";
            int response = Sevices.execute(sql, connection);
            if (response != 0)
            {
                Response.Redirect("/admin/dashboard.aspx");
            }
            else
            {
                Response.Write("<script>alert('Category not added !!')</script>");
            }
        }
    }
}