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
    public partial class viewproduct : System.Web.UI.Page
    {
        connection obj = new connection();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "select * from Product where cat_id = " + Session["catid"] + " and Product_status = 'available'";
                DataTable dt = obj.fn_datatable(sel);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }

        protected void ImageButton3_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["productid"] = getid;
            Response.Redirect("viewsingleproduct.aspx");
        }
    }
}