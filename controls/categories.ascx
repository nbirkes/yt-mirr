<%@ Control Language="C#" AutoEventWireup="true" CodeFile="categories.ascx.cs" Inherits="YouTube_controls_categories" %>
<asp:Repeater ID="rptCategories" runat="server">
    <HeaderTemplate>
        <ul>
    </HeaderTemplate>
    <ItemTemplate>
        <li>
            <asp:HyperLink ID="hlCat" NavigateUrl='<%# "~/youtube/category.aspx?c=" + Eval("id")%>' Text='<%# Eval("Name")%>' runat="server"></asp:HyperLink>
        </li>
    </ItemTemplate>
    <FooterTemplate>
        </ul>
    </FooterTemplate>
</asp:Repeater>
