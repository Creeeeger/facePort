.class public final Landroidx/compose/runtime/SourceInformationGroupIterator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/Iterator;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final group:Landroidx/compose/runtime/GroupSourceInformation;

.field public index:I

.field public final parent:I

.field public final path:Landroidx/compose/runtime/SourceInformationGroupPath;

.field public final table:Landroidx/compose/runtime/SlotTable;

.field public final version:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/SourceInformationGroupPath;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->parent:I

    iput-object p3, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->group:Landroidx/compose/runtime/GroupSourceInformation;

    iput-object p4, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->path:Landroidx/compose/runtime/SourceInformationGroupPath;

    iget p1, p1, Landroidx/compose/runtime/SlotTable;->version:I

    iput p1, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->version:I

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->group:Landroidx/compose/runtime/GroupSourceInformation;

    iget-object v0, v0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->index:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final next()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->group:Landroidx/compose/runtime/GroupSourceInformation;

    iget-object v0, v0, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->index:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->index:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    instance-of v2, v0, Landroidx/compose/runtime/Anchor;

    if-eqz v2, :cond_1

    new-instance v1, Landroidx/compose/runtime/SlotTableGroup;

    iget-object v2, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    check-cast v0, Landroidx/compose/runtime/Anchor;

    iget v0, v0, Landroidx/compose/runtime/Anchor;->location:I

    iget p0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->version:I

    invoke-direct {v1, v2, v0, p0}, Landroidx/compose/runtime/SlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    goto :goto_1

    :cond_1
    instance-of v2, v0, Landroidx/compose/runtime/GroupSourceInformation;

    if-eqz v2, :cond_2

    new-instance v1, Landroidx/compose/runtime/SourceInformationSlotTableGroup;

    iget-object v2, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->table:Landroidx/compose/runtime/SlotTable;

    iget v3, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->parent:I

    check-cast v0, Landroidx/compose/runtime/GroupSourceInformation;

    new-instance v4, Landroidx/compose/runtime/RelativeGroupPath;

    iget-object v5, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->path:Landroidx/compose/runtime/SourceInformationGroupPath;

    iget p0, p0, Landroidx/compose/runtime/SourceInformationGroupIterator;->index:I

    add-int/lit8 p0, p0, -0x1

    invoke-direct {v4, v5, p0}, Landroidx/compose/runtime/RelativeGroupPath;-><init>(Landroidx/compose/runtime/SourceInformationGroupPath;I)V

    invoke-direct {v1, v2, v3, v0, v4}, Landroidx/compose/runtime/SourceInformationSlotTableGroup;-><init>(Landroidx/compose/runtime/SlotTable;ILandroidx/compose/runtime/GroupSourceInformation;Landroidx/compose/runtime/SourceInformationGroupPath;)V

    :goto_1
    return-object v1

    :cond_2
    const-string p0, "Unexpected group information structure"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)V

    throw v1
.end method

.method public final remove()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Operation is not supported for read-only collection"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
