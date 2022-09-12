pageextension 50200 "Customer Card PGXT" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field("Reward ID"; Rec."Reward ID")
            {
                ApplicationArea = All;
                Lookup = true;
            }
        }
    }

    actions
    {
        addfirst(navigation)
        {
            action("Rewards")
            {
                ApplicationArea = All;
                RunObject = page "Reward List PG";
            }
        }
    }


}