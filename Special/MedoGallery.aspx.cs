using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Special_MedoGallery : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGallery();
        }
    }

    protected void BindGallery()
    {
        Class1 c1 = new Class1();
        DataTable dt = new DataTable();
        dt = c1.getdataset("Select * from Gallery where GroupId = 'Medo'");
        rptr.DataSource = dt;
        rptr.DataBind();
    }
}