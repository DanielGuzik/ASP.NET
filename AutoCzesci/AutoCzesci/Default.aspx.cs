using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace AutoCzesci
{
    public partial class _Default : System.Web.UI.Page
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

                SqlCommand cmd = new SqlCommand("1DGuzik.dbo.Szukaj", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add("@nazwa", SqlDbType.NVarChar).Value = TextBox1.Text;
                
                con.Open();
                cmd.ExecuteNonQuery();
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = cmd;
                DataSet ds = new DataSet();
                da.Fill(ds, "Nazwa");
             
                GridView1.DataSource = ds;
                GridView1.DataBind();

                con.Close();
            }
        }
    }
}
