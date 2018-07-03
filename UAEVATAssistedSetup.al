codeunit 70140924 UAEVATAssistedSetup
{
    [EventSubscriber(ObjectType::Table, Database::"Aggregated Assisted Setup", 'OnRegisterAssistedSetup', '', true, true) ]
    local procedure AggregateAssistedSetup_OnRegisterAssistedSetup(var TempAggregatedAssistedSetup : Record "Aggregated Assisted Setup")
    var 
        UAEVATGroupCode : Record "UAE VAT Group Code";
    begin
        TempAggregatedAssistedSetup.AddExtensionAssistedSetup(
                                    Page::"UAE VAT Setup Wizard"
                                    , 'Setup UAE VAT'
                                    , true 
                                    , UAEVATGroupCode.RecordId()
                                    ,GetCompanyInformationSetupStatus(TempAggregatedAssistedSetup)
                                    ,'');
    end;

    local procedure GetCompanyInformationSetupStatus(AggregatedAssistedSetup: Record "Aggregated Assisted Setup") : Integer
    var 
        VATBusPostGroup : Record "VAT Business Posting Group";
        VATProdPostGroup : Record "VAT Product Posting Group";
        UAEVATGroupCode : Record "UAE VAT Group Code";

        Reccount:Integer;
    begin
        with AggregatedAssistedSetup do
        begin
            VATProdPostGroup.SetFilter(Code,'%1|%2|%3|%4'
                , 'VAT_0', 'VAT_5G', 'VAT_5S', 'VAT_EX');

            VATBusPostGroup.SetFilter(Code, '%1|%2|%3|%4|%5|%6|%7|%8|%9'
                , 'VAT_DXB', 'VAT_SHJ', 'VAT_FUJ', 'VAT_AUD', 'VAT_RAK', 'VAT_AJM', 'VAT_UAQ','VAT_KSA','VAT_OTHERS');

            UAEVATGroupCode.SetFilter("Group Code",'%1|%2|%3|%4|%5|%6|%7'
                , 'AJM', 'AUD', 'DXB', 'FUJ', 'RAK', 'SHJ', 'UAQ');

            Reccount :=  VATProdPostGroup.Count;
            Reccount :=  VATBusPostGroup.Count;
            Reccount :=  UAEVATGroupCode.Count;

            If VATProdPostGroup.Count() <> 4 then
                Status := Status::"Not Completed"

            else if VATBusPostGroup.Count() <> 9 then
                Status := Status::"Not Completed"

            else if UAEVATGroupCode.Count() <> 7 then 
                Status := Status::"Not Completed"

            else
                Status := Status::Completed;
            
            exit (Status);
        end;
    end;
}