<%@ Control Language="C#" AutoEventWireup="true" CodeFile="search.ascx.cs" Inherits="YouTube_controls_search" %>
<asp:Panel ID="pnlSearch" Style="text-align:center;margin:10px;" runat="server" DefaultButton="btnSearch">
    <asp:TextBox ID="txtSearch" runat="server"></asp:TextBox>
    <asp:Button ID="btnSearch" runat="server" Text="Search For Videos" OnClick="btnSearch_Click" />
</asp:Panel>