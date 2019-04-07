using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AutoCzesci.Admin
{
    public partial class Usuwanie : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                BindGridView();
        }
        private void BindGridView()
        {
            DataTable dt = new DataTable();


            try
            {
                string cs = ConfigurationManager.AppSettings["DBConnectionString"];
                using (SqlConnection con = new SqlConnection(cs))
                {
                    string sQuery = "select ID_zamowienie as ID, imie as Imię, nazwisko as Nazwisko, adres as Adres, nazwa as Część, cena as Cena, Marka, Model, Rok_prod, Silnik, Rodz_paliwa from Zamowienie left join Klient on Zamowienie.ID_klient = Klient.ID_klient left join Czesci on Zamowienie.ID_czesc = Czesci.ID_czesc left join Samochod on Zamowienie.ID_Samochod = Samochod.ID_samochod";


                    con.Open();
                    SqlCommand cmd = new SqlCommand(sQuery, con);
                    SqlDataReader sdr = cmd.ExecuteReader();

                    dt.Load(sdr);
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            catch { }
            finally
            {
                dt.Dispose();
                //con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.AppSettings["DBConnectionString"];
            using (SqlConnection con = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.UsunZamowienie", con);
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@ID_zamowienie", DropDownList1.SelectedItem.Value);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                
            }
        }
    }
}