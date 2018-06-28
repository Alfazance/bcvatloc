// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 70141920 CustomerListExt extends "Customer List"
{
    var
    FAFGLTransaction : Report "FAF GL Transaction";
    
    ExportStream : OutStream;
    XMLParameter : Text;    
    ExportFile : InStream;
    ExportFileName : Text;
    //CompanyInfo   : Record "Company Information" temporary;
    Tempblob : REcord TempBlob temporary;

    trigger OnOpenPage();
    begin        
        //page.Run(Page::"UAE VAT Return");
        //Report.Run(Report::"UAEVATLoc Sales - Quote");
        //Report.Run(Report::"UAEVATLoc Sales - Order Conf");
        //Report.Run(Report::"UAEVATLoc Sales - Invoice");
        //Report.Run(Report::"UAEVATLoc Return Order Conf");
        //Report.Run(Report::"UAVVATLoc Service Cr Memo");
        //report.Run(Report::"FAF Supplier Transaction");
        //Report.Run(Report::"FAF Customer Transaction");
        //Report.Run(Report::"FAF GL Transaction");
        
       /* XMLParameter := Report.RunRequestPage(70140923);
        //workaround solution to initialize the streams 
        //CompanyInfo.Picture.CreateInStream(ExportFile);
        //CompanyInfo.Picture.CreateOutStream(ExportStream);
        
        Tempblob.Blob.CreateInStream(ExportFile);
        Tempblob.Blob.CreateOutStream(ExportStream);
        Report.SaveAs(70140923,XMLParameter, ReportFormat::Excel, ExportStream);                        

        ExportFileName := 'FAFGLFile.xls';
        DOWNLOADFROMSTREAM(ExportFile,'Export','','All Files (*.*)|*.*',ExportFileName) ;        */
    end;    

}