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

public partial class YouTube_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        // vidList.VideoList = YouTube.Video.GetPopularVideoListFromToday();

        List<YouTube.Video> videoList = YouTube.Video.GetFeaturedVideoList();

        // Response.Write(videoList.Count.ToString());

        if (videoList.Count > 25)
        {
            videoList.RemoveRange(25, videoList.Count - 25);
        }

        vidList.VideoList = videoList;
    }
}
