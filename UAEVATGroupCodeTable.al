table 70140921 "UAE VAT Group Code"
{
    Caption = 'VAT Group Code';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;"Group Code"; Code[10])
        {
            DataClassification = CustomerContent;
        }
        field(2; Description; Text[50])
        {
            DataClassification = CustomerContent;
        }
        field(3;"Sequence No."; Integer)
        {
            DataClassification = CustomerContent;
        }
    }
    
    keys
    {
        key("Group Code"; "Group Code")
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}

page 70140921 "UAE VAT Group Code"
{
    
    PageType = List;
    SourceTable = "UAE VAT Group Code";
    Caption = 'UAE VAT Group Code';
    UsageCategory = Lists;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(UAEGroupCode; "Group Code")
                {
                    ApplicationArea = All;
                    Caption = 'Group Code';
                    ToolTip = 'Group Code for VAT State wise';
                }
                field(UAEDescription;Description)
                {
                    ApplicationArea = All;
                    Caption = 'Description';
                    ToolTip = 'Description of VAT group';
                }
                field(UAESequenceNo ; "Sequence No.")
                {
                    ApplicationArea = All;
                    Caption = 'Sequence No.';
                    ToolTip = 'Sequence No. for VAT return report control';
                    Visible = false;
                }
            }
        }
    }
}