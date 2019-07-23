using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BasicWeb
{
    public partial class GridViewRrtrieve : System.Web.UI.Page
    {
        static string conString = ConfigurationManager.ConnectionStrings["Dbconnection"].ToString();
        SqlConnection con = new SqlConnection(conString);

        //Added By Mohit for Test

        public GridViewRrtrieve()
        {
            con.Open();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Display();
            }

            //con.Open();
            //SqlCommand cmd = new SqlCommand("StoreP", con);
            //cmd.CommandType = System.Data.CommandType.StoredProcedure;
            //cmd.Parameters.AddWithValue("@action", "SELECT");

            //SqlDataReader dr = cmd.ExecuteReader();
            //grid1.DataSource = dr;
            //grid1.DataBind();
            //con.Close();
        }

        public void Display()
        {
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandText = "SelectStoreP";
            cmd.CommandType = System.Data.CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@ID", "");
            //SqlDataAdapter adp = new SqlDataAdapter("SelectStoreP", con);
            SqlDataAdapter adp = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            adp.Fill(dt);
            grid1.DataSource = dt;
            grid1.DataBind();
            //return dt;
        }

        protected void grid1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "Edit")
            {
                Display();
            }
        }

        protected void grid1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //Code to delete
            SqlCommand cmd = con.CreateCommand();
            var selectedID = e.Keys["ID"];
            cmd.Connection = con;
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "UPDATE Test SET IsDeleted = 1 WHERE ID='" + selectedID + "'";
            //con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Display();
        }

        protected void grid1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void grid1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            Response.Redirect("Registration.aspx?ID="+ grid1.DataKeys[e.NewEditIndex].Value);
            //grid1.EditIndex = e.NewEditIndex;
            //Display();
        }

        protected void grid1_RowCommand1(object sender, GridViewCommandEventArgs e)
        {
           
        }

        protected void grid1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grid1.EditIndex = -1;
            Display();
        }

        protected void grid1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {

            //Code to edit in database here
            SqlCommand cmd = con.CreateCommand();
            var selectedID = e.Keys["ID"];
            var selectedFN = e.NewValues["FirstName"];
            var selectedMN = e.NewValues["MiddleName"];
            var selectedLN = e.NewValues["LastName"];
            var selectedDOB = e.NewValues["DOB"];
            var selectedG = e.NewValues["Gender"];
            var selectedN = e.NewValues["Nationality"];
            var selectedE = e.NewValues["Email"];
            var selectedM = e.NewValues["Mobile"];
            var selectedP1 = e.NewValues["P1"];
            var selectedP2 = e.NewValues["P2"];
            var selectedP3 = e.NewValues["P3"];
            var selectedPass = e.NewValues["Password"];
            var selectedConPass = e.NewValues["ConfirmPassword"];
            cmd.Connection = con; cmd.CommandType = System.Data.CommandType.Text;
            //TextBox txtfirstname = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtFirstName");
            //TextBox txtmiddlename = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtMiddleName");
            //TextBox txtlastname = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtLastName");
            //TextBox txtdob = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtDOB");
            //TextBox txtgender = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtGender");
            //TextBox txtnationality = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtNationality");
            //TextBox txtemail = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtEmail");
            //TextBox txtmobile = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtMobile");
            //TextBox txtp1 = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtP1");
            //TextBox txtp2 = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtP2");
            //TextBox txtp3 = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtP3");
            //TextBox txtpassword = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtPassword");
            //TextBox txtconfirmpassword = (TextBox)grid1.Rows[e.RowIndex].FindControl("txtConfirmPassword");
            cmd.Connection = con;
            cmd.CommandText = "Update Test set FirstName='" + selectedFN + "', MiddleName='" + selectedMN + "', LastName='" + selectedLN + "',DOB='" + selectedDOB + "',Gender='" + selectedG + "',Nationality='" + selectedN + "',Email='" + selectedE + "',Mobile='" + selectedM + "',P1='" + selectedP1 + "',P2='" + selectedP2 + "',P3='" + selectedP3 + "',Password='" + selectedPass + "',ConfirmPassword='" + selectedConPass + "' WHERE ID='" + selectedID + "' ";
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            cmd.ExecuteNonQuery();
            con.Close();
            Display();
        }

        protected void btnLogin_clicl(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}