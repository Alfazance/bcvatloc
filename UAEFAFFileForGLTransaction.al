report 70140923 "UAE FAF GL Transaction"
{
    Caption = 'FAF GL Transaction';
    DefaultLayout = RDLC;
    RDLCLayout = 'UAEFAFFileForGLTransaction.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    dataset
    {
        dataitem("VAT Entry"; "VAT Entry")
        {
            column(GLDataStartlbl; GLDataStartlbl)
            {
            }
            column(GLDataEndlbl; GLDataEndlbl)
            {
            }
            column(TransactionDatelbl; TransactionDatelbl)
            {
            }
            column(AccountIDlbl;AccountIDlbl)
            {
            }
            column(AccountNamelbl;AccountNamelbl)
            {
            }
            column(TransactionDescriptionlbl;TransactionDescriptionlbl)
            {
            }
            column(Namelbl;Namelbl)
            {
            }
            column(TransactionIDlbl;TransactionIDlbl)
            {
            }
            column(SourceDocumentIDlbl;SourceDocumentIDlbl)
            {
            }
            column(SourceTypelbl;SourceTypelbl)
            {
            }
            column(Debitlbl;Debitlbl)
            {
            }
            column(Creditlbl;Creditlbl)
            {
            }
            column(Balancelbl;Balancelbl)
            {
            }
            column(TotalDebitlbl;TotalDebitlbl)
            {
            }
            column(TotalCreditlbl;TotalCreditlbl)
            {
            }
            column(TransactionCountTotallbl;TransactionCountTotallbl)
            {
            }
            column(GLTCurrencylbl;GLTCurrencylbl)
            {
            }
            column(LCYCode_GLSetup;GLSetup."LCY Code")
            {
            }

            dataitem("G/L Entry - VAT Entry Link";"G/L Entry - VAT Entry Link")
            {
                DataItemLinkReference = "VAT Entry";
                DataItemLink = "VAT Entry No." = field("Entry No.");
                
                dataitem("G/L Entry";"G/L Entry")
                {
                    DataItemLinkReference = "G/L Entry - VAT Entry Link";
                    DataItemLink = "Entry No." = field("G/L Entry No.");
                    column(TransactionDate;"G/L Entry"."Posting Date" )
                    {
                    }
                    column(AccountID;"G/L Entry"."G/L Account No.")
                    {
                    }
                    column(AccountName;"G/L Entry"."G/L Account Name")
                    {
                    }
                    column(TransactionDescription;"G/L Entry".Description)
                    {
                    }
                    column(Name;Database.CompanyName())
                    {
                    }
                    column(TransactionID;"G/L Entry"."Transaction No.")
                    {
                    }
                    column(SourceDocumentID;"G/L Entry"."Document No.")
                    {
                    }
                    column(SourceType;"VAT Entry"."Type")
                    {
                    }
                    column(Debit; "G/L Entry"."Debit Amount")
                    {
                    }
                    column(Credit; "G/L Entry"."Credit Amount")
                    {
                    }
                    column(Balance; "G/L Entry".Amount)
                    {
                    }
                    column(TransactionCountTotal; TransactionCountTotal)
                    {
                    }
                    column(DebitTotal;DebitTotal)
                    {
                    }
                    column(CreditTotal;CreditTotal)
                    {
                    }
                    column(BalanceTotal;BalanceTotal)
                    {
                    }
                    trigger OnPreDataItem();
                    BEGIN 

                    END;
                    trigger OnAfterGetRecord();
                    BEGIN 
                        TransactionCountTotal += 1;
                        DebitTotal += "G/L Entry"."Debit Amount";
                        CreditTotal += "G/L Entry"."Credit Amount";
                        BalanceTotal += "G/L Entry".Amount;    
                    END;
                }
                trigger OnPreDataItem()
                begin
                            
                end;
            }
            trigger OnPreDataItem();
            begin
                "VAT Entry".SetCurrentKey("Posting Date","Document No.");
                "VAT Entry".SetRange("Posting Date",PeriodStart,PeriodEnd);
                "VAT Entry".SetRange("Bill-to/Pay-to No.",'');
                "VAT Entry".SetFilter(Type,'<>%1',Type::Settlement);
                GLSetup.Get;
                TransactionCountTotal := 0;
                CreditTotal := 0;
                DebitTotal := 0;
                BalanceTotal := 0;
                
            end;
        }
    }
    
    requestpage
    {
        SaveValues = true;
        layout
        {
            area(content)
            {
                group("Date Range")
                {
                    field("Period Start"; PeriodStart)
                    {
                        Caption = 'Period Start';
                        ToolTip = 'Starting date of VAT return filing period';
                    }
                    field("Period End"; PeriodEnd)
                    {
                        Caption = 'Period End';
                        ToolTip = 'Ending date of VAT return filing period';
                    }
                }
            }
        }
    
        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    
                }
            }
        }
    }
    
    var
        PeriodStart : Date;
        PeriodEnd : Date;
        GLDataStartlbl : Label 'GLDataStart';
        TransactionDatelbl : Label 'TransactionDate';
        AccountIDlbl : Label 'AccountID';
        AccountNamelbl : Label 'AccountName';
        TransactionDescriptionlbl : label 'TransactionDescription';
        Namelbl : Label 'Name';
        TransactionIDlbl : Label 'TransactionID';
        SourceDocumentIDlbl : Label 'SourceDocumentID';
        SourceTypelbl : Label 'SourceType';
        Debitlbl : Label 'Debit';
        Creditlbl : Label 'Credit';
        Balancelbl : Label 'Balance';
        GLDataEndlbl : Label 'GLDataEnd';
        TotalDebitlbl : Label 'TotalDebit';
        TotalCreditlbl : Label 'TotalCredit';
        TransactionCountTotallbl : Label 'TransactionCountTotal';
        GLTCurrencylbl : Label 'GLTCurrency';
        GLSetup : Record "General Ledger Setup";
        TransactionCountTotal : Integer;       
        DebitTotal : Decimal;
        CreditTotal : Decimal;
        BalanceTotal : Decimal;
}