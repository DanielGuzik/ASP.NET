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
    public partial class Dodaj : System.Web.UI.Page
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
                    string sQuery = "SELECT * from Czesci";

                    con.Open();
                    SqlCommand cmd = new SqlCommand(sQuery, con);
                    SqlDataReader sdr = cmd.ExecuteReader();

                    dt.Load(sdr);
                    GridView2.DataSource = dt;
                    GridView2.DataBind();
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
                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.DodajCzesc", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@nazwa", TextBox1.Text);
                cmd.Parameters.AddWithValue("@cena", TextBox2.Text);

                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
                TextBox2.Text = "";
                TextBox1.Text = "";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.AppSettings["DBConnectionString"];
            using (SqlConnection con = new SqlConnection(cs))
            {

                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.Szukaj", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@nazwa", SqlDbType.NVarChar).Value = TextBox3.Text;

                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds, "Nazwa");

                GridView2.DataSource = ds;
                GridView2.DataBind();

                con.Close();
            }
        }
    }
}