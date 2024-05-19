using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class MesajDetay : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        string mmesajid = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            mmesajid = Request.QueryString["Mesajid"];

            SqlCommand komut = new SqlCommand("Select * From Tbl_Mesajlar where Mesajid=@p1", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", mmesajid);
            SqlDataReader dr = komut.ExecuteReader();
            while (dr.Read())
            {
                TxtMesajGonderen.Text = dr[1].ToString();
                TxtBaslik.Text = dr[2].ToString();
                TxtMail.Text = dr[3].ToString();
                Txticerik.Text = dr[4].ToString();
            }
            conn.baglanti().Close();


        }
    }
}