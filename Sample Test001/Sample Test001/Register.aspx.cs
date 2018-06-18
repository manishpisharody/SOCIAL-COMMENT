using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using Sample_Test001.Classes;

namespace Sample_Test001
{
    public partial class Register : System.Web.UI.Page
    {
        datamanager dm = new datamanager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnReg_Click(object sender, EventArgs e)
        {
            string sqlqry = "select * from tblUser where userName='"+txtInput.Text+"'";
            DataSet ds = new DataSet();
            ds = dm.GetData(sqlqry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                Label1.Text = "User Name is already exist...!";
            }
            else if(txtconfrm.Text!=txtPassword.Text)
            {
                Label1.Text = "Password mismatch...!";

            }
            else
            {

                sqlqry = "insert into tblUser(userName,Passwo)" +
                                " values('"+txtInput.Text+"','"+txtconfrm.Text+"')";
                int i = dm.getupdate(sqlqry);
                if(i>0)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    Label1.Text = "Register Faild";
                }
            }
        }
    }
}