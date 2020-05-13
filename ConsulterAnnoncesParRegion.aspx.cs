using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class ConsulterAnnoncesParRegion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void dsRegions_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
    {

    }

    protected void ModifierLaSelection(object sender, CommandEventArgs e)
    {
        int Ann_Id = Int32.Parse(e.CommandArgument.ToString());
        if (e.CommandName == "Ajouter")   
        {
            //Valider qu'un tableau contenant la s�lection d'annonces de l'utilisateur existe
            if (Profile.MaSelectionDAnnonces == null) 
            {
                //Si non alors cr�er un nouveau tableau
                Profile.MaSelectionDAnnonces = new AnnoncesFavorites();
            }
            //Ajouter l'Id de l'annonce s�lectionner
            Profile.MaSelectionDAnnonces.AjouterAnnonce(Ann_Id);
         }
         else
            {
                Profile.MaSelectionDAnnonces.SupprimerAnnonce(Ann_Id);
            }
        //Raffraichir la liste des �l�ments (affichage du bouton Supprimer ou Ajouter)
        DataListAnnonces.DataBind();
    }
    protected void DataListAnnonces_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        //R�cup�rer l'Id de l'annonce en cours
        DataRowView currentRow = (DataRowView)e.Item.DataItem;
        int CurrentAnnonceId = (int)currentRow.Row.ItemArray[0];
        LinkButton Lien = (LinkButton)e.Item.FindControl("BoutonSelection");
        if (Profile.MaSelectionDAnnonces == null ||
        !Profile.MaSelectionDAnnonces.EstDansListeAnnoncesFavorites(CurrentAnnonceId))
        {
            Lien.Text = "Ajouter � ma s�lection";
            Lien.CommandName = "Ajouter";
        }
        else
        {
            Lien.Text = "Supprimer de ma s�lection";
            Lien.CommandName = "Supprimer";
        }
        
    }
}

