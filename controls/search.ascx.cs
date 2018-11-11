using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class YouTube_controls_search : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack && !string.IsNullOrEmpty(Request.QueryString["tag"]))
            txtSearch.Text = Request.QueryString["tag"].ToString();
            
    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/youtube/results.aspx?tag=" + txtSearch.Text);
    }
}
