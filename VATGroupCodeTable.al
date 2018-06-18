table 70140921 "VAT Group Code"
{
    Caption = 'VAT Group Code';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1;"Group Code"; Code[10])
        {
            
            DataClassification = ToBeClassified;
        }
        field(2; Description; Text[50])
        {
            DataClassification = ToBeClassified;
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

page 70140922 "VAT Group Code List"
{
    
    PageType = List;
    SourceTable = "VAT Group Code";
    Caption = 'VAT Group Code List';
    UsageCategory = Lists;
    ApplicationArea = All;
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Group Code"; "Group Code")
                {
                    ApplicationArea = All;
                }
                field(Description;Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}