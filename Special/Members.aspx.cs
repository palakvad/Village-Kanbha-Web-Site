using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Special_Members : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMembers();
        }
    }

    protected void BindMembers()
    {
        DataTable dt = new DataTable();
        Class1 c1 = new Class1();
        dt = c1.getdataset("select r.* ,a.Vaas,b.Blood from Registration r inner join VillageAddress a on  r.AddressVillage = a.Id inner join BloodGroup b on r.BloodGroup=b.Id ");
        rptr.DataSource = dt;
        rptr.DataBind();
    }
    protected void rptr_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        if (e.CommandName == "Details")
        {
            try
            {
                Session["MemberId"] = e.CommandArgument.ToString();
                Response.Redirect("MembersDetails.aspx");
            }
            catch
            {
            }
        }
    }
}