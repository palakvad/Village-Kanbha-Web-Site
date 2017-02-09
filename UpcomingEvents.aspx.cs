using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class UpcomingEvents : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindEvents();
        }
    }

    protected void bindEvents()
    {
        DataTable dt = new DataTable();
        Class1 c1 = new Class1();
        dt = c1.getdataset("select * from Events");
        rptrevent.DataSource = dt;
        rptrevent.DataBind();

    }
}