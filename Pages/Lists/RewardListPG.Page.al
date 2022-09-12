page 50201 "Reward List PG"
{
    Caption = 'Reward List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Reward TBL";
    CardPageId = "Reward Card PG";

    layout
    {
        area(Content)
        {
            repeater(Rewards)
            {
                field("Reward ID"; Rec."Reward ID")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the level of reward that the customer has at this point.';

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;

                }
                field("Discount Percentage"; Rec.Percentage)
                {
                    ApplicationArea = All;

                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}