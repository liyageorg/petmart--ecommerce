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
    public partial class feedback : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ins = "insert into Feedback values(" + Session["uid"] + ",'" + TextBox2.Text + "','nill',0)";
            int i = obj.fn_nonquery(ins);
            if (i == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Feedback sent!";
            }
            else
            {
                Label1.Visible = false;
            }
        }
    }
}