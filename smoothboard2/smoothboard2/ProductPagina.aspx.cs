using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace smoothboard2
{
    public partial class ProductPagina : System.Web.UI.Page
    {
        SurfboardDB DB = new SurfboardDB();
        public int Id { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            DB.ProductBekeken(Convert.ToInt32(Request.QueryString["id"]));

            this.Id = Convert.ToInt32(Request.QueryString["id"]);
            Product item = new Product();
            try
            {
                item = DB.getProducts(Id);
            }
            catch (Exception)
            {
                Response.Redirect("/Home.aspx");
            }

            ListView1.DataSource = DB.getPopProducten(Id);
            ListView1.DataBind();

            AfbeeldingLabel.Src = item.Afbeelding;
            NaamLabel.Text = item.Naam;
            BeschrijvingLabel.Text = item.Beschrijving;
            PrijsLabel.Text = Convert.ToString(item.Prijs);
        }
    }
}