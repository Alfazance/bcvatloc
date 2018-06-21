pageextension 70140923 AccManRoleCenterVATLocExt extends "Accounting Manager Role Center"
{
    layout
    {
        // Add changes to page layout here
    }
    actions
    {
        // Add changes to page actions here
        addafter("Intrastat &Journal")
        {
            group("UAE VAT Localization Reports")
            {
                Caption = 'UAE VAT Localization Reports';
                action("UAE VAT Return")
                {
                    Caption = 'UAE VAT Return';
                    RunObject = Page "UAE VAT Return"; 
                    
                }
                action("FAF Customer Transaction")
                {
                    Caption = 'FAF Customer Transaction';
                    ApplicationArea = All;
                    trigger OnAction()
                    var
                        FAFGLTransaction : Report "FAF Customer Transaction";
                        ExportStream : OutStream;
                        XMLParameter : Text;    
                        ExportFile : InStream;
                        ExportFileName : Text;
                        Tempblob : REcord TempBlob temporary;
                    begin
                        Message('Hello');
                        XMLParameter := Report.RunRequestPage(70140922);
                        Tempblob.Blob.CreateInStream(ExportFile);
                        Tempblob.Blob.CreateOutStream(ExportStream);
                        Report.SaveAs(70140922,XMLParameter, ReportFormat::Excel, ExportStream);                        

                        ExportFileName := 'FAFCustomerTransaction'+XMLParameter+'.xls';
                        DOWNLOADFROMSTREAM(ExportFile,'Export','','All Files (*.*)|*.*',ExportFileName) ;        
                    END;    
                }
                
            }
        }
    }
}