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

public partial class YouTube_controls_numvideoswatched : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int numvideoswatched = (int)Application.Get("numvideoswatched");
        DateTime since = (DateTime)Application.Get("appstartdate");

        litNumVideosWatched.Text = numvideoswatched.ToString();
        litSince.Text = since.ToString();
    }
}
