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

public partial class YouTube_controls_recentsearches : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<string> recentVideoSearches = (List<string>)Application.Get("recentVideoSearches");
        string links = "";
        string link = "";

        foreach (string search in recentVideoSearches)
        {
            link = "~/YouTube/results.aspx?tag=" + search;
            link = ResolveClientUrl(link);

            links += string.Format("<a href=\"{0}\"><b>{1}</b></a>, ", link, search);
        }

        litRecentSearches.Text = links;
    }
}
