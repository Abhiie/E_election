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
namespace E_election.Admin
{
    public partial class AddVoters : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            try
            {
                string auth = Session["auth"].ToString();


                BtnSubmit.Visible = false;
                txtOtp.Visible = false;
            }
            catch (NullReferenceException err)
            {
                Response.Write("<script>alert('Login first..');window.location = 'LoginAdmin.aspx';</script>"); //works great
                                                                                                                // Response.Redirect("LoginAdmin.aspx");
            }

        }

        protected void txtCNumber_TextChanged(object sender, EventArgs e)
        {

        }

        protected void BtnGenerateOtp_Click(object sender, EventArgs e)
        {
            BtnSubmit.Visible = true;
            txtOtp.Visible = true;
            MailMessage msg = new MailMessage();
            msg.From = new MailAddress("abhimailsample@gmail.com");
            string email = txtEmailid.Text;
            msg.To.Add(email);
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

            //lbmsg.Text = "Email Sent Successfully";
            //lbmsg.ForeColor = System.Drawing.Color.ForestGreen;
            Session["OTPVoter"] = OTP;
        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            try
            {

                if (Session["OTPVoter"].ToString() == txtOtp.Text)
                {
                    //Response.AppendHeader("Refresh", "5;url=Page2.aspx");
                    SqlConnection conn = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=E-election;Integrated Security=True");
                    conn.Open();
                    string Voted = "Not";
                    string insert_query = "insert into Voters (Fname,Lname,Contact_number,Email_id,Pan_number,Voted) values (@Fname ,@Lname ,@Contact_number,@Email_id,@Pan_number,@Voted)";
                    SqlCommand cmd = new SqlCommand(insert_query, conn);
                    cmd.Parameters.AddWithValue("@Fname", txtFName.Text);
                    cmd.Parameters.AddWithValue("@Lname", txtLname.Text);
                    cmd.Parameters.AddWithValue("@Contact_number", txtCNumber.Text);
                    cmd.Parameters.AddWithValue("@Email_id", txtEmailid.Text);
                    cmd.Parameters.AddWithValue("@Pan_number", txtPanNumber.Text);
                    cmd.Parameters.AddWithValue("@Voted", Voted);

                    int rowsAffected = cmd.ExecuteNonQuery();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Voter added');window.location.href='Home.aspx';", true);


                    conn.Close();
                    Session["OTPVoter"] = null;
                    
                   
                }
                else
                {
                    Response.Redirect("LoginAdmin.aspx");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Registration Is not Successfully');window.location = 'LoginAdmin.aspx';</script>"); //works great


            }
        }
    }
}
