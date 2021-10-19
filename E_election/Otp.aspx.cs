using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_election
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            if (Session["OTP"].ToString() == txtOtp.Text)
            {
                //Response.AppendHeader("Refresh", "5;url=Page2.aspx");
                Response.Redirect("Home.aspx");
                Session["OTP"] = null;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}