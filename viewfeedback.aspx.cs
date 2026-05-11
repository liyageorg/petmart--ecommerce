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
    public partial class viewfeedback : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string sel = "SELECT Usert.User_id, Usert.User_name, Feedback.feed_mesg, Feedback.Feed_id " +
             "FROM Usert INNER JOIN Feedback ON Usert.User_id = Feedback.User_id " +
             "WHERE Feedback.feed_status = 0";
                DataSet ds = obj.fn_dataset(sel);
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            Session["fid"] = getid;
            Response.Redirect("reply.aspx");
        }
    }
}