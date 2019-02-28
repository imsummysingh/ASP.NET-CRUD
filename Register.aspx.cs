using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasicWeb
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtName.Attributes.Add("AutoComplete", "off");
            txtUserName.Attributes.Add("AutoComplete", "off");
            txtContact.Attributes.Add("AutoComplete", "off");
        }

        protected void Register_click(object sender, EventArgs e)
        {
            //label.Text = "You have successfully Registered yourself";
            Response.Redirect("HomePage.aspx?Name=" + txtName.Text + "&UName=" + txtUserName.Text + "&Cnt=" + txtContact.Text + "");
            ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('you have successfully registered yourself')",true);
        }

        protected void Cancel_click(object sender, EventArgs e)
        {
            Response.Redirect("HomePage.aspx");
        }
    }
}