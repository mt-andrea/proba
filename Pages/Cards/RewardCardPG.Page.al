page 50200 "Reward Card PG"
{
    Caption = 'Reward Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Tasks;
    SourceTable = "Reward TBL";

    layout
    {
        area(Content)
        {
            group(Info)
            {
                field("Reward ID"; Rec."Reward ID")
                {
                    ApplicationArea = All;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Discount Percentage"; Rec.Percentage)
                {
                    ApplicationArea = All;
                }
                field("Minimum Purchase"; Rec."Minimum Purchase")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}