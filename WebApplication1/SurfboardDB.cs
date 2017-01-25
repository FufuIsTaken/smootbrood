using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Smootbrood
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
                product.Id = reader["Id"].ToString();
                product.Afbeelding = reader["Afbeelding"].ToString();
                product.Naam = reader["Naam"].ToString();
                product.Prijs = reader["Prijs"].ToString();
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

                product.Id = reader["Id"].ToString();
                product.Naam = reader["Naam"].ToString();
                product.Prijs = reader["Prijs"].ToString();
                product.Afbeelding = reader["Afbeelding"].ToString();
                product.Beschrijving = reader["Beschrijving"].ToString();
            }
            return product;
        }
    }
}