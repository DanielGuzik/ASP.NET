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

namespace AutoCzesci.Users
{
    public partial class Zamowienie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            DataTable dt1 = new DataTable();
            DataTable dt2 = new DataTable();
            string cs2 = ConfigurationManager.AppSettings["DBConnectionString"];

            using (SqlConnection con = new SqlConnection(cs2))
            {
                StringBuilder sb1 = new StringBuilder();

                sb1.Append("select ID_klient, nazwisko, wiek from Klient");

                SqlCommand cmd = new SqlCommand(sb1.ToString(), con);
                cmd.CommandType = CommandType.Text;

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                dt.Load(rdr);
                GridView1.DataSource = dt;
                GridView1.DataBind();
                con.Close();
            }

            using (SqlConnection con = new SqlConnection(cs2))
            {
                StringBuilder sb1 = new StringBuilder();

                sb1.Append("select ID_czesc, nazwa, cena from Czesci");

                SqlCommand cmd = new SqlCommand(sb1.ToString(), con);
                cmd.CommandType = CommandType.Text;

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                dt1.Load(rdr);
                GridView2.DataSource = dt1;
                GridView2.DataBind();
                con.Close();
            }

            using (SqlConnection con = new SqlConnection(cs2))
            {
                StringBuilder sb1 = new StringBuilder();

                sb1.Append("select ID_samochod, Marka, Model, Rok_prod from Samochod");

                SqlCommand cmd = new SqlCommand(sb1.ToString(), con);
                cmd.CommandType = CommandType.Text;

                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();

                dt2.Load(rdr);
                GridView3.DataSource = dt2;
                GridView3.DataBind();
                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.AppSettings["DBConnectionString"];
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.ZamowienieProc", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@ID_klient", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ID_czesc", DropDownList2.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@ID_Samochod", DropDownList3.SelectedItem.Value);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                Label1.Visible = true;
                Label1.Text = "Zamówiono!";
            }
        }
    }
}