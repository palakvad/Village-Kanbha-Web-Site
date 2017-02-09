using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Suggetions : System.Web.UI.Page
{
    DataTable dt = new DataTable();
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!Utils.IsLoggedIn())
            {
                Utils.LogOut();
            }
            else
            {
                Label lblFormTitle = (Label)this.Master.FindControl("lblFormTitle");
                lblFormTitle.Text = "Suggetions";

                BindSuggetions();
            }
        }
    }
    protected void BindSuggetions()
    {
        dt = c1.getdataset("select * from Suggetions");
        rptr.DataSource = dt;
        rptr.DataBind();
    }
    protected void rptr_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
       
        if (e.CommandName == "DeleteGroup")
        {
            c1.execute("delete from Suggetions where Id='"+e.CommandArgument+"'");
            BindSuggetions();
        }
    }
}