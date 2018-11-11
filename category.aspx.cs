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

public partial class YouTube_categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        litHeader.Text = "Categories";
        if (!Page.IsPostBack)
        {
            if (!string.IsNullOrEmpty(this.Request.QueryString["c"]))
            {
                YouTube.Category c = YouTube.Category.GetCategoryById(int.Parse(this.Request.QueryString["c"]));

                vidList.VideoList = c.GetVideos();

                litHeader.Text = c.Name;

                Page.Title = c.Name + " - Videos";

            }
        }
    }
}
