using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace InterProduct
{
    public partial class IPAdmin : System.Web.UI.Page
    {
        string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\InterProductDB.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("DELETE FROM Product WHERE Id = @Id", con);
                cmd.Parameters.AddWithValue("Id", e.Keys[0]);
                con.Open();
                cmd.ExecuteNonQuery();
                LoadData();
            }
        }

        public void LoadData()
        {
            List<Product> result = new List<Product>();
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("SELECT * FROM Product", con);
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    result.Add(new Product
                    {
                        Id = Convert.ToInt32(reader["Id"]),
                        Naam = reader["Naam"].ToString(),
                        Prijs = Convert.ToDecimal(reader["Prijs"])
                    });
                }
            }
            GridView1.DataSource = result;
            GridView1.DataBind();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.SetEditRow(-1);
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            using (SqlConnection con = new SqlConnection(connectionString))
            {
                SqlCommand cmd = new SqlCommand("UPDATE Product SET Naam = @Naam, Prijs = @Prijs WHERE Id = @Id", con);
                cmd.Parameters.AddWithValue("Naam", e.NewValues["Naam"]);
                cmd.Parameters.AddWithValue("Prijs", Convert.ToDouble(e.NewValues["Prijs"]));
                cmd.Parameters.AddWithValue("Id", e.Keys[0]);
                con.Open();
                cmd.ExecuteNonQuery();

            }
            LoadData();
            GridView1.SetEditRow(-1);
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            LoadData();
        }

    }
}