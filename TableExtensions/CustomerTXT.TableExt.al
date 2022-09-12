tableextension 50200 "Customer TXT" extends Customer
{
    fields
    {
        field(50200; "Reward ID"; Code[30])
        {
            TableRelation = "Reward TBL"."Reward ID";
            ValidateTableRelation = true;
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin
                if (Rec."Reward ID" <> xRec."Reward ID") and
                    (Rec.Blocked <> Blocked::" ") then begin
                    Error('Cannot upgrade the rewards status of a blocked customer.');
                end;
            end;
        }
    }


}