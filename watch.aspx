<%@ Page Language="C#" MasterPageFile="~/nbirkes.master" ValidateRequest="false" AutoEventWireup="true" CodeFile="watch.aspx.cs" Inherits="watch" Title="YouTube API" %>

<%@ Register Src="controls/numvideoswatched.ascx" TagName="numvideoswatched" TagPrefix="uc4" %>
<%@ Register Src="controls/recentsearches.ascx" TagName="recentsearches" TagPrefix="uc3" %>
<%@ Register Src="controls/videolistmini.ascx" TagName="videolistmini" TagPrefix="uc1" %>
<%@ Register Src="controls/search.ascx" TagName="search" TagPrefix="uc1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 id="heading">
        <asp:Literal ID="litTitle" runat="server"></asp:Literal>
    </h1>
    <uc3:recentsearches ID="Recentsearches1" runat="server" />
    <uc4:numvideoswatched ID="Numvideoswatched1" runat="server" />
    <div style="text-align:center;">
        <script type="text/javascript"><!--
        google_ad_client = "pub-3091132930420457";
        //Video Page Top - 728x90, created 12/5/07
        google_ad_slot = "4360617140";
        google_ad_width = 728;
        google_ad_height = 90;
        //--></script>
        <script type="text/javascript"
        src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
        </script>
    </div>

    <uc1:search ID="Search1" runat="server" /><br />
    <table>
        <tr>
            <td valign="top">
                <asp:Literal ID="litEmbed" runat="server"></asp:Literal>
            </td>
            <td valign="top" style="padding-left:10px;">
                <script type="text/javascript"><!--
                google_ad_client = "pub-3091132930420457";
                //Video Page Side - 300x250, created 12/5/07
                google_ad_slot = "1774636351";
                google_ad_width = 300;
                google_ad_height = 250;
                //--></script>
                <script type="text/javascript"
                src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                </script>
            </td>
        </tr>
        <tr>
            <td valign="top">
                <div style="border: solid 1px #CCCCCC;margin-top:10px;width:420px;padding:5px;">
                    <h3 style="margin-bottom:0px;">Related Videos</h3>
                    <div style="height:500px;;overflow:scroll;">
                        <uc1:videolistmini ID="relatedVideos" runat="server" />
                    </div>
                    <asp:HiddenField ID="hidTags" runat="server" />
                </div>
            </td>
            <td valign="top" style="padding-left:10px;">
                <div style="border: solid 1px #CCCCCC;margin-top:10px;width:300px;padding:5px;">
                    <table>
                        <tr>
                            <td style="font-weight:bold;">Added:</td>
                            <td>
                                <asp:Label ID="lblAdded" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <asp:Label ID="lblDescription" runat="server"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight:bold;" valign="top">Tags:</td>
                            <td>
                                <asp:Repeater ID="rptTags" runat="server">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="hlTag" Text='<%# Eval("Text") %>' NavigateUrl='<%# Eval("Url") %>' runat="server"></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </td>
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">Url:</td>
                            <td><asp:TextBox ID="txtUrl" runat="server" Width="240px"></asp:TextBox></td>
                        </tr>
                        <tr>
                            <td style="font-weight:bold;">Embed:</td>
                            <td><asp:TextBox ID="txtEmbed" runat="server" Width="240px"></asp:TextBox></td>
                        </tr>
                    </table>
                </div>
            </td>
        </tr>
    </table>
</asp:Content>

