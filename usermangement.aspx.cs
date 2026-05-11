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
    public partial class usermangement : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                get_grid();
        }

        public void get_grid()
        {
            string sel = "select User_id, User_name, User_email, User_status from Usert";
            DataSet ds = obj.fn_dataset(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
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
            RadioButtonList rad = (RadioButtonList)GridView1.Rows[i].FindControl("RadioButtonList1");
            string s = rad.SelectedItem.Text;
            string upd = "update Usert set User_status='" + s + "' where user_id=" + getid + "";
            obj.fn_nonquery(upd);
            GridView1.EditIndex = -1;
            get_grid();
        }
    }
}