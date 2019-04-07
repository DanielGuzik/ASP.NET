using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Text;
using System.Data.SqlClient;
using System.Data;

namespace AutoCzesci.Admin
{
    public partial class Dodawanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.AppSettings["DBConnectionString"];
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.UpdateKlient", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@imie", TextBox1.Text);
                cmd.Parameters.AddWithValue("@nazwisko", TextBox2.Text);
                cmd.Parameters.AddWithValue("@adres", TextBox3.Text);
                cmd.Parameters.AddWithValue("@wiek", DropDownList6.SelectedItem.Value);

                cmd.Parameters.AddWithValue("@ID", DropDownList7.SelectedItem.Value);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.AppSettings["DBConnectionString"];
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.UpdateCzesc", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@nazwa", TextBox4.Text);                
                cmd.Parameters.AddWithValue("@cena", TextBox5.Text);

                cmd.Parameters.AddWithValue("@ID", DropDownList8.SelectedItem.Value);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.AppSettings["DBConnectionString"];
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.UpdateSamochod", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@Marka", TextBox6.Text);
                cmd.Parameters.AddWithValue("@Model", TextBox7.Text);
                cmd.Parameters.AddWithValue("@Rok_prod", DropDownList9.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Silnik", DropDownList10.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Rodz_paliwa", DropDownList11.SelectedItem.Value);

                cmd.Parameters.AddWithValue("@ID", DropDownList12.SelectedItem.Value);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}