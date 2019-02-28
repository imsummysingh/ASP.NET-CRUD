using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasicWeb
{
    public partial class Update : System.Web.UI.Page
    {
        public object Gender { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReset_click(object sender, EventArgs e)
        {
            ClearFunction();
        }

        protected void btnUpdate_click(object sender, EventArgs e)
        {
            querysql();

            ClearFunction();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('you have successfully Updated your Details')", true);
        }

        private void querysql()
        {

            string conString = ConfigurationManager.ConnectionStrings["Dbconnection"].ToString();
            SqlConnection con = new SqlConnection(conString);
            con.Open();
            SqlCommand cmd = new SqlCommand("UpdateP", con);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
            cmd.Parameters.AddWithValue("@MiddleName", txtMiddleName.Text);
            cmd.Parameters.AddWithValue("@LastName", txtLastName.Text);
            cmd.Parameters.AddWithValue("@DOB", txtDOB.Text);
            if (rdoMale.Checked)
            {
                cmd.Parameters.AddWithValue("@Gender", "Male");
            }
            else
            {
                cmd.Parameters.AddWithValue("@Gender", "Female");
            }

            
            string strp1 = String.Empty;
            string strp2 = String.Empty;
            string strp3 = String.Empty;

            if (ChP1.Checked)
            {
                strp1 = ChP1.Text;
            }
            if (ChP2.Checked)
            {
                strp2 = ChP2.Text;

            }
            if (ChP3.Checked)
            {
                strp3 = ChP3.Text;
            }

            cmd.Parameters.AddWithValue("@Nationality", ddNationality.SelectedItem.Value);
            cmd.Parameters.AddWithValue("@Email", txtEmail.Text);
            cmd.Parameters.AddWithValue("@Mobile", txtMobNo.Text);
            cmd.Parameters.AddWithValue("@P1", strp1);
            cmd.Parameters.AddWithValue("@P2", strp2);
            cmd.Parameters.AddWithValue("@P3", strp3);
            cmd.Parameters.AddWithValue("@Password", txtpassword.Text);
            cmd.Parameters.AddWithValue("@ConfirmPassword", txtConfirmPassword.Text);
            cmd.Parameters.AddWithValue("@ID",4005);

            cmd.ExecuteNonQuery();
            con.Close();
        }

        private void ClearFunction()
        {
            txtFirstName.Text = "";
            txtMiddleName.Text = "";
            txtLastName.Text = "";
            txtDOB.Text = "";
            txtEmail.Text = "";
            txtMobNo.Text = "";
        }

        protected void btnShow_click(object sender, EventArgs e)
        {
            Response.Redirect("GridViewRrtrieve.aspx");
        }
    }
}