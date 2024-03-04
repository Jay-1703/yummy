using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Web.Services.Description;
using System.Web.UI.WebControls;
using System.Web;
using yummy.Comman;

namespace yummy.admin
{
    public partial class Addproducts : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection("Data Source=PATEL\\SQLEXPRESS;Initial Catalog=yummy;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int restauranId = Convert.ToInt32(Session["restauranId"]);

                string sql = "SELECT * FROM [categorys] WHERE restaurantId = " + restauranId + "";
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
            //string sql2 = "INSERT INTO [products] (productname,price,categoryId,qty) values('" + productname.Text + "','" + productprice.Text + "'," + categoryList.SelectedValue + ",'" + quantity.Text + "')";
            //int response = Sevices.execute(sql2, connection);
            //if (response != 0)
            //{
            //    Response.Redirect("/admin/dashboard.aspx");
            //}
            //else
            //{
            //    Response.Write("<script>alert('Product not added !!')</script>");
            //}



            string path = Server.MapPath("\\admin\\uploads\\");
            string name;
            //if (!Directory.Exists(path))
            //{
            //    Directory.CreateDirectory(path);
            //}

            if (FileUpload1.HasFile)
            {
                string filename = Path.GetFileName(FileUpload1.FileName);
                //string extension = Path.GetExtension(filename);
                HttpPostedFile postedFile = FileUpload1.PostedFile;
                int length = postedFile.ContentLength;

                //if (extension.ToLower() == ".jpg" || extension.ToLower() == ".png" || extension.ToLower() == ".jpeg")
                //{
                    FileUpload1.SaveAs(Path.Combine(path, filename));
                    name = "admin/uploads/" + filename;

                    string sql = "INSERT INTO [products] (productname,price,categoryId,qty,image) values('" + productname.Text + "','" + productprice.Text + "'," + categoryList.SelectedValue + ",'" + quantity.Text + "','" + name + "')";
                    int response = Sevices.execute(sql, connection);

                    if (response == 1)
                    {
                        Response.Redirect("/admin/dashboard.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Something goes wrong!')</script>");
                    }
                //}
            }

        }
    }
}