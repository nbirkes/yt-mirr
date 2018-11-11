<%@ Control Language="C#" AutoEventWireup="true" CodeFile="videolistmini.ascx.cs" Inherits="YouTube_controls_videolistmini" %>
<asp:Repeater ID="rptVids" runat="server">
    <HeaderTemplate>
        <table>
    </HeaderTemplate>
    <ItemTemplate>
        <tr>
            <td valign="top">
                <asp:HyperLink ID="hlThumb" Target="_top" NavigateUrl='<%# Eval("Url") %>' runat="server">
                    <asp:Image ID="imgThumb" Width="90" Height="70" ImageUrl='<%# Eval("ThumbnailUrl") %>' runat="server" />
                </asp:HyperLink>
            </td>
            <td>
                <asp:HyperLink ID="hlLink" Target="_top" Font-Bold="true" Text='<%# Eval("Title") %>' NavigateUrl='<%# Eval("Url") %>' runat="server"></asp:HyperLink><br />
                <b><%# Eval("Length") %></b><br />
                <div class="youtube_list_subtext">
                    From: <asp:HyperLink ID="hlAuthor" Target="_top" Text='<%# Eval("User.Name") %>' NavigateUrl='<%# Eval("User.Url") %>' runat="server"></asp:HyperLink><br />
                    Views: <%# Eval("ViewCount") %>
                </div>
            </td>
        </tr>
    </ItemTemplate>
    <SeparatorTemplate>
        <tr>
            <td colspan="2" class="youtube_list_sepatator">&nbsp;</td>
        </tr>
    </SeparatorTemplate>
    <FooterTemplate>
        </table>
    </FooterTemplate>
</asp:Repeater>
