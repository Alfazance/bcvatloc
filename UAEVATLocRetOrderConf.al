report 70140934 "UAEVATLoc Return Order Conf"
{
    // version NAVW112.00

    DefaultLayout = RDLC;
    RDLCLayout = './UAEVATLocRetOrderConf.rdl';
    Caption = 'Return Order Confirmation';
    PreviewMode = PrintLayout;

    dataset
    {
        dataitem("Sales Header";"Sales Header")
        {
            DataItemTableView = SORTING("Document Type","No.") WHERE("Document Type"=CONST("Return Order"));
            RequestFilterFields = "No.","Sell-to Customer No.","No. Printed";
            RequestFilterHeading = 'Sales Return Order';
            column(DocType_SalesHdr;"Document Type")
            {
            }
            column(No_SalesHdr;"No.")
            {
            }
            column(TotalCaption;TotalCaptionLbl)
            {
            }
            column(VATPercentageCaption;VATPercentageCaptionLbl)
            {
            }
            column(VATBaseCaption;VATBaseCaptionLbl)
            {
            }
            column(VATAmountCaption;VATAmountCaptionLbl)
            {
            }
            column(VATIdentifierCaption;VATIdentifierCaptionLbl)
            {
            }
            column(InvDiscAmtCaption;InvDiscAmtCaptionLbl)
            {
            }
            dataitem(CopyLoop;"Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;"Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                    column(ReportTitleCopyText;STRSUBSTNO(Text004,CopyText))
                    {
                    }
                    column(CustAddr1;CustAddr[1])
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(CustAddr2;CustAddr[2])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(CustAddr3;CustAddr[3])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(AmountCaption;AmountCaptionLbl)
                    {
                    }
                    column(UnitPriceCaption;UnitPriceCaptionLbl)
                    {
                    }
                    column(SubtotalCaption;SubtotalCaptionLbl)
                    {
                    }
                    column(SalesLineInvDiscAmtCaptn;SalesLineInvDiscAmtCaptnLbl)
                    {
                    }
                    column(TotalExclVATText;TotalExclVATText)
                    {
                    }
                    column(VATAmount;VATAmount)
                    {
                        AutoFormatExpression = "Sales Header"."Currency Code";
                        AutoFormatType = 1;
                    }
                    column(TotalInclVATText;TotalInclVATText)
                    {
                    }
                    column(VATAmtLineVATAmtText;VATAmountLine.VATAmountText)
                    {
                    }
                    column(VATDiscountAmountCaption;VATDiscountAmountCaptionLbl)
                    {
                    }
                    column(TotalText;TotalText)
                    {
                    }
                    column(SalesLineLineDiscCaption;SalesLineLineDiscCaptionLbl)
                    {
                    }
                    column(CustAddr4;CustAddr[4])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(CustAddr5;CustAddr[5])
                    {
                    }
                    column(CompanyInfoPhNo;CompanyInfo."Phone No.")
                    {
                    }
                    column(CustAddr6;CustAddr[6])
                    {
                    }
                    column(CompanyInfoVATRegNo;CompanyInfo."VAT Registration No.")
                    {
                    }
                    column(CompanyInfoGiroNo;CompanyInfo."Giro No.")
                    {
                    }
                    column(CompanyInfoBankName;CompanyInfo."Bank Name")
                    {
                    }
                    column(CompanyInfoBankAccNo;CompanyInfo."Bank Account No.")
                    {
                    }
                    column(CompanyInfo1Picture;CompanyInfo1.Picture)
                    {
                    }
                    column(CompanyInfo2Picture;CompanyInfo2.Picture)
                    {
                    }
                    column(CompanyInfo3Picture;CompanyInfo3.Picture)
                    {
                    }
                    column(CompanyInfoHomePage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEmail;CompanyInfo."E-Mail")
                    {
                    }
                    column(BilltoCustNo_SalesHdr;"Sales Header"."Bill-to Customer No.")
                    {
                    }
                    column(DocDate_SalesHdr;FORMAT("Sales Header"."Document Date",0,4))
                    {
                    }
                    column(VATNoText;VATNoText)
                    {
                    }
                    column(VATRegNo_SalesHdr;"Sales Header"."VAT Registration No.")
                    {
                    }
                    column(SalesPersonText;SalesPersonText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YourReference_SalesHdr;"Sales Header"."Your Reference")
                    {
                    }
                    column(CustAddr7;CustAddr[7])
                    {
                    }
                    column(CustAddr8;CustAddr[8])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(PricesInclVAT_SalesHdr;"Sales Header"."Prices Including VAT")
                    {
                    }
                    column(PageCaption;STRSUBSTNO(Text005,''))
                    {
                    }
                    column(OutputNo;OutputNo)
                    {
                    }
                    column(PricesInclVATYesNo_SalesHdr;FORMAT("Sales Header"."Prices Including VAT"))
                    {
                    }
                    column(SelltoCustNo_SalesHdr;"Sales Header"."Sell-to Customer No.")
                    {
                    }
                    column(PhNoCaption;PhNoCaptionLbl)
                    {
                    }
                    column(FaxNoCaption;FaxNoCaptionLbl)
                    {
                    }
                    column(VATRegNoCaption;VATRegNoCaptionLbl)
                    {
                    }
                    column(GiroNoCaption;GiroNoCaptionLbl)
                    {
                    }
                    column(BankNameCaption;BankNameCaptionLbl)
                    {
                    }
                    column(AccNoCaption;AccNoCaptionLbl)
                    {
                    }
                    column(ReturnOrderNoCaption;ReturnOrderNoCaptionLbl)
                    {
                    }
                    column(EmailCaption;EmailCaptionLbl)
                    {
                    }
                    column(HomePageCaption;HomePageCaptionLbl)
                    {
                    }
                    column(DocDateCaption;DocDateCaptionLbl)
                    {
                    }
                    column(BilltoCustNo_SalesHdrCaption;"Sales Header".FIELDCAPTION("Bill-to Customer No."))
                    {
                    }
                    column(PricesInclVAT_SalesHdrCaption;"Sales Header".FIELDCAPTION("Prices Including VAT"))
                    {
                    }
                    column(SelltoCustNo_SalesHdrCaption;"Sales Header".FIELDCAPTION("Sell-to Customer No."))
                    {
                    }
                    //UAE VAT Localization Start -->
                    column(CurrencyFactor;CurrencyFactor)
                    {

                    }
                    column(LCYCode;GLSetup."LCY Code")
                    {

                    }
                    column(IsFCY;IsFCY)
                    {

                    }
                    //UAE VAT Localization Stop <--
                    dataitem(DimensionLoop1;"Integer")
                    {
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING(Number) WHERE(Number=FILTER(1..));
                        column(DimText;DimText)
                        {
                        }
                        column(DimensionLoop1Number;Number)
                        {
                        }
                        column(HdrDimCaption;HdrDimCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then begin
                              if not DimSetEntry1.FINDSET then
                                CurrReport.BREAK;
                            end else
                              if not Continue then
                                CurrReport.BREAK;

                            CLEAR(DimText);
                            Continue := false;
                            repeat
                              OldDimText := DimText;
                              if DimText = '' then
                                DimText := STRSUBSTNO('%1 %2',DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code")
                              else
                                DimText :=
                                  STRSUBSTNO(
                                    '%1, %2 %3',DimText,
                                    DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code");
                              if STRLEN(DimText) > MAXSTRLEN(OldDimText) then begin
                                DimText := OldDimText;
                                Continue := true;
                                exit;
                              end;
                            until DimSetEntry1.NEXT = 0;
                        end;

                        trigger OnPreDataItem()
                        begin
                            if not ShowInternalInfo then
                              CurrReport.BREAK;
                        end;
                    }
                    dataitem("Sales Line";"Sales Line")
                    {
                        DataItemLink = "Document Type"=FIELD("Document Type"),"Document No."=FIELD("No.");
                        DataItemLinkReference = "Sales Header";
                        DataItemTableView = SORTING("Document Type","Document No.","Line No.");

                        trigger OnPreDataItem()
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(TypeInt;TypeInt)
                        {
                        }
                        column(SalesLineNo;SalesLineNo)
                        {
                        }
                        column(SalesLineLineNo;SalesLineLineNo)
                        {
                        }
                        column(SalesLineLineAmt;SalesLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(Desc_SalesLine;"Sales Line".Description)
                        {
                        }
                        column(DocNo_SalesLine;SalesLine."Document No.")
                        {
                        }
                        column(No2_SalesLine;"Sales Line"."No.")
                        {
                        }
                        column(Qty_SalesLine;"Sales Line".Quantity)
                        {
                        }
                        column(UOM_SalesLine;"Sales Line"."Unit of Measure")
                        {
                        }
                        column(UnitPrice_SalesLine;"Sales Line"."Unit Price")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 2;
                        }
                        column(LineDisc_SalesLine;"Sales Line"."Line Discount %")
                        {
                        }
                        column(AllowInvDisc_SalesLine;"Sales Line"."Allow Invoice Disc.")
                        {
                            IncludeCaption = false;
                        }
                        column(VATIdentifier_SalesLine;"Sales Line"."VAT Identifier")
                        {
                        }
                        column(AllowInvDiscYesNo_SalesLine;FORMAT("Sales Line"."Allow Invoice Disc."))
                        {
                        }
                        column(SalesLineInvDiscAmt;-SalesLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(SalesLineAmtAfterLineDisc;SalesLine."Line Amount" - SalesLine."Inv. Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(SalesLineAmtExclVATAmount;SalesLine."Line Amount" - SalesLine."Inv. Discount Amount" + VATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATDiscountAmount;-VATDiscountAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATBaseDiscount_SalesHdr;"Sales Header"."VAT Base Discount %")
                        {
                        }
                        column(VATBaseAmount;VATBaseAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmount2;VATAmount)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(TotalAmountInclVAT;TotalAmountInclVAT)
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(AllowInvDiscCaption;AllowInvDiscCaptionLbl)
                        {
                        }
                        column(Desc_SalesLineCaption;"Sales Line".FIELDCAPTION(Description))
                        {
                        }
                        column(No2_SalesLineCaption;"Sales Line".FIELDCAPTION("No."))
                        {
                        }
                        column(Qty_SalesLineCaption;"Sales Line".FIELDCAPTION(Quantity))
                        {
                        }
                        column(UOM_SalesLineCaption;"Sales Line".FIELDCAPTION("Unit of Measure"))
                        {
                        }
                        column(VATIdentifier_SalesLineCaption;"Sales Line".FIELDCAPTION("VAT Identifier"))
                        {
                        }
                        //UAE VAT Localization Start -->
                        column(SalesLineVATPer; "Sales Line"."VAT %")
                        {
                        }
                        column(SalesLine_AmountInclVAT; "Sales Line"."Amount Including VAT")
                        {
                        }
                        //UAE VAT Localization Stop <--
                        dataitem(DimensionLoop2;"Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number=FILTER(1..));
                            column(DimText2;DimText)
                            {
                            }
                            column(DimensionLoop2Number;Number)
                            {
                            }
                            column(LineDimensionsCaption;LineDimensionsCaptionLbl)
                            {
                            }

                            trigger OnAfterGetRecord()
                            begin
                                if Number = 1 then begin
                                  if not DimSetEntry2.FINDSET then
                                    CurrReport.BREAK;
                                end else
                                  if not Continue then
                                    CurrReport.BREAK;

                                CLEAR(DimText);
                                Continue := false;
                                repeat
                                  OldDimText := DimText;
                                  if DimText = '' then
                                    DimText := STRSUBSTNO('%1 %2',DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code")
                                  else
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1, %2 %3',DimText,
                                        DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code");
                                  if STRLEN(DimText) > MAXSTRLEN(OldDimText) then begin
                                    DimText := OldDimText;
                                    Continue := true;
                                    exit;
                                  end;
                                until DimSetEntry2.NEXT = 0;
                            end;

                            trigger OnPreDataItem()
                            begin
                                if not ShowInternalInfo then
                                  CurrReport.BREAK;

                                DimSetEntry2.SETRANGE("Dimension Set ID","Sales Line"."Dimension Set ID");
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then
                              SalesLine.FIND('-')
                            else
                              SalesLine.NEXT;
                            "Sales Line" := SalesLine;

                            if (SalesLine.Type = SalesLine.Type::"G/L Account") and (not ShowInternalInfo) then begin
                              SalesLineNo := "Sales Line"."No.";
                              "Sales Line"."No." := '';
                            end;

                            TypeInt := "Sales Line".Type;
                            SalesLineLineNo := "Sales Line"."Line No.";
                        end;

                        trigger OnPostDataItem()
                        begin
                            SalesLine.DELETEALL;
                        end;

                        trigger OnPreDataItem()
                        begin
                            MoreLines := SalesLine.FIND('+');
                            while MoreLines and (SalesLine.Description = '') and (SalesLine."Description 2" = '') and
                                  (SalesLine."No." = '') and (SalesLine.Quantity = 0) and
                                  (SalesLine.Amount = 0)
                            do
                              MoreLines := SalesLine.NEXT(-1) <> 0;
                            if not MoreLines then
                              CurrReport.BREAK;
                            SalesLine.SETRANGE("Line No.",0,SalesLine."Line No.");
                            SETRANGE(Number,1,SalesLine.COUNT);
                            CurrReport.CREATETOTALS(SalesLine."Line Amount",SalesLine."Inv. Discount Amount");
                        end;
                    }
                    dataitem(VATCounter;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VATAmtLineVATBase;VATAmountLine."VAT Base")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATAmt;VATAmountLine."VAT Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineLineAmt;VATAmountLine."Line Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscBaseAmt;VATAmountLine."Inv. Disc. Base Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineInvDiscAmt;VATAmountLine."Invoice Discount Amount")
                        {
                            AutoFormatExpression = "Sales Header"."Currency Code";
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATPercentage;VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:5;
                        }
                        column(VATAmtLineVATIdentifier;VATAmountLine."VAT Identifier")
                        {
                        }
                        column(VATAmtSpecificationCaptn;VATAmtSpecificationCaptnLbl)
                        {
                        }
                        column(VATAmtLineVATIdentifrCptn;VATAmtLineVATIdentifrCptnLbl)
                        {
                        }
                        column(InvDiscBaseAmtCaption;InvDiscBaseAmtCaptionLbl)
                        {
                        }
                        column(LineAmtCaption;LineAmtCaptionLbl)
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);
                        end;

                        trigger OnPreDataItem()
                        begin
                            if VATAmount = 0 then
                              CurrReport.BREAK;
                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(
                              VATAmountLine."Line Amount",VATAmountLine."Inv. Disc. Base Amount",
                              VATAmountLine."Invoice Discount Amount",VATAmountLine."VAT Base",VATAmountLine."VAT Amount");
                        end;
                    }
                    dataitem(VATCounterLCY;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(VALExchRate;VALExchRate)
                        {
                        }
                        column(VALSpecLCYHeader;VALSpecLCYHeader)
                        {
                        }
                        column(VALVATBaseLCY;VALVATBaseLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VALVATAmountLCY;VALVATAmountLCY)
                        {
                            AutoFormatType = 1;
                        }
                        column(VATAmtLineVATPercentage2;VATAmountLine."VAT %")
                        {
                            DecimalPlaces = 0:5;
                        }
                        column(VATAmtLineVATIdentifier2;VATAmountLine."VAT Identifier")
                        {
                        }

                        trigger OnAfterGetRecord()
                        begin
                            VATAmountLine.GetLine(Number);

                            VALVATBaseLCY := ROUND(CurrExchRate.ExchangeAmtFCYToLCY(
                                  "Sales Header"."Posting Date","Sales Header"."Currency Code",
                                  VATAmountLine."VAT Base","Sales Header"."Currency Factor"));
                            VALVATAmountLCY := ROUND(CurrExchRate.ExchangeAmtFCYToLCY(
                                  "Sales Header"."Posting Date","Sales Header"."Currency Code",
                                  VATAmountLine."VAT Amount","Sales Header"."Currency Factor"));
                        end;

                        trigger OnPreDataItem()
                        begin
                            if (not GLSetup."Print VAT specification in LCY") or
                               ("Sales Header"."Currency Code" = '') or
                               (VATAmountLine.GetTotalVATAmount = 0)
                            then
                              CurrReport.BREAK;

                            SETRANGE(Number,1,VATAmountLine.COUNT);
                            CurrReport.CREATETOTALS(VALVATBaseLCY,VALVATAmountLCY);

                            if GLSetup."LCY Code" = '' then
                              VALSpecLCYHeader := Text007 + Text008
                            else
                              VALSpecLCYHeader := Text007 + FORMAT(GLSetup."LCY Code");

                            CurrExchRate.FindCurrency("Sales Header"."Posting Date","Sales Header"."Currency Code",1);
                            VALExchRate := STRSUBSTNO(Text009,CurrExchRate."Relational Exch. Rate Amount",CurrExchRate."Exchange Rate Amount");
                        end;
                    }
                    dataitem(Total;"Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                        column(ShipToAddr8;ShipToAddr[8])
                        {
                        }
                        column(ShipToAddr7;ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr6;ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr5;ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr4;ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr3;ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr2;ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr1;ShipToAddr[1])
                        {
                        }
                        column(ShowShippingAddr;ShowShippingAddr)
                        {
                        }
                        column(ShiptoAddrCaption;ShiptoAddrCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            if not ShowShippingAddr then
                              CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                var
                    SalesPost: Codeunit "Sales-Post";
                begin
                    CLEAR(SalesLine);
                    CLEAR(SalesPost);
                    SalesLine.DELETEALL;
                    VATAmountLine.DELETEALL;
                    SalesPost.GetSalesLines("Sales Header",SalesLine,0);
                    SalesLine.CalcVATAmountLines(0,"Sales Header",SalesLine,VATAmountLine);
                    SalesLine.UpdateVATOnLines(0,"Sales Header",SalesLine,VATAmountLine);
                    VATAmount := VATAmountLine.GetTotalVATAmount;
                    VATBaseAmount := VATAmountLine.GetTotalVATBase;
                    VATDiscountAmount :=
                      VATAmountLine.GetTotalVATDiscount("Sales Header"."Currency Code","Sales Header"."Prices Including VAT");
                    TotalAmountInclVAT := VATAmountLine.GetTotalAmountInclVAT;

                    if Number > 1 then begin
                      CopyText := FormatDocument.GetCOPYText;
                      OutputNo += 1;
                    end;
                    CurrReport.PAGENO := 1;
                end;

                trigger OnPostDataItem()
                begin
                    if not CurrReport.PREVIEW then
                      CODEUNIT.RUN(CODEUNIT::"Sales-Printed","Sales Header");
                end;

                trigger OnPreDataItem()
                begin
                    NoOfLoops := ABS(NoOfCopies) + 1;
                    CopyText := '';
                    SETRANGE(Number,1,NoOfLoops);
                    OutputNo := 1;
                end;
            }

            trigger OnAfterGetRecord()
            begin
                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                FormatAddressFields("Sales Header");
                FormatDocumentFields("Sales Header");

                DimSetEntry1.SETRANGE("Dimension Set ID","Dimension Set ID");

                if LogInteraction then
                  if not CurrReport.PREVIEW then begin
                    if "Bill-to Contact No." <> '' then
                      SegManagement.LogDocument(
                        18,"No.",0,0,DATABASE::Contact,"Bill-to Contact No.","Salesperson Code",
                        "Campaign No.","Posting Description","Opportunity No.")
                    else
                      SegManagement.LogDocument(
                        18,"No.",0,0,DATABASE::Customer,"Bill-to Customer No.","Salesperson Code",
                        "Campaign No.","Posting Description","Opportunity No.");
                  end;
                //UAE VAT Localization Start -->
                IsFCY := FALSE;
                IF (GLSetup."LCY Code" <> "Currency Code") AND ("Currency Code" <> '') THEN 
                    IsFCY := True;
                IF IsFCY THEN 
                    CurrencyFactor := "Currency Factor"
                ELSE
                    CurrencyFactor := 1;
                //UAE VAT Localization Stop <--  
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
                group(Options)
                {
                    Caption = 'Options';
                    field(NoOfCopies;NoOfCopies)
                    {
                        ApplicationArea = SalesReturnOrder;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo;ShowInternalInfo)
                    {
                        ApplicationArea = SalesReturnOrder;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                    field(LogInteraction;LogInteraction)
                    {
                        ApplicationArea = SalesReturnOrder;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies if you want to record the reports that you print as interactions.';
                    }
                }
            }
        }

        actions
        {
        }

        trigger OnInit()
        begin
            LogInteractionEnable := true;
        end;

        trigger OnOpenPage()
        begin
            InitLogInteraction;
            LogInteractionEnable := LogInteraction;
        end;
    }

    labels
    {
    }

    trigger OnInitReport()
    begin
        GLSetup.GET;
        CompanyInfo.GET;
        SalesSetup.GET;
        FormatDocument.SetLogoPosition(SalesSetup."Logo Position on Documents",CompanyInfo1,CompanyInfo2,CompanyInfo3);
    end;

    trigger OnPreReport()
    begin
        if not CurrReport.USEREQUESTPAGE then
          InitLogInteraction;
    end;

    var
        Text004: Label 'Return Order Confirmation %1', Comment='%1 = Document No.';
        Text005: Label 'Page %1';
        GLSetup: Record "General Ledger Setup";
        SalesSetup: Record "Sales & Receivables Setup";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        CompanyInfo1: Record "Company Information";
        CompanyInfo2: Record "Company Information";
        CompanyInfo3: Record "Company Information";
        VATAmountLine: Record "VAT Amount Line" temporary;
        SalesLine: Record "Sales Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        CurrExchRate: Record "Currency Exchange Rate";
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        CustAddr: array [8] of Text[50];
        ShipToAddr: array [8] of Text[50];
        CompanyAddr: array [8] of Text[50];
        SalesPersonText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        VATAmount: Decimal;
        VATBaseAmount: Decimal;
        VATDiscountAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        LogInteraction: Boolean;
        VALVATBaseLCY: Decimal;
        VALVATAmountLCY: Decimal;
        VALSpecLCYHeader: Text[80];
        VALExchRate: Text[50];
        Text007: Label 'VAT Amount Specification in ';
        Text008: Label 'Local Currency';
        Text009: Label 'Exchange rate: %1/%2';
        OutputNo: Integer;
        TypeInt: Integer;
        SalesLineNo: Code[20];
        SalesLineLineNo: Integer;
        [InDataSet]
        LogInteractionEnable: Boolean;
        AmountCaptionLbl: Label 'Amount';
        UnitPriceCaptionLbl: Label 'Unit Price';
        SubtotalCaptionLbl: Label 'Subtotal';
        SalesLineInvDiscAmtCaptnLbl: Label 'Invoice Discount Amount';
        VATDiscountAmountCaptionLbl: Label 'Payment Discount on VAT';
        SalesLineLineDiscCaptionLbl: Label 'Discount %';
        PhNoCaptionLbl: Label 'Phone No.';
        FaxNoCaptionLbl: Label 'Fax No.';
        VATRegNoCaptionLbl: Label 'VAT Reg. No.';
        GiroNoCaptionLbl: Label 'Giro No.';
        BankNameCaptionLbl: Label 'Bank';
        AccNoCaptionLbl: Label 'Account No.';
        ReturnOrderNoCaptionLbl: Label 'Return Order No.';
        EmailCaptionLbl: Label 'Email';
        HomePageCaptionLbl: Label 'Home Page';
        DocDateCaptionLbl: Label 'Document Date';
        HdrDimCaptionLbl: Label 'Header Dimensions';
        AllowInvDiscCaptionLbl: Label 'Allow Invoice Discount';
        LineDimensionsCaptionLbl: Label 'Line Dimensions';
        VATAmtSpecificationCaptnLbl: Label 'VAT Amount Specification';
        VATAmtLineVATIdentifrCptnLbl: Label 'VAT Identifier';
        InvDiscBaseAmtCaptionLbl: Label 'Inv. Disc. Base Amount';
        LineAmtCaptionLbl: Label 'Line Amount';
        ShiptoAddrCaptionLbl: Label 'Ship-to Address';
        TotalCaptionLbl: Label 'Total';
        VATPercentageCaptionLbl: Label 'VAT %';
        VATBaseCaptionLbl: Label 'VAT Base';
        VATAmountCaptionLbl: Label 'VAT Amount';
        VATIdentifierCaptionLbl: Label 'VAT Identifier';
        InvDiscAmtCaptionLbl: Label 'Invoice Discount Amount';
         //UAE VAT Localization Start -->
        CurrencyFactor : Decimal;
        IsFCY : Boolean;
        //UAE VAT Localization Start <--

    procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(18) <> '';
    end;

    procedure InitializeRequest(ShowInternalInfoFrom: Boolean;LogInteractionFrom: Boolean)
    begin
        InitLogInteraction;
        ShowInternalInfo := ShowInternalInfoFrom;
        LogInteraction := LogInteractionFrom;
    end;

    local procedure FormatAddressFields(var SalesHeader: Record "Sales Header")
    begin
        FormatAddr.GetCompanyAddr(SalesHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.SalesHeaderBillTo(CustAddr,SalesHeader);
        ShowShippingAddr := FormatAddr.SalesHeaderShipTo(ShipToAddr,CustAddr,SalesHeader);
    end;

    local procedure FormatDocumentFields(SalesHeader: Record "Sales Header")
    begin
        with SalesHeader do begin
          FormatDocument.SetTotalLabels("Currency Code",TotalText,TotalInclVATText,TotalExclVATText);
          FormatDocument.SetSalesPerson(SalesPurchPerson,"Salesperson Code",SalesPersonText);

          ReferenceText := FormatDocument.SetText("Your Reference" <> '',FIELDCAPTION("Your Reference"));
          VATNoText := FormatDocument.SetText("VAT Registration No." <> '',FIELDCAPTION("VAT Registration No."));
        end;
    end;
}

