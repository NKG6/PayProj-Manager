using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace PayProj_Manager
{

    
    public partial class ManagerMessageOutbox : System.Web.UI.Page
    {
        string from = "Manager";
        private void Show()
        {
            gridMessages.DataSource = null;
            gridMessages.DataBind();
            lblMessage.Text = "";
            DataTable dt = BusinessAccessLayer.Query("select * from messages where messagefrom='" + from + "' order by date desc");
            if (dt.Rows.Count > 0)
            {
                gridMessages.DataSource = dt;
                gridMessages.DataBind();
            }
            else
                lblMessage.Text = "No Messages.";
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
               // if (Convert.ToString(Session["currentusertype"]) != "Manager")
                 //   Response.Redirect("welcome.aspx");
                if (Page.IsPostBack == false)
                    Show();
            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.Message;
            }
        }

        protected void gridMessages_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int messageid = Convert.ToInt32(gridMessages.Rows[e.RowIndex].Cells[0].Text);
                string sqlstr = "delete from messages where messageid=" + messageid;
                BusinessAccessLayer.NonQuery(sqlstr);
                Show();
            }
            catch (Exception ex)
            {
                lblError.Text = "Error: " + ex.Message;
            }
        }
    }
}