using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class Kullanici : System.Web.UI.MasterPage
    {
        sqlsinif conn = new sqlsinif();
       // string kategoriid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
          //  kategoriid = Request.QueryString["Kategoriid"];
            SqlCommand komut = new SqlCommand("Select * from Tbl_Kategoriler", conn.baglanti());
            SqlDataReader oku= komut.ExecuteReader();
            DataList1.DataSource = oku;
            DataList1.DataBind();

        }
    }
}