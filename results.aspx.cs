using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Collections.Generic;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["tag"]))
        {
            int page = 1;
            string tag = Request.QueryString["tag"].ToString().ToLower();

            List<string> recentVideoSearches = (List<string>)Application.Get("recentVideoSearches");

            if (recentVideoSearches.Count > 10)
            {
                int removeCount = recentVideoSearches.Count - 10;
                recentVideoSearches.RemoveRange(10, removeCount);
            }

            if (!recentVideoSearches.Contains(tag))
            {
                recentVideoSearches.Insert(0, tag);
            }

            if (!string.IsNullOrEmpty(Request.QueryString["page"]))
            {
                page = int.Parse(Request.QueryString["page"].ToString());
            }

            litTitle.Text = "Watch <b>&quot;" + tag + "&quot;</b> Videos";
            litSubHeading.Text = "Search Results For <b>&quot;" + tag + "&quot;</b>";

            this.Page.Title = "Watch " + tag + " Videos on nbirkes.com";
            List<YouTube.Video> vidList = YouTube.Video.GetVideoListByTag(tag, page);
            ucVidList.VideoList = vidList;

            if (vidList.Count >= 20)
            {
                hlNextBottom.Visible = true;
                hlNextBottom.NavigateUrl = "~/youtube/results.aspx?tag=" + tag + "&page=" + (page + 1).ToString();
            }
        }
        
    }
}
