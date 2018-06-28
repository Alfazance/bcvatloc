table 70140921 "UAE VAT Group Code"
{
    Caption = 'VAT Group Code';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Group Code"; Code[10])
        {
            
        }
        field(2; Description; Text[50])
        {
            
        }
        field(3;"Sequence No."; Integer)
        {
            
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

page 70140921 "UAE VAT Group Code List"
{
    
    PageType = List;
    SourceTable = "UAE VAT Group Code";
    Caption = 'VAT Group Code List';
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