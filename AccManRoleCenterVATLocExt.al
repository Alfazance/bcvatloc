pageextension 70140923 AccManRoleCenterVATLocExt extends "Accounting Manager Role Center"
{
    layout
    {
        // Add changes to page layout here
    }
    actions
    {
        // Add changes to page actions here
        addafter("Intrastat &Journal")
        {
            group("UAE VAT Localization Reports")
            {
                Caption = 'UAE VAT Localization Reports';
                action("UAE VAT Return")
                {
                    Caption = 'UAE VAT Return';
                    RunObject = Page "UAE VAT Return"; 
                    
                }
            }
        }
    }
}