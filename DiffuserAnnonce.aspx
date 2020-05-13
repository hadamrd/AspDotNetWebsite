<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="false" CodeFile="DiffuserAnnonce.aspx.cs" Inherits="DiffuserAnnonce" %>


<asp:Content ID="Content2" ContentPlaceHolderID="Main" Runat="Server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="Ann_Id" DataSourceID="dsAnnonces" DefaultMode="Insert" OnItemInserted="ValiderInsertion"> 
        <InsertItemTemplate>
            <table border="0" cellpadding="0" cellspacing="5" >
            <tr>
            <td style="height: 78px" valign="top" width="150">
            <h3>Texte de l'annonce (250 charactères max)</h3>
            </td>
            <td colspan="3" style="height: 78px" valign="top" >
            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Ann_Texte") %>'
            TextMode="MultiLine" MaxLength="250" Height="132px" Width="350"
            EnableTheming="False"></asp:TextBox></td>
            </tr>
            <tr>
            <td valign="top" width="150">
            <h3>Catégorie </h3>
            </td>
            <td valign="top" width="200">
            <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="dsCategories"
            DataTextField="Cat_Nom" DataValueField="Cat_Id"
            SelectedValue='<%# Bind("Cat_Id") %>'>
            </asp:DropDownList></td>
            <td valign="top" width="60">
            <h3>Région</h3>
            </td>
            <td valign="top" width="150">
            <asp:DropDownList ID="DropDownList3" runat="server" DataSourceID="dsRegions"
            DataTextField="Reg_Nom" DataValueField="Reg_Id"
            SelectedValue='<%# Bind("Reg_Id") %>'>
            </asp:DropDownList></td>
            </tr>
            <tr>
            <td valign="top" width="150">
            <h3>Prix (proposé)</h3>
            </td>
            <td valign="top" width="200">
            <asp:TextBox ID="TextBox4" runat="server" MaxLength="20"
            Text='<%# Bind("Ann_Prix") %>'></asp:TextBox>
            </td>
            <td>
            </td>
            <td>
            </td>
            </tr>
            <tr>
            <td valign="top" width="150">
            <h3>N° de téléphone</h3>
            </td>
            <td valign="top" width="200">
            <asp:TextBox ID="TextBox2" runat="server" MaxLength="20"
            Text='<%# Bind("Ann_Telephone") %>'></asp:TextBox>
            </td>
            <td valign="top" align="right" width="60">
            <h3>@</h3>
            </td>
            <td valign="top" width="150">
            <asp:TextBox ID="TextBox3" runat="server" MaxLength="20"
            Text='<%# Bind("Ann_Email") %>'></asp:TextBox>
            </td>
            </tr>
            <tr>
            <td style="height: 13px;" valign="top" width="150">
            <h3>Code Postal</h3>
            </td>
            <td style=" height: 13px;" valign="top" width="200">
            <asp:TextBox ID="TextBox5" runat="server" MaxLength="20"
            Text='<%# Bind("Ann_CodePostal") %>'></asp:TextBox>
            </td>
            <td style="height: 13px;" valign="top" align="right" width="60">
            <h3>Ville</h3>
            </td>
            <td style=" height: 13px;" valign="top" width="150">
            <asp:TextBox ID="TextBox6" runat="server" MaxLength="20"
            Text='<%# Bind("Ann_Ville") %>'></asp:TextBox>
            </td>
            </tr>
            <tr >
            <td height="20px" colspan="4" >
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True"
            CommandName="Insert" Text="Valider votre annonce">
            </asp:LinkButton>&nbsp;|&nbsp;
            <asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False"
            CommandName="Cancel"
            Text="Annuler"></asp:LinkButton>
            </td>
            </tr>
            </table>
            <br />
            <asp:SqlDataSource ID="dsRegions" runat="server"
            ConnectionString="<%$  ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Reg_Id], [Reg_Nom] FROM [Regions]"></asp:SqlDataSource>
            <asp:SqlDataSource ID="dsCategories" runat="server"
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
            SelectCommand="SELECT [Cat_Id], [Cat_Nom] FROM [Categories]"></asp:SqlDataSource>
            <br />
            </InsertItemTemplate>
            </asp:FormView>
   
    <asp:SqlDataSource ID="dsAnnonces" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        InsertCommand="DiffuserAnnonce" InsertCommandType="StoredProcedure" 
        SelectCommand="SELECT * from [Annonces]">
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
    </asp:SqlDataSource>
</asp:Content>

