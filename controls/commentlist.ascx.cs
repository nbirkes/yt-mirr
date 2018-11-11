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
using YouTube;

public partial class YouTube_controls_commentlist : System.Web.UI.UserControl
{
    private List<Comment> _commentList = new List<Comment>();
    public List<Comment> CommentList
    {
        get { return _commentList; }
        set { _commentList = value; }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            rptComments.DataSource = this.CommentList;
            rptComments.DataBind();
        }
    }
}
