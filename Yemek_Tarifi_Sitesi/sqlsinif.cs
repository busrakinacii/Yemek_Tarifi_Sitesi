using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Yemek_Tarifi_Sitesi
{
    public class sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=DESKTOP-QUL77PV\SQLEXPRESS;Initial Catalog=Dbo_YemekTarifi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }
    }
}