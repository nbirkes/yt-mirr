<%@ Page Language="C#" MasterPageFile="~/nbirkes.master" AutoEventWireup="true" CodeFile="profile.aspx.cs" Inherits="YouTube_user" Title="Untitled Page" %>

<%@ Register Src="controls/numvideoswatched.ascx" TagName="numvideoswatched" TagPrefix="uc4" %>
<%@ Register Src="controls/recentsearches.ascx" TagName="recentsearches" TagPrefix="uc3" %>
<%@ Register Src="controls/videolist.ascx" TagName="videolist" TagPrefix="uc1" %>
<%@ Register Src="controls/videolistmini.ascx" TagName="videolistmini" TagPrefix="uc2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h1 id="heading"><asp:Literal ID="litUser" runat="server"></asp:Literal></h1>
    <uc3:recentsearches ID="Recentsearches1" runat="server" />
    <uc4:numvideoswatched ID="Numvideoswatched1" runat="server" />
    <script type="text/javascript"><!--
    google_ad_client = "pub-3091132930420457";
    //Profile Page - 728x90, created 12/6/07
    google_ad_slot = "7775828828";
    google_ad_width = 728;
    google_ad_height = 90;
    //--></script>
    <script type="text/javascript"
    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
    </script>
    <table>
        <tr>
            <td style="font-weight:bold;">Name:</td>
            <td> <asp:Label ID="lblFirstName" runat="server"></asp:Label> <asp:Label ID="lblLastName" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">About Me:</td>
            <td><asp:Label ID="lblAboutMe" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Age:</td>
            <td><asp:Label ID="lblAge" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Videos Uploaded:</td>
            <td><asp:Label ID="lblVideoUploadCount" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Videos Watched:</td>
            <td><asp:Label ID="lblVideoWatchCount" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Homepage:</td>
            <td><asp:HyperLink ID="hlHomepage" runat="server"></asp:HyperLink></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Hometown:</td>
            <td><asp:Label ID="lblHometown" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Gender:</td>
            <td><asp:Label ID="lblGender" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Occupations:</td>
            <td><asp:Label ID="lblOccupations" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Companies:</td>
            <td><asp:Label ID="lblCompanies" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">City:</td>
            <td><asp:Label ID="lblCity" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Country:</td>
            <td><asp:Label ID="lblCountry" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Books:</td>
            <td><asp:Label ID="lblBooks" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Hobbies:</td>
            <td><asp:Label ID="lblHobbies" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Movies:</td>
            <td><asp:Label ID="lblMovies" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Relationship:</td>
            <td><asp:Label ID="lblRelationship" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Friends:</td>
            <td><asp:Label ID="lblFriendCount" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Friend Video Count:</td>
            <td><asp:Label ID="lblFriendVideoCount" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">Favorite Video Count:</td>
            <td><asp:Label ID="lblFavoriteVideoCount" runat="server"></asp:Label></td>
        </tr>
        <tr>
            <td style="font-weight:bold;">CurrentlyOn:</td>
            <td><asp:Label ID="lblCurrentlyOn" runat="server"></asp:Label></td>
        </tr>
    </table>
    <table>
        <tr>
            <td width="250" valign="top">
                <h2>My Favorite Videos</h2>
                <uc2:videolistmini ID="favVids" runat="server" />
            </td>
            <td width="250" valign="top">
                <h2>My Uploaded Videos</h2>
                <uc2:videolistmini ID="uploadedVids" runat="server" />
            </td>
            <td width="250" valign="top">
                <h2>My Friends</h2>
                <asp:Repeater ID="rptFriends" runat="server">
                    <HeaderTemplate>
                        <ul>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <li>
                            <%# Eval("Name")%>
                        </li>
                    </ItemTemplate>
                    <FooterTemplate>
                        </ul>
                    </FooterTemplate>
                </asp:Repeater>
            </td>
        </tr>
    </table>
</asp:Content>

