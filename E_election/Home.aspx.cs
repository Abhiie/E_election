using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace E_election
{
    public partial class Home1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void vote_Click(object sender, EventArgs e)
        {
            string user = Session["UserPan"].ToString();
            SqlConnection SQLConnection = new SqlConnection();
            SQLConnection.ConnectionString = @"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=E-election;Integrated Security=True";
            string QueryCnt = "select Voted from Voters where Pan_number='" + user + "'";
            SqlCommand CmdCnt = SQLConnection.CreateCommand();
            CmdCnt.CommandText = QueryCnt;
            SQLConnection.Open();
            string VotedOrNot = CmdCnt.ExecuteScalar().ToString();
            if(VotedOrNot=="Not")
            {
                GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;

                string firstColData = grdrow.Cells[0].Text;
                string name = grdrow.Cells[1].Text;
                string secondColData = grdrow.Cells[2].Text;
                string thirdColData = grdrow.Cells[3].Text;
               
                DateTime start = Convert.ToDateTime(secondColData);
                DateTime end = Convert.ToDateTime(thirdColData);
                if (DateTime.Now >= start && DateTime.Now <= end)
                    Response.Redirect("voting.aspx?id=" + firstColData + "&title=" + name);
                else if (DateTime.Now < start)
                    lblStatus.Text = "Election not started!!";
                else
                    lblStatus.Text = "Election Over!!";
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Already VOted')", true);
                //ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Already VOted');window.location.href='Resources.aspx';", true);
                lblStatus.Text = "Already VOted";
            }
            

            
        }
    }
}