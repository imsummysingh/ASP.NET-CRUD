using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace BasicWeb
{
    public partial class Registration : System.Web.UI.Page
    {
        CommonDb objCommonDb = new CommonDb();

        public string Mode = "Add";
        public int selectedID = 0;
        public object Gender { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString.HasKeys())
            {
                if (Request.QueryString.Keys[0] != null)
                {
                    Mode = "Edit";
                    if (!IsPostBack)
                    {
                        selectedID = Convert.ToInt32(Request.QueryString.GetValues(0)[0]);
                        DataTable dt = new DataTable();
                        dt = objCommonDb.GetDisplay(selectedID);
                        if (dt.Rows != null)
                        {
                            if (dt.Rows.Count > 0)
                            {
                                hdnID.Value = dt.Rows[0]["ID"].ToString();
                                txtFirstName.Text = dt.Rows[0]["FirstName"].ToString();
                                txtMiddleName.Text = dt.Rows[0]["MiddleName"].ToString();
                                txtLastName.Text = dt.Rows[0]["LastName"].ToString();
                                txtDOB.Text = Convert.ToDateTime(dt.Rows[0]["DOB"]).ToString("yyyy-MM-dd");
                                Gender = (rdoMale.Checked) ? rdoMale : rdoFemale;
                                ddNationality.Text = dt.Rows[0]["Nationality"].ToString();
                                txtEmail.Text = dt.Rows[0]["Email"].ToString();
                                txtMobNo.Text = dt.Rows[0]["Mobile"].ToString();
                                ChP1.Text = dt.Rows[0]["P1"].ToString();
                                ChP2.Text = dt.Rows[0]["P2"].ToString();
                                ChP3.Text = dt.Rows[0]["P3"].ToString();
                                txtpassword.Text = dt.Rows[0]["Password"].ToString();
                                txtConfirmPassword.Text = dt.Rows[0]["ConfirmPassword"].ToString();
                            }
                        }
                        txtpassword.Enabled = false;
                        txtConfirmPassword.Enabled = false;
                    }
                }
            }

            txtFirstName.Attributes.Add("AutoComplete", "off");
            txtMiddleName.Attributes.Add("AutoComplete", "off");
            txtLastName.Attributes.Add("AutoComplete", "off");
            txtDOB.Attributes.Add("AutoComplete", "off");
            txtEmail.Attributes.Add("AutoComplete", "off");
            txtMobNo.Attributes.Add("AutoComplete", "off");
        }

        protected void btnReset_click(object sender, EventArgs e)
        {
            ClearFunction();
        }
              
        protected void btnRegister_click(object sender, EventArgs e)
        {

            querysql();
            ClearFunction();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('you have successfully registered yourself')", true);
        }

        private void querysql()
        {
            string Gender = string.Empty;
            if (rdoMale.Checked)
            {
                Gender = "Male";
            }
            else
            {
                Gender = "Female";
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

            int ID = Convert.ToInt32(hdnID.Value);
            string FirstName = txtFirstName.Text;
            string MiddleName = txtMiddleName.Text;
            string LastName = txtLastName.Text;
            string DOB = txtDOB.Text;
            Mode = (hdnID.Value == "0") ? "Add" : "Edit";
            string Nationality = ddNationality.SelectedItem.Value;
            string Email = txtEmail.Text;
            string Mobile = txtMobNo.Text;
            string P1 = strp1;
            string P2 = strp2;
            string P3 = strp3;
            string Password = txtpassword.Text;
            string ConfirmPassword = txtConfirmPassword.Text;

            objCommonDb.RegisterUser(ID, FirstName, MiddleName, LastName, DOB, Gender, Nationality,
                Email, Mobile, P1, P2, P3, Password, ConfirmPassword, Mode);

            Response.Redirect("GridViewRrtrieve.aspx");
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

        protected void btnLogin_click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}