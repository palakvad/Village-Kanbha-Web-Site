using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindImageSlider();
            BindHomeAdvertisement();
        }
    }

    protected void BindImageSlider()
    {
        dt = c1.getdataset("select * from ImageSlider");
        rptr1.DataSource = dt;
        rptr1.DataBind();

    }

    protected void BindHomeAdvertisement()
    {
        dt = c1.getdataset("select * from HomeAdvertisement");
        rptr2.DataSource = dt;
        rptr2.DataBind();
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("RegistrationForm.aspx");
    }
}