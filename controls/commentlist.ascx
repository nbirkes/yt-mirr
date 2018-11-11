<%@ Control Language="C#" AutoEventWireup="true" CodeFile="commentlist.ascx.cs" Inherits="YouTube_controls_commentlist" %>
<div></div>
<asp:Repeater ID="rptComments" runat="server">
    <HeaderTemplate>
        <div style="width:425px;">
    </HeaderTemplate>
    <ItemTemplate>
        <div style="background-color:#EEEEEE;padding:3px;">
            <asp:HyperLink ID="hlAuthor" Font-Bold="true" Text='<%# Eval("User.Name") %>' NavigateUrl='<%# Eval("User.Url") %>' runat="server"></asp:HyperLink>
             (<%# Eval("Date") %>)
        </div>
        <div style="margin-bottom:20px;padding:2px;"><%# Eval("Text") %></div> 
    </ItemTemplate>
    <FooterTemplate>
        </div>
    </FooterTemplate>
</asp:Repeater>