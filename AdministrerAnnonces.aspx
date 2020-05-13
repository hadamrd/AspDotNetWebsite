<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="AdministrerAnnonces.aspx.vb" Inherits="AdministrerAnnonces" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <asp:GridView SkinId="tableMaitre" ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Ann_Id" DataSourceID="dsAnnonces2" EmptyDataText="Il n'ya aucun enregistrement de données à afficher " CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="Ann_Email" HeaderText="Email" SortExpression="Ann_Email" />
            <asp:BoundField DataField="Ann_Ville" HeaderText="Ville" SortExpression="Ann_Ville" />
            <asp:BoundField DataField="Ann_CodePostal" HeaderText="Code Postal" SortExpression="Ann_CodePostal" />
            <asp:HyperLinkField DataNavigateUrlFields="Ann_Id" DataNavigateUrlFormatString="DetailsAnnonce.aspx?ID={0}" HeaderText="Détails" Text="Détails..." />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <asp:SqlDataSource ID="dsAnnonces2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
        SelectCommand="SELECT [Ann_Id], [Ann_Texte], [Ann_Telephone], [Ann_Email], [Ann_Prix], [Ann_Ville], [Ann_CodePostal], [Ann_UserEmail], [Reg_Id], [Cat_Id] FROM [Annonces]">
        <DeleteParameters>
            <asp:Parameter Name="Ann_Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Ann_Texte" Type="String" />
            <asp:Parameter Name="Ann_Telephone" Type="String" />
            <asp:Parameter Name="Ann_Email" Type="String" />
            <asp:Parameter Name="Ann_Prix" Type="String" />
            <asp:Parameter Name="Ann_Ville" Type="String" />
            <asp:Parameter Name="Ann_CodePostal" Type="String" />
            <asp:Parameter Name="Ann_UserEmail" Type="String" />
            <asp:Parameter Name="Reg_Id" Type="Int32" />
            <asp:Parameter Name="Cat_Id" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ann_Texte" Type="String" />
            <asp:Parameter Name="Ann_Telephone" Type="String" />
            <asp:Parameter Name="Ann_Email" Type="String" />
            <asp:Parameter Name="Ann_Prix" Type="String" />
            <asp:Parameter Name="Ann_Ville" Type="String" />
            <asp:Parameter Name="Ann_CodePostal" Type="String" />
            <asp:Parameter Name="Ann_UserEmail" Type="String" />
            <asp:Parameter Name="Reg_Id" Type="Int32" />
            <asp:Parameter Name="Cat_Id" Type="Int32" />
            <asp:Parameter Name="Ann_Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    </asp:Content>

