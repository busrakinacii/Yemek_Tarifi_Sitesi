using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class HakkimizdaAdmin : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            if (Page.IsPostBack == false)
            {
                SqlCommand komut = new SqlCommand("Select * From Tbl_Hakkimizda", conn.baglanti());
                SqlDataReader dr = komut.ExecuteReader();
                while (dr.Read())
                {
                    TxtHakkimizda.Text = dr[0].ToString();
                }
                conn.baglanti().Close();
            }

        }

        protected void Btn_Ac_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void Btn_Kapat_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }

        protected void BtnGuncelle_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("Update Tbl_Hakkimizda set Metin=@p1", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtHakkimizda.Text);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("<script>alert('Güncelleme İşlemi Başarıyla Gerçekleşti.')</script>");
        }
    }
}