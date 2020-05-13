<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MaSelectionDAnnonces.aspx.cs" Inherits="MaSelectionDAnnonces" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" DataSourceID="ObjectDataSource1" 
        AutoGenerateColumns="False" SkinId="tableMaitre">
        <Columns>
            <asp:BoundField DataField="Ann_Email" HeaderText="Email" SortExpression="Ann_Email" />
            <asp:BoundField DataField="Ann_Ville" HeaderText="Ville" SortExpression="Ann_Ville" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" DeleteMethod="Delete" SelectMethod="Select" TypeName="AnnoncesFavoritesDB">
        <DeleteParameters>
            <asp:Parameter Name="Ann_Id" Type="Int32" />
        </DeleteParameters>
    </asp:ObjectDataSource>
</asp:Content>

