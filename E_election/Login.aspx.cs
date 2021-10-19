using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Data;
using System.Data.SqlClient;
namespace E_election
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            string pan_number = txtPanNumber.Text;
            SqlConnection SQLConnection = new SqlConnection();
            SQLConnection.ConnectionString = @"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=E-election;Integrated Security=True";
            string QueryCnt = "select Email_id from Voters where Pan_number='" + pan_number + "'";
            SqlCommand CmdCnt = SQLConnection.CreateCommand();
            CmdCnt.CommandText = QueryCnt;
            SQLConnection.Open();
            string Email_id = (string)CmdCnt.ExecuteScalar();
            bool b2 = string.IsNullOrEmpty(Email_id);
            if (b2.ToString() == "True")
            {
                //Label1.Text = b2.ToString();//True is for empty string
                Session["User"] = "NonUser";
            }
            else
            {
                Session["User"] = "User";
              //  Label1.Text = b2.ToString();
                MailMessage msg = new MailMessage();
                msg.From = new MailAddress("abhimailsample@gmail.com");
                msg.To.Add(Email_id);
                Random r = new Random();
                msg.Subject = "One Time Password"; 
                string OTP = r.Next(1000, 9999).ToString();
                msg.Body = "Your One time password for login is :" + OTP;
                SmtpClient smt = new SmtpClient();
                smt.Host = "smtp.gmail.com";
                System.Net.NetworkCredential ntwd = new NetworkCredential();
                ntwd.UserName = "abhimailsample@gmail.com"; //Your Email ID  
                ntwd.Password = "E-Election2021"; // Your Password  
                smt.UseDefaultCredentials = true;
                smt.Credentials = ntwd;
                smt.Port = 587;
                smt.EnableSsl = true;
                smt.Send(msg);
                Session["UserPan"] = txtPanNumber.Text;
                //lbmsg.Text = "Email Sent Successfully";
                //lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
                Session["OTP"] = OTP;
                       Response.AppendHeader("Refresh", "5;url=Otp.aspx");
                //

                //
            }

        }
    }
}