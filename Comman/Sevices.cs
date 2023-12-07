using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace yummy.Comman
{
    public class Sevices
    {
        internal static int execute(string sql, SqlConnection con)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            int affectedRows = cmd.ExecuteNonQuery();
            con.Close();
            return affectedRows;
        }


        internal static DataTable select(string sql, SqlConnection con)
        {
            con.Open();
            SqlDataAdapter da = new SqlDataAdapter(sql, con);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            return dt;
        }
    }
}