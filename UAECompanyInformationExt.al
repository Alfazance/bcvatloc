tableextension 70140921 "UAE Company Info Ext" extends "Company Information"
{    
    fields
    {
        // Add changes to table fields here
        field(70140921; "UAE Taxable Person Name En"; Text[30])
        {
            Caption =   'Taxable Person Name En' ;
            DataClassification = CustomerContent;
        }
        field(70140922; "UAE Taxable Person Name AR"; Text[30])
        {
            Caption =   'Taxable Person Name AR' ;
            DataClassification = CustomerContent;
        }
        field(70140923; "UAE Tax Agency Name"; Text[30])
        {
            Caption =  'Tax Agency Name' ;
            DataClassification = CustomerContent;
        }
        field(70140924; "UAE Tax Agency Number" ; Code[20])
        {
            Caption =  'Tax Agency Number' ;
            DataClassification = CustomerContent;
        }
        field(70140925; "UAE Tax Agent Name" ; Text[30] )
        {
            Caption = 'Tax Agent Name' ;
            DataClassification = CustomerContent;
        }
        field(70140926; "UAE Tax Agent Approval Number" ; Code[20])
        {
            Caption = 'Tax Agent Approval Number' ;
            DataClassification = CustomerContent;
        }
        field(70140927; "UAE FAF Version No." ; Code[15])
        {
            Caption = 'FAF Version No.' ;
            DataClassification = CustomerContent;
        }
    }
}

pageextension 70140921 "UAE Company Information Ext" extends "Company Information"
{
    layout
    {
        
        addafter("System Indicator")
        {
            Group("UAE VAT Localization")
            {
                Caption = 'UAE VAT Localization';
                field("UAE Taxable Person Name En";"UAE Taxable Person Name En")
                {
                    Caption = 'Taxable Person Name En';
                    ToolTip = 'Name of the taxable person in English';
                }
                Field("UAE Taxable Person Name AR" ; "UAE Taxable Person Name AR" )
                {
                  Caption = 'Taxable Person Name AR' ;
                  ToolTip = 'Name of the taxable person in Arabic';
                }
                Field("UAE Tax Agency Name" ; "UAE Tax Agency Name" )
                {
                  Caption = 'Tax Agency Name' ;
                  ToolTip = 'Name of the Tax Agency in case the filing is done by a Tax Agency';
                }
                Field("UAE Tax Agency Number" ; "UAE Tax Agency Number" )
                {
                  Caption = 'Tax Agency Number' ;   
                  ToolTip = 'Number of the Tax Agency in case the filing is done by a Tax Agency(TAN)';
                }
                Field("UAE Tax Agent Name"; "UAE Tax Agent Name" )
                {
                  Caption = 'Tax Agent Name' ;
                  ToolTip = 'Name of the Tax Agent in case the filing is done by a Tax Agent';
                }
                Field("UAE Tax Agent Approval Number";"UAE Tax Agent Approval Number"  )
                {
                  Caption = 'Tax Agent Approval Number' ;
                  ToolTip = 'Tax Agent Approval Number(TAAN)';   
                }
                Field("UAE FAF Version No.";"UAE FAF Version No."  )
                {
                  Caption = 'FAF Version No.' ;
                  ToolTip = 'FTA Audit File (FAF) version number';
                }
            }
        }
       
    }
}