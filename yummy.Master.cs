using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using yummy.admin;
using yummy.Comman;

namespace yummy
{
    public partial class yummy : System.Web.UI.MasterPage
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] != null)
            {             
                //logout.Visible = true;
                signin.Visible = false;
                signup.Visible = false;
                addrestaurnt.Visible = false;
                display_ordersdata();
            }
            else
            {                
                //logout.Visible = false;
                signin.Visible = true;
                signup.Visible = true;
                addrestaurnt.Visible = true;
            }
        }

        protected void display_ordersdata()
        {
            int id = Convert.ToInt32(Session["id"]);            

            try
            {
                string sql = "SELECT * FROM [orders] WHERE userId = " + id;
                DataTable dt = Sevices.select(sql, connection);

                if (dt.Rows.Count > 0)
                {
                    orders.DataSource = dt;
                    orders.DataBind();
                }
                

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}