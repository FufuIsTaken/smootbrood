using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smoothboard2
{
    public partial class logon : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SurfboardDB db = new SurfboardDB();

            if (db.ValidateUser(txtUsername.Text, txtPassword.Text))
            {
                FormsAuthentication.SetAuthCookie(txtUsername.Text, false);
                Response.Redirect("/Admin/AdminPagina.aspx", true);
            }
            else
                Response.Redirect("/logon.aspx", true);
        }
    }
}