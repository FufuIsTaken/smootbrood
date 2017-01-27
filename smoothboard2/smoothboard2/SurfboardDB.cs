using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace smoothboard2
{
    public class SurfboardDB
    {
        string ConStr = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Smoothboard.mdf;Integrated Security=True";

        public bool ValidateUser(string username, string password)
        {
            bool result = false;
            using (SqlConnection con = new SqlConnection(ConStr))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT COUNT(*) FROM [User] WHERE Username = @username AND Password = @password", con);
                cmd.Parameters.AddWithValue("@username", username);
                cmd.Parameters.AddWithValue("@password", password);

                int count = Convert.ToInt32(cmd.ExecuteScalar());

                if (count == 1)
                {
                    return true;
                }
            }
            return result;
        }

        public List<Product> GetRecenteProducten()
        {
            List<Product> producten = new List<Product>();
            SqlConnection con = new SqlConnection(ConStr);
            SqlCommand cmd = new SqlCommand("SELECT TOP 4 * FROM Product ORDER BY DtProduct DESC", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while
             (reader.Read())
            {
                Product product = new Product();
                product.Id = Convert.ToInt32(reader["Id"]);
                product.Afbeelding = reader["Afbeelding"].ToString();
                product.Naam = reader["Naam"].ToString();
                product.DtProduct = Convert.ToDateTime(reader["DtProduct"]);
                product.Beschrijving = reader["Beschrijving"].ToString();
                product.Prijs = Convert.ToDecimal(reader["Prijs"]);
                producten.Add(product);
            }
            con.Close();
            return producten;
        }

        //item.DtArtikel = Convert.ToDateTime(reader["DtArtikel"]);

        public List<Product> getProducten()
        {
            List<Product> producten = new List<Product>();
            SqlConnection con = new SqlConnection(ConStr);
            SqlCommand cmd = new SqlCommand("SELECT * FROM Product", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                Product product = new Product();
                product.Id = Convert.ToInt32(reader["Id"]);
                product.Afbeelding = reader["Afbeelding"].ToString();
                product.Naam = reader["Naam"].ToString();
                product.Beschrijving = reader["Beschrijving"].ToString();
                product.DtProduct = Convert.ToDateTime(reader["DtProduct"]);
                product.Prijs = Convert.ToDecimal(reader["Prijs"]);
                producten.Add(product);
            }
            con.Close();
            return producten;
        }



        public Product getProducts(int ID)
        {
            Product product = new Product();
            using (SqlConnection conPage = new SqlConnection(ConStr))
            {
                conPage.Open();

                SqlCommand cmdPage = new SqlCommand("SELECT * FROM Product WHERE id = " + ID, conPage);
                SqlDataReader reader = cmdPage.ExecuteReader();

                reader.Read();

                product.Id = Convert.ToInt32(reader["Id"]);
                product.Afbeelding = reader["Afbeelding"].ToString();
                product.Naam = reader["Naam"].ToString();
                product.Beschrijving = reader["Beschrijving"].ToString();
                product.DtProduct = Convert.ToDateTime(reader["DtProduct"]);
                product.Prijs = Convert.ToDecimal(reader["Prijs"]);
            }
            return product;
        }

        public void ProductBekeken(int Id)
        {
            string query = "UPDATE Product SET Bekeken = Bekeken + 1 WHERE Id = @Id";
            using (SqlConnection con = new SqlConnection(ConStr))
            using (SqlCommand command = new SqlCommand(query, con))
            {
                con.Open();
                command.Parameters.AddWithValue("@Id", Id);

                command.ExecuteNonQuery();
            }
        }

        public List<Product> getPopProducten(int exclude_id)
        {
            List<Product> Producten = new List<Product>();
            SqlConnection con = new SqlConnection(ConStr);
            SqlCommand cmd = new SqlCommand("SELECT TOP 3 * FROM Product WHERE NOT Id = @Id ORDER BY Bekeken DESC", con);
            cmd.Parameters.AddWithValue("@Id", exclude_id);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while
             (reader.Read())
            {
                Product product = new Product();
                product.Id = Convert.ToInt32(reader["Id"]);
                product.Afbeelding = reader["Afbeelding"].ToString();
                product.Naam = reader["Naam"].ToString();
                product.Beschrijving = reader["Beschrijving"].ToString();
                product.DtProduct = Convert.ToDateTime(reader["DtProduct"]);
                product.Prijs = Convert.ToDecimal(reader["Prijs"]);
                Producten.Add(product);
            }
            con.Close();
            return Producten;
        }


        public List<Product> getPopProducten2()
        {
            List<Product> Producten = new List<Product>();
            SqlConnection con = new SqlConnection(ConStr);
            SqlCommand cmd = new SqlCommand("SELECT TOP 5 * FROM Product ORDER BY Bekeken DESC", con);
            con.Open();
            SqlDataReader reader = cmd.ExecuteReader();
            while
             (reader.Read())
            {
                Product product = new Product();
                product.Id = Convert.ToInt32(reader["Id"]);
                product.Afbeelding = reader["Afbeelding"].ToString();
                product.Naam = reader["Naam"].ToString();
                product.Beschrijving = reader["Beschrijving"].ToString();
                product.DtProduct = Convert.ToDateTime(reader["DtProduct"]);
                product.Prijs = Convert.ToDecimal(reader["Prijs"]);
                Producten.Add(product);
            }
            con.Close();
            return Producten;
        }

    }
}