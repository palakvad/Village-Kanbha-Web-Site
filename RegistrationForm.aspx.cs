using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

public partial class RegistrationForm : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    DataTable dt = new DataTable();
    DataTable dt1 = new DataTable();
    public static string old;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            clearall();
        }

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        try
        {
            if (Page.IsValid)
            {
                if (btnSubmit.Text == "Submit")
                {
                    if (fupImage.HasFile == true)
                    {
                        try
                        {
                            string ext = Path.GetExtension(fupImage.PostedFile.FileName).ToLower();
                            if (ext == ".jpg" || ext == ".gif" || ext == ".png")
                            {
                                string name = txtName.Text.ToString();
                                string ImageName = name + "_" + DateTime.Now.ToString("HHmmss") + "_" + fupImage.FileName;
                                fupImage.SaveAs(Server.MapPath("~/Images/" + ImageName));
                                string filepath = "Images/" + ImageName;
                                lblDate.Text = DateTime.Now.ToString();
                                c1.execute("insert into Registration values('" + txtName.Text + "','" + txtMobile.Text + "','" + txtWhatsapp.Text + "','" + ddlBlood.SelectedValue + "','" + ddlHome.SelectedValue + "','" + txtAddress.Text + "','" + lblDate.Text + "','" + txtEducation.Text + "','" + ddlOccupation.SelectedItem.Text + "','" + txtPassword.Text + "','" + filepath + "','1')");
                              

                                dt1 = c1.getdataset("select * from Registration where Name='" + name + "'");
                                Alert.Show("તમારી માહિતી એડમીનને ચકાસણી માટે મોકલી દેવામાં આવેલ છે.Your Login Id is '" + dt1.Rows[0]["LoginId"] + "'Please Remember It.");
                                clearall();
                              
                            }
                            else
                            {
                                lblMsg.Text = "Please Select .jpg of .gif or .png Format Image";
                            }
                        }
                        catch
                        {
                        }
                    }
                    else
                    {
                        lblMsg.Text = "Please Select The Image For Your Profile";
                    }
                }

                else
                {
                  
                    btnSubmit.Text = "Submit";
                    if (fupImage.HasFile == true)
                    {
                        try
                        {
                             string ext = Path.GetExtension(fupImage.PostedFile.FileName).ToLower();
                             if (ext == ".jpg" || ext == ".gif" || ext == ".png")
                            {
                                string name = txtName.Text.ToString();
                                string ImageName = name + "_" + DateTime.Now.ToString("HHmmss") + "_" + fupImage.FileName;
                                fupImage.SaveAs(Server.MapPath("~/Images/" + ImageName));
                                string filepath = "Images/" + ImageName;
                                lblDate.Text = DateTime.Now.ToString();
                                c1.execute("update Registration set Name='"+txtName.Text+"',Mobile='"+txtMobile.Text+"',Whatsapp='"+txtWhatsapp.Text+"',BloodGroup='"+ddlBlood.SelectedValue+"',AddressVillage='"+ddlHome.SelectedValue+"',Education='"+txtEducation.Text+"',Occupation='"+ddlOccupation.SelectedItem.Text+"',Address='"+txtAddress.Text+"',Password='"+txtPassword.Text+"',Photo='"+filepath+"' where Id='"+lblId.Text+"'");
                                System.IO.File.Delete(Server.MapPath("~") + "/" + old);
                                txtPassword.TextMode = TextBoxMode.Password;
                                dt1 = c1.getdataset("select * from Registration where Name='" + name + "'");
                                Alert.Show("તમારી માહિતી એડમીનને ચકાસણી માટે મોકલી દેવામાં આવેલ છે.Your Login Id is '" + dt1.Rows[0]["LoginId"] + "'Please Remember It.");
                                clearall();
                                imgImage.Visible = false;
                                btnEdit.Visible = true;
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
                            string name = txtName.Text.ToString();
                            string ImageName = name + "_" + DateTime.Now.ToString("HHmmss") + "_" + fupImage.FileName;
                            fupImage.SaveAs(Server.MapPath("~/Images/" + ImageName));
                            string filepath = "Images/" + ImageName;
                            lblDate.Text = DateTime.Now.ToString();
                            c1.execute("update Registration set Name='" + txtName.Text + "',Mobile='" + txtMobile.Text + "',Whatsapp='" + txtWhatsapp.Text + "',BloodGroup='" + ddlBlood.SelectedValue + "',AddressVillage='" + ddlHome.SelectedValue + "',Education='" + txtEducation.Text + "',Occupation='" + ddlOccupation.SelectedItem.Text + "',Address='" + txtAddress.Text + "',Password='" + txtPassword.Text + "' where Id='" + lblId.Text + "'");
                            txtPassword.TextMode = TextBoxMode.Password;
                            dt1 = c1.getdataset("select * from Registration where Name='" + name + "'");
                            Alert.Show("તમારી માહિતી એડમીનને ચકાસણી માટે મોકલી દેવામાં આવેલ છે.Your Login Id is '" + dt1.Rows[0]["LoginId"] + "'Please Remember It.");
                            clearall();
                            imgImage.Visible = false;
                            btnEdit.Visible = true;
                        }
                        catch
                        {
                        }
                    }
                }
            }
        }
        catch
        {
        }
    
    }

    protected void clearall()
    {
       txtAddress.Text = "";
        ddlHome.SelectedIndex = 0;
        txtMobile.Text = "";
        txtName.Text = "";
        txtWhatsapp.Text = "";
        lblDate.Text = "";
        ddlBlood.SelectedValue = "0";
        ddlOccupation.SelectedItem.Text ="- સિલેક્ટ કરવા માટે અહીં ક્લિક કરો -";
        imgImage.ImageUrl = "";
        txtPassword.Text = "";
        txtEducation.Text = "";
        lblId.Text = "";
        
    }
    protected void btnEdit_Click(object sender, EventArgs e)
    {
      // PnlRegister.Visible = false;
      // btnSubmit.Visible = false;
      //  btnSubmit.Text = "Update";
        PnlLogin.Visible = true;
        btnEdit.Visible = false;
    }
    protected void btnLogin_Click(object sender, EventArgs e)
    {
        try
        {
            if (txtLoginId.Text == "")
            {
                lblLoginMsg.Text = "Login Id Is Empty";
            }
            else if (txtLoginPassword.Text == "")
            {
                lblLoginMsg.Text = "Password Is Empty";
            }
            else
            {
                try
                {
                    dt = c1.getdataset("select * from Registration where LoginId='" + txtLoginId.Text + "'");
                    if (txtLoginId.Text == dt.Rows[0]["LoginId"].ToString() && txtLoginPassword.Text == dt.Rows[0]["Password"].ToString())
                    {

                        PnlLogin.Visible = false;                     
                        btnEdit.Visible = false;
                        btnSubmit.Text = "Update";
                        txtName.Text = dt.Rows[0]["Name"].ToString();
                        txtMobile.Text = dt.Rows[0]["Mobile"].ToString();
                        txtWhatsapp.Text = dt.Rows[0]["Whatsapp"].ToString();
                        txtAddress.Text = dt.Rows[0]["Address"].ToString();
                        txtPassword.TextMode = TextBoxMode.SingleLine;
                        txtPassword.Text = dt.Rows[0]["Password"].ToString();
                        ddlBlood.SelectedValue = dt.Rows[0]["BloodGroup"].ToString();
                        ddlHome.SelectedValue = dt.Rows[0]["AddressVillage"].ToString();
                        ddlOccupation.SelectedItem.Text = dt.Rows[0]["Occupation"].ToString();
                        txtEducation.Text = dt.Rows[0]["Education"].ToString();
                        // fupImage. = dt.Rows[0]["LoginId"].ToString();
                        imgImage.ImageUrl = dt.Rows[0]["Photo"].ToString();
                        old = dt.Rows[0]["Photo"].ToString();
                        lblId.Text = dt.Rows[0]["Id"].ToString();
                        imgImage.Visible = true;
                    }
                    else
                    {
                        lblLoginMsg.Text = "Login Id OR Password Incorrect";
                    }
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