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
    public partial class viewsingleproduct : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                TextBox1.Text = "0";
                string sel = "select * from product where product_id=" + Session["productid"] + "";
                SqlDataReader dr = obj.fn_reader(sel);
                while (dr.Read())
                {
                    Label1.Text = dr["product_name"].ToString();
                    Label2.Text = dr["product_desc"].ToString();
                    Label3.Text = dr["product_price"].ToString();
                    Image1.ImageUrl = dr["product_image"].ToString();

                    Session["stockavail"] = Convert.ToInt32(dr["product_stock"]);
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int qty = int.Parse(TextBox1.Text);
            if (qty > 1)
            {
                qty--;
            }
            TextBox1.Text = qty.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int qty = int.Parse(TextBox1.Text);
            qty++;
            TextBox1.Text = qty.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string subtotal = (Convert.ToInt32(Label3.Text) * Convert.ToInt32(TextBox1.Text)).ToString();

            string ins = "insert into cart values("
      + Session["productid"].ToString() + ","
      + Session["uid"].ToString() + ","
      + Convert.ToInt32(TextBox1.Text) + ","
      + Convert.ToInt32(subtotal) + ", '1')";
            int i = obj.fn_nonquery(ins);
            if (i == 1)
            {
                Label5.Visible = true;
                Label5.Text = "Added";
            }
            else
            {
                Label5.Visible = false;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {

        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            int stockavail = Convert.ToInt32(Session["stockavail"]);
            int enteredqty = Convert.ToInt32(TextBox1.Text);

            if (enteredqty > stockavail)
            {
                Label5.Visible = true;
                Label5.Text = "Out of stock";
            }
            else
            {
                Label5.Visible = false;
            }
        }
    }
}