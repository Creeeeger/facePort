.class public final Landroidx/compose/runtime/SlotTableGroup;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lkotlin/jvm/internal/markers/KMappedMarker;


# instance fields
.field public final group:I

.field public final table:Landroidx/compose/runtime/SlotTable;

.field public final version:I


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iput p2, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    iput p3, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 5

    iget-object v0, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget v1, v0, Landroidx/compose/runtime/SlotTable;->version:I

    iget v2, p0, Landroidx/compose/runtime/SlotTableGroup;->version:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    iget-object v2, v0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    iget-boolean v4, v0, Landroidx/compose/runtime/SlotTable;->writer:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    if-ltz v1, :cond_0

    iget v4, v0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ge v1, v4, :cond_0

    iget-object v0, v0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    invoke-static {v0, v1, v4}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroidx/compose/runtime/Anchor;

    :cond_0
    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/runtime/GroupSourceInformation;

    goto :goto_0

    :cond_1
    const-string/jumbo p0, "use active SlotWriter to crate an anchor for location instead"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v3

    :cond_2
    :goto_0
    new-instance v0, Landroidx/compose/runtime/GroupIterator;

    iget-object v1, p0, Landroidx/compose/runtime/SlotTableGroup;->table:Landroidx/compose/runtime/SlotTable;

    iget p0, p0, Landroidx/compose/runtime/SlotTableGroup;->group:I

    add-int/lit8 v2, p0, 0x1

    iget-object v3, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {p0, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v3

    add-int/2addr v3, p0

    invoke-direct {v0, v1, v2, v3}, Landroidx/compose/runtime/GroupIterator;-><init>(Landroidx/compose/runtime/SlotTable;II)V

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method
