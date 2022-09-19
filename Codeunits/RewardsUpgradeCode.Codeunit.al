codeunit 50201 RewardsUpgradeCode
{
    Subtype = Upgrade;
    trigger OnUpgradePerCompany()
    var
        Reward: Record "Reward TBL";
        Module: ModuleInfo;
    begin
        NavApp.GetCurrentModuleInfo(Module);
        if Module.DataVersion.Major = 1 then begin
            Reward.Get('BRONZE');
            Reward.Rename('ALUMINIUM');
            Reward.Description := 'Aluminium Level';
            Reward.Modify();
        end;
    end;

}