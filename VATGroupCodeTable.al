table 70140921 "VAT Group Code"
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

page 70140921 "VAT Group Code List"
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
                field(GroupCode; "Group Code")
                {
                    ApplicationArea = All;
                }
                field(Description;Description)
                {
                    ApplicationArea = All;
                }
                field(SequenceNo ; "Sequence No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}