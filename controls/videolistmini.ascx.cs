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
using System.Collections.Generic;

public partial class YouTube_controls_videolistmini : System.Web.UI.UserControl
{
    private List<YouTube.Video> _videoList = new List<YouTube.Video>();
    public List<YouTube.Video> VideoList
    {
        get { return _videoList; }
        set { _videoList = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        YouTube.Video v = new YouTube.Video();

        rptVids.DataSource = this.VideoList;
        rptVids.DataBind();
    }
}
