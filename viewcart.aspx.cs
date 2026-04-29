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
    public partial class viewcart : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                get_grid();
        }

        public void get_grid()
        {
            string sel = "SELECT dbo.cart.cart_id, dbo.product.product_image,dbo.product.product_name, dbo.product.product_price, dbo.cart.quantity, dbo.cart.subtotal FROM dbo.cart INNER JOIN dbo.product ON dbo.cart.product_id = dbo.product.product_id where dbo.cart.user_id=" + Session["uid"] + " and dbo.cart.cart_status=1";
            DataSet ds = obj.fn_dataset(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string del = "delete from cart where cart_id=" + getid + "";
            obj.fn_nonquery(del);
            get_grid();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            get_grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            get_grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int getid = Convert.ToInt32(GridView1.DataKeys[i].Value);
            string sel1 = "SELECT dbo.product.product_price FROM dbo.cart INNER JOIN dbo.product ON dbo.cart.product_id = dbo.product.product_id where cart_id=" + getid + "";
            string s = obj.fn_scalar(sel1);
            int j = Convert.ToInt32(s);
            TextBox txtqty = (TextBox)GridView1.Rows[i].Cells[5].Controls[0];
            string upd1 = "update cart set quantity=" + txtqty.Text + " where cart_id=" + getid + "";
            obj.fn_nonquery(upd1);
            string sel2 = "select quantity from cart where cart_id=" + getid + "";
            string t = obj.fn_scalar(sel2);
            int k = Convert.ToInt32(t);
            int subtotal = k * j;
            string upd = "update cart set subtotal=" + subtotal + " where cart_id=" + getid + "";
            obj.fn_nonquery(upd);
            GridView1.EditIndex = -1;
            get_grid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sl = "select product_id from cart where user_id=" + Session["uid"] + " and cart_status=1";
            SqlDataReader dr = obj.fn_reader(sl);
            List<int> ptdidlst = new List<int>();

            while (dr.Read())
            {
                ptdidlst.Add(Convert.ToInt32(dr["product_id"]));
            }
            foreach (int pid in ptdidlst)
            {
                string sldet = "select dbo.cart.quantity, " +
                  "cast(dbo.cart.subtotal as int) as subtotal, " +
                  "cast(dbo.product.product_price as int) as product_price " +
                  "from dbo.cart inner join dbo.product " +
                  "on dbo.cart.product_id = dbo.product.product_id " +
                  "where dbo.cart.product_id=" + pid +
                  " and dbo.cart.user_id=" + Session["uid"];

                SqlDataReader dr1 = obj.fn_reader(sldet);
                int qty = 0, price = 0, subtotal = 0;
                while (dr1.Read())
                {
                    price = Convert.ToInt32(dr1["Product_price"]);
                    qty = Convert.ToInt32(dr1["quantity"]);
                    subtotal = Convert.ToInt32(dr1["Subtotal"]);
                }

                string ins = "insert into orderr values(" + Session["uid"] + "," + pid + ", " + qty + "," + price + ", "+ subtotal + ",'order')";
                obj.fn_nonquery(ins);

                string updt = "update cart set cart_status=0 where product_id=" + pid +
               " and user_id=" + Session["uid"];
                obj.fn_nonquery(updt);
            }

            string sm = "select sum(cast(subtotal as int)) from orderr where user_id="
              + Session["uid"] + " and order_status='order'";
            string a = obj.fn_scalar(sm);

            string insbill = "insert into Payment values(" + Session["uid"] + "," + a + ",'" + DateTime.Now.ToString("yyyy-MM-dd") + "')";
            obj.fn_nonquery(insbill);

            Response.Redirect("viewbill.aspx");
        }
    }
}