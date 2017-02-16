using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Special_MembersDetails : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindMembers();
        }

    }
    protected void BindMembers()
    {
        try
        {
            dt = c1.getdataset("select r.* ,a.Vaas,b.Blood from Registration r inner join VillageAddress a on  r.AddressVillage = a.Id inner join BloodGroup b on r.BloodGroup=b.Id  where r.Id = '" + Session["MemberId"].ToString() + "'");
            rptr.DataSource = dt;
            rptr.DataBind();
           
        }
        catch
        {
        }

    }
}