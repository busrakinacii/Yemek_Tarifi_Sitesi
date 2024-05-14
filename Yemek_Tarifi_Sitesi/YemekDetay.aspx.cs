using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        string yemekid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];

            SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where yemekid=@p1",conn.baglanti());
            komut.Parameters.AddWithValue("@p1",yemekid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                Label4.Text = dr[0].ToString();
            }
            conn.baglanti().Close();


            //Yorum Sayfası Verileri
            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where yemekid=@p1", conn.baglanti());
            komut2.Parameters.AddWithValue("@p1", yemekid);
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource=dr2;
            DataList2.DataBind();
        }
    }
}