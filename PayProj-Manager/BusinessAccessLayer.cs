using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;


public class BusinessAccessLayer
{
    public static DataTable Query(string sqlstr)
    {
        SqlConnection cn = new SqlConnection("Data Source = NARESH-PC; Initial Catalog = Payroll; Persist Security Info = True; User ID = sa; Password = root ");
        SqlDataAdapter adp = new SqlDataAdapter(sqlstr, cn);
        DataSet ds = new DataSet();
        adp.Fill(ds);
        DataTable dt = ds.Tables[0];
        return (dt);
    }

    public static int NonQuery(string sqlstr)
    {
        //string ConnectionString = ConfigurationSettings.AppSettings["ConnectionString"];
        SqlConnection cn = new SqlConnection("Data Source = NARESH-PC; Initial Catalog = Payroll; Persist Security Info = True; User ID = sa; Password = root ");
        cn.Open();
        SqlCommand cmd = new SqlCommand(sqlstr, cn);
        int n = cmd.ExecuteNonQuery();
        cn.Close();
        return (n);
    }

    public static int GetNextID(string tablename, string columnname)
    {
        SqlConnection cn = new SqlConnection("Data Source = NARESH-PC; InitialCatalog = Payroll; PersistSecurity Info = True; User ID = sa; Password = root ");
        int n = 0;
        if (Query("select * from " + tablename).Rows.Count > 0)
        {
            string sqlstr = "select max(" + columnname + ") from " + tablename;
            SqlDataAdapter adp = new SqlDataAdapter(sqlstr, cn);
            DataSet ds = new DataSet();
            adp.Fill(ds);
            DataTable dt = ds.Tables[0];
            if (dt.Rows.Count > 0)
                n = Convert.ToInt32(dt.Rows[0].ItemArray[0]);
        }
        n++;
        return (n);
    }
}