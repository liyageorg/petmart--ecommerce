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
    public partial class editpro : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                data_bind();
        }

        public void data_bind()
        {
            string s = "select * from product";
            DataSet ds = obj.fn_dataset(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            data_bind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            data_bind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int id = Convert.ToInt32(GridView1.DataKeys[i].Value);


            TextBox txtdesc = (TextBox)GridView1.Rows[i].Cells[2].Controls[0];
            TextBox txtprice = (TextBox)GridView1.Rows[i].Cells[3].Controls[0];
            TextBox txtstock = (TextBox)GridView1.Rows[i].Cells[4].Controls[0];

            FileUpload fu = (FileUpload)GridView1.Rows[i].FindControl("FileUpload1");

            string path = "";

            

            if (fu.HasFile)
            {
                path = "~/images/" + fu.FileName;
                fu.SaveAs(MapPath(path));
            }

            string up = "update product set product_desc='" + txtdesc.Text +
                        "', product_price='" + txtprice.Text +
                        "', product_stock='" + txtstock.Text +
                        "', product_image='" + path +
                        "' where product_id=" + id + "";

            int j = obj.fn_nonquery(up);

            if (j == 1)
            {
                GridView1.EditIndex = -1;
                data_bind();
            }
        }
    }
    }
