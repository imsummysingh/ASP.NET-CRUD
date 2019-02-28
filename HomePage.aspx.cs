using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasicWeb
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["txtUserName"]!=null)
                {
                    Response.Write(Request.Cookies["txtUserName"].Value.ToString());
                }
        }

        protected void btnExit_click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btnShowDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("GridViewRrtrieve.aspx");
        }

        //protected void btnuserDtl_Click(object sender, EventArgs e)
        //{
        //    string Name = Request.QueryString["Name"] + "," + Request.QueryString["UName"] + "," + Request.QueryString["Cnt"];
        //    Response.Redirect("UserDetails.aspx?Details="+ Name + "");
        //}
    }
}