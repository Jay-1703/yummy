using System;
using System.Data.SqlClient;
using yummy.Comman;
using System.Data;
using System.Web.UI.WebControls;
using System.Web.UI;
using System.Xml.Linq;

namespace yummy.admin
{
    public partial class admin : System.Web.UI.MasterPage
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");
        int resId = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["role"] == "restaurant")
            {
                Name.Text = (string)Session["restaurantName"];
                GetRestaurantData((string)Session["restaurantName"]);

            }
            else if ((string)Session["role"] == "admin")
            {
                Name.Text = (string)Session["admin"];
                //username.Text = (string)Session["admin"];
                addProducts.Visible = false;
                addItems.Visible = false;
                showOrder.Visible = false;
            }
            else if ((string)Session["role"] == "restaurant")
            {
                Response.Redirect("Restaurantlogin.aspx");
            }
            else if ((string)Session["role"] == "admin")
            {
                Response.Redirect("adminLogin.aspx");
            }
        }
        private void GetRestaurantData(string name)
        {
            string sql = "SELECT * FROM [frenchies] WHERE username = '" + name + "'";
            DataTable data = Sevices.select(sql, connection);

            if (data.Rows.Count > 0)
            {
                DataRow row = data.Rows[0];
                restaurantname.Value = row["username"].ToString();
                city.Value = row["city"].ToString();
                state.Value = row["state"].ToString();
                address.Value = row["address"].ToString();
                weburl.Value = row["websiteurl"].ToString();
                email.Value = row["email"].ToString();
                resId = Convert.ToInt32(row["id"]);
            }
        }

        protected void restaurantProfile_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('" + restaurantname.Value + "')</script>");
            string sql = "UPDATE [frenchies] set username = '" + restaurantname.Value + "', email = '" + email.Value + "', address = '" + address.Value + "', city = '" + city.Value + "', state = '" + state.Value + "',websiteurl = '" + weburl.Value + "' WHERE id = " + resId;
            int affectedRows = Sevices.execute(sql, connection);
            if (affectedRows > 0)
            {
                Response.Redirect("dashboard.aspx");
            }
        }
    }
}