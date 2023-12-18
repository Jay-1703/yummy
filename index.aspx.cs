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
                string sql = "SELECT frenchies.id,frenchies.username,frenchies.address,frenchies.city,frenchies.state FROM [frenchies] INNER JOIN [categorys] ON frenchies.id = categorys.restaurantId INNER JOIN [products] ON categorys.id = products.categoryId ";
                DataTable data = Sevices.select(sql, connection);

                if (data.Rows.Count > 0)
                {
                    DataRow row = data.Rows[0];

                    Response.Write("<script>alert('"+ row["username"] + "')</script>");
                    //showCategorys.DataSource = dt;
                    //showCategorys.DataBind();

                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}