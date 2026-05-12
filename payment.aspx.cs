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
    public partial class payment : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string amt = "select Grand_total from Payment where User_id=" + Session["uid"] + "";
                SqlDataReader dr = obj.fn_reader(amt);
                while (dr.Read())
                {
                    TextBox1.Text = dr["Grand_total"].ToString();
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        

        protected void Button3_Click(object sender, EventArgs e)
        {
            string accdtl = "insert into Account values(" + Session["uid"] + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox3.Text + "')";
            int i = obj.fn_nonquery(accdtl);
            if (i == 1)
            {
                Label7.Visible = true;
                Label7.Text = "Account details added!";
            }
            else
            {
                Label7.Visible = false;
            }
        }

        protected void TextBox4_TextChanged(object sender, EventArgs e)
        {
            string caccno = "select count(Acc_num) from Account where user_id=" + Session["uid"] + " and Acc_num=" + TextBox4.Text + "";
            string j = obj.fn_scalar(caccno);
            if (j == "1")
            {
                Label7.Visible = true;
                Label7.Text = "Already exists!";
            }
            else
            {
                Label7.Visible = false;
            }
        }


        protected void Button1_Click(object sender, EventArgs e)
        {

            ServiceReference1.ServiceClient ob = new ServiceReference1.ServiceClient();

            long accno;

            if (!long.TryParse(TextBox2.Text.Trim(), out accno))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Enter valid account number');", true);
                return;
            }

            string s = ob.balancheck(accno.ToString());

            if (s == "")
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Invalid account number');", true);
                return;
            }

            decimal balance;

            if (!decimal.TryParse(s, out balance))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Invalid balance returned: " + s + "');", true);
                return;
            }

            decimal amount;

            if (!decimal.TryParse(TextBox1.Text.Trim(), out amount))
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Enter valid amount');", true);
                return;
            }

            if (balance < amount)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Insufficient balance');", true);
                return;
            }

            // Update order status and product stock
            string pid = "select Product_id from Orderr where User_id=" + Session["uid"] + " and Order_status='order'";
            SqlDataReader dr1 = obj.fn_reader(pid);

            List<string> pdlist = new List<string>();

            while (dr1.Read())
            {
                pdlist.Add(dr1["Product_id"].ToString());
            }

            foreach (string productid in pdlist)
            {
                string ord = "select * from Orderr where User_id=" + Session["uid"] + " and Product_id=" + productid;
                SqlDataReader dr2 = obj.fn_reader(ord);

                string qty = "";

                while (dr2.Read())
                {
                    qty = dr2["quantity"].ToString();
                }

                string upd = "update Orderr set Order_status='paid' where User_id=" + Session["uid"] + " and Product_id=" + productid;
                obj.fn_nonquery(upd);

                string prodstock = "select Product_stock from Product where Product_id=" + productid;
                string k = obj.fn_scalar(prodstock);

                int oldstock = Convert.ToInt32(k);
                int orderedqty = Convert.ToInt32(qty);
                int updatedstk = oldstock - orderedqty;

                string up = "update Product set Product_stock=" + updatedstk + " where Product_id=" + productid;
                obj.fn_nonquery(up);
            }

            // Reduce account balance
            decimal newbalance = balance - amount;
            int uid1 = Convert.ToInt32(Session["uid"]);

            int result = ob.updateamount(accno.ToString(), uid1, newbalance);

            if (result == 1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Payment Successful!');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert",
                    "alert('Payment failed');", true);
            }
        }
    }
}