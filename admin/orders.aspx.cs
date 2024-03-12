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
            if (!IsPostBack)
            {
                display_ordersdata();
            }
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

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
        private void GetDataOrderById(string Id)
        {
            int OrderId = Convert.ToInt32(Id);
            string sql = "SELECT * FROM [orders] WHERE id = " + OrderId;
            DataTable data = Sevices.select(sql, connection);
            if (data.Rows.Count > 0)
            {
                DataRow row = data.Rows[0];
                orderid.Text = row["id"].ToString();
                productname.Text = row["productname"].ToString();
                productprice.Text = row["productprice"].ToString();
                quantity.Text = row["quantity"].ToString();
                totalprice.Text = row["totalprice"].ToString();
                orderid.Text = row["id"].ToString();
                status.Items.FindByValue(row["status"].ToString()).Selected = true;              
            }
        }

        protected void ordersRepeater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "ShowEditOrderModal")
            {
                string id = e.CommandArgument.ToString();
                GetDataOrderById(id);
                ScriptManager.RegisterStartupScript(this, GetType(), "showModal", "$('#updateOrderModal').modal('show');", true);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int id = Convert.ToInt32(orderid.Text);
            string value = status.SelectedValue;

            string sql = "UPDATE orders set status = '" + value + "' WHERE id = " + id;
            int affectedRows = Sevices.execute(sql, connection);
            if (affectedRows > 0)
            {
                Response.Redirect("dashboard.aspx");
                UpdatePanel1.Update();
                ordersRepeater.DataBind();
            }
        }
    }
}