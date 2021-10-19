using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
namespace E_election.Admin
{
    public partial class GeneratePoll : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }
        private void BindGrid()
        {
            string constr = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            string query = "SELECT * FROM Candidate";
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter(query, con))
                {
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
        }
        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

            TextBox txt = new TextBox();
            
        }

        protected void Insert(object sender, EventArgs e)
        {
            string CandidateName = txtName.Text;
            string CandidateNumber = txtCountry.Text;
            string CandidateEmailAddress = txtEmail.Text;
            txtName.Text = "";
            txtEmail.Text = "";
            txtCountry.Text = "";
            int vote = 0;
            string title = DropDownList1.SelectedItem.Value;
            string query = "INSERT INTO Candidate VALUES(@CandidateName, @CandidateNumber,@CandidateEmailAddress,@Position,@Vote)";
            string constr = ConfigurationManager.ConnectionStrings["conString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand(query))
                {
                    cmd.Parameters.AddWithValue("@CandidateName", CandidateName);
                    cmd.Parameters.AddWithValue("@CandidateNumber", CandidateNumber);
                    cmd.Parameters.AddWithValue("@CandidateEmailAddress", CandidateEmailAddress);
                    cmd.Parameters.AddWithValue("@Position", title);

                    cmd.Parameters.AddWithValue("@Vote",vote);
                    cmd.Connection = con;
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();
                }
            }
            this.BindGrid();
        }
    }
}