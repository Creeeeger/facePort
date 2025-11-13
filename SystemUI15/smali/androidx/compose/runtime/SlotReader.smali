.class public final Landroidx/compose/runtime/SlotReader;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public closed:Z

.field public currentEnd:I

.field public currentGroup:I

.field public currentSlot:I

.field public currentSlotEnd:I

.field public final currentSlotStack:Landroidx/compose/runtime/IntStack;

.field public emptyCount:I

.field public final groups:[I

.field public final groupsSize:I

.field public hadNext:Z

.field public parent:I

.field public final slots:[Ljava/lang/Object;

.field public final slotsSize:I

.field public final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    iget-object v0, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    iput-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v0, p1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    iget-object v1, p1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    iget p1, p1, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    iput p1, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    new-instance p1, Landroidx/compose/runtime/IntStack;

    invoke-direct {p1}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotStack:Landroidx/compose/runtime/IntStack;

    return-void
.end method


# virtual methods
.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    iget-object v0, v0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    iget p0, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    invoke-static {v0, p1, p0}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    move-result p0

    if-gez p0, :cond_0

    new-instance v1, Landroidx/compose/runtime/Anchor;

    invoke-direct {v1, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    add-int/lit8 p0, p0, 0x1

    neg-int p0, p0

    invoke-virtual {v0, p0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/Anchor;

    :goto_0
    return-object v1
.end method

.method public final aux(I[I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    mul-int/lit8 p1, p1, 0x5

    array-length v0, p2

    if-lt p1, v0, :cond_0

    array-length p1, p2

    goto :goto_0

    :cond_0
    add-int/lit8 v0, p1, 0x4

    aget v0, p2, v0

    add-int/lit8 p1, p1, 0x1

    aget p1, p2, p1

    shr-int/lit8 p1, p1, 0x1d

    invoke-static {p1}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result p1

    add-int/2addr p1, v0

    :goto_0
    iget-object p0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object p0, p0, p1

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    :goto_1
    return-object p0
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->closed:Z

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/compose/runtime/SlotReader;->table:Landroidx/compose/runtime/SlotTable;

    if-ne p0, v0, :cond_0

    iget p0, v0, Landroidx/compose/runtime/SlotTable;->readers:I

    if-lez p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    iput p0, v0, Landroidx/compose/runtime/SlotTable;->readers:I

    return-void

    :cond_0
    const-string p0, "Unexpected reader close()"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final endGroup()V
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-nez v0, :cond_5

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    iget v4, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-gez v0, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v5

    add-int/2addr v5, v0

    :goto_1
    iput v5, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iget-object v5, p0, Landroidx/compose/runtime/SlotReader;->currentSlotStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v5}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v5

    if-gez v5, :cond_2

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    goto :goto_3

    :cond_2
    iput v5, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    sub-int/2addr v4, v3

    if-lt v0, v4, :cond_3

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    goto :goto_2

    :cond_3
    add-int/2addr v0, v3

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor(I[I)I

    move-result v0

    :goto_2
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    goto :goto_3

    :cond_4
    const-string p0, "endGroup() not called at the end of a group"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_5
    :goto_3
    return-void
.end method

.method public final getGroupAux()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotReader;->aux(I[I)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getGroupKey()I
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    if-ge v0, v1, :cond_0

    mul-int/lit8 v0, v0, 0x5

    iget-object p0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    aget p0, p0, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final groupGet(II)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor(I[I)I

    move-result v1

    add-int/lit8 p1, p1, 0x1

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge p1, v2, :cond_0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    goto :goto_0

    :cond_0
    iget p1, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    :goto_0
    add-int/2addr v1, p2

    if-ge v1, p1, :cond_1

    iget-object p0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object p0, p0, v1

    goto :goto_1

    :cond_1
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    :goto_1
    return-object p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/compose/runtime/SlotReader;->hadNext:Z

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget-object p0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotReader;->hadNext:Z

    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    return-object p0
.end method

.method public final node(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x4

    aget p1, v0, p1

    iget-object p0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final objectKey(I[I)Ljava/lang/Object;
    .locals 1

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$hasObjectKey(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 v0, p1, 0x4

    aget v0, p2, v0

    add-int/lit8 p1, p1, 0x1

    aget p1, p2, p1

    shr-int/lit8 p1, p1, 0x1e

    invoke-static {p1}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result p1

    add-int/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/runtime/SlotReader;->slots:[Ljava/lang/Object;

    aget-object p0, p0, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final reposition(I)V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iput p1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget-object v0, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    iget v2, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    if-ge p1, v2, :cond_1

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    :goto_1
    iput p1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    if-gez p1, :cond_2

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    goto :goto_2

    :cond_2
    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v0

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    :goto_2
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    return-void

    :cond_3
    const-string p0, "Cannot reposition while in an empty region"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final skipGroup()I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v1

    :goto_1
    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    return v1

    :cond_2
    const-string p0, "Cannot skip while in an empty region"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final skipToGroupEnd()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iput v1, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    return-void

    :cond_1
    const-string p0, "Cannot skip the enclosing group while in an empty region"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final startGroup()V
    .locals 6

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->emptyCount:I

    if-gtz v0, :cond_4

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotReader;->groups:[I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v0, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget v3, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    iget-object v5, p0, Landroidx/compose/runtime/SlotReader;->currentSlotStack:Landroidx/compose/runtime/IntStack;

    if-nez v0, :cond_1

    if-nez v3, :cond_1

    const/4 v0, -0x1

    invoke-virtual {v5, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v5, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    :goto_1
    iput v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor(I[I)I

    move-result v3

    iput v3, p0, Landroidx/compose/runtime/SlotReader;->currentSlot:I

    iget v3, p0, Landroidx/compose/runtime/SlotReader;->groupsSize:I

    sub-int/2addr v3, v4

    if-lt v1, v3, :cond_2

    iget v0, p0, Landroidx/compose/runtime/SlotReader;->slotsSize:I

    goto :goto_2

    :cond_2
    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor(I[I)I

    move-result v0

    :goto_2
    iput v0, p0, Landroidx/compose/runtime/SlotReader;->currentSlotEnd:I

    goto :goto_3

    :cond_3
    const-string p0, "Invalid slot table detected"

    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_4
    :goto_3
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotReader(current="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->currentGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotReader;->getGroupKey()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", parent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/SlotReader;->parent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/runtime/SlotReader;->currentEnd:I

    const/16 v1, 0x29

    invoke-static {v0, p0, v1}, Landroidx/activity/BackEventCompat$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
