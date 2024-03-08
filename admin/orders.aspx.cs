using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yummy.Comman;

namespace yummy.admin
{
    public partial class orders : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            display_ordersdata();
        }

        protected void display_ordersdata()
        {
            int id = Convert.ToInt32(Session["restauranId"]);           
            try
            {
                string sql = "SELECT * FROM [orders] WHERE resId = " + id;
                DataTable dt = Sevices.select(sql, connection);

                if (dt.Rows.Count > 0)
                {
                    ordersRepeater.DataSource = dt;
                    ordersRepeater.DataBind();
                }
                else
                {
                    Response.Write("<script>alert('you don't have an orders')</script>");
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}