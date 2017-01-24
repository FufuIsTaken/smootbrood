using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Smootbrood
{
    public partial class Productpage : System.Web.UI.Page
    {
        SurfboardDB DB = new SurfboardDB();
        public int Id { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            this.Id = Convert.ToInt32(Request.QueryString["Id"]);
            Product product = DB.getProducts(Id);
            AfbeeldingLabel.Src = product.Afbeelding;
            NaamLabel.Text = product.Naam;
            this.Title = product.Naam;
            PrijsLabel.Text = product.Prijs;
            BeschrijvingLabel.Text = product.Beschrijving;
        }
    }
}