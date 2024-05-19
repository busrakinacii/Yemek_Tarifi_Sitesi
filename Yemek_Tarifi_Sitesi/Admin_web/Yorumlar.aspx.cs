using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Yemek_Tarifi_Sitesi.Admin_web
{
    public partial class Yorumlar : System.Web.UI.Page
    {
        sqlsinif conn = new sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataList1.Visible = false;
            DataList2.Visible = false;

            //Onaylı Yorum Listesi
            SqlCommand komut = new SqlCommand("Select * from Tbl_Yorumlar where YorumOnay=1", conn.baglanti());
            SqlDataReader dr = komut.ExecuteReader();
            DataList1.DataSource = dr;
            DataList1.DataBind();

            //Onaysız Yorum Listesi

            SqlCommand komut2 = new SqlCommand("Select * From Tbl_Yorumlar where YorumOnay=0", conn.baglanti());
            SqlDataReader dr2 = komut2.ExecuteReader();
            DataList2.DataSource = dr2;
            DataList2.DataBind();

        }

        protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Btn_Ac_Click(object sender, EventArgs e)
        {
            DataList1.Visible = true;
        }

        protected void Btn_Kapat_Click(object sender, EventArgs e)
        {
            DataList1.Visible = false;
        }

        protected void Btn_Ac0_Click(object sender, EventArgs e)
        {
            DataList2.Visible = true;
        }

        protected void Btn_Kapat0_Click(object sender, EventArgs e)
        {
            DataList2.Visible = false;
        }
    }
}