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
            group("VAT Audit File")
            {
                Caption = 'VAT Audit File';
                
                action("FAF Customer Transaction")
                {
                    
                    Caption = 'FAF Customer Transaction';
                    trigger OnAction()
                    var
                        FAFGLTransaction : Report "FAF Customer Transaction";
                        ExportStream : OutStream;
                        XMLParameter : Text;    
                        ExportFile : InStream;
                        ExportFileName : Text;
                        Tempblob : REcord TempBlob temporary;
                    begin
                        XMLParameter := Report.RunRequestPage(70140922);
                        Tempblob.Blob.CreateInStream(ExportFile);
                        Tempblob.Blob.CreateOutStream(ExportStream);
                        Report.SaveAs(70140922,XMLParameter, ReportFormat::Excel, ExportStream);                        

                        ExportFileName := 'FAFCustomerTransaction'+XMLParameter+'.xls';
                        DOWNLOADFROMSTREAM(ExportFile,'Export','','All Files (*.*)|*.*',ExportFileName) ;        
                    END;    
                }
                action("FAF Supplier Transaction")
                {
                    
                    Caption = 'FAF Supplier Transaction';
                    trigger OnAction()
                    var
                        FAFGLTransaction : Report "FAF Supplier Transaction";
                        ExportStream : OutStream;
                        XMLParameter : Text;    
                        ExportFile : InStream;
                        ExportFileName : Text;
                        Tempblob : REcord TempBlob temporary;
                    begin
                        XMLParameter := Report.RunRequestPage(70140921);
                        Tempblob.Blob.CreateInStream(ExportFile);
                        Tempblob.Blob.CreateOutStream(ExportStream);
                        Report.SaveAs(70140921,XMLParameter, ReportFormat::Excel, ExportStream);                        

                        ExportFileName := 'FAFSupplierTransaction'+XMLParameter+'.xls';
                        DOWNLOADFROMSTREAM(ExportFile,'Export','','All Files (*.*)|*.*',ExportFileName) ;        
                    END;    
                }
                action("FAF GL Transaction")
                {
                    
                    Caption = 'FAF GL Transaction';
                    trigger OnAction()
                    var
                        FAFGLTransaction : Report "FAF GL Transaction";
                        ExportStream : OutStream;
                        XMLParameter : Text;    
                        ExportFile : InStream;
                        ExportFileName : Text;
                        Tempblob : REcord TempBlob temporary;
                    begin
                        XMLParameter := Report.RunRequestPage(70140923);
                        Tempblob.Blob.CreateInStream(ExportFile);
                        Tempblob.Blob.CreateOutStream(ExportStream);
                        Report.SaveAs(70140923,XMLParameter, ReportFormat::Excel, ExportStream);                        

                        ExportFileName := 'FAFGLTransaction'+XMLParameter+'.xls';
                        DOWNLOADFROMSTREAM(ExportFile,'Export','','All Files (*.*)|*.*',ExportFileName) ;        
                    END;    
                }
            }
        }
    }
}