report 70140921 "UAE FAF Supplier Transaction"
{
    Caption = 'FAF Supplier Transaction';
    RDLCLayout = 'UAEFAFFileForSuplierTransaction.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    dataset
    {
        dataitem("Purch. Inv. Line";"Purch. Inv. Line")
        {
            column(LCYCode_GLSetup;GLSetup."LCY Code")
            {
            }
            column(PurchDataStart; PurcDataStartlbl)
            {
            }
            column(PurchDataEnd; PurcDataEndlbl)
            {
            }
            column(SupplierName; VendorRec.Name)
            {
            }
            column(SupplierNamelbl; SupplierNamelbl)
            {
            }
            column(SupplierTRN; VendorRec."VAT Registration No.")
            {
            }
            column(SupplierTRNlbl; SupplierTRNlbl)
            {
            }
            column(InvoiceDate; "Purch. Inv. Line"."Posting Date")
            {
            }
            column(InvoiceDatelbl; invoiceDatelbl)
            {
            }
            column(InvoiceNo; "Purch. Inv. Line"."Document No.")
            {
            }
            column(InvoiceNolbl; InvoiceNolbl)
            {
            }
            column(PermitNo;PermitNo)
            {
            }
            column(PermitNolbl;PermitNolbl)
            {
            }
            column(LineNo_PurchInvLine; "Purch. Inv. Line"."Line No.")
            {
            }
            column(LineNolbl;LineNolbl)
            {
            }
            column(Description_PurchInvLine; "Purch. Inv. Line".Description+"Purch. Inv. Line"."Description 2")
            {
            }
            column(ProductDescriptionlbl;ProductDescriptionlbl)
            {
            }
            column(PurchaseValueLCY;PurchaseValueLCY)
            {
            }
            column(PurchaseValueLCYlbl;PurchaseValueLCYlbl)
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
            column(PurchaseFCY;PurchaseFCY)
            {
            }
            column(PurchaseFCYlbl;PurchaseFCYlbl)
            {
            }
            column(VATFCY;VATFCY)
            {
            }
            Column(VATFCYlbl;VATFCYlbl)
            {
            }
            column(PurchaseTotalLCYlbl;PurchaseTotalLCYlbl)
            {
            }
            column(PurchaseTotalLCY;PurchaseTotalLCY)
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
                "Purch. Inv. Line".SetCurrentKey("Posting Date","Document No.");
                "Purch. Inv. Line".SetRange("Posting Date", PeriodStart, PeriodEnd);
                
                TransactionTotalCount := 0;
                PurchaseTotalLCY:= 0;
                VATTotalLCY := 0;
            end;

            trigger OnAfterGetRecord();
            begin
                IF VendorRec.Get("Purch. Inv. Line"."Pay-to Vendor No.") then begin
                    GetHeader("Purch. Inv. Line"."Document No.");    
                    TAXCode := "Purch. Inv. Line"."VAT Identifier";    
                    IF PurchInvHeader."Currency Code" = '' THEN 
                        FCYCode := GLSetup."LCY Code"
                    ELSE        
                        FCYCode := PurchInvHeader."Currency Code";

                    IF FCYCode = GLSetup."LCY Code" THEN 
                        CurrencyFactor := 1
                    ELSE    
                        CurrencyFactor := PurchInvHeader."Currency Factor";
                    IF FCYCode <> GLSetup."LCY Code" THEN BEGIN
                        PurchaseValueLCY := "Purch. Inv. Line"."VAT Base Amount"/CurrencyFactor;
                        VATValueLCY := ("Purch. Inv. Line"."Amount Including VAT"-"Purch. Inv. Line"."VAT Base Amount")/CurrencyFactor;
                        PurchaseFCY := "Purch. Inv. Line"."VAT Base Amount";
                        VATFCY := ("Purch. Inv. Line"."Amount Including VAT"-"Purch. Inv. Line"."VAT Base Amount");     
                    END ELSE BEGIN
                        PurchaseValueLCY := "Purch. Inv. Line"."VAT Base Amount";
                        VATValueLCY := ("Purch. Inv. Line"."Amount Including VAT"-"Purch. Inv. Line"."VAT Base Amount");
                        PurchaseFCY := 0.00;
                        VATFCY := 0.00;             
                    END;
                    PurchaseTotalLCY += PurchaseValueLCY;
                    VATTotalLCY += VATValueLCY;
                    TransactionTotalCount += 1;
                END;    
            end;
        }
        

        dataitem("Purch. Cr. Memo Line"; "Purch. Cr. Memo Line")
        {
            
            column(CrSupplierName; VendorRec.Name)
            {
            }
            column(CrSupplierTRN; VendorRec."VAT Registration No.")
            {
            }
            column(CrInvoiceDate; "Purch. Cr. Memo Line"."Posting Date")
            {
            }
            column(CrInvoiceNo; "Purch. Cr. Memo Line"."Document No.")
            {
            }
            column(CrPermitNo; PermitNo)
            {
            }
            column(CrLineNo_PurchCrMemoLine; "Purch. Cr. Memo Line"."Line No.")
            {
            }
            column(CrDescription_PurchCrMemoLine; "Purch. Cr. Memo Line".Description+"Purch. Cr. Memo Line"."Description 2")
            {
            }
            column(CrPurchaseValueLCY;-PurchaseValueLCY)
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
            column(CrPurchaseFCY;-PurchaseFCY)
            {
            }
            column(CrVATFCY;-VATFCY)
            {
            }
            column(CrPurchaseTotalLCY;PurchaseTotalLCY)
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
                "Purch. Cr. Memo Line".SetCurrentKey("Posting Date","Document No.");
                "Purch. Cr. Memo Line".SetRange("Posting Date", PeriodStart, PeriodEnd);
                /*CrPurchaseTotalLCY := 0;
                CrVATTotalLCY := 0;
                CrTransactionTotalCount := 0;*/
            end;

            trigger OnAfterGetRecord();
            begin
                
                IF VendorRec.Get("Purch. Cr. Memo Line"."Pay-to Vendor No.") THEN BEGIN
                    PurchCrMemoHeader.Get("Purch. Cr. Memo Line"."Document No.");    
                    TAXCode := "Purch. Cr. Memo Line"."VAT Identifier";
                    IF PurchCrMemoHeader."Currency Code" = '' THEN 
                        FCYCode := GLSetup."LCY Code"
                    ELSE        
                        FCYCode := PurchCrMemoHeader."Currency Code";

                    IF FCYCode = GLSetup."LCY Code" THEN 
                        CurrencyFactor := 1
                    ELSE    
                        CurrencyFactor := PurchCrMemoHeader."Currency Factor";
                    IF FCYCode <> GLSetup."LCY Code" THEN BEGIN
                        PurchaseValueLCY := "Purch. Cr. Memo Line"."VAT Base Amount"/CurrencyFactor;
                        VATValueLCY := ("Purch. Cr. Memo Line"."Amount Including VAT"-"Purch. Cr. Memo Line"."VAT Base Amount")/CurrencyFactor;
                        PurchaseFCY := "Purch. Cr. Memo Line"."VAT Base Amount";
                        VATFCY := ("Purch. Cr. Memo Line"."Amount Including VAT"-"Purch. Cr. Memo Line"."VAT Base Amount");     
                    END ELSE BEGIN
                        PurchaseValueLCY := "Purch. Cr. Memo Line"."VAT Base Amount";
                        VATValueLCY := ("Purch. Cr. Memo Line"."Amount Including VAT"-"Purch. Cr. Memo Line"."VAT Base Amount");
                        PurchaseFCY := 0.00;
                        VATFCY := 0.00;             
                    END;
                    PurchaseTotalLCY -= PurchaseValueLCY;
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
       PurchInvHeader.GET(DocNo);
    end;


    var
        PeriodStart: Date;
        PeriodEnd: Date;
        PeriodStartlbl: Label 'Period Start';
        PeriodEndlbl: Label 'Period End';
        SupplierNamelbl: Label 'SupplierName';
        SupplierTRNlbl: Label 'SupplierTIN/TRN';
        InvoiceDatelbl: Label 'InvoiceDate';
        InvoiceNolbl: Label 'InvoiceNo';
        VendorRec: Record Vendor;
        PurcDataStartlbl: Label 'PurcDataStart';
        PurcDataEndlbl: Label 'PurcDataEnd';
        PermitNolbl :Label 'PermitNo'; 
        LineNolbl :Label 'LineNo'; 
        ProductDescriptionlbl :Label 'ProductDescription';
        PurchaseValueLCYlbl :Label 'PurchaseValue'; 
        VATValueLCYlbl :Label 'VATValue'; 
        TaxCodelbl :Label 'TaxCode'; 
        FCYCodelbl :Label 'FCYCode'; 
        PurchaseFCYlbl :Label 'PurchaseFCY'; 
        VATFCYlbl :Label 'VATFCY'; 
        PermitNo : Text[20];
        VATValueLCY : Decimal;
        PurchaseValueLCY : Decimal;
        TAXCode : Code[5];
        FCYCode : Code[3];
        PurchaseFCY : Decimal;
        VATFCY : Decimal;
        PurchInvHeader : Record "Purch. Inv. Header";
        CurrencyFactor : Decimal;
        GLSetup : Record "General Ledger Setup";
        PurchaseTotalLCYlbl : Label 'PurchaseTotal';
        VATTotalLCYlbl : Label 'VATTotal';
        TransactionTotalCountlbl : Label 'TransactionTotalCount';
        PurchaseTotalLCY : Decimal;
        VATTotalLCY : Decimal;
        TransactionTotalCount : Integer;
        PurchCrMemoHeader : Record "Purch. Cr. Memo Hdr.";
}       
