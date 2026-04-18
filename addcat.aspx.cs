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
    public partial class addcat : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string ins = "insert into Category values('" + TextBox1.Text + "','" + p + "','" + TextBox2.Text + "','available')";
            int i = obj.fn_nonquery(ins);
            if (i == 1)
            {
                Label4.Visible = true;
                Label4.Text = "Category added";
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "Unable to add category";
            }
        }
    }
}