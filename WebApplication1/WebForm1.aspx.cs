using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smootbrood
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SurfboardDB DB = new SurfboardDB();
        protected void Page_Load(object sender, EventArgs e)
        {
            ListView1.DataSource = DB.getProducten();
            ListView1.DataBind();

        }
    }
}