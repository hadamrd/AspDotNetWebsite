<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ConsulterAnnoncesParRegion.aspx.cs" Inherits="ConsulterAnnoncesParRegion" Title="Consulter les annonces par région" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Main" Runat="Server">
   
    
    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="dsRegions" DataTextField="Reg_Nom" DataValueField="Reg_Id">
    </asp:DropDownList>
    <asp:SqlDataSource ID="dsRegions" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
         OnSelecting="dsRegions_Selecting" SelectCommand="SELECT [Reg_Id], [Reg_Nom] FROM [Regions]"></asp:SqlDataSource>

        
    <asp:SqlDataSource ID="dsAnnonces" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Annonces] WHERE ([Reg_Id] = @Reg_Id)">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="Reg_Id" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>

        
    <asp:DataList ID="DataListAnnonces" runat="server" DataKeyField="Ann_Id" DataSourceID="dsAnnonces"  OnItemDataBound="DataListAnnonces_ItemDataBound">
        <ItemTemplate>
           <div id="annonce">
              <div id="entete">
                <asp:Label ID="Ann_VilleLabel" runat="server" Text='<%# Eval("Ann_Ville") %>'
                EnableTheming="false">
                </asp:Label>
                <asp:Label ID="Ann_CodePostalLabel" runat="server" Text='<%# Eval("Ann_CodePostal") %>'
                EnableTheming="false">
                </asp:Label>)
                </div>
                <div id="email">
                <asp:Label ID="Ann_Email" runat="server" Text='<%# Eval("Ann_Email") %>'></asp:Label>
                </div>
                </div>
                <asp:Label ID="Ann_TexteLabel" runat="server" Text='<%# Eval("Ann_Texte") %>'
                EnableTheming="false"></asp:Label>
                <br/>
                 <asp:LinkButton ID="BoutonSelection" Text="Ajouter à ma selection" runat="server" 
                            CommandArgument='<%# Eval("Ann_Id") %>' 
                            OnCommand="ModifierLaSelection" />
        </ItemTemplate>
    </asp:DataList>

        
</asp:Content>