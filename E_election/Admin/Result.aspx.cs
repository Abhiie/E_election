using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace E_election.Admin
{
    public partial class Result : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            //


        }

        protected void txtWinner_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string title = DropDownList1.SelectedItem.Value;
            SqlConnection SQLConnection = new SqlConnection();
            SQLConnection.ConnectionString = @"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=E-election;Integrated Security=True";
            string QueryCnt = "SELECT Max(Vote) FROM Candidate GROUP BY Position having Position='Team Lead';";
            SqlCommand CmdCnt = SQLConnection.CreateCommand();
            CmdCnt.CommandText = QueryCnt;
            SQLConnection.Open();
            string Vote = CmdCnt.ExecuteScalar().ToString();


            string QueryCnt1 = "SELECT CandidateName FROM Candidate where Vote='" + Vote + "'";
            SqlCommand CmdCnt1 = SQLConnection.CreateCommand();
            CmdCnt.CommandText = QueryCnt1;
            string ChairmanName = CmdCnt.ExecuteScalar().ToString();
            txtWinner.Text = ChairmanName;
            txtWinner.Enabled = false;
        }

        protected void btnClick_Click(object sender, EventArgs e)
        {
            string title = DropDownList1.SelectedItem.Value;
            SqlConnection SQLConnection = new SqlConnection();
            SQLConnection.ConnectionString = @"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=E-election;Integrated Security=True";
            string QueryCnt = "SELECT Max(Vote) FROM Candidate GROUP BY Position having Position='"+ title + "';";
            SqlCommand CmdCnt = SQLConnection.CreateCommand();
            CmdCnt.CommandText = QueryCnt;
            SQLConnection.Open();
            string Vote = CmdCnt.ExecuteScalar().ToString();


            string QueryCnt1 = "SELECT CandidateName FROM Candidate where Vote='" + Vote + "'";
            SqlCommand CmdCnt1 = SQLConnection.CreateCommand();
            CmdCnt.CommandText = QueryCnt1;
            string ChairmanName = CmdCnt.ExecuteScalar().ToString();
            txtWinner.Text = ChairmanName;
            txtWinner.Enabled = false;
        }
    }
}