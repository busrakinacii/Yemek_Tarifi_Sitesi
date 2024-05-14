﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.ComponentModel.Design;

namespace Yemek_Tarifi_Sitesi
{
    public partial class YemekDetay : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        string yemekid = "";

        void temizle()
        {
            TxtYorumAdSoyad.Text = "";
            TxtMail.Text = "";
            TxtYorum.Text = "";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            yemekid = Request.QueryString["yemekid"];

            SqlCommand komut = new SqlCommand("Select YemekAd from Tbl_Yemekler where yemekid=@p1", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", yemekid);
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
            DataList2.DataSource = dr2;
            DataList2.DataBind();
        }

        protected void BtnGonder_Click(object sender, EventArgs e)
        {
            SqlCommand komut = new SqlCommand("insert into Tbl_Yorumlar (YorumAdSoyad,YorumMail,Yorumicerik,Yemekid) values (@p1,@p2,@p3,@p4)", conn.baglanti());
            komut.Parameters.AddWithValue("@p1", TxtYorumAdSoyad.Text);
            komut.Parameters.AddWithValue("@p2", TxtMail.Text);
            komut.Parameters.AddWithValue("@p3", TxtYorum.Text);
            komut.Parameters.AddWithValue("@p4", yemekid);
            komut.ExecuteNonQuery();
            conn.baglanti().Close();
            Response.Write("<script>alert('Yorumunuz alınmıştır.')</script>");
            temizle();

        }
    }
}