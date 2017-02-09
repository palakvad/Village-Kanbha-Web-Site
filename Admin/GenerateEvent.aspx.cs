using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class GenerateEvent : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    DataTable dt = new DataTable();
    public static string old;
    public static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        lblMsg.Text = "";
        lblDeleteMsg.Text = "";

        if (!IsPostBack)
        {

            {
                clearall();
                Label lblFormTitle = (Label)this.Master.FindControl("lblFormTitle");
                lblFormTitle.Text = "Manage Upcoming Events";
                BindEvents();

            }
        }

    }
    protected void clearall()
    {
        txtdate.Text = "";
        txtday.Text = "";
        txtdescription.Text = "";
        txttitle.Text = "";
        imgPhoto.ImageUrl = "";
    }


    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        if (btnSubmit.Text == "Submit")
        {
            try
            {
                if (fupPhoto.HasFile == true)
                {
                    string ext = null;
                    ext = Path.GetExtension(fupPhoto.PostedFile.FileName).ToLower();
                    if (ext == ".jpg" || ext == ".gif" || ext == ".png")
                    {
                        string path = DateTime.Now.ToString("HHmmss") + "_" + fupPhoto.FileName;
                        fupPhoto.SaveAs(Server.MapPath("~/Images/" + path));
                        string filepath = "Images/" + "" + path;
                        c1.execute("insert into Events values ('" + txttitle.Text + "','" + txtdescription.Text + "','" + txtday.Text + "','" + txtdate.Text + "','" + filepath + "','1' )");
                        lblMsg.Text = "Your Event Has Been Uploaded";
                        BindEvents();
                        clearall();

                    }
                    else
                    {
                        lblMsg.Text = "Please Select Image In .jpg,.gif,.png Format";
                    }


                }
                else
                {
                    lblMsg.Text = "Please Select The Image";
                }
            }
            catch
            {
            }
        }
        else
        {
            if (fupPhoto.HasFile == true)
            {
                try
                {
                    string ext = null;
                    ext = Path.GetExtension(fupPhoto.PostedFile.FileName).ToLower();

                    if (ext == ".jpg" || ext == ".gif" || ext == ".png")
                    {
                        try
                        {
                            string path = DateTime.Now.ToString("HHmmss") + "_" + fupPhoto.FileName;
                            fupPhoto.SaveAs(Server.MapPath("~/Images/" + path));
                            string filepath = "Images/" + "" + path;
                            c1.execute("update Events set Title='" + txttitle.Text + "',Date='" + txtdate.Text + "',Day='" + txtday.Text + "',Details='" + txtdescription.Text + "',Image='" + filepath + "' where Id = '" + lblId.Text + "'");
                            BindEvents();
                            clearall();
                            System.IO.File.Delete(Server.MapPath("~") + "/" + old);
                            btnSubmit.Text = "Submit";
                        }
                        catch
                        {
                        }
                    }
                    else
                    {
                        lblMsg.Text = "Please Select image In .jpg,.gif,.png format";
                    }
                }
                catch
                {
                }
            }

            else
            {
                try
                {
                    c1.execute("update Events set Title='" + txttitle.Text + "',Date='" + txtdate.Text + "',Day='" + txtday.Text + "',Details='" + txtdescription.Text + "',Image='" + old + "' where Id = '" + lblId.Text + "'");
                    BindEvents();
                    clearall();
                    btnSubmit.Text = "Submit";

                }
                catch
                {
                }

            }
        }
    }

    protected void BindEvents()
    {
        dt = c1.getdataset("select * from Events");
        rptr1.DataSource = dt;
        rptr1.DataBind();
    }

    protected void rptr1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        dt = c1.getdataset("select * from Events where Id = '"+id+"'");

        if (e.CommandName == "EditGroup")
        {
            txtdate.Text = dt.Rows[0]["Date"].ToString();
            lblId.Text = dt.Rows[0]["Id"].ToString();
            txtday.Text = dt.Rows[0]["Day"].ToString();
            txtdescription.Text = dt.Rows[0]["Details"].ToString();
            txttitle.Text = dt.Rows[0]["Title"].ToString();
            old = dt.Rows[0]["Image"].ToString();
            imgPhoto.ImageUrl = "~/" + old;
            btnSubmit.Text = "Update";
        }

        if (e.CommandName == "DeleteGroup")
        {
            System.IO.File.Delete(Server.MapPath("~") + "/" + old);
            c1.execute("delete from Events where Id='"+id+"'");
            BindEvents();
        }
    }
}