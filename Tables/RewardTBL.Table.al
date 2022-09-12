table 50200 "Reward TBL"
{
    Caption = 'Reward';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Reward ID"; Code[30])
        {
            DataClassification = ToBeClassified;

        }
        field(2; Description; Text[250])
        {
            NotBlank = true;
            DataClassification = ToBeClassified;
        }
        field(3; Percentage; Decimal)
        {
            MinValue = 0;
            MaxValue = 100;
            DecimalPlaces = 2;
            DataClassification = ToBeClassified;
        }
        field(4; "Minimum Purchase"; Decimal)
        {
            MinValue = 0;
            DecimalPlaces = 2;
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Reward ID")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}