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

public partial class watch : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(Request.QueryString["v"]))
        {
            int numvideoswatched = (int)Application.Get("numvideoswatched");
            numvideoswatched++;
            Application.Set("numvideoswatched", numvideoswatched);

            YouTube.Video vid = YouTube.Video.GetDetails(Request.QueryString["v"].ToString());

            Page.Title = vid.Title + " - Video";

            txtEmbed.Text = vid.EmbedHtml;
            txtUrl.Text = vid.YouTubeUrl;

            litTitle.Text = vid.Title;

            lblAdded.Text = vid.UploadTime.ToString();
            lblDescription.Text = vid.Description;

            hidTags.Value = vid.Tags;

            relatedVideos.VideoList = YouTube.Video.GetRelatedVideoList(vid.Tags);

            rptTags.DataSource = vid.TagList;
            rptTags.DataBind();

            litEmbed.Text = vid.EmbedHtml;
        }
    }

    public string GetTags()
    {
        return hidTags.Value;
    }
}
