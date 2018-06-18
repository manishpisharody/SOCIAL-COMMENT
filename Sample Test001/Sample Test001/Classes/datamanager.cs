using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;


namespace Sample_Test001.Classes
{
    public class datamanager
    {
        string connection = "Data Source=DESKTOP-TVECC1I\\SQLEXPRESS;Initial Catalog=SOCIAL;User ID=sa;Password=manish";
        SqlCommand cmd = new SqlCommand();
        SqlConnection con;


        public datamanager()
        {
            con = new SqlConnection(connection);
            cmd.Connection = con;

    }
        public int getupdate(string sqlquery)
        {
            try
            {
                if(con.State==ConnectionState.Open)
                {
                    con.Close();

                }
                con.Open();
                cmd.CommandText = sqlquery;
                int i;
                i = cmd.ExecuteNonQuery();
                return i;
               
            }
            catch
            {
                return 0;
            }
        }

        public DataSet GetData(string sqlQry)
        {
            try
            {
                DataSet ds = new DataSet();
                SqlDataAdapter da = new SqlDataAdapter(sqlQry, connection);
                da.Fill(ds);
                return ds;

            }
            catch
            {
                return null;
            }
        }


    }
}