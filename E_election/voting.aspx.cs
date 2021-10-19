using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
namespace E_election
{
    public partial class Voting : System.Web.UI.Page
    {
        int election_id;
        string title;
        string conString = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

            election_id = Convert.ToInt32(Request.QueryString["id"]);
            title = Request.QueryString["title"].ToString();
            lblStatus.Text = election_id + " " + title;
            using (SqlConnection con = new SqlConnection(conString))
            {
                {
                    using (SqlCommand cmd = new SqlCommand("select CandidateName,CandidateNumber,CandidateEmailAddress,Position from Candidate where Position='" + title + "'"))
                    {
                        SqlDataAdapter dt = new SqlDataAdapter();
                        try
                        {
                            cmd.Connection = con;
                            con.Open();
                            dt.SelectCommand = cmd;

                            DataTable dTable = new DataTable();
                            dt.Fill(dTable);

                            GridEmpRecord.DataSource = dTable;
                            GridEmpRecord.DataBind();
                        }
                        catch (Exception)
                        {
                            //     
                        }
                    }
                }
            }
        }
        protected void vote_Click(object sender, EventArgs e)
        {
            GridViewRow grdrow = (GridViewRow)((LinkButton)sender).NamingContainer;
            string firstColData = grdrow.Cells[1].Text;
            SqlConnection SQLConnection = new SqlConnection();
            SQLConnection.ConnectionString = @"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=E-election;Integrated Security=True";
            string QueryCnt = "select Vote from Candidate where CandidateNumber='" + firstColData + "'";
            SqlCommand CmdCnt = SQLConnection.CreateCommand();
            CmdCnt.CommandText = QueryCnt;
            SQLConnection.Open();
            string Vote =CmdCnt.ExecuteScalar().ToString();
            //int v = int.Parse(Vote);
           
            int v=int.Parse(Vote);
            int finalVote = v + 1;
            string user = Session["UserPan"].ToString();

            SqlCommand objcmd = new SqlCommand("Update Candidate set Vote='" + finalVote+ "'  where CandidateNumber='" + firstColData + "'", SQLConnection);

            objcmd.ExecuteNonQuery();
            SqlCommand objcmd1 = new SqlCommand("Update Voters set Voted='Voted'  where Pan_number='" + user + "'", SQLConnection);

            objcmd1.ExecuteNonQuery();
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Voted');window.location.href='Home.aspx';", true);

            //Response.Redirect("Home.aspx");
        }
    }
}