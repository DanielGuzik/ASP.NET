using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AutoCzesci.Klient
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.AppSettings["DBConnectionString"];
            using (SqlConnection con = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.DodajKlient", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@imie", TextBox1.Text);
                cmd.Parameters.AddWithValue("@nazwisko", TextBox2.Text);
                cmd.Parameters.AddWithValue("@adres", TextBox3.Text);
                cmd.Parameters.AddWithValue("@wiek", DropDownList1.SelectedItem.Value);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Visible = true;
                Label1.Text = "Dodano Pomyślnie";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.AppSettings["DBConnectionString"];
            using (SqlConnection con = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.DodajSamochod", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@Marka", MarkaTB.Text);
                cmd.Parameters.AddWithValue("@Model", ModelTB.Text);
                cmd.Parameters.AddWithValue("@Rok_prod", DropDownListRok.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Silnik", DropDownListSilnik.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Rodz_paliwa", DropDownListPaliwo.SelectedItem.Value);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label2.Visible = true;
                Label2.Text = "Dodano Pomyślnie";
            }
        }
    }
}