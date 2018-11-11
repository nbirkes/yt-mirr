<%@ Page Language="C#" MasterPageFile="~/nbirkes.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="YouTube_index" Title="Watch YouTube Videos on nbirkes.com" %>
<%@ OutputCache Duration="1800" VaryByParam="*" %>

<%@ Register Src="controls/numvideoswatched.ascx" TagName="numvideoswatched" TagPrefix="uc4" %>
<%@ Register Src="controls/recentsearches.ascx" TagName="recentsearches" TagPrefix="uc3" %>
<%@ Register Src="controls/categories.ascx" TagName="categories" TagPrefix="uc3" %>
<%@ Register Src="controls/search.ascx" TagName="search" TagPrefix="uc2" %>
<%@ Register Src="controls/videolist.ascx" TagName="videolist" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 id="heading">Watch Videos at nbirkes.com</h1>
    <uc3:recentsearches ID="Recentsearches1" runat="server" />
    <uc4:numvideoswatched ID="Numvideoswatched1" runat="server" />
    <script type="text/javascript"><!--
    google_ad_client = "pub-3091132930420457";
    //Videos Index - 728x90, created 12/6/07
    google_ad_slot = "3700198254";
    google_ad_width = 728;
    google_ad_height = 90;
    //--></script>
    <script type="text/javascript"
    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
    <table width="100%">
        <tr>
            <td valign="top" width="33%">
                <h2>Search</h2>
                <uc2:search ID="Search1" runat="server" />
            </td>
            <td valign="top" width="33%">
                <h2>Categories</h2>
                <uc3:categories ID="Categories1" runat="server" />
            </td>
            <td valign="top" width="33%">
                <h2>What I Like</h2>
                <ul>
                    <li><asp:HyperLink ID="HyperLink9" NavigateUrl="~/youtube/profile.aspx?user=nbirkes" runat="server">Check Out My Profile</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink6" NavigateUrl="~/youtube/results.aspx?tag=master%20chief%20sucks%20at%20halo" runat="server">"master chief sucks at halo"</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink7" NavigateUrl="~/youtube/results.aspx?tag=guitar%20hero" runat="server">"guitar hero"</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink8" NavigateUrl="~/youtube/results.aspx?tag=dave%20chappelle" runat="server">"dave chappelle"</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink1" NavigateUrl="~/youtube/results.aspx?tag=bubba%20stewart" runat="server">"bubba stewart"</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink2" NavigateUrl="~/youtube/results.aspx?tag=scrubs" runat="server">"scrubs"</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink3" NavigateUrl="~/youtube/results.aspx?tag=goon%20riding" runat="server">"goon riding"</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink4" NavigateUrl="~/youtube/results.aspx?tag=arrested%20development" runat="server">"arrested development"</asp:HyperLink></li>
                    <li><asp:HyperLink ID="HyperLink5" NavigateUrl="~/youtube/results.aspx?tag=mx%20vs%20atv" runat="server">"mx vs atv"</asp:HyperLink></li>
                </ul>
            </td>
        </tr>
    </table>
    <hr />
    <h2>Popular Videos</h2>
    <uc1:videolist ID="vidList" runat="server" />
</asp:Content>

