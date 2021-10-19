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
    public partial class GenerateElection : System.Web.UI.Page
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

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=E-election;Integrated Security=True");
            conn.Open();
            string insert_query = "insert into Elections (StartDate,EndDate) values (@Start ,@End)";

            SqlCommand cmd = new SqlCommand(insert_query, conn);
            
            

            int rowsAffected = cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registration Is Successfully done...');", true);
            //Response.Write("<script>alert('Registration Is Successfully');window.location = 'LoginAdmin.aspx';</script>"); //works great
            Response.Redirect("Home.aspx");

            conn.Close();
        }

        protected void Date_Selected(object sender, EventArgs e)
        {
           
        }

        protected void btnCreate_Click1(object sender, EventArgs e)
        {

        }

        protected void BtnCreate_Click2(object sender, EventArgs e)
        {
          
            SqlConnection conn = new SqlConnection(@"Data Source=(LocalDb)\MSSQLLocalDB;Initial Catalog=E-election;Integrated Security=True");
            conn.Open();
            string insert_query = "insert into Elections (StartDate,EndDate,VoteTitle) values (@Start ,@End,@Title)";
            SqlCommand cmd = new SqlCommand(insert_query, conn);
            cmd.Parameters.AddWithValue("@Start", txtStartdate.Text.Trim());
            cmd.Parameters.AddWithValue("@End", txtExpDate.Text.Trim());
            cmd.Parameters.AddWithValue("@Title", txtVoteTitle.Text);



            int rowsAffected = cmd.ExecuteNonQuery();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Registration Is Successfully done...');", true);
            //Response.Write("<script>alert('Registration Is Successfully');window.location = 'LoginAdmin.aspx';</script>"); //works great
            //Response.Redirect("Home.aspx");
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Created');window.location.href='Home.aspx';", true);

            conn.Close();
        }
    }
}