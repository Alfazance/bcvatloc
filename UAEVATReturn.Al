page 70140922 "UAE VAT Return"
{
    
    PageType =  Card;
    //SourceTable = Integer;
    Caption = 'UAE VAT Return';
    //SourceTableView = sorting(Number) order(ascending) Where(Number = const(1));
    UsageCategory = Tasks;
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            field(UAEStartDate; StartDate)
            {
                Caption = 'Start Date';
                ToolTip = 'Start date of VAT return period';
                Width = 10;
            }
            field(UAEEndDate; EndDate)
            {
                Caption = 'End Date';
                ToolTip = 'Closing date of VAT return period';
                Width = 5;
            }
            group(UAEOutputGroup)
            {
                Caption = 'VAT on Sales and All other Outputs';
                grid(Grid10)
                {
                    GridLayout = Rows ;
                    Group(UAEOutPut)
                    {
                        Caption = 'Output';
                        Editable = false;
                        Group(UAESRSAbuDabhi)
                        {
                            Caption = 'Standard Rated Supplies in Abu-Dhabi*';
                            grid("11")
                            {
                                GridLayout = Rows;
                                field(UAEAmount; ABS(Amount[1]))
                                {
                                    Caption = 'Amount';
                                    
                                }
                                field(UAEVATAmount; ABS(VATAmount[1]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment; ABS(Adjustment[1]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }    
                        Group(UAESRSDubai)
                        {
                            Caption = 'Standard Rated Supplies in Dubai*';
                            grid("12")
                            {
                                GridLayout = Rows;
                                field(UAEAmount2; ABS(Amount[2]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount2; ABS(VATAmount[2]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment2; ABS(Adjustment[2]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAESRSSharjah)
                        {
                            Caption = 'Standard Rated Supplies in Sharjah*';
                            grid("13")
                            {
                                GridLayout = Rows;
                                field(UAEAmount3; ABS(Amount[3]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount3; ABS(VATAmount[3]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment3; ABS(Adjustment[3]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAESRSAjman)
                        {
                            Caption = 'Standard Rated Supplies in Ajman*';
                            grid("14")
                            {
                                GridLayout = Rows;
                                field(UAEAmount4; ABS(Amount[4]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount4; ABS(VATAmount[4]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment4; ABS(Adjustment[4]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAESRSUmmAlQuwain)
                        {
                            Caption = 'Standard Rated Supplies in UmmAlQuwain*';
                            grid("15")
                            {
                                GridLayout = Rows;
                                field(UAEAmount5; ABS(Amount[5]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount5; ABS(VATAmount[5]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment5; ABS(Adjustment[5]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAESRSRasAlKhaimah)
                        {
                            Caption = 'Standard Rated Supplies in RasAlKhaimah*';
                            grid("16")
                            {
                                GridLayout = Rows;
                                field(UAEAmount6; ABS(Amount[6]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount6; ABS(VATAmount[6]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment6; ABS(Adjustment[6]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAESRSFujairah)
                        {
                            Caption = 'Standard Rated Supplies in Fujairah*';
                            grid("17")
                            {
                                GridLayout = Rows;
                                field(UAEAmount7; ABS(Amount[7]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount7; ABS(VATAmount[7]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment7; ABS(Adjustment[7]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAETAXRefunds)
                        {
                            Caption = 'Tax Refunds provided to Tourists under the Tax Refunds for Tourists Scheme';
                            grid("18")
                            {
                                GridLayout = Rows;
                                field(UAEAmount8; ABS(Amount[8]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount8; ABS(VATAmount[8]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment8; ABS(Adjustment[8]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAEReverseCharge)
                        {
                            Caption = 'Supplies subject to the reverse charge provisions';
                            grid("19")
                            {
                                GridLayout = Rows;
                                field(UAEAmount9; ABS(Amount[9]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount9; ABS(VATAmount[9]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment9; ABS(Adjustment[9]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAEZeroRated)
                        {
                            Caption = 'Zero-rated supplies';
                            grid("110")
                            {
                                GridLayout = Rows;
                                field(UAEAmount10; ABS(Amount[10]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount10; ABS(VATAmount[10]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment10; ABS(Adjustment[10]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAEExemptsupplies)
                        {
                            Caption = 'Exempt supplies';
                            grid("111")
                            {
                                GridLayout = Rows;
                                field(UAEAmount11; ABS(Amount[11]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount11; ABS(VATAmount[11]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment11; ABS(Adjustment[11]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAEGoodsImportedUAE)
                        {
                            Caption = 'Goods imported into the UAE';
                            grid("112")
                            {
                                GridLayout = Rows;
                                field(UAEAmount12; ABS(Amount[12]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount12; ABS(VATAmount[12]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment12; ABS(Adjustment[12]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAEAdjustmentGoodsImportedUAE)
                        {
                            Caption = 'Adjustments to goods imported into the UAE';
                            grid("113")
                            {
                                GridLayout = Rows;
                                field(UAEAmount13; ABS(Amount[13]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount13; ABS(VATAmount[13]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment13; ABS(Adjustment[13]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                        Group(UAETotals)
                        {
                            Caption = 'Totals';
                            grid("114")
                            {
                                GridLayout = Rows;
                                field(UAEAmount14; ABS(Amount[14]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEVATAmount14; ABS(VATAmount[14]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEAdjustment14; ABS(Adjustment[14]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }    
                        }
                    }    
                }    
            }
            group(UAEInputGroup)
            {
                Caption = 'VAT on Expenses and all other Inputs';
                grid(Grid20)
                {
                    GridLayout = Rows ;
                    group(UAEInput)
                    {
                        Caption = 'Input';
                        Editable = false;
                        group(UAEStandardRatedExp)
                        {
                            Caption = 'Standard rated expenses';
                            grid("1")
                            {
                                GridLayout = Rows;
                                field(UAEInputAmount1;InputAmount[1])
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEInputVATAmount1;InputVATAmount[1])
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEInputAdjustment1;Adjustment[1])
                                {
                                    Caption = 'Adjustment';
                                }
                            }
                        }
                        group(UAEReverseChargeExpense)
                        {
                            Caption = 'Supplies subject to the reverse charge provisions';
                            grid("2")
                            {
                                GridLayout = Rows;
                                field(UAEInputAmount2;InputAmount[2])
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEInputVATAmount2;InputVATAmount[2])
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEInputAdjustment2;InputAdjustment[2])
                                {
                                    Caption = 'Adjustment';
                                }
                            }
                        }
                        group(UAEInputTotal)
                        {
                            Caption = 'Totals';
                            grid("3")
                            {
                                GridLayout = Rows;    
                                field(UAEInputAmount3;InputAmount[3])
                                {
                                    Caption = 'Amount';
                                }
                                field(UAEInputVATAmount3;InputVATAmount[3])
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAEInputAdjustment3;InputAdjustment[3])
                                {
                                    Caption = 'Adjustment';
                                }    
                            }
                        }
                    }    
                }    
            }
            group(UAENetTotalDue)
            {
                Caption = 'Net Total Due';
                grid(Grid30)
                {
                    GridLayout = Rows ;
                    group(UAENetTotal)
                    {
                        Editable = false;
                        group(UAEOutputDue)
                        {
                            Caption = 'Total value of due tax for the period';
                            grid("31")
                            {
                                GridLayout = Rows;
                                field(UAETotalAmount1;ABS(TotalAmount[1]))
                                {
                                    Caption = 'Amount';
                                }
                                field(UAETotalVATAmount1;ABS(TotalVATAmount[1]))
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAETotalAdjustment1;ABS(TotalAdjustment[1]))
                                {
                                    Caption = 'Adjustment';
                                }
                            }
                        }
                        group(UAEInputDue)
                        {
                            Caption = 'Total value of recoverable tax for the period';
                            grid("32")
                            {
                                GridLayout = Rows;
                                field(UAETotalAmount2;TotalAmount[2])
                                {
                                    Caption = 'Amount';
                                }
                                field(UAETotalVATAmount2;TotalVATAmount[2])
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAETotalAdjustment2;TotalAdjustment[2])
                                {
                                    Caption = 'Adjustment';
                                }
                            }
                        }
                        group(UAENetDue)
                        {
                            Caption = 'Payable tax for the period';
                            grid("33")
                            {
                                GridLayout = Rows;    
                                field(UAETotalAmount3;TotalAmount[3])
                                {
                                    Caption = 'Amount';
                                }
                                field(UAETotalVATAmount3;TotalVATAmount[3])
                                {
                                    Caption = 'VAT Amount';
                                }
                                field(UAETotalAdjustment3;TotalAdjustment[3])
                                {
                                    Caption = 'Adjustment';
                                }    
                            }
                        }
                    }    
                }    
            }        
        }
    }
    
    actions
    {
        area(processing)
        {
            action("UAE Calculate")
            {
                Caption = 'Calculate';
                ToolTip = 'Click to calculate the VAT return values';
                Promoted = TRUE;
                PromotedIsBig = true;
                Image = Calculate;
                trigger OnAction()
                var 
                    VATPostingSetup : Record "VAT Posting Setup";
                    Type_G : Option  ,Purchase,Sale,Settlement;
                    i : Integer;
                    VATReturnGroupCode : Record "UAE VAT Group Code";
                    VATCalculationType : Option "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax";
                begin
                    IF (StartDate = 0D) or (EndDate = 0D) THEN 
                        Error('Start Date and End Date cannot be empty');
                    IF StartDate > EndDate THEN
                        Error('Start Date cannot be greater then End Date');
                    CLEAR(Amount);
                    CLEAR(Amount);
                    CLEAR(VATAmount);
                    CLEAR(Adjustment);
                    CLEAR(InputAmount);
                    CLEAR(InputAdjustment);
                    CLEAR(InputVATAmount);
                    CLEAR(TotalAdjustment);
                    CLEAR(TotalAmount);
                    CLEAR(TotalVATAmount);
                    //------------------------------------**Sale**---------------------
                    i := 0;
                    //1A Calculation
                    i := 1; 
                    CalculateVATAmounts(Type_G::Sale,i,'AUH','SR');
                    Amount[14] += Amount[i];
                    VATAmount[14] += VATAmount[i];
                    Adjustment[14] += Adjustment[i];
                    //1b Calculation
                    i := 2; 
                    CalculateVATAmounts(Type_G::Sale,i,'DXB','SR');
                    Amount[14] += Amount[i];
                    VATAmount[14] += VATAmount[i];
                    Adjustment[14] += Adjustment[i];
                    //1c Calculation
                    i := 3; 
                    CalculateVATAmounts(Type_G::Sale,i,'SHJ','SR');
                    Amount[14] += Amount[i];
                    VATAmount[14] += VATAmount[i];
                    Adjustment[14] += Adjustment[i];
                    //1d Calculation
                    i := 4; 
                    CalculateVATAmounts(Type_G::Sale,i,'AJM','SR');
                    Amount[14] += Amount[i];
                    VATAmount[14] += VATAmount[i];
                    Adjustment[14] += Adjustment[i];
                    //1e Calculation
                    i := 5; 
                    CalculateVATAmounts(Type_G::Sale,i,'UAQ','SR');
                    Amount[14] += Amount[i];
                    VATAmount[14] += VATAmount[i];
                    Adjustment[14] += Adjustment[i];
                    //1f Calculation
                    i := 6; 
                    CalculateVATAmounts(Type_G::Sale,i,'RAK','SR');  
                    Amount[14] += Amount[i];
                    VATAmount[14] += VATAmount[i];
                    Adjustment[14] += Adjustment[i];
                    //1g Calculation
                    i := 7; 
                    CalculateVATAmounts(Type_G::Sale,i,'FUJ','SR');
                    Amount[14] += Amount[i];
                    VATAmount[14] += VATAmount[i];
                    Adjustment[14] += Adjustment[i];
                    i := 8;   //TAX Refunds Tourist
                    i := 9;   //Reverse Charge Provision VAT
                    i := 10;  //ZeroRated
                    CalculateVATAmounts(Type_G::Sale,i,'','ZR'); 
                    Amount[14] += Amount[i];
                    VATAmount[14] += VATAmount[i];
                    Adjustment[14] += Adjustment[i];
                    i := 11;  //Exempted
                    CalculateVATAmounts(Type_G::Sale,i,'','');  
                    Amount[14] += Amount[i];
                    VATAmount[14] += VATAmount[i];
                    Adjustment[14] += Adjustment[i];
                    //----------------------**Purchase**-----------------------------\\

                    i := 1; //Standard Rated
                    CalculateVATAmountsInput(Type_G::Purchase,i,'','SR',VATCalculationType::"Normal VAT");
                    /*InputAdjustment[3] += InputAdjustment[i];
                    InputAmount[3] += InputAmount[i];
                    InputVATAmount[3] += InputVATAmount[i];
                    */
                    // For Full VAT
                    CalculateVATAmountsInput(Type_G::Purchase,i,'','SR',VATCalculationType::"Full VAT");
                    InputAdjustment[3] += InputAdjustment[i];
                    InputAmount[3] += InputAmount[i];
                    InputVATAmount[3] += InputVATAmount[i];

                    i := 2; //Reverse Charge             
                    CalculateVATAmountsInput(Type_G::Purchase,i,'','SR',VATCalculationType::"Reverse Charge VAT");
                    //VAT total - Reverse charge removed  
                    /*
                    InputAdjustment[3] += InputAdjustment[i];
                    InputAmount[3] += InputAmount[i];
                    InputVATAmount[3] += InputVATAmount[i];
                    */
                    //----------------------------------------**Total**----------------------//
                    i := 1;
                    TotalAdjustment[i] := Adjustment[14];
                    TotalAmount[i] := Amount[14];
                    TotalVATAmount[i] := VATAmount[14];

                    i := 2;
                    TotalAdjustment[i] := InputAdjustment[3];
                    TotalAmount[i] := InputAmount[3];
                    TotalVATAmount[i] := InputVATAmount[3];

                    i := 3;
                    TotalAdjustment[i] := InputAdjustment[3] + Adjustment[14];
                    TotalAmount[i] := InputAmount[3] + Amount[14];
                    TotalVATAmount[i] := InputVATAmount[3] + VATAmount[14];
    
                    MESSAGE('Vat values have been updated');
                end;
            }
            action("UAE FAF Customer Transaction")
            {
                Caption = 'FAF Customer Transaction';
                ToolTip = 'FAF audit file for Customer Transaction';
                Promoted = TRUE;
                PromotedIsBig = true;
                Image = ExportFile;
                
                trigger OnAction()
                var 
                    FAFCustomerTransaction : Report "UAE FAF Customer Transaction";
                    ExportStream : OutStream;
                    XMLParameter : Text;    
                    ExportFile : InStream;
                    ExportFileName : Text;
                    Tempblob : Record TempBlob temporary;
                begin
                    XMLParameter := FAFCustomerTransaction.RunRequestPage();
                    IF XMLParameter <> '' THEN begin
                        Tempblob.Blob.CreateInStream(ExportFile);
                        Tempblob.Blob.CreateOutStream(ExportStream);
                        FAFCustomerTransaction.SaveAs(XMLParameter, ReportFormat::Excel, ExportStream);                        
                        ExportFileName := 'FAFCustomerTransaction.xls';
                        DOWNLOADFROMSTREAM(ExportFile,'Export','','All Files (*.*)|*.*',ExportFileName) ;
                    End;    
                END;    
            }
            action("UAE FAF Supplier Transaction")
                {
                    Caption = 'FAF Supplier Transaction';
                    ToolTip = 'FAF audit file for supplier transaction';
                    Promoted = TRUE;
                    PromotedIsBig = true;
                    Image = ExportFile;
                    trigger OnAction()
                    var
                        FAFSupplierTransaction : Report "UAE FAF Supplier Transaction";
                        ExportStream : OutStream;
                        XMLParameter : Text;    
                        ExportFile : InStream;
                        ExportFileName : Text;
                        Tempblob : REcord TempBlob temporary;
                    begin
                                                
                        XMLParameter := FAFSupplierTransaction.RunRequestPage();
                        IF XMLParameter <> '' THEN BEGIN
                            Tempblob.Blob.CreateInStream(ExportFile);
                            Tempblob.Blob.CreateOutStream(ExportStream);
                            FAFSupplierTransaction.SaveAs(XMLParameter, ReportFormat::Excel, ExportStream);                        
                            ExportFileName := 'FAFSupplierTransaction.xls';
                            DOWNLOADFROMSTREAM(ExportFile,'Export','','All Files (*.*)|*.*',ExportFileName);
                        END;    
                    END;    
                }
                action("UAE FAF GL Transaction")
                {
                    Caption = 'FAF GL Transaction';
                    ToolTip = 'FAF audit file for general ledger transactions';
                    Promoted = TRUE;
                    PromotedIsBig = true;
                    Image = ExportFile;
                    trigger OnAction()
                    var
                        FAFGLTransaction : Report "UAE FAF GL Transaction";
                        ExportStream : OutStream;
                        XMLParameter : Text;    
                        ExportFile : InStream;
                        ExportFileName : Text;
                        Tempblob : Record TempBlob temporary;
                    begin
                        XMLParameter := FAFGLTransaction.RunRequestPage();
                        IF XMLParameter <> '' THEN BEGIN
                            Tempblob.Blob.CreateInStream(ExportFile);
                            Tempblob.Blob.CreateOutStream(ExportStream);
                            FAFGLTransaction.SaveAs(XMLParameter, ReportFormat::Excel, ExportStream);
                            ExportFileName := 'FAFGLTransaction.xls';
                            DOWNLOADFROMSTREAM(ExportFile,'Export','','All Files (*.*)|*.*',ExportFileName) ;        
                        END;    
                    END;    
                }
        }
    }
    local procedure CalculateVATAmounts(Type_L : Option  ,Purchase,Sale,Settlement; i : integer; VATReturnGroupCode : Code[10]; VATIdentifire : Code[10])
    var
        VATEntry : Record "VAT Entry";
        VATPostingSetup_L : Record "VAT Posting Setup";   
    begin
        VATPostingSetup_L.RESET;
        IF VATIdentifire <> '' THEN
        VATPostingSetup_L.SETRANGE("VAT Identifier",VATIdentifire)
        ELSE
        VATPostingSetup_L.SETRANGE("VAT Prod. Posting Group",'VAT_EXEMPT');
        IF VATReturnGroupCode <> '' THEN  
        VATPostingSetup_L.SETRANGE("UAE VAT Group Code",VATReturnGroupCode);
        VATPostingSetup_L.SETRANGE("VAT Calculation Type",VATPostingSetup_L."VAT Calculation Type"::"Normal VAT");
        IF VATIdentifire = 'ZR' THEN
        VATPostingSetup_L.SETFILTER("VAT Prod. Posting Group",'<>%1','VAT_EXEMPT');
        IF VATPostingSetup_L.FINDSET THEN REPEAT
        VATEntry.RESET;
        VATEntry.SETCURRENTKEY(Type,Closed,"VAT Bus. Posting Group","VAT Prod. Posting Group","Posting Date");
        VATEntry.SETRANGE(Type,Type_L);
        VATEntry.SETRANGE(Closed,FALSE);
        VATEntry.SETRANGE("VAT Bus. Posting Group",VATPostingSetup_L."VAT Bus. Posting Group");
        VATEntry.SETRANGE("VAT Prod. Posting Group",VATPostingSetup_L."VAT Prod. Posting Group");
        VATEntry.SETRANGE("Posting Date",StartDate,EndDate);
        VATEntry.CALCSUMS(Base,Amount);
        Amount[i] += VATEntry.Base;
        VATAmount[i] += VATEntry.Amount;
        UNTIL VATPostingSetup_L.NEXT = 0;
    end;
    local procedure CalculateVATAmountsInput(Type_L : Option  ,Purchase,Sale,Settlement; i : integer; VATReturnGroupCode : Code[10]; VATIdentifire : Code[10]; VATCalculationType : Option "Normal VAT","Reverse Charge VAT","Full VAT","Sales Tax")
    var
        VATEntry : Record "VAT Entry";
        VATPostingSetup_L : Record "VAT Posting Setup";
    begin
        VATPostingSetup_L.RESET;
        IF VATIdentifire <> '' THEN
        VATPostingSetup_L.SETRANGE("VAT Identifier",VATIdentifire)
        ELSE
        VATPostingSetup_L.SETRANGE("VAT Prod. Posting Group",'VAT_EXEMPT');
        IF VATReturnGroupCode <> '' THEN  
        VATPostingSetup_L.SETRANGE( "UAE VAT Group Code" ,VATReturnGroupCode);
        VATPostingSetup_L.SETRANGE("VAT Calculation Type",VATCalculationType);
        IF VATIdentifire = 'ZR' THEN
        VATPostingSetup_L.SETFILTER("VAT Prod. Posting Group",'<>%1','VAT_EXEMPT');
        IF VATPostingSetup_L.FINDSET THEN REPEAT
        VATEntry.RESET;
        VATEntry.SETCURRENTKEY(Type,Closed,"VAT Bus. Posting Group","VAT Prod. Posting Group","Posting Date");
        VATEntry.SETRANGE(Type,Type_L);
        VATEntry.SETRANGE(Closed,FALSE);
        VATEntry.SETRANGE("VAT Bus. Posting Group",VATPostingSetup_L."VAT Bus. Posting Group");
        VATEntry.SETRANGE("VAT Prod. Posting Group",VATPostingSetup_L."VAT Prod. Posting Group");
        VATEntry.SETRANGE("Posting Date",StartDate,EndDate);
        VATEntry.CALCSUMS(Base,Amount);
        InputAmount[i] += VATEntry.Base;
        InputVATAmount[i] += VATEntry.Amount;
        UNTIL VATPostingSetup_L.NEXT = 0;
    end;
    var
        myInt: Text[50];
        StartDate : Date ;
        EndDate :  Date ;
        Amount: Array[15] of Decimal ;
        VATAmount : ARRAY[15] of Decimal ;
        Adjustment : ARRAY[15] of Decimal ;
        InputAmount: Array[5] of Decimal ;
        InputVATAmount : ARRAY[5] of Decimal ;
        InputAdjustment : ARRAY[5] of Decimal ;
        TotalAmount: Array[5] of Decimal ;
        TotalVATAmount : ARRAY[5] of Decimal ;
        TotalAdjustment : ARRAY[5] of Decimal ;
}       
