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
    public partial class login : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(reg_id) from Login where username = '" + TextBox2.Text + "' and password = '" + TextBox1.Text + "'";
            string cid = obj.fn_scalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select reg_id from Login where username = '" + TextBox2.Text + "' and password = '" + TextBox1.Text + "'";
                string regid = obj.fn_scalar(str1);
                Session["uid"] = regid;

                string str2 = "select log_type from Login where username = '" + TextBox2.Text + "' and password = '" + TextBox1.Text + "'";
                string logtype = obj.fn_scalar(str2);

                if (logtype == "Admin")
                {
                    Response.Redirect("adminhome.aspx");
                }

                else if (logtype == "User")
                {
                    string str3 = "select user_status from usert where user_id=" + regid + "";
                    string userStatus = obj.fn_scalar(str3);

                    if (userStatus == "Active")
                    {
                        Response.Redirect("UserHome.aspx");
                    }
                }

                else
                {
                    Label3.Visible = true;
                    Label3.Text = "Invalid";
                }
            }
        }
    }
}
