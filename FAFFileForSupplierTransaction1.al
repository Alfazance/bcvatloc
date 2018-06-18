report 70140924 "FAF Supplier Transaction1"
{
    Caption = 'FAF Supplier Transaction1';
    RDLCLayout = 'FAFFileForSuplierTransaction1.rdl';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    dataset
    {
        dataitem("VAT Entry";"VAT Entry")
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
            column(SupplierNamelbl; SupplierNamelbl)
            {
            }
            column(SupplierTRNlbl; SupplierTRNlbl)
            {
            }
            column(InvoiceDatelbl; invoiceDatelbl)
            {
            }
            column(InvoiceNolbl; InvoiceNolbl)
            {
            }
            column(PermitNolbl;PermitNolbl)
            {
            }
            column(LineNolbl;LineNolbl)
            {
            }
            column(ProductDescriptionlbl;ProductDescriptionlbl)
            {
            }
            column(PurchaseValueLCYlbl;PurchaseValueLCYlbl)
            {
            }
            column(VATValueLCYlbl;VATValueLCYlbl)
            {
            }
            column(TaxCodelbl;TaxCodelbl)
            {
            }
            column(FCYCodelbl;FCYCodelbl)
            {
            }
            column(PurchaseFCYlbl;PurchaseFCYlbl)
            {
            }
            Column(VATFCYlbl;VATFCYlbl)
            {
            }
            column(PurchaseTotalLCYlbl;PurchaseTotalLCYlbl)
            {
            }
            column(VATTotalLCYlbl;VATTotalLCYlbl)
            {
            }
            column(TransactionTotalCountlbl;TransactionTotalCountlbl)
            {
            }

            dataitem("Purch. Inv. Line";"Purch. Inv. Line")
            {
                DataItemLinkReference = "Vat Entry";
                DataItemLink = "Document No." = Field("Document No.");
                column(SupplierName; VendorRec.Name)
                {
                }
                column(SupplierTRN; VendorRec."VAT Registration No.")
                {
                }
                column(InvoiceDate; "Purch. Inv. Line"."Posting Date")
                {
                }
                column(InvoiceNo; "Purch. Inv. Line"."Document No.")
                {
                }
                column(PermitNo;PermitNo)
                {
                }
                column(LineNo_PurchInvLine; "Purch. Inv. Line"."Line No.")
                {
                }
                column(Description_PurchInvLine; "Purch. Inv. Line".Description+"Purch. Inv. Line"."Description 2")
                {
                }
                column(PurchaseValueLCY;PurchaseValueLCY)
                {
                }
                column(VATValueLCY;VATValueLCY)
                {
                }
                column(TAXCode;TAXCode)
                {
                }
                column(FCYCode;FCYCode)
                {
                }
                column(PurchaseFCY;PurchaseFCY)
                {
                }
                column(VATFCY;VATFCY)
                {
                }
                column(PurchaseTotalLCY;PurchaseTotalLCY)
                {
                }
                column(VATTotalLCY;VATTotalLCY)
                {
                }
                column(TransactionTotalCount;TransactionTotalCount)
                {
                }

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
                
                DataItemLinkReference = "Vat Entry";
                DataItemLink = "Document No." = Field("Document No.");
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
            dataitem("G/L Entry - VAT Entry Link";"G/L Entry - VAT Entry Link")
            {
                DataItemLinkReference = "Vat Entry";
                DataItemLink = "VAT Entry No." = field("Entry No.");
                dataitem("G/L Entry";"G/L Entry")
                {
                    DataItemLinkReference = "G/L Entry - VAT Entry Link";
                    DataItemLink = "Entry No." = field("G/L Entry No.");
                    column(GLSupplierName; VendorRec.Name)
                    {
                    }
                    column(GLSupplierTRN; VendorRec."VAT Registration No.")
                    {
                    }
                    column(GLInvoiceDate; "Purch. Inv. Line"."Posting Date")
                    {
                    }
                    column(GLInvoiceNo; "Purch. Inv. Line"."Document No.")
                    {
                    }
                    column(GLPermitNo;PermitNo)
                    {
                    }
                    column(GLLineNo_PurchInvLine; "Purch. Inv. Line"."Line No.")
                    {
                    }
                    column(GLDescription_PurchInvLine; "Purch. Inv. Line".Description+"Purch. Inv. Line"."Description 2")
                    {
                    }
                    column(GLPurchaseValueLCY;PurchaseValueLCY)
                    {
                    }
                    column(GLVATValueLCY;VATValueLCY)
                    {
                    }
                    column(GLTAXCode;TAXCode)
                    {
                    }
                    column(GLFCYCode;FCYCode)
                    {
                    }
                    column(GLPurchaseFCY;PurchaseFCY)
                    {
                    }
                    column(GLVATFCY;VATFCY)
                    {
                    }
                    column(GLPurchaseTotalLCY;PurchaseTotalLCY)
                    {
                    }
                    column(GLVATTotalLCY;VATTotalLCY)
                    {
                    }
                    column(GLTransactionTotalCount;TransactionTotalCount)
                    {
                    }
                    trigger OnAfterGetRecord()
                    var
                        VATPostingSetup : Record "VAT Posting Setup";
                    begin
                        VendorRec.Get("VAT Entry"."Bill-to/Pay-to No.");
                        VATPostingSetup.GET("VAT Entry"."VAT Bus. Posting Group","VAT Prod. Posting Group");
                        TAXCode := VATPostingSetup."VAT Identifier";
                        //PurchaseTotalLCY += ;
                        VATTotalLCY -= VATValueLCY;
                        TransactionTotalCount += 1;
                    End;
                }
                trigger OnAfterGetRecord()
                Begin 
                    IF IsGLJournal = FALSE THEN
                        CurrReport.Skip;
                End;

            }
            trigger OnPreDataItem()
            begin
                "VAT Entry".SetCurrentKey("Posting Date","Document No.");
                "VAT Entry".SetRange("Posting Date",PeriodStart,PeriodEnd);
                "VAT Entry".SetFilter("Bill-to/Pay-to No.",'<>%1','');
                "VAT Entry".SetRange(Type,Type::Purchase);
                IsGLJournal := TRUE;
            End;
            trigger OnAfterGetRecord()
            begin
                if PurchInvHeader.GET("Bill-to/Pay-to No.") THEN
                    IsGLJournal := false
                ELSE
                    if PurchCrMemoHeader.Get("Bill-to/Pay-to No.") then
                        IsGLJournal := false;

            End;

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
                    }
                    field("Period End"; PeriodEnd)
                    {
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
        IsGLJournal : Boolean;
    
}       
