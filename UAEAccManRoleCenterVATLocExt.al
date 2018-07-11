pageextension 70140923 UAEAccManRoleCenterVATLocExt extends "Accounting Manager Role Center"
{
    Caption = 'UAE VAT Account Manager Role Center';
    
    actions
    {
        // Add changes to page actions here
        addafter("Intrastat &Journal")
        {
            group("UAE VAT Localization Reports")
            {
                Caption = 'UAE VAT Localization Reports';
                ToolTip = 'UAE Localization retun and audit reports';
                action("UAE VAT Return")
                {
                    Caption = 'UAE VAT Return';
                    ToolTip = 'VAT return report for submitting VAT to FTA';
                    ApplicationArea = All;
                    RunObject = page "UAE VAT Return" ;
                }
            }
        }
    }
}