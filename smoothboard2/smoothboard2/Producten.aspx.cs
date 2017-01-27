using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smoothboard2
{
    public partial class Producten : System.Web.UI.Page
    {
        SurfboardDB DB = new SurfboardDB();

        protected void Page_Load(object sender, EventArgs e)
        {
            ListView1.DataSource = DB.getProducten();
            ListView1.DataBind();

            ListView2.DataSource = DB.getPopProducten2();
            ListView2.DataBind();
        }
    }
}