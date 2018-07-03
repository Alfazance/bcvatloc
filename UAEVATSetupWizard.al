page 70140923 "UAE VAT Setup Wizard"
{
    PageType = NavigatePage;
    SourceTable = "Company Information";
    Caption = 'UAE VAT Setup';

    layout
    {
        area(content)
        {
            group (StandardBanner)
            {
                Editable = False;
                Visible = TopBannerVisible and ( CurrentStep < 3 );
            }

            group (FinishedBanner)
            {
                Editable = False;
                Visible = TopBannerVisible and ( CurrentStep = 3 );
            }

            group(Step1)
            {
                Visible = (CurrentStep = 1);

                group(Welcome)
                {
                    Caption = 'Welcome';
                    InstructionalText = 'Welcome to the VAT Setup wizard. This will take you through the process of creating the specific VAT business and product posting groups as required for FTA of UAE.';
                }
            }
            group(Step2)
            {
                Visible = CurrentStep = 2;

                group(VATBUSGroup)
                {
                    field(Name;Name)
                    {
                        ApplicationArea = All;
                    }
                }
            }
            Group (Step3)
            {
                Visible = CurrentStep = 3;

            }
        }
    }
    

    actions
    {
        area(processing)
        {
            action(ActionBack)
            {
                ApplicationArea = All;
                Caption = 'Back';
                InFooterBar = true;
                Image = PreviousRecord;
                Enabled = ActionBackAllowed;

                trigger OnAction()
                begin
                    TakeStep(-1);
                end;
            }
            
            action(ActionNext)
            {
                ApplicationArea = All;
                Caption = 'Next';
                InFooterBar = true;
                Image = NextRecord;
                Enabled = ActionFinishAllowed;
                
                trigger OnAction()
                begin
                    TakeStep(1);
                end;
            }

            action(ActionFinish)
            {
                ApplicationArea = All;
                Caption = 'Finish';
                InFooterBar = true;                
                Image = Approve;
                Enabled = ActionFinishAllowed;

                trigger OnAction()
                begin
                    CurrPage.Close();
                end;
            }

        }
    }
    
    trigger OnOpenPage()
    begin
        CurrentStep := 1;   
        SetControls();     
    end;

    trigger OnInit()
    begin
        LoadTopBanners();
    end;

    local procedure LoadTopBanners()
    begin 
        if ( MediaRepositoryStandard.Get('AssistedSetup-NoText-400px.png', Format(CurrentClientType) ) and 
        MediaRepositoryDone.Get('AssistedSetupDone-NoText-400px.png', Format(CurrentClientType) ) ) 
        then
            if ( MediaResourcesStandard.Get(MediaRepositoryStandard."Media Resources Ref") and 
                MediaResourcesDone.Get(MediaRepositoryDone."Media Resources Ref"))
            then 
                TopBannerVisible := MediaResourcesDone."Media Reference".HasValue();
    end;

    local procedure SetControls()
    begin 
        ActionBackAllowed := CurrentStep > 1;
        ActionNextAllowed := CurrentStep < 3;
        ActionFinishAllowed := CurrentStep = 3;
    end;

    local procedure TakeStep(Step: Integer)
    begin
        CurrentStep += Step;
        SetControls();
    end;

    var
        CurrentStep : Integer;
        ActionBackAllowed : Boolean;
        ActionNextAllowed : Boolean;
        ActionFinishAllowed : Boolean;
        MediaRepositoryStandard : Record "Media Repository";
        MediaRepositoryDone : Record "Media Repository";
        MediaResourcesStandard : Record "Media Resources";
        MediaResourcesDone : Record "Media Resources";
        TopBannerVisible : Boolean;
}