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
    public partial class adminreg : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select max(reg_id)from login";
            string maxregid = obj.fn_scalar(sel);
            int reg_id = 0;
            if (maxregid == "")
            {
                reg_id = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                reg_id = newregid + 1;
            }

            string ins = "insert into Admin values (" + reg_id + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ")";
            int i = obj.fn_nonquery(ins);
            if (i == 1)
            {
                string inslog = "insert into Login values(" + reg_id + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','Admin')";
                int j = obj.fn_nonquery(inslog);
                if (i == 1 && j == 1)
                {
                    Label4.Visible = true;
                    Label4.Text = "success";
                }
            }
        }
    }
}