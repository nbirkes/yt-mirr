<%@ Control Language="C#" AutoEventWireup="true" CodeFile="videolist.ascx.cs" Inherits="YouTube_controls_videolist" %>

<script type="text/C#" runat="Server">

    bool ShowAd(int index)
    {
        if ((index == 0) || (index >= 15)) { return false; }
        else if (index % 6 == 0) { return true; }
        else { return false; }
    }
    
</script>

<asp:Repeater ID="rptVids" runat="server">
    <HeaderTemplate>
        <table>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td valign="top">
                <asp:HyperLink ID="HyperLink1" CssClass="youtube_thumb" Text='<%# Eval("Title") %>' ImageUrl='<%# Eval("ThumbnailUrl") %>' NavigateUrl='<%# Eval("Url") %>' runat="server"></asp:HyperLink>
            </td>
            <td style="padding-left:5px;">
                <h3 class="youtube_list_link"><asp:HyperLink ID="hlLink" Text='<%# Eval("Title") %>' NavigateUrl='<%# Eval("Url") %>' runat="server"></asp:HyperLink></h3>
                <div style="margin-bottom:5px;">
                    <%# Eval("BreifDescription") %>
                </div>
                Tags: <%# Eval("TagLinks") %>
                <div class="youtube_list_subtext">
                    Added: <%# Eval("UploadTime") %> |
                    Length: <%# Eval("Length") %> |
                    From: <asp:HyperLink ID="hlAuthor" Text='<%# Eval("User.Name") %>' NavigateUrl='<%# Eval("User.Url") %>' runat="server"></asp:HyperLink> |
                    Views: <%# Eval("ViewCount") %> |
                    <%# Eval("RatingAvg") %> stars |
                    <%# Eval("RatingCount") %> ratings
                </div>
            </td>
        </tr>
    </ItemTemplate>
    <SeparatorTemplate>
        <tr>
            <td colspan="2" class="youtube_list_sepatator" style="text-align:center;">
                <asp:Panel Style="padding:15px 0 15px 0;border:dashed 3px Orange;margin: 15px 0 15px 0;" ID="pnlAd" runat="server" Visible='<%# ShowAd(Container.ItemIndex) %>'>
                    <script type="text/javascript"><!--
                    google_ad_client = "pub-3091132930420457";
                    //Results Page Mixed In - 728x90, created 12/6/07
                    google_ad_slot = "0927224055";
                    google_ad_width = 728;
                    google_ad_height = 90;
                    //--></script>
                    <script type="text/javascript"
                    src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
                    </script>
                </asp:Panel>
                &nbsp;
            </td>
        </tr>
    </SeparatorTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
