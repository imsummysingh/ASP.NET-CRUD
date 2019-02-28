using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BasicWeb
{
    public partial class BasicWebsite : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserName.Attributes.Add("AutoComplete", "off");
            //AutoCompleteType=disabled---- in attributes
            //autocomplete=off
        }

        protected void btnLogin_click(object sender, EventArgs e)
        {
            string UserName = "Summy";
            if (txtUserName.Text.ToLower() == UserName.ToLower() && txtPassword.Text == "abc")
            //if(UserName=="Summy")
            {   
               
                HttpCookie Cookie=new HttpCookie("txtUserName");
                Cookie.Value="Welcome " +txtUserName.Text;
                //Cookie.Value=txtPassword.Text;
                Cookie.Expires=DateTime.Now.AddHours(1);
                Response.Cookies.Add(Cookie);

                Response.Redirect("HomePage.aspx");

                //5 ways for sending data from one page to another
                //cookies
                //session---same as application variable.. just change application to session
                /*querystring
                     Response.Redirect("ShowStringValue.aspx?Username=" + txtUsername.Text); 
                     
                     string Name = Request.QueryString["Username"].ToString();  
                     Response.Write(Name); 
                */


                /*
                   --- Data Transfer with Application Variable
                        Application["Username"] = txtUsername.Text;  
                        Response.Redirect("ShowApplicationVariable .aspx");
                     if (Application["Username"] != null)  
                         {  
                            string Name = Application["Username"].ToString();  
                            Response.Write(Name);  
                        }  
                 */

            }
            else
            {
                //label.Text = "You have entered incorrect data";
                ScriptManager.RegisterStartupScript(this,this.GetType(),"script","alert('Please enter correct data');",true);
                //Response.Write("</>");
            }
        }

        protected void btnRegister_click(object sender, EventArgs e)
        {
            //Response.Redirect("Register.aspx");
            Response.Redirect("Registration.aspx");
        }

        //protected void btnCancel_click(object sender, EventArgs e)
        //{
        //    Response.Redirect("Login.aspx");
        //}

        protected void btnShowData_click(object sender, EventArgs e)
        {
            Response.Redirect("GridViewRrtrieve.aspx");
        }

        protected void btnDeleteData_click(object sender, EventArgs e)
        {
            Response.Redirect("GridViewRrtrieve.aspx");
        }
    }    
}