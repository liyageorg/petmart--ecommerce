using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace PET_MART
{
    public partial class reply : System.Web.UI.Page
    {
        connection obj = new connection();
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "select Admin_email from Admin where admin_id=" + Session["uid"] + "";
            SqlDataReader dr = obj.fn_reader(s);
            while (dr.Read())
            {
                TextBox2.Text = dr["admin_email"].ToString();
            }
            string sel = "SELECT dbo.Usert.User_email FROM dbo.Usert INNER JOIN dbo.Feedback ON dbo.Usert.User_id = dbo.Feedback.User_id where dbo.Feedback.User_id=" + Session["fid"] + "";
            SqlDataReader dr1 = obj.fn_reader(sel);
            while (dr1.Read())
            {
                TextBox1.Text = dr1["User_email"].ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selna = "select Admin_name from Admin where Admin_id=" + Session["uid"] + "";
            string na = obj.fn_scalar(selna);
            string selcna = "SELECT dbo.Usert.User_name FROM dbo.Usert INNER JOIN dbo.feedback ON dbo.Usert.User_id = dbo.Feedback.User_id where dbo.Feedback.User_id=" + Session["fid"] + "";
            string cna = obj.fn_scalar(selcna);

            SendEmail2(na, TextBox2.Text, "ewvg ylwm styv gkdo", cna, TextBox1.Text, TextBox3.Text, TextBox4.Text);

            string upd = "UPDATE Feedback SET feed_reply = '" + TextBox4.Text + "', feed_status = 1 WHERE User_id = " + Session["fid"] + "";
            obj.fn_nonquery(upd);

            Label6.Visible = true;
            Label6.Text = "Email sent successfully!";
        }

        public static void SendEmail2(string yourname, string yourGmailUserName, string yourGmailPassword, string tonaame, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}