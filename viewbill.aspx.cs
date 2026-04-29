using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


namespace PET_MART
{
    public partial class viewbill : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                int uid = Convert.ToInt32(Session["uid"]);
                string sel = "SELECT dbo.Payment.Payment_id, dbo.Payment.Bill_date, " +
              "dbo.Usert.User_name, dbo.Usert.User_address, dbo.Usert.User_email, " +
              "dbo.Orderr.quantity, dbo.Orderr.Product_price, dbo.Orderr.Subtotal, " +
              "dbo.Payment.Grand_total " +
              "FROM dbo.Payment " +
              "INNER JOIN dbo.Usert ON dbo.Payment.User_id = dbo.Usert.User_id " +
              "INNER JOIN dbo.Orderr ON dbo.Payment.User_id = dbo.Orderr.User_id " +
              "WHERE dbo.Payment.User_id=" + Session["uid"];

                SqlDataReader dr = obj.fn_reader(sel);
                while (dr.Read())
                {
                    Label2.Text = dr["Payment_id"].ToString();
                    Label4.Text = Convert.ToDateTime(dr["Bill_date"]).ToString("dd-MM-yyyy");
                    Label6.Text = dr["User_name"].ToString();
                    Label8.Text = dr["User_address"].ToString();
                    Label10.Text = dr["User_email"].ToString();
                    //Label12.Text = dr["Quantity"].ToString();
                    //Label14.Text = dr["Product_price"].ToString();
                    //Label16.Text = dr["Subtotal"].ToString();
                    Label18.Text = dr["Grand_total"].ToString();
                }

                string seldetl = "SELECT dbo.Product.product_id, dbo.Product.Product_name,dbo.product.Product_price, dbo.Orderr.Quantity, dbo.orderr.subtotal, dbo.orderr.order_status FROM dbo.product INNER JOIN dbo.orderr ON dbo.product.product_id = dbo.orderr.product_id where orderr.user_id=" + uid + " and order_status='order'";
                DataSet ds = obj.fn_dataset(seldetl);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        
    }
}