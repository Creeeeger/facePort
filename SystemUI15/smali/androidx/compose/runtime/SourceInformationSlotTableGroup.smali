.class public final Landroidx/compose/runtime/SourceInformationSlotTableGroup;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final identityPath:Landroidx/compose/runtime/SourceInformationGroupPath;

.field public final parent:I

.field public final sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;

.field public final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/SourceInformationGroupPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->parent:I

    iput-object p3, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;

    iput-object p4, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/SourceInformationGroupPath;

    iget p0, p3, Landroidx/compose/runtime/GroupSourceInformation;->key:I

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 4

    new-instance v0, Landroidx/compose/runtime/SourceInformationGroupIterator;

    iget-object v1, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget v2, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->parent:I

    iget-object v3, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->sourceInformation:Landroidx/compose/runtime/GroupSourceInformation;

    iget-object p0, p0, Landroidx/compose/runtime/SourceInformationSlotTableGroup;->identityPath:Landroidx/compose/runtime/SourceInformationGroupPath;

    invoke-direct {v0, v1, v2, v3, p0}, Landroidx/compose/runtime/SourceInformationGroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/SourceInformationGroupPath;)V

    return-object v0
.end method
