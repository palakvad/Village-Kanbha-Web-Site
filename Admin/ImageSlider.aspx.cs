using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class Admin_ImageSlider : System.Web.UI.Page
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
                lblFormTitle.Text = "Manage Main Image Slider On home Page";
                BindImageSlider();
               
                         }
        }

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
                        try
                        {
                            string path = DateTime.Now.ToString("HHmmss") + "_" + fupPhoto.FileName;
                            fupPhoto.SaveAs(Server.MapPath("~/Images/" + path));
                            string filepath = "Images/" + "" + path;
                            c1.execute("insert into ImageSlider values ('" + filepath + "','1')");
                            lblMsg.Text = "Your Image Has Been Uploaded";
                            BindImageSlider();
                            clearall();
                        }
                        catch
                        {
                        }
                    }
                    else
                    {
                        lblMsg.Text = "Plese Select Image From JPG,GIF,PNG Format";
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
            try
            {
                if (fupPhoto.HasFile == true)
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
                            c1.execute("update ImageSlider set Image='" + filepath + "' where Id='" + id + "'");
                            System.IO.File.Delete(Server.MapPath("~") + "/" + old);
                            lblMsg.Text = "Your Image Has Been Updated";
                            btnSubmit.Text = "Submit";
                            BindImageSlider();
                            clearall();
                        }
                        catch
                        {
                        }
                    }
                    else
                    {
                        lblMsg.Text = "Plese Select Image From JPG,GIF,PNG Format";
                    }
                }
                else
                {
                  
                        try
                        {
                            c1.execute("update ImageSlider set Image='" + old + "' where Id='" + id + "'");
                            lblMsg.Text = "Your Image Has Been Updated";
                            btnSubmit.Text = "Submit";
                            BindImageSlider();
                            clearall();

                        }

                        catch
                        {
                        }
                    
                 
                }

            }
            catch
            {
            }


        }
    }

    protected void BindImageSlider()
    {
        dt = c1.getdataset("select * from ImageSlider");
        rptr.DataSource = dt;
        rptr.DataBind();
    }


    protected void clearall()
    {
        imgPhoto.ImageUrl = "";
    }
    protected void rptr_ItemCommand(object source, RepeaterCommandEventArgs e)
    {
       id = Convert.ToInt32(e.CommandArgument);
         dt = c1.getdataset("select * from ImageSlider where Id = '"+id+"'");

        if (e.CommandName == "EditGroup")
        {
            btnSubmit.Text = "Update";
            lblId.Text = dt.Rows[0][1].ToString();
            imgPhoto.ImageUrl = "~/" + dt.Rows[0][1].ToString();
            old = dt.Rows[0][1].ToString();

            BindImageSlider();

        }

        if (e.CommandName == "DeleteGroup")
        {
           
            old = dt.Rows[0]["Image"].ToString();
            System.IO.File.Delete(Server.MapPath("~") + "/" + old);
            c1.execute("delete from ImageSlider where Id= '"+ id+"' ");
            BindImageSlider();
        }
    }
}