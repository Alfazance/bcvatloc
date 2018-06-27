tableextension 70140922  "VAT Posting Setup Table Ext" extends "VAT Posting Setup"
{
    
    fields
    {
        field(70140921; "VAT Group Code" ; Code[10])
        {
            Caption = 'VAT Group Code';
            DataClassification = ToBeClassified;
            TableRelation = "VAT Group Code"."Group Code";
        }
    }
}

pageextension 70140922 "VAT Posting Setup Page Ext" extends "VAT Posting Setup"
{
    layout
    {
        
        addbefore("VAT Bus. Posting Group")
        {
            field("VAT Group Code";"VAT Group Code")
            {
                Caption = 'VAT Group Code';
                ToolTip = 'VAT Group Code is mandatory for UAE VAT Return report. Select the appropriate emirates';
            }
        }
    }
    
}