using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace BasicWeb
{
    public partial class UserDetails : System.Web.UI.Page
    {        
        protected void Page_Load(object sender, EventArgs e)
        {
            string UserId = Request.QueryString["Details"].Split(',')[0];
            string UserName = Request.QueryString["Details"].Split(',')[1];
            string UserContact = Request.QueryString["Details"].Split(',')[2];

            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[3] { new DataColumn("Id", typeof(string)),
                            new DataColumn("Name", typeof(string)),
                            new DataColumn("Contact",typeof(string)) });
            dt.Rows.Add(UserId, UserName, UserContact);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }
        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {            
        }

        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
        }
    }
}
