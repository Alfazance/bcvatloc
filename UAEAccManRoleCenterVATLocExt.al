pageextension 70140923 UAEAccManRoleCenterVATLocExt extends "Accounting Manager Role Center"
{
    Caption = 'UAE VAT Account Manager Role Center';
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
                    ToolTip = 'VAT return report for submitting VAT to FTA';
                    RunObject = page "UAE VAT Return" ;                    
                }
            }
        }
    }
}