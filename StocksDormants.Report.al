report 50107 StocksDormants
{
    UsageCategory = Administration;
    ApplicationArea = All;

    // Use an RDL layout.
    DefaultLayout = RDLC;

    // Specify the name of the file that the report will use for the layout.
    RDLCLayout = 'StocksDormants.rdl';

    dataset
    {
        dataitem(Item; Item)
        {
            //column(ColumnName; SourceFieldName)
            // {

            //}
        }

        dataitem("Location"; "Location")
        {
            //DataItemLink = "No." = field("No.");
            //DataItemLinkReference = "Payment Header";

            //column(ColumnName; SourceFieldName)
            // {

            //}
        }
        dataitem("Lot No. Information"; "Lot No. Information")
        {
            //column(ColumnName; SourceFieldName)
            // {

            //}
        }

    }

    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                    // field(Name; SourceExpression)
                    // {
                    //     ApplicationArea = All;

                    // }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action(ActionName)
                {
                    ApplicationArea = All;

                }
            }
        }
    }



    var

        ExportExcel: Boolean;
        PrintLot: Boolean;
        SkipLineZero: Boolean;
        gSaveExcel: Boolean;
        MvtStock: Boolean;
        IgnorerLigne: Boolean;

        LocationFilter: Code[30];
        LocationCode: Code[20];
        BinFilter: Code[20];

        StartDate: Date;
        EndDate: Date;
        LastDateModif: Date;

        InvBefore: Decimal;
        InvPos: Decimal;
        InvNeg: Decimal;
        ItemInvPos: Decimal;
        InvAfter: Decimal;
        ItemInvBefore: Decimal;
        ItemInvNeg: Decimal;
        ItemInvAfter: Decimal;
        ValeurStock: Decimal;
        ItemInvBefore1: Decimal;
        ItemInvAfter1: Decimal;
        TotalNeg: Decimal;
        TotalPos: Decimal;
        PositifEntry: Decimal;
        NegatifEntry: Decimal;

        RowNo: Integer;
        ColNo: Integer;

        ItemFilters: Text[250];
        DocumentOrigine: Text;
        CodeMotif: Text;
        ExcelFileName: Text[250];
        ExcelSheetName: Text[31];
        SkipLineZeroFilter: Text[1];
        SkipLineZeroFilter2: Text[1];

        ExcelBuf: Record "Excel Buffer";
        ItemLedgerEntry: Record "Item Ledger Entry";
        WarehouseEntry: Record "Warehouse Entry";
        RecPositifInvent: Record "Item";
        RecNegatifInvent: Record "Item";
        RecWarehouseEntry: Record "Warehouse Entry";




}