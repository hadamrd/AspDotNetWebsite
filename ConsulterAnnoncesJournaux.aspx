<%@ Page Title="" Language="VB" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="ConsulterAnnoncesJournaux.aspx.vb" Inherits="ConsulterAnnoncesJournaux" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
    <asp:GridView SkinId="tableMaitre" ID="GridView2" runat="server" AllowPaging="True" 
        AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Ann_Id" DataSourceID="dsAnnonces2" EmptyDataText="Il n'ya aucun enregistrement de données à afficher " CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:CommandField ShowSelectButton="True" />
            <asp:BoundField DataField="Ann_Email" HeaderText="Email" SortExpression="Ann_Email" />
            <asp:BoundField DataField="Ann_Ville" HeaderText="Ville" SortExpression="Ann_Ville" />
            <asp:BoundField DataField="Ann_CodePostal" HeaderText="Code Postal" SortExpression="Ann_CodePostal" />
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
    <asp:SqlDataSource ID="dsJournaux" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
        SelectCommand="SELECT * FROM [ListeJournauxParAnnonce] WHERE ([Ann_Id] = @Ann_Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="GridView2" Name="Ann_Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
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
    <asp:GridView ID="GridView3" SkinId= "tableDetails" runat="server"  AutoGenerateColumns="False" DataSourceID="dsJournaux">
        <Columns>
            <asp:BoundField DataField="Jou_Publication" HeaderText="Publication" SortExpression="Jou_Publication" />
            <asp:BoundField DataField="Jou_Tirage" HeaderText="Tirage" SortExpression="Jou_Tirage" />
            <asp:BoundField DataField="Jou_LimiteDepot" HeaderText="Limite dépôt" SortExpression="Jou_LimiteDepot" />
            <asp:BoundField DataField="Jou_Parution" HeaderText="Parution" SortExpression="Jou_Parution" />
        </Columns>
    </asp:GridView>
</asp:Content>

