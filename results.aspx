<%@ Page Language="C#" MasterPageFile="~/nbirkes.master" AutoEventWireup="true" CodeFile="results.aspx.cs" Inherits="index" Title="YouTube API" %>

<%@ Register Src="controls/numvideoswatched.ascx" TagName="numvideoswatched" TagPrefix="uc4" %>
<%@ Register Src="controls/recentsearches.ascx" TagName="recentsearches" TagPrefix="uc3" %>
<%@ Register Src="controls/search.ascx" TagName="search" TagPrefix="uc2" %>
<%@ Register Src="controls/videolist.ascx" TagName="videolist" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 id="heading"><asp:Literal ID="litTitle" runat="server"></asp:Literal></h1>
    <p><asp:Literal ID="litSubHeading" runat="server" /></p>
    <uc3:recentsearches ID="Recentsearches1" runat="server" />
    <uc4:numvideoswatched ID="Numvideoswatched1" runat="server" />
    <script type="text/javascript"><!--
    google_ad_client = "pub-3091132930420457";
    //Results Page - 728x90, created 12/6/07
    google_ad_slot = "2640578243";
    google_ad_width = 728;
    google_ad_height = 90;
    //--></script>
    <script type="text/javascript"
    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
    <uc2:search ID="Search1" runat="server" />
    <uc1:videolist ID="ucVidList" runat="server" />
    <p>&nbsp;</p>
    <h2 style="border:solid 3px #6699FF;display:inline;float:right;color:#FFFFFF;background-color:#105CB6;padding:10px;">
        <asp:HyperLink Style="color:#FFFFFF;" ID="hlNextBottom" Visible="false" runat="server">Go to Next Page &gt;&gt;</asp:HyperLink>
    </h2>
</asp:Content>

