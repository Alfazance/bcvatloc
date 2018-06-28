report 70140922 "UAE FAF Customer Transaction"
{
    Caption = 'FAF Customer Transaction';
    DefaultLayout = RDLC;
    RDLCLayout = 'UAEFAFFileForCustomerTransaction.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    dataset
    {
        dataitem("Sales Invoice Line";"Sales Invoice Line")
        {
            column(LCYCode_GLSetup;GLSetup."LCY Code")
            {
            }
            column(SuppDataStart; SuppDataStartlbl)
            {
            }
            column(SuppDataEnd; SuppDataEndlbl)
            {
            }
            column(CustomerName; CustomerRec.Name)
            {
            }
            column(CustomerNamelbl; CustomerNamelbl)
            {
            }
            column(CustomerTRN; CustomerRec."VAT Registration No.")
            {
            }
            column(CustomerTRNlbl; CustomerTRNlbl)
            {
            }
            column(InvoiceDate; "Sales Invoice Line"."Posting Date")
            {
            }
            column(InvoiceDatelbl; invoiceDatelbl)
            {
            }
            column(InvoiceNo; "Sales Invoice Line"."Document No.")
            {
            }
            column(InvoiceNolbl; InvoiceNolbl)
            {
            }
            column(CountryCode;CountryCode)
            {
            }
            column(Countrylbl;Countrylbl)
            {
            }
            column(LineNo_SalesInvLine; "Sales Invoice Line"."Line No.")
            {
            }
            column(LineNolbl;LineNolbl)
            {
            }
            column(Description_SalesInvLine; "Sales Invoice Line".Description+"Sales Invoice Line"."Description 2")
            {
            }
            column(ProductDescriptionlbl;ProductDescriptionlbl)
            {
            }
            column(SupplyValueLCY;SupplyValueLCY)
            {
            }
            column(SupplyValueLCYlbl;SupplyValueLCYlbl)
            {
            }
            column(VATValueLCY;VATValueLCY)
            {
            }
            column(VATValueLCYlbl;VATValueLCYlbl)
            {
            }
            column(TAXCode;TAXCode)
            {
            }
            column(TaxCodelbl;TaxCodelbl)
            {
            }
            column(FCYCode;FCYCode)
            {
            }
            column(FCYCodelbl;FCYCodelbl)
            {
            }
            column(SupplyFCY;SupplyFCY)
            {
            }
            column(SupplyFCYlbl;SupplyFCYlbl)
            {
            }
            column(VATFCY;VATFCY)
            {
            }
            Column(VATFCYlbl;VATFCYlbl)
            {
            }
            column(SupplyTotalLCYlbl;SupplyTotalLCYlbl)
            {
            }
            column(SupplyTotalLCY;SupplyTotalLCY)
            {
            }
            column(VATTotalLCY;VATTotalLCY)
            {
            }
            column(VATTotalLCYlbl;VATTotalLCYlbl)
            {
            }
            column(TransactionTotalCount;TransactionTotalCount)
            {
            }
            column(TransactionTotalCountlbl;TransactionTotalCountlbl)
            {
            }
            trigger OnPreDataItem();
            begin
                "Sales Invoice Line".SetCurrentKey("Posting Date","Document No.");
                "Sales Invoice Line".SetRange("Posting Date", PeriodStart, PeriodEnd);
                
                TransactionTotalCount := 0;
                SupplyTotalLCY:= 0;
                VATTotalLCY := 0;
            end;

            trigger OnAfterGetRecord();
            begin
                
                IF customerRec.Get("Sales Invoice Line"."Sell-to Customer No.") THEN BEGIN
                    GetHeader("Sales Invoice Line"."Document No.");    
                    TAXCode := "Sales Invoice Line"."VAT Identifier";    
                    IF SalesInvHeader."Currency Code" = '' THEN 
                        FCYCode := GLSetup."LCY Code"
                    ELSE        
                        FCYCode := SalesInvHeader."Currency Code";

                    IF FCYCode = GLSetup."LCY Code" THEN 
                        CurrencyFactor := 1
                    ELSE    
                        CurrencyFactor := SalesInvHeader."Currency Factor";
                    IF FCYCode <> GLSetup."LCY Code" THEN BEGIN
                        SupplyValueLCY := "Sales Invoice Line"."VAT Base Amount"/CurrencyFactor;
                        VATValueLCY := ("Sales Invoice Line"."Amount Including VAT"-"Sales Invoice Line"."VAT Base Amount")/CurrencyFactor;
                        SupplyFCY := "Sales Invoice Line"."VAT Base Amount";
                        VATFCY := ("Sales Invoice Line"."Amount Including VAT"-"Sales Invoice Line"."VAT Base Amount");     
                    END ELSE BEGIN
                        SupplyValueLCY := "Sales Invoice Line"."VAT Base Amount";
                        VATValueLCY := ("Sales Invoice Line"."Amount Including VAT"-"Sales Invoice Line"."VAT Base Amount");
                        SupplyFCY := 0.00;
                        VATFCY := 0.00;             
                    END;
                    SupplyTotalLCY += SupplyValueLCY;
                    VATTotalLCY += VATValueLCY;
                    TransactionTotalCount += 1;
                END;        
            end;
        }
        

        dataitem("Sales Cr.Memo Line"; "Sales Cr.Memo Line")
        {
            
            column(CrCustomerName; CustomerRec.Name)
            {
            }
            column(CrCustomerTRN; CustomerRec."VAT Registration No.")
            {
            }
            column(CrInvoiceDate; "Sales Cr.Memo Line"."Posting Date")
            {
            }
            column(CrInvoiceNo; "Sales Cr.Memo Line"."Document No.")
            {
            }
            column(CrCountryCode; CountryCode)
            {
            }
            column(CrLineNo_SalesCrMemoLine; "Sales Cr.Memo Line"."Line No.")
            {
            }
            column(CrDescription_SalesCrMemoLine; "Sales Cr.Memo Line".Description+"Sales Cr.Memo Line"."Description 2")
            {
            }
            column(CrSupplyValueLCY;-SupplyValueLCY)
            {
            }
            column(CrVATValueLCY;-VATValueLCY)
            {
            }
            column(CrTAXCode;TAXCode)
            {
            }
            column(CrFCYCode;FCYCode)
            {
            }
            column(CrSupplyFCY;-SupplyFCY)
            {
            }
            column(CrVATFCY;-VATFCY)
            {
            }
            column(CrSupplyTotalLCY;SupplyTotalLCY)
            {
            }
            column(CrVATTotalLCY;VATTotalLCY)
            {
            }
            column(CrTransactionTotalCount;TransactionTotalCount)
            {
            }
            trigger OnPreDataItem();
            begin
                "Sales Cr.Memo Line".SetCurrentKey("Posting Date","Document No.");
                "Sales Cr.Memo Line".SetRange("Posting Date", PeriodStart, PeriodEnd);
                /*CrSupplyTotalLCY := 0;
                CrVATTotalLCY := 0;
                CrTransactionTotalCount := 0;*/
            end;

            trigger OnAfterGetRecord();
            begin
                IF CustomerRec.Get("Sales Cr.Memo Line"."Sell-to Customer No.") THEN begin
                    SalesCrMemoHeader.Get("Sales Cr.Memo Line"."Document No.");    
                    TAXCode := "Sales Cr.Memo Line"."VAT Identifier";
                    IF SalesCrMemoHeader."Currency Code" = '' THEN 
                        FCYCode := GLSetup."LCY Code"
                    ELSE        
                        FCYCode := SalesCrMemoHeader."Currency Code";

                    IF FCYCode = GLSetup."LCY Code" THEN 
                        CurrencyFactor := 1
                    ELSE    
                        CurrencyFactor := SalesCrMemoHeader."Currency Factor";
                    IF FCYCode <> GLSetup."LCY Code" THEN BEGIN
                        SupplyValueLCY := "Sales Cr.Memo Line"."VAT Base Amount"/CurrencyFactor;
                        VATValueLCY := ("Sales Cr.Memo Line"."Amount Including VAT"-"Sales Cr.Memo Line"."VAT Base Amount")/CurrencyFactor;
                        SupplyFCY := "Sales Cr.Memo Line"."VAT Base Amount";
                        VATFCY := ("Sales Cr.Memo Line"."Amount Including VAT"-"Sales Cr.Memo Line"."VAT Base Amount");     
                    END ELSE BEGIN
                        SupplyValueLCY := "Sales Cr.Memo Line"."VAT Base Amount";
                        VATValueLCY := ("Sales Cr.Memo Line"."Amount Including VAT"-"Sales Cr.Memo Line"."VAT Base Amount");
                        SupplyFCY := 0.00;
                        VATFCY := 0.00;             
                    END;
                    SupplyTotalLCY -= SupplyValueLCY;
                    VATTotalLCY -= VATValueLCY;
                    TransactionTotalCount += 1;
                END;        
            END;

        }
    }

    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(General)
                {
                    Field("Period Start"; PeriodStart)
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

    trigger OnInitReport();
    begin

    end;

    trigger OnPreReport();
    begin
        IF PeriodStart = 0D THEN 
            Error('Date filters cannot be blank or invalid');
        If PeriodEnd = 0D then
            Error('Date filters cannot be blank or invalid');
        IF PeriodEnd < PeriodStart THEN
            Error('Date filters cannot be blank or invalid');
        GLSetup.Get;

    end;

    trigger OnPostReport();
    begin

    end;
    local procedure GetHeader(DocNo: Code[20])
    begin
       SalesInvHeader.GET(DocNo);
    end;


    var
        PeriodStart: Date;
        PeriodEnd: Date;
        PeriodStartlbl: Label 'Period Start';
        PeriodEndlbl: Label 'Period End';
        CustomerNamelbl: Label 'CustomerName';
        CustomerTRNlbl: Label 'CustomerTIN/TRN';
        InvoiceDatelbl: Label 'InvoiceDate';
        InvoiceNolbl: Label 'InvoiceNo';
        CustomerRec : Record Customer;
        SuppDataStartlbl: Label 'SuppDataStart';
        SuppDataEndlbl: Label 'SuppDataEnd';
        Countrylbl :Label 'Country'; 
        LineNolbl :Label 'LineNo'; 
        ProductDescriptionlbl :Label 'ProductDescription';
        SupplyValueLCYlbl :Label 'SupplyValue'; 
        VATValueLCYlbl :Label 'VATValue'; 
        TaxCodelbl :Label 'TaxCode'; 
        FCYCodelbl :Label 'FCYCode'; 
        SupplyFCYlbl :Label 'SupplyFCY'; 
        VATFCYlbl :Label 'VATFCY'; 
        CountryCode : Text[50];
        VATValueLCY : Decimal;
        SupplyValueLCY : Decimal;
        TAXCode : Code[5];
        FCYCode : Code[3];
        SupplyFCY : Decimal;
        VATFCY : Decimal;
        SalesInvHeader : Record "Sales Invoice Header";
        CurrencyFactor : Decimal;
        GLSetup : Record "General Ledger Setup";
        SupplyTotalLCYlbl : Label 'SupplyTotal';
        VATTotalLCYlbl : Label 'VATTotal';
        TransactionTotalCountlbl : Label 'TransactionTotalCount';
        SupplyTotalLCY : Decimal;
        VATTotalLCY : Decimal;
        TransactionTotalCount : Integer;
        SalesCrMemoHeader : Record "Sales Cr.Memo Header";
}       
