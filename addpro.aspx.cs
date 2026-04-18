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
    public partial class addpro : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select cat_id,cat_name from category";
                DataSet ds = obj.fn_dataset(sel);
                DropDownList1.DataSource = ds;
                DropDownList1.DataTextField = "cat_name";
                DropDownList1.DataValueField = "cat_id";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, "-select-");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = "~/images/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(p));

            string ins = "insert into product values(" + DropDownList1.SelectedItem.Value + ",'" + TextBox1.Text + "','" + TextBox3.Text + "','" + p + "','" + TextBox2.Text + "','" + TextBox4.Text + "','available')";
            int i = obj.fn_nonquery(ins);
            if (i == 1)
            {
                Label4.Visible = true;
                Label4.Text = "Product added";
            }
            else
            {
                Label4.Visible = true;
                Label4.Text = "Unable to add product";
            }
        }
    }
}