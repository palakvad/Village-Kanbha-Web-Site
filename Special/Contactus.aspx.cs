using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Special_Contactus : System.Web.UI.Page
{
    Class1 c1 = new Class1();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        if (txtName.Text == "" || txtName.Text == null)
        {
            lblMsg.Text = "*Enter Name";
            txtName.Focus();
        }       
        else if (txtContact.Text == "" || txtContact.Text == null)
        {
            lblMsg.Text = "*Enter Contact";
            txtContact.Focus();
        }
        else if (txtMessage.Text == "" || txtMessage.Text == null)
        {
            lblMsg.Text = "*Enter Message";
            txtMessage.Focus();
        }
        else
        {
            string date = DateTime.Now.ToString();

            c1.execute("Insert into Suggetions values ('" + txtName.Text + "','" + txtContact.Text + "','" + txtMessage.Text + "','"+date+"')");
            lblMsg.CssClass = "text-success";
            lblMsg.Text = "Submited Successfully";
            txtContact.Text = "";
            txtMessage.Text = "";
            txtName.Text = "";
        }
    }

    }