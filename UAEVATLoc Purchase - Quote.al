report 70140936 "UAEVATLoc Purchase - Quote"
{
    // version NAVW112.00

    DefaultLayout = RDLC;
    RDLCLayout = './UAEVATLoc Purchase - Quote.rdl';
    Caption = 'Purchase - Quote';
    PreviewMode = PrintLayout;
    
    dataset
    {
        dataitem("Purchase Header";"Purchase Header")
        {
            DataItemTableView = SORTING("Document Type","No.") WHERE("Document Type"=CONST(Quote));
            RequestFilterFields = "No.","Buy-from Vendor No.","No. Printed";
            RequestFilterHeading = 'Purchase Quote';
            column(DocType_PurchHead;"Document Type")
            {
            }
            column(PurchHeadNo;"No.")
            {
            }
            column(CompanyInfoPhoneNoCap;CompanyInfoPhoneNoCapLbl)
            {
            }
            column(CompanyInfoVATRegNoCap;CompanyInfoVATRegNoCapLbl)
            {
            }
            column(CompanyInfoGiroNoCap;CompanyInfoGiroNoCapLbl)
            {
            }
            column(CompanyInfoBankNameCap;CompanyInfoBankNameCapLbl)
            {
            }
            column(CompInfoBankAccNoCap;CompInfoBankAccNoCapLbl)
            {
            }
            column(DocumentDateCap;DocumentDateCapLbl)
            {
            }
            column(PageNoCaption;PageNoCaptionLbl)
            {
            }
            column(ShipmentMethodDescCap;ShipmentMethodDescCapLbl)
            {
            }
            column(PurchLineVendItemNoCap;PurchLineVendItemNoCapLbl)
            {
            }
            column(PurchaseLineDescCap;PurchaseLineDescCapLbl)
            {
            }
            column(PurchaseLineQuantityCap;PurchaseLineQuantityCapLbl)
            {
            }
            column(PurchaseLineUOMCaption;PurchaseLineUOMCaptionLbl)
            {
            }
            column(PurchaseLineNoCaption;PurchaseLineNoCaptionLbl)
            {
            }
            column(PurchaserTextCaption;PurchaserTextCaptionLbl)
            {
            }
            column(ReferenceTextCaption;ReferenceTextCaptionLbl)
            {
            }
            column(HomePageCaption;HomePageCaptionLbl)
            {
            }
            column(EMailCaption;EMailCaptionLbl)
            {
            }
            column(VatRegistrationNoCaption;VatRegistrationNoCaptionLbl)
            {
            }
            dataitem(CopyLoop;"Integer")
            {
                DataItemTableView = SORTING(Number);
                dataitem(PageLoop;"Integer")
                {
                    DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                    column(PurchaseQuoteCopyText;STRSUBSTNO(Text002,CopyText))
                    {
                    }
                    column(VendAddr1;VendAddr[1])
                    {
                    }
                    column(CompanyAddr1;CompanyAddr[1])
                    {
                    }
                    column(VendAddr2;VendAddr[2])
                    {
                    }
                    column(CompanyAddr2;CompanyAddr[2])
                    {
                    }
                    column(VendAddr3;VendAddr[3])
                    {
                    }
                    column(CompanyAddr3;CompanyAddr[3])
                    {
                    }
                    column(VendAddr4;VendAddr[4])
                    {
                    }
                    column(CompanyAddr4;CompanyAddr[4])
                    {
                    }
                    column(VendAddr5;VendAddr[5])
                    {
                    }
                    column(CompanyInfoPhoneNo;CompanyInfo."Phone No.")
                    {
                        IncludeCaption = false;
                    }
                    column(VendAddr6;VendAddr[6])
                    {
                    }
                    column(CompanyInfoVatRegNo;CompanyInfo."VAT Registration No.")
                    {
                        IncludeCaption = false;
                    }
                    column(CompanyInfoGiroNo;CompanyInfo."Giro No.")
                    {
                        IncludeCaption = false;
                    }
                    column(CompanyInfoBankName;CompanyInfo."Bank Name")
                    {
                        IncludeCaption = false;
                    }
                    column(CompanyInfoBankAccNo;CompanyInfo."Bank Account No.")
                    {
                        IncludeCaption = false;
                    }
                    column(CompanyInfoHomePage;CompanyInfo."Home Page")
                    {
                    }
                    column(CompanyInfoEMail;CompanyInfo."E-Mail")
                    {
                    }
                    column(PaytoVendNo_PurchHdr;"Purchase Header"."Pay-to Vendor No.")
                    {
                    }
                    column(DocDate_PurchHdr;FORMAT("Purchase Header"."Document Date",0,4))
                    {
                    }
                    column(VatNoText;VATNoText)
                    {
                    }
                    column(VatTRegNo_PurchHdr;"Purchase Header"."VAT Registration No.")
                    {
                    }
                    column(ExpctRecpDt_PurchHdr;FORMAT("Purchase Header"."Expected Receipt Date"))
                    {
                    }
                    column(PurchaserText;PurchaserText)
                    {
                    }
                    column(SalesPurchPersonName;SalesPurchPerson.Name)
                    {
                    }
                    column(No1_PurchaseHdr;"Purchase Header"."No.")
                    {
                    }
                    column(ReferenceText;ReferenceText)
                    {
                    }
                    column(YourRef_PurchHdr;"Purchase Header"."Your Reference")
                    {
                    }
                    column(VendAddr7;VendAddr[7])
                    {
                    }
                    column(VendAddr8;VendAddr[8])
                    {
                    }
                    column(CompanyAddr5;CompanyAddr[5])
                    {
                    }
                    column(CompanyAddr6;CompanyAddr[6])
                    {
                    }
                    column(ShipMethodDesc;ShipmentMethod.Description)
                    {
                    }
                    column(OutpuNo;OutputNo)
                    {
                    }
                    column(BuyfromVendNo_PurchHdr;"Purchase Header"."Buy-from Vendor No.")
                    {
                    }
                    column(ExpectedDateCaption;ExpectedDateCaptionLbl)
                    {
                    }
                    column(QuoteNoCaption;QuoteNoCaptionLbl)
                    {
                    }
                    column(PaytoVendNo_PurchHdrCaption;"Purchase Header".FIELDCAPTION("Pay-to Vendor No."))
                    {
                    }
                    column(BuyfromVendNo_PurchHdrCaption;"Purchase Header".FIELDCAPTION("Buy-from Vendor No."))
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
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING(Number) WHERE(Number=FILTER(1..));
                        column(DimText;DimText)
                        {
                        }
                        column(Number_DimensionLoop1;Number)
                        {
                        }
                        column(HeaderDimensionsCaption;HeaderDimensionsCaptionLbl)
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
                                DimText := STRSUBSTNO('%1 - %2',DimSetEntry1."Dimension Code",DimSetEntry1."Dimension Value Code")
                              else
                                DimText :=
                                  STRSUBSTNO(
                                    '%1; %2 - %3',DimText,
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
                    dataitem("Purchase Line";"Purchase Line")
                    {
                        DataItemLink = "Document Type"=FIELD("Document Type"),"Document No."=FIELD("No.");
                        DataItemLinkReference = "Purchase Header";
                        DataItemTableView = SORTING("Document Type","Document No.","Line No.");

                        trigger OnPreDataItem()
                        begin
                            CurrReport.BREAK;
                        end;
                    }
                    dataitem(RoundLoop;"Integer")
                    {
                        DataItemTableView = SORTING(Number);
                        column(ShowInternalInfo;ShowInternalInfo)
                        {
                        }
                        column(ArchiveDocument;ArchiveDocument)
                        {
                        }
                        column(LogInteraction;LogInteraction)
                        {
                        }
                        column(Type_PurchaseLine;FORMAT("Purchase Line".Type,0,2))
                        {
                            IncludeCaption = false;
                        }
                        column(LineNo_PurchaseLine;"Purchase Line"."Line No.")
                        {
                            IncludeCaption = false;
                        }
                        column(Description_PurchaseLine;"Purchase Line".Description)
                        {
                            IncludeCaption = false;
                        }
                        column(Quantity_PurchaseLine;"Purchase Line".Quantity)
                        {
                            IncludeCaption = false;
                        }
                        column(UnitOfMeasure_PurchaseLine;"Purchase Line"."Unit of Measure")
                        {
                            IncludeCaption = false;
                        }
                        column(ExpcRecpDt_PurchHdr;FORMAT("Purchase Line"."Expected Receipt Date"))
                        {
                            IncludeCaption = false;
                        }
                        column(No_PurchaseLine;"Purchase Line"."No.")
                        {
                        }
                        column(VendItemNo_PurchLine;"Purchase Line"."Vendor Item No.")
                        {
                            IncludeCaption = false;
                        }
                        column(PurchaseLineNoOurNoCap;PurchaseLineNoOurNoCapLbl)
                        {
                        }
                        dataitem(DimensionLoop2;"Integer")
                        {
                            DataItemTableView = SORTING(Number) WHERE(Number=FILTER(1..));
                            column(DimText1;DimText)
                            {
                            }
                            column(Number2_DimensionLoop;Number)
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
                                    DimText := STRSUBSTNO('%1 - %2',DimSetEntry2."Dimension Code",DimSetEntry2."Dimension Value Code")
                                  else
                                    DimText :=
                                      STRSUBSTNO(
                                        '%1; %2 - %3',DimText,
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
                            end;
                        }

                        trigger OnAfterGetRecord()
                        begin
                            if Number = 1 then
                              PurchLine.FIND('-')
                            else
                              PurchLine.NEXT;
                            "Purchase Line" := PurchLine;
                            if ("Purchase Line"."Cross-Reference No." <> '') and (not ShowInternalInfo) then
                              "Purchase Line"."No." := "Purchase Line"."Cross-Reference No.";

                            DimSetEntry2.SETRANGE("Dimension Set ID","Purchase Line"."Dimension Set ID");
                        end;

                        trigger OnPostDataItem()
                        begin
                            PurchLine.DELETEALL;
                        end;

                        trigger OnPreDataItem()
                        begin
                            MoreLines := PurchLine.FIND('+');
                            while MoreLines and (PurchLine.Description = '') and (PurchLine."Description 2" = '') and
                                  (PurchLine."No." = '') and (PurchLine.Quantity = 0) and
                                  (PurchLine.Amount = 0)
                            do
                              MoreLines := PurchLine.NEXT(-1) <> 0;
                            if not MoreLines then
                              CurrReport.BREAK;
                            PurchLine.SETRANGE("Line No.",0,PurchLine."Line No.");
                            SETRANGE(Number,1,PurchLine.COUNT);
                        end;
                    }
                    dataitem(Total3;"Integer")
                    {
                        DataItemTableView = SORTING(Number) WHERE(Number=CONST(1));
                        column(SelltoCustNo_PurchHdr;"Purchase Header"."Sell-to Customer No.")
                        {
                        }
                        column(ShipToAddr1;ShipToAddr[1])
                        {
                        }
                        column(ShipToAddr2;ShipToAddr[2])
                        {
                        }
                        column(ShipToAddr3;ShipToAddr[3])
                        {
                        }
                        column(ShipToAddr4;ShipToAddr[4])
                        {
                        }
                        column(ShipToAddr5;ShipToAddr[5])
                        {
                        }
                        column(ShipToAddr6;ShipToAddr[6])
                        {
                        }
                        column(ShipToAddr7;ShipToAddr[7])
                        {
                        }
                        column(ShipToAddr8;ShipToAddr[8])
                        {
                        }
                        column(ShiptoAddressCaption;ShiptoAddressCaptionLbl)
                        {
                        }

                        trigger OnPreDataItem()
                        begin
                            if ("Purchase Header"."Sell-to Customer No." = '') and (ShipToAddr[1] = '') then
                              CurrReport.BREAK;
                        end;
                    }
                }

                trigger OnAfterGetRecord()
                begin
                    CLEAR(PurchLine);
                    CLEAR(PurchPost);
                    PurchLine.DELETEALL;
                    PurchPost.GetPurchLines("Purchase Header",PurchLine,0);

                    if Number > 1 then begin
                      CopyText := FormatDocument.GetCOPYText;
                      OutputNo += 1;
                    end;
                    CurrReport.PAGENO := 1;
                end;

                trigger OnPostDataItem()
                begin
                    if not CurrReport.PREVIEW then
                      CODEUNIT.RUN(CODEUNIT::"Purch.Header-Printed","Purchase Header");
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

                FormatAddressFields("Purchase Header");
                FormatDocumentFields("Purchase Header");

                DimSetEntry1.SETRANGE("Dimension Set ID","Dimension Set ID");

                if not CurrReport.PREVIEW then begin
                  if ArchiveDocument then
                    ArchiveManagement.StorePurchDocument("Purchase Header",LogInteraction);

                  if LogInteraction then begin
                    CALCFIELDS("No. of Archived Versions");
                    SegManagement.LogDocument(
                      11,"No.","Doc. No. Occurrence","No. of Archived Versions",DATABASE::Vendor,"Pay-to Vendor No.",
                      "Purchaser Code",'',"Posting Description",'');
                  end;
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
                        ApplicationArea = Advanced;
                        Caption = 'No. of Copies';
                        ToolTip = 'Specifies how many copies of the document to print.';
                    }
                    field(ShowInternalInfo;ShowInternalInfo)
                    {
                        ApplicationArea = Advanced;
                        Caption = 'Show Internal Information';
                        ToolTip = 'Specifies if you want the printed report to show information that is only for internal use.';
                    }
                    field(ArchiveDocument;ArchiveDocument)
                    {
                        ApplicationArea = Advanced;
                        Caption = 'Archive Document';
                        ToolTip = 'Specifies if the document is archived after you print it.';

                        trigger OnValidate()
                        begin
                            if not ArchiveDocument then
                              LogInteraction := false;
                        end;
                    }
                    field(LogInteraction;LogInteraction)
                    {
                        ApplicationArea = Advanced;
                        Caption = 'Log Interaction';
                        Enabled = LogInteractionEnable;
                        ToolTip = 'Specifies if you want the program to log this interaction.';

                        trigger OnValidate()
                        begin
                            if LogInteraction then
                              ArchiveDocument := ArchiveDocumentEnable;
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

            case PurchSetup."Archive Quotes" of
              PurchSetup."Archive Quotes"::Never:
                ArchiveDocument := false;
              PurchSetup."Archive Quotes"::Always:
                ArchiveDocument := true;
            end;
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
        CompanyInfo.GET;
        PurchSetup.GET;
    end;

    trigger OnPreReport()
    begin
        if not CurrReport.USEREQUESTPAGE then
          InitLogInteraction;
    end;

    var
        Text002: Label 'Purchase - Quote %1', Comment='%1 = Document No.';
        ShipmentMethod: Record "Shipment Method";
        SalesPurchPerson: Record "Salesperson/Purchaser";
        CompanyInfo: Record "Company Information";
        PurchLine: Record "Purchase Line" temporary;
        DimSetEntry1: Record "Dimension Set Entry";
        DimSetEntry2: Record "Dimension Set Entry";
        RespCenter: Record "Responsibility Center";
        Language: Record Language;
        PurchSetup: Record "Purchases & Payables Setup";
        PurchPost: Codeunit "Purch.-Post";
        FormatAddr: Codeunit "Format Address";
        FormatDocument: Codeunit "Format Document";
        SegManagement: Codeunit SegManagement;
        ArchiveManagement: Codeunit ArchiveManagement;
        VendAddr: array [8] of Text[50];
        ShipToAddr: array [8] of Text[50];
        CompanyAddr: array [8] of Text[50];
        PurchaserText: Text[30];
        VATNoText: Text[80];
        ReferenceText: Text[80];
        MoreLines: Boolean;
        NoOfCopies: Integer;
        NoOfLoops: Integer;
        CopyText: Text[30];
        DimText: Text[120];
        OldDimText: Text[75];
        ShowInternalInfo: Boolean;
        Continue: Boolean;
        ArchiveDocument: Boolean;
        LogInteraction: Boolean;
        OutputNo: Integer;
        [InDataSet]
        ArchiveDocumentEnable: Boolean;
        [InDataSet]
        LogInteractionEnable: Boolean;
        ExpectedDateCaptionLbl: Label 'Expected Date';
        QuoteNoCaptionLbl: Label 'Quote No.';
        HeaderDimensionsCaptionLbl: Label 'Header Dimensions';
        PurchaseLineNoOurNoCapLbl: Label 'Our No.';
        LineDimensionsCaptionLbl: Label 'Line Dimensions';
        ShiptoAddressCaptionLbl: Label 'Ship-to Address';
        CompanyInfoPhoneNoCapLbl: Label 'Phone No.';
        CompanyInfoVATRegNoCapLbl: Label 'VAT Reg. No.';
        CompanyInfoGiroNoCapLbl: Label 'Giro No.';
        CompanyInfoBankNameCapLbl: Label 'Bank';
        CompInfoBankAccNoCapLbl: Label 'Account No.';
        DocumentDateCapLbl: Label 'Document Date';
        PageNoCaptionLbl: Label 'Page';
        ShipmentMethodDescCapLbl: Label 'Shipment Method';
        PurchLineVendItemNoCapLbl: Label 'Vendor Item No.';
        PurchaseLineDescCapLbl: Label 'Description';
        PurchaseLineQuantityCapLbl: Label 'Quantity';
        PurchaseLineUOMCaptionLbl: Label 'Unit of Measure';
        PurchaseLineNoCaptionLbl: Label 'Item No.';
        PurchaserTextCaptionLbl: Label 'Purchaser';
        ReferenceTextCaptionLbl: Label 'Your Reference';
        HomePageCaptionLbl: Label 'Home Page';
        EMailCaptionLbl: Label 'Email';
        VatRegistrationNoCaptionLbl: Label 'VAT Registration No.';
        //UAE VAT Localization Start -->
        GLSetup: Record "General Ledger Setup";
        CurrencyFactor : Decimal;
        IsFCY : Boolean;
        //UAE VAT Localization Start <--

    procedure IntializeRequest(NewNoOfCopies: Integer;NewShowInternalInfo: Boolean;NewArchiveDocument: Boolean;NewLogInteraction: Boolean)
    begin
        NoOfCopies := NewNoOfCopies;
        ShowInternalInfo := NewShowInternalInfo;
        ArchiveDocument := NewArchiveDocument;
        LogInteraction := NewLogInteraction;
    end;

    local procedure InitLogInteraction()
    begin
        LogInteraction := SegManagement.FindInteractTmplCode(11) <> '';
    end;

    local procedure FormatAddressFields(PurchaseHeader: Record "Purchase Header")
    begin
        FormatAddr.GetCompanyAddr(PurchaseHeader."Responsibility Center",RespCenter,CompanyInfo,CompanyAddr);
        FormatAddr.PurchHeaderPayTo(VendAddr,PurchaseHeader);
        FormatAddr.PurchHeaderShipTo(ShipToAddr,PurchaseHeader);
    end;

    local procedure FormatDocumentFields(PurchaseHeader: Record "Purchase Header")
    begin
        with PurchaseHeader do begin
          FormatDocument.SetPurchaser(SalesPurchPerson,"Purchaser Code",PurchaserText);
          FormatDocument.SetShipmentMethod(ShipmentMethod,"Shipment Method Code","Language Code");
          ReferenceText := FormatDocument.SetText("Your Reference" <> '',FIELDCAPTION("Your Reference"));
          VATNoText := FormatDocument.SetText("VAT Registration No." <> '',FIELDCAPTION("VAT Registration No."));
        end;
    end;
}

