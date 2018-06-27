report 70140931 "UAEVATLoc Sales - Quote"
{
    // version NAVW112.00

    RDLCLayout = './UAEVATLoc Sales - Quote.rdl';
    WordLayout = './UAEVATLoc Sales - Quote.docx';
    Caption = 'Sales - Quote';
    DefaultLayout = RDLC;
    PreviewMode = PrintLayout;
    WordMergeDataItem = Header;

    dataset
    {
        dataitem(Header;"Sales Header")
        {
            DataItemTableView = SORTING("Document Type","No.") WHERE("Document Type"=CONST(Quote));
            RequestFilterFields = "No.","Sell-to Customer No.","No. Printed";
            RequestFilterHeading = 'Sales Quote';
            column(CompanyAddress1;CompanyAddr[1])
            {
            }
            column(CompanyAddress2;CompanyAddr[2])
            {
            }
            column(CompanyAddress3;CompanyAddr[3])
            {
            }
            column(CompanyAddress4;CompanyAddr[4])
            {
            }
            column(CompanyAddress5;CompanyAddr[5])
            {
            }
            column(CompanyAddress6;CompanyAddr[6])
            {
            }
            column(CompanyAddress7;CompanyAddr[7])
            {
            }
            column(CompanyAddress8;CompanyAddr[8])
            {
            }
            column(CompanyHomePage;CompanyInfo."Home Page")
            {
            }
            column(CompanyEMail;CompanyInfo."E-Mail")
            {
            }
            column(CompanyPicture;CompanyInfo.Picture)
            {
            }
            column(CompanyPhoneNo;CompanyInfo."Phone No.")
            {
            }
            column(CompanyPhoneNo_Lbl;CompanyInfoPhoneNoLbl)
            {
            }
            column(CompanyGiroNo;CompanyInfo."Giro No.")
            {
            }
            column(CompanyGiroNo_Lbl;CompanyInfoGiroNoLbl)
            {
            }
            column(CompanyBankName;CompanyInfo."Bank Name")
            {
            }
            column(CompanyBankName_Lbl;CompanyInfoBankNameLbl)
            {
            }
            column(CompanyBankBranchNo;CompanyInfo."Bank Branch No.")
            {
            }
            column(CompanyBankBranchNo_Lbl;CompanyInfo.FIELDCAPTION("Bank Branch No."))
            {
            }
            column(CompanyBankAccountNo;CompanyInfo."Bank Account No.")
            {
            }
            column(CompanyBankAccountNo_Lbl;CompanyInfoBankAccNoLbl)
            {
            }
            column(CompanyIBAN;CompanyInfo.IBAN)
            {
            }
            column(CompanyIBAN_Lbl;CompanyInfo.FIELDCAPTION(IBAN))
            {
            }
            column(CompanySWIFT;CompanyInfo."SWIFT Code")
            {
            }
            column(CompanySWIFT_Lbl;CompanyInfo.FIELDCAPTION("SWIFT Code"))
            {
            }
            column(CompanyLogoPosition;CompanyLogoPosition)
            {
            }
            column(CompanyRegistrationNumber;CompanyInfo.GetRegistrationNumber)
            {
            }
            column(CompanyRegistrationNumber_Lbl;CompanyInfo.GetRegistrationNumberLbl)
            {
            }
            column(CompanyVATRegNo;CompanyInfo.GetVATRegistrationNumber)
            {
            }
            column(CompanyVATRegNo_Lbl;CompanyInfo.GetVATRegistrationNumberLbl)
            {
            }
            column(CompanyVATRegistrationNo;CompanyInfo.GetVATRegistrationNumber)
            {
            }
            column(CompanyVATRegistrationNo_Lbl;CompanyInfo.GetVATRegistrationNumberLbl)
            {
            }
            column(CompanyLegalOffice;CompanyInfo.GetLegalOffice)
            {
            }
            column(CompanyLegalOffice_Lbl;CompanyInfo.GetLegalOfficeLbl)
            {
            }
            column(CompanyCustomGiro;CompanyInfo.GetCustomGiro)
            {
            }
            column(CompanyCustomGiro_Lbl;CompanyInfo.GetCustomGiroLbl)
            {
            }
            column(CompanyLegalStatement;GetLegalStatement)
            {
            }
            column(CustomerAddress1;CustAddr[1])
            {
            }
            column(CustomerAddress2;CustAddr[2])
            {
            }
            column(CustomerAddress3;CustAddr[3])
            {
            }
            column(CustomerAddress4;CustAddr[4])
            {
            }
            column(CustomerAddress5;CustAddr[5])
            {
            }
            column(CustomerAddress6;CustAddr[6])
            {
            }
            column(CustomerAddress7;CustAddr[7])
            {
            }
            column(CustomerAddress8;CustAddr[8])
            {
            }
            column(CustomerPostalBarCode;FormatAddr.PostalBarCode(1))
            {
            }
            column(YourReference;"Your Reference")
            {
            }
            column(YourReference__Lbl;FIELDCAPTION("Your Reference"))
            {
            }
            column(ShipmentMethodDescription;ShipmentMethod.Description)
            {
            }
            column(ShipmentMethodDescription_Lbl;ShptMethodDescLbl)
            {
            }
            column(Shipment_Lbl;ShipmentLbl)
            {
            }
            column(ShowShippingAddress;ShowShippingAddr)
            {
            }
            column(ShipToAddress_Lbl;ShiptoAddrLbl)
            {
            }
            column(ShipToAddress1;ShipToAddr[1])
            {
            }
            column(ShipToAddress2;ShipToAddr[2])
            {
            }
            column(ShipToAddress3;ShipToAddr[3])
            {
            }
            column(ShipToAddress4;ShipToAddr[4])
            {
            }
            column(ShipToAddress5;ShipToAddr[5])
            {
            }
            column(ShipToAddress6;ShipToAddr[6])
            {
            }
            column(ShipToAddress7;ShipToAddr[7])
            {
            }
            column(ShipToAddress8;ShipToAddr[8])
            {
            }
            column(PaymentTermsDescription;PaymentTerms.Description)
            {
            }
            column(PaymentTermsDescription_Lbl;PaymentTermsDescLbl)
            {
            }
            column(PaymentMethodDescription;PaymentMethod.Description)
            {
            }
            column(PaymentMethodDescription_Lbl;PaymentMethodDescLbl)
            {
            }
            column(DocumentCopyText;STRSUBSTNO(DocumentCaption,CopyText))
            {
            }
            column(BilltoCustumerNo;"Bill-to Customer No.")
            {
            }
            column(BilltoCustomerNo_Lbl;FIELDCAPTION("Bill-to Customer No."))
            {
            }
            column(DocumentDate;FORMAT("Document Date",0,4))
            {
            }
            column(DocumentDate_Lbl;FIELDCAPTION("Document Date"))
            {
            }
            column(DueDate;FORMAT("Due Date",0,4))
            {
            }
            column(DueDate_Lbl;FIELDCAPTION("Due Date"))
            {
            }
            column(QuoteValidToDate;FORMAT("Quote Valid Until Date",0,4))
            {
            }
            column(QuoteValidToDate_Lbl;QuoteValidToDateLbl)
            {
            }
            column(DocumentNo;"No.")
            {
            }
            column(DocumentNo_Lbl;InvNoLbl)
            {
            }
            column(PricesIncludingVAT;"Prices Including VAT")
            {
            }
            column(PricesIncludingVAT_Lbl;FIELDCAPTION("Prices Including VAT"))
            {
            }
            column(PricesIncludingVATYesNo;FORMAT("Prices Including VAT"))
            {
            }
            column(SalesPerson_Lbl;SalespersonLbl)
            {
            }
            column(SalesPersonBlank_Lbl;SalesPersonText)
            {
            }
            column(SalesPersonName;SalespersonPurchaser.Name)
            {
            }
            column(SelltoCustomerNo;"Sell-to Customer No.")
            {
            }
            column(SelltoCustomerNo_Lbl;FIELDCAPTION("Sell-to Customer No."))
            {
            }
            column(VATRegistrationNo;GetCustomerVATRegistrationNumber)
            {
            }
            column(VATRegistrationNo_Lbl;GetCustomerVATRegistrationNumberLbl)
            {
            }
            column(GlobalLocationNumber;GetCustomerGlobalLocationNumber)
            {
            }
            column(GlobalLocationNumber_Lbl;GetCustomerGlobalLocationNumberLbl)
            {
            }
            column(LegalEntityType;Cust.GetLegalEntityType)
            {
            }
            column(LegalEntityType_Lbl;Cust.GetLegalEntityTypeLbl)
            {
            }
            column(Copy_Lbl;CopyLbl)
            {
            }
            column(EMail_Lbl;EMailLbl)
            {
            }
            column(Estimate_Lbl;EstimateLbl)
            {
            }
            column(YourEstimate_Lbl;YourEstimateLbl)
            {
            }
            column(EstimateBody_Lbl;EstimateBodyLbl)
            {
            }
            column(From_Lbl;FromLbl)
            {
            }
            column(EstimateFor_Lbl;EstimateForLbl)
            {
            }
            column(Questions_Lbl;QuestionsLbl)
            {
            }
            column(Contact_Lbl;CompanyInfo.GetContactUsText)
            {
            }
            column(Thanks_Lbl;ThanksLbl)
            {
            }
            column(HomePage_Lbl;HomePageLbl)
            {
            }
            column(InvoiceDiscountBaseAmount_Lbl;InvDiscBaseAmtLbl)
            {
            }
            column(InvoiceDiscountAmount_Lbl;InvDiscountAmtLbl)
            {
            }
            column(LineAmountAfterInvoiceDiscount_Lbl;LineAmtAfterInvDiscLbl)
            {
            }
            column(LocalCurrency_Lbl;LocalCurrencyLbl)
            {
            }
            column(ExchangeRateAsText;ExchangeRateText)
            {
            }
            column(Page_Lbl;PageLbl)
            {
            }
            column(SalesInvoiceLineDiscount_Lbl;SalesInvLineDiscLbl)
            {
            }
            column(DocumentTitle_Lbl;SalesConfirmationLbl)
            {
            }
            column(ShowWorkDescription;ShowWorkDescription)
            {
            }
            column(Subtotal_Lbl;SubtotalLbl)
            {
            }
            column(Total_Lbl;TotalLbl)
            {
            }
            column(VATAmount_Lbl;VATAmtLbl)
            {
            }
            column(VATBase_Lbl;VATBaseLbl)
            {
            }
            column(VATAmountSpecification_Lbl;VATAmtSpecificationLbl)
            {
            }
            column(VATClauses_Lbl;VATClausesLbl)
            {
            }
            column(VATIdentifier_Lbl;VATIdentifierLbl)
            {
            }
            column(VATPercentage_Lbl;VATPercentageLbl)
            {
            }
            column(VATClause_Lbl;VATClause.TABLECAPTION)
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
            dataitem(Line;"Sales Line")
            {
                DataItemLink = "Document No."=FIELD("No.");
                DataItemLinkReference = Header;
                DataItemTableView = SORTING("Document No.","Line No.");
                UseTemporary = true;
                column(LineNo_Line;"Line No.")
                {
                }
                column(AmountExcludingVAT_Line;Amount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(AmountExcludingVAT_Line_Lbl;FIELDCAPTION(Amount))
                {
                }
                column(AmountIncludingVAT_Line;"Amount Including VAT")
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(AmountIncludingVAT_Line_Lbl;FIELDCAPTION("Amount Including VAT"))
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(Description_Line;Description)
                {
                }
                column(Description_Line_Lbl;FIELDCAPTION(Description))
                {
                }
                column(LineDiscountPercent_Line;"Line Discount %")
                {
                }
                column(LineDiscountPercentText_Line;LineDiscountPctText)
                {
                }
                column(LineAmount_Line;FormattedLineAmount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(LineAmount_Line_Lbl;FIELDCAPTION("Line Amount"))
                {
                }
                column(ItemNo_Line;"No.")
                {
                }
                column(ItemNo_Line_Lbl;FIELDCAPTION("No."))
                {
                }
                column(ShipmentDate_Line;FORMAT("Shipment Date"))
                {
                }
                column(ShipmentDate_Lbl;PostedShipmentDateLbl)
                {
                }
                column(Quantity_Line;FormattedQuantity)
                {
                }
                column(Quantity_Line_Lbl;FIELDCAPTION(Quantity))
                {
                }
                column(Type_Line;FORMAT(Type))
                {
                }
                column(UnitPrice;FormattedUnitPrice)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 2;
                }
                column(UnitPrice_Lbl;FIELDCAPTION("Unit Price"))
                {
                }
                column(UnitOfMeasure;"Unit of Measure")
                {
                }
                column(UnitOfMeasure_Lbl;FIELDCAPTION("Unit of Measure"))
                {
                }
                column(VATIdentifier_Line;"VAT Identifier")
                {
                }
                column(VATIdentifier_Line_Lbl;FIELDCAPTION("VAT Identifier"))
                {
                }
                column(VATPct_Line;FormattedVATPct)
                {
                }
                column(VATPct_Line_Lbl;FIELDCAPTION("VAT %"))
                {
                }
                column(TransHeaderAmount;TransHeaderAmount)
                {
                    AutoFormatExpression = "Currency Code";
                    AutoFormatType = 1;
                }
                column(Unit_Lbl;UnitLbl)
                {
                }
                column(Qty_Lbl;QtyLbl)
                {
                }
                column(Price_Lbl;PriceLbl)
                {
                }
                column(PricePer_Lbl;PricePerLbl)
                {
                }
                trigger OnAfterGetRecord()
                begin
                    if Type = Type::"G/L Account" then
                      "No." := '';

                    if "Line Discount %" = 0 then
                      LineDiscountPctText := ''
                    else
                      LineDiscountPctText := STRSUBSTNO('%1%',-ROUND("Line Discount %",0.1));

                    TransHeaderAmount += PrevLineAmount;
                    PrevLineAmount := "Line Amount";
                    TotalSubTotal += "Line Amount";
                    TotalInvDiscAmount -= "Inv. Discount Amount";
                    TotalAmount += Amount;
                    TotalAmountVAT += "Amount Including VAT" - Amount;
                    TotalAmountInclVAT += "Amount Including VAT";
                    TotalPaymentDiscOnVAT += -("Line Amount" - "Inv. Discount Amount" - "Amount Including VAT");

                    FormatDocument.SetSalesLine(Line,FormattedQuantity,FormattedUnitPrice,FormattedVATPct,FormattedLineAmount);

                    if FirstLineHasBeenOutput then
                      CLEAR(CompanyInfo.Picture);
                    FirstLineHasBeenOutput := true;
                end;

                trigger OnPreDataItem()
                begin
                    MoreLines := FIND('+');
                    while MoreLines and (Description = '') and ("No." = '') and (Quantity = 0) and (Amount = 0) do
                      MoreLines := NEXT(-1) <> 0;
                    if not MoreLines then
                      CurrReport.BREAK;
                    SETRANGE("Line No.",0,"Line No.");
                    CurrReport.CREATETOTALS("Line Amount",Amount,"Amount Including VAT","Inv. Discount Amount");
                    TransHeaderAmount := 0;
                    PrevLineAmount := 0;
                    FirstLineHasBeenOutput := false;
                end;
            }
            dataitem(WorkDescriptionLines;"Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number=FILTER(1..99999));
                column(WorkDescriptionLineNumber;Number)
                {
                }
                column(WorkDescriptionLine;WorkDescriptionLine)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    if not TempBlobWorkDescription.MoreTextLines then
                      CurrReport.BREAK;
                    WorkDescriptionLine := TempBlobWorkDescription.ReadTextLine;
                end;

                trigger OnPostDataItem()
                begin
                    CLEAR(TempBlobWorkDescription);
                end;

                trigger OnPreDataItem()
                begin
                    if not ShowWorkDescription then
                      CurrReport.BREAK;
                    TempBlobWorkDescription.Blob := Header."Work Description";
                end;
            }
            dataitem(VATAmountLine;"VAT Amount Line")
            {
                DataItemTableView = SORTING("VAT Identifier","VAT Calculation Type","Tax Group Code","Use Tax",Positive);
                UseTemporary = true;
                column(InvoiceDiscountAmount_VATAmountLine;"Invoice Discount Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(InvoiceDiscountAmount_VATAmountLine_Lbl;FIELDCAPTION("Invoice Discount Amount"))
                {
                }
                column(InvoiceDiscountBaseAmount_VATAmountLine;"Inv. Disc. Base Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(InvoiceDiscountBaseAmount_VATAmountLine_Lbl;FIELDCAPTION("Inv. Disc. Base Amount"))
                {
                }
                column(LineAmount_VatAmountLine;"Line Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(LineAmount_VatAmountLine_Lbl;FIELDCAPTION("Line Amount"))
                {
                }
                column(VATAmount_VatAmountLine;"VAT Amount")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATAmount_VatAmountLine_Lbl;FIELDCAPTION("VAT Amount"))
                {
                }
                column(VATAmountLCY_VATAmountLine;VATAmountLCY)
                {
                }
                column(VATAmountLCY_VATAmountLine_Lbl;VATAmountLCYLbl)
                {
                }
                column(VATBase_VatAmountLine;"VAT Base")
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(VATBase_VatAmountLine_Lbl;FIELDCAPTION("VAT Base"))
                {
                }
                column(VATBaseLCY_VATAmountLine;VATBaseLCY)
                {
                }
                column(VATBaseLCY_VATAmountLine_Lbl;VATBaseLCYLbl)
                {
                }
                column(VATIdentifier_VatAmountLine;"VAT Identifier")
                {
                }
                column(VATIdentifier_VatAmountLine_Lbl;FIELDCAPTION("VAT Identifier"))
                {
                }
                column(VATPct_VatAmountLine;"VAT %")
                {
                    DecimalPlaces = 0:5;
                }
                column(VATPct_VatAmountLine_Lbl;FIELDCAPTION("VAT %"))
                {
                }
                column(NoOfVATIdentifiers;COUNT)
                {
                }

                trigger OnAfterGetRecord()
                begin
                    VATBaseLCY :=
                      GetBaseLCY(
                        Header."Posting Date",Header."Currency Code",
                        Header."Currency Factor");
                    VATAmountLCY :=
                      GetAmountLCY(
                        Header."Posting Date",Header."Currency Code",
                        Header."Currency Factor");

                    TotalVATBaseLCY += VATBaseLCY;
                    TotalVATAmountLCY += VATAmountLCY;
                end;

                trigger OnPreDataItem()
                begin
                    CurrReport.CREATETOTALS(
                      "Line Amount","Inv. Disc. Base Amount",
                      "Invoice Discount Amount","VAT Base","VAT Amount",
                      VATBaseLCY,VATAmountLCY);

                    TotalVATBaseLCY := 0;
                    TotalVATAmountLCY := 0;
                end;
            }
            dataitem(ReportTotalsLine;"Report Totals Buffer")
            {
                DataItemTableView = SORTING("Line No.");
                UseTemporary = true;
                column(Description_ReportTotalsLine;Description)
                {
                }
                column(Amount_ReportTotalsLine;Amount)
                {
                }
                column(AmountFormatted_ReportTotalsLine;"Amount Formatted")
                {
                }
                column(FontBold_ReportTotalsLine;"Font Bold")
                {
                }
                column(FontUnderline_ReportTotalsLine;"Font Underline")
                {
                }

                trigger OnPreDataItem()
                begin
                    CreateReportTotalLines;
                end;
            }
            dataitem(LetterText;"Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                column(GreetingText;GreetingLbl)
                {
                }
                column(BodyText;BodyLbl)
                {
                }
                column(ClosingText;ClosingLbl)
                {
                }
                column(PmtDiscText;PmtDiscText)
                {
                }

                trigger OnPreDataItem()
                begin
                    PmtDiscText := '';
                    if Header."Payment Discount %" <> 0 then
                      PmtDiscText := STRSUBSTNO(PmtDiscTxt,Header."Pmt. Discount Date",Header."Payment Discount %");
                end;
            }
            dataitem(Totals;"Integer")
            {
                DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                column(TotalNetAmount;TotalAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATBaseLCY;TotalVATBaseLCY)
                {
                }
                column(TotalAmountIncludingVAT;TotalAmountInclVAT)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATAmount;TotalAmountVAT)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalVATAmountLCY;TotalVATAmountLCY)
                {
                }
                column(TotalInvoiceDiscountAmount;TotalInvDiscAmount)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalPaymentDiscountOnVAT;TotalPaymentDiscOnVAT)
                {
                }
                column(TotalVATAmountText;VATAmountLine.VATAmountText)
                {
                }
                column(TotalExcludingVATText;TotalExclVATText)
                {
                }
                column(TotalIncludingVATText;TotalInclVATText)
                {
                }
                column(TotalSubTotal;TotalSubTotal)
                {
                    AutoFormatExpression = Header."Currency Code";
                    AutoFormatType = 1;
                }
                column(TotalSubTotalMinusInvoiceDiscount;TotalSubTotal + TotalInvDiscAmount)
                {
                }
                column(TotalText;TotalText)
                {
                }
            }

            trigger OnAfterGetRecord()
            var
                CurrencyExchangeRate: Record "Currency Exchange Rate";
                ArchiveManagement: Codeunit ArchiveManagement;
                SalesPost: Codeunit "Sales-Post";
                CancelArchiving: Boolean;
            begin
                FirstLineHasBeenOutput := false;
                CLEAR(Line);
                CLEAR(SalesPost);
                VATAmountLine.DELETEALL;
                Line.DELETEALL;
                SalesPost.GetSalesLines(Header,Line,0);
                Line.CalcVATAmountLines(0,Header,Line,VATAmountLine);
                Line.UpdateVATOnLines(0,Header,Line,VATAmountLine);

                if IdentityManagement.IsInvAppId then
                  "Language Code" := Language.GetUserLanguage;

                CurrReport.LANGUAGE := Language.GetLanguageID("Language Code");

                CALCFIELDS("Work Description");
                ShowWorkDescription := "Work Description".HASVALUE;

                FormatAddr.GetCompanyAddr("Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
                FormatAddr.SalesHeaderBillTo(CustAddr,Header);
                ShowShippingAddr := FormatAddr.SalesHeaderShipTo(ShipToAddr,CustAddr,Header);

                if not Cust.GET("Bill-to Customer No.") then
                  CLEAR(Cust);

                if "Currency Code" <> '' then begin
                  CurrencyExchangeRate.FindCurrency("Posting Date","Currency Code",1);
                  CalculatedExchRate :=
                    ROUND(1 / "Currency Factor" * CurrencyExchangeRate."Exchange Rate Amount",0.000001);
                  ExchangeRateText := STRSUBSTNO(ExchangeRateTxt,CalculatedExchRate,CurrencyExchangeRate."Exchange Rate Amount");
                end;

                FormatDocumentFields(Header);

                OnBeforeArchiving(CancelArchiving);
                LogInteraction := LogInteraction and not CancelArchiving;

                if not CurrReport.PREVIEW and not CancelArchiving and
                   (CurrReport.USEREQUESTPAGE and ArchiveDocument or
                    not CurrReport.USEREQUESTPAGE and (SalesSetup."Archive Quotes" <> SalesSetup."Archive Quotes"::Never))
                then
                  case SalesSetup."Archive Quotes" of
                    SalesSetup."Archive Quotes"::Always:
                      ArchiveManagement.ArchSalesDocumentNoConfirm(Header);
                    SalesSetup."Archive Quotes"::Question:
                      ArchiveManagement.ArchiveSalesDocument(Header);
                  end;

                if LogInteraction and not CurrReport.PREVIEW then begin
                  CALCFIELDS("No. of Archived Versions");
                  if "Bill-to Contact No." <> '' then
                    SegManagement.LogDocument(
                      1,"No.","Doc. No. Occurrence",
                      "No. of Archived Versions",DATABASE::Contact,"Bill-to Contact No.",
                      "Salesperson Code","Campaign No.","Posting Description","Opportunity No.")
                  else
                    SegManagement.LogDocument(
                      1,"No.","Doc. No. Occurrence",
                      "No. of Archived Versions",DATABASE::Customer,"Bill-to Customer No.",
                      "Salesperson Code","Campaign No.","Posting Description","Opportunity No.");
                end;

                TotalSubTotal := 0;
                TotalInvDiscAmount := 0;
                TotalAmount := 0;
                TotalAmountVAT := 0;
                TotalAmountInclVAT := 0;
                //VAT UAE Localization Start -->
                IsFCY := FALSE;
                IF (GLSetup."LCY Code" <> Header."Currency Code") AND ("Currency Code" <> '') THEN 
                    IsFCY := True;
                IF IsFCY THEN 
                    CurrencyFactor := "Currency Factor"
                ELSE
                    CurrencyFactor := 1;
                //VAT UAE Localization Stop <--        
            end;

            trigger OnPreDataItem()
            begin
                FirstLineHasBeenOutput := false;
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
                    field(LogInteraction;LogInteraction)
                    {
                        ApplicationArea = Basic,Suite;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies that interactions with the contact are logged.';
                    }
                    field(ArchiveDocument;ArchiveDocument)
                    {
                        ApplicationArea = Basic,Suite;
                        Caption = 'Archive Document';
                        ToolTip = 'Specifies if the document is archived after you preview or print it.';

                        trigger OnValidate()
                        begin
                            if not ArchiveDocument then
                              LogInteraction := false;
                        end;
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
            ArchiveDocument := SalesSetup."Archive Quotes" <> SalesSetup."Archive Quotes"::Never;
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
        CompanyInfo.SETAUTOCALCFIELDS(Picture);
        CompanyInfo.GET;
        SalesSetup.GET;
        CompanyInfo.VerifyAndSetPaymentInfo;
    end;

    trigger OnPreReport()
    begin
        if Header.GETFILTERS = '' then
          ERROR(NoFilterSetErr);

        if not CurrReport.USEREQUESTPAGE then
          InitLogInteraction;

        CompanyLogoPosition := SalesSetup."Logo Position on Documents";
    end;

    var
        SalesConfirmationLbl: Label 'Sales Quote';
        YourEstimateLbl: Label 'Your Estimate';
        EstimateLbl: Label 'Estimate';
        SalespersonLbl: Label 'Sales person';
        CompanyInfoBankAccNoLbl: Label 'Account No.';
        CompanyInfoBankNameLbl: Label 'Bank';
        CompanyInfoGiroNoLbl: Label 'Giro No.';
        CompanyInfoPhoneNoLbl: Label 'Phone No.';
        CopyLbl: Label 'Copy';
        EMailLbl: Label 'Email';
        HomePageLbl: Label 'Home Page';
        InvDiscBaseAmtLbl: Label 'Invoice Discount Base Amount';
        InvDiscountAmtLbl: Label 'Invoice Discount';
        InvNoLbl: Label 'No.';
        LineAmtAfterInvDiscLbl: Label 'Payment Discount on VAT';
        LocalCurrencyLbl: Label 'Local Currency';
        PageLbl: Label 'Page';
        PaymentTermsDescLbl: Label 'Payment Terms';
        PaymentMethodDescLbl: Label 'Payment Method';
        PostedShipmentDateLbl: Label 'Shipment Date';
        SalesInvLineDiscLbl: Label 'Discount %';
        ShipmentLbl: Label 'Shipment';
        ShiptoAddrLbl: Label 'Ship-to Address';
        ShptMethodDescLbl: Label 'Shipment Method';
        SubtotalLbl: Label 'Subtotal';
        TotalLbl: Label 'Total';
        UnitLbl: Label 'Unit';
        VATAmtSpecificationLbl: Label 'VAT Amount Specification';
        VATAmtLbl: Label 'VAT Amount';
        VATAmountLCYLbl: Label 'VAT Amount (LCY)';
        VATBaseLbl: Label 'VAT Base';
        VATBaseLCYLbl: Label 'VAT Base (LCY)';
        VATClausesLbl: Label 'VAT Clause';
        VATIdentifierLbl: Label 'VAT Identifier';
        VATPercentageLbl: Label 'VAT %';
        TempBlobWorkDescription: Record TempBlob;
        GLSetup: Record "General Ledger Setup";
        ShipmentMethod: Record "Shipment Method";
        PaymentTerms: Record "Payment Terms";
        PaymentMethod: Record "Payment Method";
        SalespersonPurchaser: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        SalesSetup: Record "Sales & Receivables Setup";
        Cust: Record Customer;
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        VATClause: Record "VAT Clause";
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        IdentityManagement: Codeunit "Identity Management";
        WorkDescriptionLine: Text;
        CustAddr: array [8] of Text[50];
        ShipToAddr: array [8] of Text[50];
        CompanyAddr: array [8] of Text[50];
        SalesPersonText: Text[30];
        TotalText: Text[50];
        TotalExclVATText: Text[50];
        TotalInclVATText: Text[50];
        LineDiscountPctText: Text;
        FormattedVATPct: Text;
        FormattedUnitPrice: Text;
        FormattedQuantity: Text;
        FormattedLineAmount: Text;
        MoreLines: Boolean;
        ShowWorkDescription: Boolean;
        CopyText: Text[30];
        ShowShippingAddr: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        TotalSubTotal: Decimal;
        TotalAmount: Decimal;
        TotalAmountInclVAT: Decimal;
        TotalAmountVAT: Decimal;
        TotalInvDiscAmount: Decimal;
        TotalPaymentDiscOnVAT: Decimal;
        TransHeaderAmount: Decimal;
        [InDataSet]
        LogInteractionEnable: Boolean;
        CompanyLogoPosition: Integer;
        FirstLineHasBeenOutput: Boolean;
        CalculatedExchRate: Decimal;
        ExchangeRateText: Text;
        ExchangeRateTxt: Label 'Exchange rate: %1/%2', Comment='%1 and %2 are both amounts.';
        VATBaseLCY: Decimal;
        VATAmountLCY: Decimal;
        TotalVATBaseLCY: Decimal;
        TotalVATAmountLCY: Decimal;
        PrevLineAmount: Decimal;
        NoFilterSetErr: Label 'You must specify one or more filters to avoid accidently printing all documents.';
        PmtDiscText: Text;
        FromLbl: Label 'From';
        EstimateForLbl: Label 'Estimate for';
        QuestionsLbl: Label 'Questions?';
        ThanksLbl: Label 'Thank You!';
        GreetingLbl: Label 'Hello';
        ClosingLbl: Label 'Sincerely';
        PmtDiscTxt: Label 'If we receive the payment before %1, you are eligible for a 2% payment discount.', Comment='%1 = Discount Due Date %2 = value of Payment Discount % ';
        BodyLbl: Label 'Thank you for your business. Your quote is attached to this message.';
        EstimateBodyLbl: Label 'As promised, here''s our estimate. Please see the attached estimate for details.';
        QuoteValidToDateLbl: Label 'Valid until';
        QtyLbl: Label 'Qty', Comment='Short form of Quantity';
        PriceLbl: Label 'Price';
        PricePerLbl: Label 'Price per';
        //UAE VAT Localization Start -->
        CurrencyFactor : Decimal;
        IsFCY : Boolean;
        //UAE VAT Localization Start <--
    local procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(1) <> '';
    end;

    local procedure DocumentCaption(): Text[250]
    begin
        exit(SalesConfirmationLbl);
    end;

    procedure InitializeRequest(NewLogInteraction: Boolean)
    begin
        LogInteraction := NewLogInteraction;
    end;

    local procedure FormatDocumentFields(SalesHeader: Record "Sales Header")
    begin
        with SalesHeader do begin
          FormatDocument.SetTotalLabels(GetCurrencySymbol,TotalText,TotalInclVATText,TotalExclVATText);
          FormatDocument.SetSalesPerson(SalespersonPurchaser,"Salesperson Code",SalesPersonText);
          FormatDocument.SetPaymentTerms(PaymentTerms,"Payment Terms Code","Language Code");
          FormatDocument.SetPaymentMethod(PaymentMethod,"Payment Method Code");
          FormatDocument.SetShipmentMethod(ShipmentMethod,"Shipment Method Code","Language Code");
        end;
    end;

    local procedure CreateReportTotalLines()
    begin
        ReportTotalsLine.DELETEALL;
        if (TotalInvDiscAmount <> 0) or (TotalAmountVAT <> 0) then
          ReportTotalsLine.Add(SubtotalLbl,TotalSubTotal,true,false,false);
        if TotalInvDiscAmount <> 0 then begin
          ReportTotalsLine.Add(InvDiscountAmtLbl,TotalInvDiscAmount,false,false,false);
          if TotalAmountVAT <> 0 then
            ReportTotalsLine.Add(TotalExclVATText,TotalAmount,true,false,false);
        end;
        if TotalAmountVAT <> 0 then
          ReportTotalsLine.Add(VATAmountLine.VATAmountText,TotalAmountVAT,false,true,false);
    end;

    [IntegrationEvent(false, false)]
    procedure OnBeforeArchiving(var CancelArchiving: Boolean)
    begin
    end;
}

