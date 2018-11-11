<%@ Page Language="C#" MasterPageFile="~/nbirkes.master" AutoEventWireup="true" CodeFile="category.aspx.cs" Inherits="YouTube_categories" Title="Untitled Page" %>

<%@ Register Src="controls/numvideoswatched.ascx" TagName="numvideoswatched" TagPrefix="uc4" %>
<%@ Register Src="controls/recentsearches.ascx" TagName="recentsearches" TagPrefix="uc3" %>
<%@ Register Src="controls/videolist.ascx" TagName="videolist" TagPrefix="uc2" %>
<%@ Register Src="controls/categories.ascx" TagName="categories" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 id="heading"><asp:Literal ID="litHeader" runat="server"></asp:Literal></h1>
    <uc3:recentsearches ID="Recentsearches1" runat="server" />
    <uc4:numvideoswatched ID="Numvideoswatched1" runat="server" />
    <script type="text/javascript"><!--
    google_ad_client = "pub-3091132930420457";
    //Category Page - 728x90, created 12/6/07
    google_ad_slot = "4579610554";
    google_ad_width = 728;
    google_ad_height = 90;
    //--></script>
    <script type="text/javascript"
    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
    <table>
        <tr>
            <td valign="top" style="width: 152px">
                <uc1:categories ID="Categories1" runat="server" />
            </td>
            <td valign="top">
                <uc2:videolist ID="vidList" runat="server" />
            </td>
        </tr>
    </table>
</asp:Content>

