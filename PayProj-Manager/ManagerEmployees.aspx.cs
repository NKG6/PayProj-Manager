using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace PayProj_Manager
{
    public partial class ManagerEmployees : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                //if (Convert.ToString(Session["currentusertype"]) != "Manager")
                 //   Response.Redirect("welcome.aspx");
                DataTable dt = BusinessAccessLayer.Query("select * from employees order by employeeid");
                gridEmployees.DataSource = dt;
                gridEmployees.DataBind();
            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.Message;
            }
        }
    }
}