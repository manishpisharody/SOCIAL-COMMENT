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
    public partial class Login : System.Web.UI.Page
    {
        datamanager dm = new datamanager();


        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string usrname;

            string sqlqry = "select * from tblUser where userName='" + txtInput.Text + "' AND Passwo = '" + txtPassword.Text + "'";
            ds = dm.GetData(sqlqry);
            if (ds.Tables[0].Rows.Count > 0)
            {
                usrname = ds.Tables[0].Rows[0]["userName"].ToString();
                Response.Redirect("~/soc.aspx?UserNames="+usrname);

            }
           else
            {
                Label1.Text = "mis match....!!!";
            }
               
          
        }
    }
}