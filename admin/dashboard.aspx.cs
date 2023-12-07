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
            if ((string)Session["role"] == "restaurant")
            {
                display_categorysdata();
                display_productsdata(); 
            }
            else if ((string)Session["role"] == "admin")
            {

            }
        }
        protected void display_categorysdata()
        {

            try
            {
                string sql = "SELECT * FROM [categorys]";
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
                string sql2 = "SELECT * FROM [products]";
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
    }
}