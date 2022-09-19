pageextension 50201 "Customers List PGXT" extends "Customer List"
{
    layout
    {
        addafter(Contact)
        {
            field(Reward; Rec."Reward ID")
            {
                ApplicationArea = All;
            }
        }

    }

}