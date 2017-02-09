using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;

public partial class Admin_Gallery : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    DataTable dt = new DataTable();
    public Int32 id;
    public string old;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindGallery();
            clearall();
        }

    }

    protected void clearall()
    {
        txtdescription.Text = "";
        ddlgroup.SelectedValue = "0";
        imgPhoto.ImageUrl = "";
    }

    protected void BindGallery()
    {
        dt = c1.getdataset("select * from Gallery");
        rptrgallery.DataSource = dt;
        rptrgallery.DataBind();
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
                        c1.execute("insert into Gallery values ('"+ddlgroup.SelectedItem.Text+"','"+txtdescription.Text+"','"+filepath+"','1')");
                        lblMsg.Text = "Your Image Has Been Inserted To Gallery";
                        BindGallery();
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
                            c1.execute("update Gallery set GroupId='" + ddlgroup.SelectedItem.Text + "',Description='" + txtdescription.Text + "',Image='" + filepath + "' where Id= '" + lblId.Text + "'");
                            BindGallery();
                            clearall();
                            System.IO.File.Delete(Server.MapPath("~") + "/" + old);
                            lblMsg.Text = "Your Details Has Been Updated to gallery";
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
                    c1.execute("update Gallery set GroupId='" + ddlgroup.SelectedItem.Text + "',Description='" + txtdescription.Text + "' where Id= '" + lblId.Text + "'");
                    BindGallery();
                    clearall();
                    lblMsg.Text = "Your Details Has Been Updated to Gallery";
                    btnSubmit.Text = "Submit";

                }
                catch
                {
                }

            }
        }
    }

    protected void rptr1_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
        id = Convert.ToInt32(e.CommandArgument);
        dt = c1.getdataset("select * from Gallery where Id = '" + id + "'");

        if (e.CommandName == "EditGroup")
        {
            ddlgroup.SelectedItem.Text = dt.Rows[0][1].ToString();
            txtdescription.Text = dt.Rows[0]["Description"].ToString();
            lblId.Text = dt.Rows[0]["Id"].ToString();
            old = dt.Rows[0]["Image"].ToString();
            imgPhoto.ImageUrl = "~/" + old;
            btnSubmit.Text = "Update";
        }

        if (e.CommandName == "DeleteGroup")
        {
            System.IO.File.Delete(Server.MapPath("~") + "/" + old);
            c1.execute("delete from Gallery where Id='" + id + "'");
            BindGallery();
        }
    }
}