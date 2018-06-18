using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Sample_Test001.Classes;
using System.Data;

namespace Sample_Test001
{
    public partial class soc : System.Web.UI.Page
    {
        datamanager dm = new datamanager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                fillrpt();
                try
                {
                    if (Request.QueryString[0] == "" || Request.QueryString[0] == null)
                    {
                        Response.Redirect("~/Login.aspx");
                    }
                }
                catch
                {
                    Response.Redirect("~/Login.aspx");
                }

            }
        }

        protected void lnklogout_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Login.aspx");
        }

        protected void btnStatus_Click(object sender, EventArgs e)
        {
            string sqlQry = "insert into tblcomment(username,date,status) values('" + Request.QueryString[0] + "','" + DateTime.Now.ToString("yyyyMMdd hh:mm:ss") + "','" + txtcommand.Text + "')";
            dm.getupdate(sqlQry);
            fillrpt();
            txtcommand.Text = "";

        }

        private void fillrpt()
        {
            string sqlQry = "select * from tblcomment where parentid is null"+
                            " order by id desc";
            DataSet ds = new DataSet();
            ds = dm.GetData(sqlQry);
            rptStatus.DataSource = ds;
            rptStatus.DataBind();
          
        }

        protected void rptStatus_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if(e.CommandName=="StatRep")
            {
                Panel pnl = (Panel)e.Item.FindControl("pnlrply");
                pnl.Visible = true;
            }
           else if(e.CommandName=="repstatcancel")
            {
                Panel pnl = (Panel)e.Item.FindControl("pnlrply");
                pnl.Visible = false;

            }
            else if(e.CommandName=="repstatpost")
            {
                TextBox repcomment = (TextBox)e.Item.FindControl("txtStatRep");
                HiddenField parentid = (HiddenField)e.Item.FindControl("hdnPID");
                string sqlqury = "insert into tblcomment(username,date,status,parentid)"+
                                  " values('"+Request.QueryString[0]+"','" + DateTime.Now.ToString("yyyyMMdd hh:mm:ss") + "','" + repcomment.Text + "'," + parentid.Value + ")";

                                  dm.getupdate(sqlqury);
                                  repcomment.Text = "";
                                  Panel pnl = (Panel)e.Item.FindControl("pnlrply");
                                  pnl.Visible = false;
                                  fillrpt();


            }

        }

        protected void rptStatus_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Repeater rptreply = (Repeater)e.Item.FindControl("rptcomment");
            HiddenField parentid = (HiddenField)e.Item.FindControl("hdnPID");
            string sqlQry = "select * from tblcomment where parentid="+parentid.Value+"" +
                            "order by id asc";
            DataSet ds = dm.GetData(sqlQry);
            rptreply.DataSource = ds;
            rptreply.DataBind();

           

            

        }


        protected void rptcomment_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "StatRep")
            {
                Panel pnl = (Panel)e.Item.FindControl("pnlrply");
                pnl.Visible = true;
            }
            else if (e.CommandName == "repstatcancel")
            {
                Panel pnl = (Panel)e.Item.FindControl("pnlrply");
                pnl.Visible = false;

            }
            else if (e.CommandName == "repstatpost")
            {
                TextBox repcomment = (TextBox)e.Item.FindControl("txtStatRep");
                HiddenField parentid = (HiddenField)e.Item.FindControl("hdnPID");
                string sqlqury = "insert into tblcomment(username,date,status,parentid)" +
                                  " values('" + Request.QueryString[0] + "','" + DateTime.Now.ToString("yyyyMMdd hh:mm:ss") + "','" + repcomment.Text + "'," + parentid.Value + ")";

                dm.getupdate(sqlqury);
                repcomment.Text = "";
                Panel pnl = (Panel)e.Item.FindControl("pnlrply");
                pnl.Visible = false;
                fillrpt();


            }

        }

        protected void rptcomment_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            Repeater rptreply = (Repeater)e.Item.FindControl("rptcommentRep");
            HiddenField parentid = (HiddenField)e.Item.FindControl("hdnPID");
            string sqlQry = "select * from tblcomment where parentid=" + parentid.Value + "" +
                            "order by id asc";
            DataSet ds = dm.GetData(sqlQry);
            rptreply.DataSource = ds;
            rptreply.DataBind();


        }
    }
}