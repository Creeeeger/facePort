.class public final Landroidx/compose/runtime/SlotWriter;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Landroidx/compose/runtime/SlotWriter$Companion;


# instance fields
.field public anchors:Ljava/util/ArrayList;

.field public calledByMap:Landroidx/collection/MutableIntObjectMap;

.field public closed:Z

.field public currentGroup:I

.field public currentGroupEnd:I

.field public currentSlot:I

.field public currentSlotEnd:I

.field public final endStack:Landroidx/compose/runtime/IntStack;

.field public groupGapLen:I

.field public groupGapStart:I

.field public groups:[I

.field public insertCount:I

.field public nodeCount:I

.field public final nodeCountStack:Landroidx/compose/runtime/IntStack;

.field public parent:I

.field public pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

.field public slots:[Ljava/lang/Object;

.field public slotsGapLen:I

.field public slotsGapOwner:I

.field public slotsGapStart:I

.field public sourceInformationMap:Ljava/util/HashMap;

.field public final startStack:Landroidx/compose/runtime/IntStack;

.field public final table:Landroidx/compose/runtime/SlotTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/runtime/SlotWriter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/runtime/SlotWriter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/SlotTable;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    iget-object v0, p1, Landroidx/compose/runtime/SlotTable;->groups:[I

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget-object v1, p1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iput-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p1, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    iput-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    iget-object v2, p1, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    iput-object v2, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    iput-object v2, p0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    iget v2, p1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    array-length v0, v0

    div-int/lit8 v0, v0, 0x5

    sub-int/2addr v0, v2

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    iget v0, p1, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    array-length v1, v1

    sub-int/2addr v1, v0

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    new-instance v0, Landroidx/compose/runtime/IntStack;

    invoke-direct {v0}, Landroidx/compose/runtime/IntStack;-><init>()V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    iget p1, p1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    const/4 p1, -0x1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    return-void
.end method

.method public static dataIndexToDataAnchor(IIII)I
    .locals 0

    if-le p0, p1, :cond_0

    sub-int/2addr p3, p2

    sub-int/2addr p3, p0

    add-int/lit8 p3, p3, 0x1

    neg-int p0, p3

    :cond_0
    return p0
.end method

.method public static markGroup$default(Landroidx/compose/runtime/SlotWriter;)V
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v3, v1, 0x5

    add-int/lit8 v3, v3, 0x1

    aget v4, v2, v3

    const/high16 v5, 0x8000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    goto :goto_0

    :cond_0
    or-int/2addr v4, v5

    aput v4, v2, v3

    invoke-static {v1, v2}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark(I[I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final advanceBy(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-gtz v2, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    if-eqz v2, :cond_5

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v2, p1

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-lt v2, p1, :cond_3

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-gt v2, p1, :cond_3

    move v0, v1

    :cond_3
    if-eqz v0, :cond_4

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    return-void

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Cannot seek outside the current group ("

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v3

    :cond_5
    const-string p0, "Cannot call seek() while inserting"

    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v3

    :cond_6
    const-string p0, "Cannot seek backwards"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v3
.end method

.method public final anchor(I)Landroidx/compose/runtime/Anchor;
    .locals 4

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    invoke-static {v0, p1, v1}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    move-result v1

    if-gez v1, :cond_1

    new-instance v2, Landroidx/compose/runtime/Anchor;

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-gt p1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p0

    sub-int/2addr p0, p1

    neg-int p1, p0

    :goto_0
    invoke-direct {v2, p1}, Landroidx/compose/runtime/Anchor;-><init>(I)V

    add-int/lit8 v1, v1, 0x1

    neg-int p0, v1

    invoke-virtual {v0, p0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Landroidx/compose/runtime/Anchor;

    :goto_1
    return-object v2
.end method

.method public final anchorIndex(Landroidx/compose/runtime/Anchor;)I
    .locals 0

    iget p1, p1, Landroidx/compose/runtime/Anchor;->location:I

    if-gez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p0

    add-int/2addr p1, p0

    :cond_0
    return p1
.end method

.method public final beginInsert()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    sub-int/2addr v0, v1

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/IntStack;->push(I)V

    :cond_0
    return-void
.end method

.method public final close(Z)V
    .locals 8

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotWriter;->closed:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    iget p1, p1, Landroidx/compose/runtime/IntStack;->tos:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, v1

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-virtual {p0, p1, v1}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr v1, p1

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    invoke-static {v2, p1, v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->recalculateMarks()V

    :cond_0
    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v7, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    if-eqz v7, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/runtime/SlotTable;->writer:Z

    iput-object p1, p0, Landroidx/compose/runtime/SlotTable;->groups:[I

    iput v1, p0, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    iput-object v2, p0, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iput v3, p0, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    iput-object v4, p0, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    iput-object v5, p0, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    iput-object v6, p0, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-void

    :cond_1
    const-string p0, "Unexpected writer close()"

    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    throw v0
.end method

.method public final dataIndex(I[I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor(I[I)I

    move-result p1

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p0, p0

    if-gez p1, :cond_1

    sub-int/2addr p0, p2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    move p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method public final dataIndexToDataAddress(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method public final endGroup()V
    .locals 11

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p0, v5}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v6

    iget v7, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int v8, v3, v5

    iget-object v9, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v6, v9}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v9

    iget-object v10, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v6, v8, v0}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize(II[I)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v6, v7, v0}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount(II[I)V

    invoke-virtual {v10}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v0

    if-eqz v9, :cond_1

    move v7, v1

    :cond_1
    add-int/2addr v0, v7

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v5, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-gez v0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    goto :goto_1

    :cond_2
    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    :goto_1
    if-gez v0, :cond_3

    goto :goto_2

    :cond_3
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v2

    :goto_2
    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    goto/16 :goto_6

    :cond_4
    if-ne v3, v4, :cond_e

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v6, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v6, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v1

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v6, v8, v3}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize(II[I)V

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v6, v7, v3}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount(II[I)V

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v3}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v3

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v4

    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v4, v6

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v6}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v6

    sub-int/2addr v4, v6

    iput v4, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v5, v4}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v4

    invoke-virtual {v10}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v5

    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    if-ne v4, v3, :cond_6

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    sub-int v2, v7, v1

    :goto_3
    add-int/2addr v5, v2

    iput v5, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    goto :goto_6

    :cond_6
    sub-int/2addr v8, v0

    if-eqz v9, :cond_7

    move v7, v2

    goto :goto_4

    :cond_7
    sub-int/2addr v7, v1

    :goto_4
    if-nez v8, :cond_8

    if-eqz v7, :cond_d

    :cond_8
    :goto_5
    if-eqz v4, :cond_d

    if-eq v4, v3, :cond_d

    if-nez v7, :cond_9

    if-eqz v8, :cond_d

    :cond_9
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    if-eqz v8, :cond_a

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v1

    add-int/2addr v1, v8

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v1, v5}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize(II[I)V

    :cond_a
    if-eqz v7, :cond_b

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v5

    add-int/2addr v5, v7

    invoke-static {v0, v5, v1}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount(II[I)V

    :cond_b
    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v0

    if-eqz v0, :cond_c

    move v7, v2

    :cond_c
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v4, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v4

    goto :goto_5

    :cond_d
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    add-int/2addr v0, v7

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    :goto_6
    return-void

    :cond_e
    const-string p0, "Expected to be at the end of a group"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final endInsert()V
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v0, v0, Landroidx/compose/runtime/IntStack;->tos:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    iget v1, v1, Landroidx/compose/runtime/IntStack;->tos:I

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1}, Landroidx/compose/runtime/IntStack;->pop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    goto :goto_1

    :cond_1
    const-string/jumbo p0, "startGroup/endGroup mismatch while inserting"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string p0, "Unbalanced begin/end insert"

    invoke-static {p0}, Landroidx/compose/runtime/PreconditionsKt;->throwIllegalStateException(Ljava/lang/String;)V

    throw v2
.end method

.method public final ensureStarted(I)V
    .locals 5

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gtz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-eq v0, p1, :cond_3

    if-lt p1, v0, :cond_1

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge p1, v4, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->startGroup()V

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Started group at "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be a subgroup of the group at "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v3

    :cond_3
    :goto_1
    return-void

    :cond_4
    const-string p0, "Cannot call ensureStarted() while inserting"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v3
.end method

.method public final fixParentAnchorsFor(III)V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v0

    sub-int/2addr v0, p1

    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    :goto_0
    if-ge p3, p2, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x5

    add-int/lit8 v1, v1, 0x2

    aput p1, v0, v1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p3}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v0

    add-int/2addr v0, p3

    add-int/lit8 v1, p3, 0x1

    invoke-virtual {p0, p3, v0, v1}, Landroidx/compose/runtime/SlotWriter;->fixParentAnchorsFor(III)V

    move p3, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final getCapacity()I
    .locals 0

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length p0, p0

    div-int/lit8 p0, p0, 0x5

    return p0
.end method

.method public final getSize$runtime_release()I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getSlotsSize()I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v0, v0

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public final groupAux(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p1, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result p0

    mul-int/lit8 p1, p1, 0x5

    add-int/lit8 p1, p1, 0x1

    aget p1, v1, p1

    shr-int/lit8 p1, p1, 0x1d

    invoke-static {p1}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result p1

    add-int/2addr p1, p0

    aget-object p0, v0, p1

    goto :goto_0

    :cond_0
    sget-object p0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    :goto_0
    return-object p0
.end method

.method public final groupIndexToAddress(I)I
    .locals 1

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ge p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr p1, p0

    :goto_0
    return p1
.end method

.method public final groupSize(I)I
    .locals 1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p0

    invoke-static {p0, v0}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result p0

    return p0
.end method

.method public final indexInGroup(II)Z
    .locals 5

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    goto :goto_4

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    iget v2, v0, Landroidx/compose/runtime/IntStack;->tos:I

    if-lez v2, :cond_1

    iget-object v3, v0, Landroidx/compose/runtime/IntStack;->slots:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    if-le p2, v3, :cond_2

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result p0

    :goto_1
    add-int/2addr p0, p2

    goto :goto_4

    :cond_2
    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_4

    iget-object v4, v0, Landroidx/compose/runtime/IntStack;->slots:[I

    aget v4, v4, v3

    if-ne v4, p2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    :goto_3
    if-gez v3, :cond_5

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result p0

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v0, v2

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    iget-object p0, p0, Landroidx/compose/runtime/IntStack;->slots:[I

    aget p0, p0, v3

    sub-int p0, v0, p0

    :goto_4
    if-le p1, p2, :cond_6

    if-ge p1, p0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
.end method

.method public final insertGroups(I)V
    .locals 11

    if-lez p1, :cond_5

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v4, v3

    div-int/lit8 v4, v4, 0x5

    sub-int v5, v4, v2

    const/4 v6, 0x0

    if-ge v2, p1, :cond_0

    mul-int/lit8 v7, v4, 0x2

    add-int v8, v5, p1

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v8, 0x20

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    mul-int/lit8 v8, v7, 0x5

    new-array v8, v8, [I

    sub-int/2addr v7, v5

    add-int/2addr v2, v1

    add-int v9, v1, v7

    mul-int/lit8 v10, v1, 0x5

    invoke-static {v6, v6, v10, v3, v8}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto(III[I[I)V

    mul-int/lit8 v9, v9, 0x5

    mul-int/lit8 v2, v2, 0x5

    mul-int/lit8 v4, v4, 0x5

    invoke-static {v9, v2, v4, v3, v8}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto(III[I[I)V

    iput-object v8, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    move v2, v7

    :cond_0
    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-lt v3, v1, :cond_1

    add-int/2addr v3, p1

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    :cond_1
    add-int v3, v1, p1

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    sub-int/2addr v2, p1

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    if-lez v5, :cond_2

    add-int/2addr v0, p1

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v6

    :goto_0
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-ge v2, v1, :cond_3

    goto :goto_1

    :cond_3
    iget v6, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    :goto_1
    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v4, v4

    invoke-static {v0, v6, v2, v4}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v0

    move v2, v1

    :goto_2
    if-ge v2, v3, :cond_4

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v5, v2, 0x5

    add-int/lit8 v5, v5, 0x4

    aput v0, v4, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-lt v0, v1, :cond_5

    add-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    :cond_5
    return-void
.end method

.method public final insertSlots(II)V
    .locals 9

    if-lez p1, :cond_3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    invoke-virtual {p0, v0, p2}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    if-ge v0, p1, :cond_1

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v2, v1

    sub-int v3, v2, v0

    mul-int/lit8 v4, v2, 0x2

    add-int v5, v3, p1

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/16 v5, 0x20

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v4, :cond_0

    const/4 v8, 0x0

    aput-object v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v4, v3

    add-int/2addr v0, p2

    add-int v3, p2, v4

    invoke-static {v1, v5, v6, v6, p2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    invoke-static {v1, v5, v3, v0, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iput-object v5, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    move v0, v4

    :cond_1
    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    if-lt v1, p2, :cond_2

    add-int/2addr v1, p1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    :cond_2
    add-int/2addr p2, p1

    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    :cond_3
    return-void
.end method

.method public final moveFrom(Landroidx/compose/runtime/SlotTable;I)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v3, :cond_0

    move v3, v8

    goto :goto_0

    :cond_0
    move v3, v7

    :goto_0
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    if-nez v2, :cond_1

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-nez v3, :cond_1

    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->table:Landroidx/compose/runtime/SlotTable;

    iget v3, v3, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-nez v3, :cond_1

    iget-object v3, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    invoke-static {v2, v3}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v3

    iget v4, v1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    if-ne v3, v4, :cond_1

    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v5, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    iget-object v6, v0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iget-object v8, v0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    iget-object v9, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    iget-object v10, v1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iget v11, v1, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    iget-object v12, v1, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    iget-object v13, v1, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    iput-object v9, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iput-object v10, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v14, v1, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    iput-object v14, v0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    array-length v9, v9

    div-int/lit8 v9, v9, 0x5

    sub-int/2addr v9, v4

    iput v9, v0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    iput v11, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    array-length v9, v10

    sub-int/2addr v9, v11

    iput v9, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    iput-object v12, v0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iput-object v13, v0, Landroidx/compose/runtime/SlotWriter;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    iput-object v2, v1, Landroidx/compose/runtime/SlotTable;->groups:[I

    iput v7, v1, Landroidx/compose/runtime/SlotTable;->groupsSize:I

    iput-object v3, v1, Landroidx/compose/runtime/SlotTable;->slots:[Ljava/lang/Object;

    iput v7, v1, Landroidx/compose/runtime/SlotTable;->slotsSize:I

    iput-object v5, v1, Landroidx/compose/runtime/SlotTable;->anchors:Ljava/util/ArrayList;

    iput-object v6, v1, Landroidx/compose/runtime/SlotTable;->sourceInformationMap:Ljava/util/HashMap;

    iput-object v8, v1, Landroidx/compose/runtime/SlotTable;->calledByMap:Landroidx/collection/MutableIntObjectMap;

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroidx/compose/runtime/SlotTable;->openWriter()Landroidx/compose/runtime/SlotWriter;

    move-result-object v9

    :try_start_0
    sget-object v1, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v1, v9

    move/from16 v2, p2

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v9, v7}, Landroidx/compose/runtime/SlotWriter;->close(Z)V

    throw v0
.end method

.method public final moveGroupGapTo(I)V
    .locals 8

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-eq v1, p1, :cond_a

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_1

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v4

    sub-int/2addr v4, v2

    if-ge v1, p1, :cond_0

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v2, v1, v4}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v2

    :goto_0
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/Anchor;

    iget v6, v5, Landroidx/compose/runtime/Anchor;->location:I

    if-gez v6, :cond_1

    add-int/2addr v6, v4

    if-ge v6, p1, :cond_1

    iput v6, v5, Landroidx/compose/runtime/Anchor;->location:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v2, p1, v4}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v2

    :goto_1
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/Anchor;

    iget v6, v5, Landroidx/compose/runtime/Anchor;->location:I

    if-ltz v6, :cond_1

    sub-int v6, v4, v6

    neg-int v6, v6

    iput v6, v5, Landroidx/compose/runtime/Anchor;->location:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    if-lez v0, :cond_3

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v4, p1, 0x5

    mul-int/lit8 v5, v0, 0x5

    mul-int/lit8 v6, v1, 0x5

    if-ge p1, v1, :cond_2

    add-int/2addr v5, v4

    invoke-static {v5, v4, v6, v2, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto(III[I[I)V

    goto :goto_2

    :cond_2
    add-int v7, v6, v5

    add-int/2addr v4, v5

    invoke-static {v6, v7, v4, v2, v2}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto(III[I[I)V

    :cond_3
    :goto_2
    if-ge p1, v1, :cond_4

    add-int v1, p1, v0

    :cond_4
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v2

    if-ge v1, v2, :cond_5

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-static {v3}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    :cond_6
    :goto_4
    if-ge v1, v2, :cond_a

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v1, v3}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result v3

    const/4 v4, -0x2

    if-le v3, v4, :cond_7

    move v5, v3

    goto :goto_5

    :cond_7
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v4

    :goto_5
    if-ge v5, p1, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v6

    sub-int/2addr v6, v5

    sub-int/2addr v6, v4

    neg-int v5, v6

    :goto_6
    if-eq v5, v3, :cond_9

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v4, v1, 0x5

    add-int/lit8 v4, v4, 0x2

    aput v5, v3, v4

    :cond_9
    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_6

    add-int/2addr v1, v0

    goto :goto_4

    :cond_a
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    return-void
.end method

.method public final moveSlotGapTo(II)V
    .locals 8

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-eq v1, p1, :cond_1

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    if-ge p1, v1, :cond_0

    add-int v4, p1, v0

    invoke-static {v3, v3, v4, p1, v1}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    add-int v4, v1, v0

    add-int v5, p1, v0

    invoke-static {v3, v3, v1, v4, v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->copyInto([Ljava/lang/Object;[Ljava/lang/Object;III)V

    :cond_1
    :goto_0
    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result p2

    if-eq v2, p2, :cond_8

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v1, v1

    sub-int/2addr v1, v0

    const/4 v0, 0x0

    if-ge p2, v2, :cond_4

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    :cond_2
    :goto_1
    if-ge v3, v2, :cond_7

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v5}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor(I[I)I

    move-result v5

    if-ltz v5, :cond_3

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    sub-int v5, v1, v5

    add-int/lit8 v5, v5, 0x1

    neg-int v5, v5

    mul-int/lit8 v7, v3, 0x5

    add-int/lit8 v7, v7, 0x4

    aput v5, v6, v7

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v4, :cond_2

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v3, v5

    goto :goto_1

    :cond_3
    const-string p0, "Unexpected anchor value, expected a positive anchor"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v0

    :cond_4
    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-virtual {p0, p2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    :cond_5
    :goto_2
    if-ge v2, v3, :cond_7

    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v2, v4}, Landroidx/compose/runtime/SlotTableKt;->access$dataAnchor(I[I)I

    move-result v4

    if-gez v4, :cond_6

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/2addr v4, v1

    add-int/lit8 v4, v4, 0x1

    mul-int/lit8 v6, v2, 0x5

    add-int/lit8 v6, v6, 0x4

    aput v4, v5, v6

    add-int/lit8 v2, v2, 0x1

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-ne v2, v4, :cond_5

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v2, v4

    goto :goto_2

    :cond_6
    const-string p0, "Unexpected anchor value, expected a negative anchor"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    :cond_8
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    return-void
.end method

.method public final moveTo(Landroidx/compose/runtime/Anchor;Landroidx/compose/runtime/SlotWriter;)Ljava/util/List;
    .locals 11

    iget v0, p2, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    invoke-virtual {p1}, Landroidx/compose/runtime/Anchor;->getValid()Z

    move-result v0

    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result p1

    add-int/lit8 v4, p1, 0x1

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-gt p1, v4, :cond_2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    if-ge v4, v0, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    invoke-static {v0}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v4, v0}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v0

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v9

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v5

    invoke-static {v5, v3}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v3

    if-eqz v3, :cond_3

    move v10, v1

    goto :goto_3

    :cond_3
    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v5

    invoke-static {v5, v3}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v3

    move v10, v3

    :goto_3
    sget-object v3, Landroidx/compose/runtime/SlotWriter;->Companion:Landroidx/compose/runtime/SlotWriter$Companion;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Landroidx/compose/runtime/SlotWriter$Companion;->moveGroup(Landroidx/compose/runtime/SlotWriter;ILandroidx/compose/runtime/SlotWriter;ZZZ)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    if-lez v10, :cond_4

    move v3, v1

    goto :goto_4

    :cond_4
    move v3, v2

    :goto_4
    if-lt v0, p1, :cond_7

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v5}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v6

    sub-int/2addr v6, v9

    invoke-static {v4, v6, v5}, Landroidx/compose/runtime/SlotTableKt;->access$updateGroupSize(II[I)V

    if-eqz v3, :cond_6

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v5}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v5

    if-eqz v5, :cond_5

    move v3, v2

    goto :goto_5

    :cond_5
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v4, v5}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v6

    sub-int/2addr v6, v10

    invoke-static {v4, v6, v5}, Landroidx/compose/runtime/SlotTableKt;->access$updateNodeCount(II[I)V

    :cond_6
    :goto_5
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0, v4}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v0

    goto :goto_4

    :cond_7
    if-eqz v3, :cond_9

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    if-lt p1, v10, :cond_8

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    invoke-static {v1}, Landroidx/compose/runtime/ComposerKt;->runtimeCheck(Z)V

    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int/2addr p1, v10

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    :cond_9
    return-object p2
.end method

.method public final node(I)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {p1, v0}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p1, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aget-object p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final parent(I[I)I
    .locals 0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result p1

    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$parentAnchor(I[I)I

    move-result p1

    const/4 p2, -0x2

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p0

    add-int/2addr p0, p1

    add-int/lit8 p1, p0, 0x2

    :goto_0
    return p1
.end method

.method public final recalculateMarks()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-eqz v0, :cond_4

    :cond_0
    :goto_0
    iget-object v1, v0, Landroidx/compose/runtime/PrioritySet;->list:Ljava/util/List;

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroidx/compose/runtime/PrioritySet;->takeMax()I

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v1}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v5

    add-int/2addr v5, v1

    :goto_1
    if-ge v4, v5, :cond_2

    iget-object v6, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v7

    mul-int/lit8 v7, v7, 0x5

    add-int/2addr v7, v2

    aget v6, v6, v7

    const/high16 v7, 0xc000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->groupSize(I)I

    move-result v6

    add-int/2addr v4, v6

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v5}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark(I[I)Z

    move-result v5

    if-eq v5, v4, :cond_0

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    mul-int/lit8 v3, v3, 0x5

    add-int/2addr v3, v2

    if-eqz v4, :cond_3

    aget v2, v5, v3

    const/high16 v4, 0x4000000

    or-int/2addr v2, v4

    aput v2, v5, v3

    goto :goto_3

    :cond_3
    aget v2, v5, v3

    const v4, -0x4000001

    and-int/2addr v2, v4

    aput v2, v5, v3

    :goto_3
    invoke-virtual {p0, v1, v5}, Landroidx/compose/runtime/SlotWriter;->parent(I[I)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/PrioritySet;->add(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public final removeGroup()Z
    .locals 7

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-virtual {p0, v3, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v2

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->skipGroup()I

    move-result v3

    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p0, v4}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Landroidx/compose/runtime/GroupSourceInformation;->removeAnchor(Landroidx/compose/runtime/Anchor;)Z

    :cond_0
    iget-object v4, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-eqz v4, :cond_1

    :goto_0
    iget-object v5, v4, Landroidx/compose/runtime/PrioritySet;->list:Ljava/util/List;

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroidx/compose/runtime/PrioritySet;->list:Ljava/util/List;

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    if-lt v5, v0, :cond_1

    invoke-virtual {v4}, Landroidx/compose/runtime/PrioritySet;->takeMax()I

    goto :goto_0

    :cond_1
    iget v4, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    sub-int/2addr v4, v0

    invoke-virtual {p0, v0, v4}, Landroidx/compose/runtime/SlotWriter;->removeGroups(II)Z

    move-result v4

    iget v5, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    sub-int/2addr v5, v2

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p0, v2, v5, v6}, Landroidx/compose/runtime/SlotWriter;->removeSlots(III)V

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    sub-int/2addr v0, v3

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    return v4

    :cond_2
    const-string p0, "Cannot remove group while inserting"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final removeGroups(II)Z
    .locals 9

    const/4 v0, 0x0

    if-lez p2, :cond_9

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->moveGroupGapTo(I)V

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    iget v3, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int v4, p1, p2

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v5

    sub-int/2addr v5, v3

    iget-object v3, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-static {v3, v4, v5}, Landroidx/compose/runtime/SlotTableKt;->access$locationOf(Ljava/util/ArrayList;II)I

    move-result v3

    iget-object v5, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v3, v5, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    add-int/lit8 v5, v3, 0x1

    move v6, v0

    :goto_0
    if-ltz v3, :cond_4

    iget-object v7, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/runtime/Anchor;

    invoke-virtual {p0, v7}, Landroidx/compose/runtime/SlotWriter;->anchorIndex(Landroidx/compose/runtime/Anchor;)I

    move-result v8

    if-lt v8, p1, :cond_4

    if-ge v8, v4, :cond_3

    const/high16 v5, -0x80000000

    iput v5, v7, Landroidx/compose/runtime/Anchor;->location:I

    if-eqz v1, :cond_1

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/runtime/GroupSourceInformation;

    :cond_1
    if-nez v6, :cond_2

    add-int/lit8 v6, v3, 0x1

    :cond_2
    move v5, v3

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    if-ge v5, v6, :cond_5

    move v0, v2

    :cond_5
    if-eqz v0, :cond_6

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {v1, v5, v6}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_6
    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v1, p2

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-le v1, p1, :cond_7

    sub-int/2addr v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    :cond_7
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    if-lt p1, v1, :cond_8

    sub-int/2addr p1, p2

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    :cond_8
    iget p1, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-ltz p1, :cond_9

    iget-object p2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v1

    invoke-static {v1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$containsMark(I[I)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->updateContainsMark(I)V

    :cond_9
    return v0
.end method

.method public final removeSlots(III)V
    .locals 2

    if-lez p2, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    add-int v1, p1, p2

    invoke-virtual {p0, v1, p3}, Landroidx/compose/runtime/SlotWriter;->moveSlotGapTo(II)V

    iput p1, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    add-int/2addr v0, p2

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object p3, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p3, p1, v1, v0}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget p3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    if-lt p3, p1, :cond_0

    sub-int/2addr p3, p2

    iput p3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    :cond_0
    return-void
.end method

.method public final skipGroup()I
    .locals 3

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v1

    iput v1, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, p0}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result p0

    :goto_0
    return p0
.end method

.method public final skipToGroupEnd()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v0

    iput v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    return-void
.end method

.method public final slotIndex(I[I)I
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v0

    if-lt p1, v0, :cond_0

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p1, p1

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr p1, p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Landroidx/compose/runtime/SlotTableKt;->access$slotAnchor(I[I)I

    move-result p1

    iget p2, p0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget-object p0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length p0, p0

    if-gez p1, :cond_1

    sub-int/2addr p0, p2

    add-int/2addr p0, p1

    add-int/lit8 p0, p0, 0x1

    move p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method public final slotIndexOfGroupSlotIndex(II)I
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->slotIndex(I[I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result p0

    add-int v1, v0, p2

    if-lt v1, v0, :cond_0

    if-ge v1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    return v1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Write to an invalid slot index "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " for group "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;
    .locals 2

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->sourceInformationMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/runtime/GroupSourceInformation;

    :cond_0
    return-object v1
.end method

.method public final startGroup()V
    .locals 2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    if-nez v0, :cond_0

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void

    :cond_0
    const-string p0, "Key must be supplied when inserting"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final startGroup(ILjava/lang/Object;)V
    .locals 2

    sget-object v0, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Landroidx/compose/runtime/SlotWriter;->startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V

    return-void
.end method

.method public final startGroup(ILjava/lang/Object;ZLjava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    iget-object v7, v0, Landroidx/compose/runtime/SlotWriter;->nodeCountStack:Landroidx/compose/runtime/IntStack;

    iget v8, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    invoke-virtual {v7, v8}, Landroidx/compose/runtime/IntStack;->push(I)V

    sget-object v7, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    if-eqz v4, :cond_c

    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v8, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v9

    invoke-virtual {v0, v9, v8}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v8

    invoke-virtual {v0, v6}, Landroidx/compose/runtime/SlotWriter;->insertGroups(I)V

    iput v8, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iput v8, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-eq v1, v7, :cond_1

    move v10, v6

    goto :goto_1

    :cond_1
    move v10, v5

    :goto_1
    if-nez p3, :cond_2

    if-eq v2, v7, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v5

    :goto_2
    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    iget v12, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapStart:I

    iget-object v13, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v13, v13

    invoke-static {v8, v12, v11, v13}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAnchor(IIII)I

    move-result v8

    if-ltz v8, :cond_3

    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapOwner:I

    if-ge v11, v4, :cond_3

    iget-object v11, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    array-length v11, v11

    iget v12, v0, Landroidx/compose/runtime/SlotWriter;->slotsGapLen:I

    sub-int/2addr v11, v12

    sub-int/2addr v11, v8

    add-int/2addr v11, v6

    neg-int v8, v11

    :cond_3
    iget-object v6, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v11, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    if-eqz p3, :cond_4

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_3

    :cond_4
    move v12, v5

    :goto_3
    if-eqz v10, :cond_5

    const/high16 v13, 0x20000000

    goto :goto_4

    :cond_5
    move v13, v5

    :goto_4
    if-eqz v7, :cond_6

    const/high16 v14, 0x10000000

    goto :goto_5

    :cond_6
    move v14, v5

    :goto_5
    mul-int/lit8 v9, v9, 0x5

    aput p1, v6, v9

    add-int/lit8 v15, v9, 0x1

    or-int/2addr v12, v13

    or-int/2addr v12, v14

    aput v12, v6, v15

    add-int/lit8 v12, v9, 0x2

    aput v11, v6, v12

    add-int/lit8 v11, v9, 0x3

    aput v5, v6, v11

    add-int/lit8 v9, v9, 0x4

    aput v8, v6, v9

    add-int v6, p3, v10

    add-int/2addr v6, v7

    if-lez v6, :cond_a

    invoke-virtual {v0, v6, v4}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    iget-object v6, v0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v8, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    if-eqz p3, :cond_7

    add-int/lit8 v9, v8, 0x1

    aput-object v2, v6, v8

    move v8, v9

    :cond_7
    if-eqz v10, :cond_8

    add-int/lit8 v9, v8, 0x1

    aput-object v1, v6, v8

    move v8, v9

    :cond_8
    if-eqz v7, :cond_9

    add-int/lit8 v1, v8, 0x1

    aput-object v2, v6, v8

    move v8, v1

    :cond_9
    iput v8, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    :cond_a
    iput v5, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    add-int/lit8 v1, v4, 0x1

    iput v4, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    if-ltz v3, :cond_f

    invoke-virtual {v0, v3}, Landroidx/compose/runtime/SlotWriter;->sourceInformationOf(I)Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v2

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Landroidx/compose/runtime/GroupSourceInformation;->openInformation()Landroidx/compose/runtime/GroupSourceInformation;

    move-result-object v2

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->anchor(I)Landroidx/compose/runtime/Anchor;

    move-result-object v3

    iget-object v4, v2, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    if-nez v4, :cond_b

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_b
    iput-object v4, v2, Landroidx/compose/runtime/GroupSourceInformation;->groups:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_c
    iget-object v1, v0, Landroidx/compose/runtime/SlotWriter;->startStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v1, v3}, Landroidx/compose/runtime/IntStack;->push(I)V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/runtime/SlotWriter;->getCapacity()I

    move-result v1

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    sub-int/2addr v1, v3

    iget-object v3, v0, Landroidx/compose/runtime/SlotWriter;->endStack:Landroidx/compose/runtime/IntStack;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/IntStack;->push(I)V

    iget v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v0, v1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v3

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/runtime/Composer$Companion;->Empty:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    if-eqz p3, :cond_d

    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/SlotWriter;->updateNodeOfGroup(ILjava/lang/Object;)V

    goto :goto_6

    :cond_d
    invoke-virtual {v0, v2}, Landroidx/compose/runtime/SlotWriter;->updateAux(Ljava/lang/Object;)V

    :cond_e
    :goto_6
    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {v0, v3, v2}, Landroidx/compose/runtime/SlotWriter;->slotIndex(I[I)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    iget v4, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    add-int/2addr v4, v6

    invoke-virtual {v0, v4}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v4

    invoke-virtual {v0, v4, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$nodeCount(I[I)I

    move-result v2

    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->nodeCount:I

    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->parent:I

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    iget-object v2, v0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v3, v2}, Landroidx/compose/runtime/SlotTableKt;->access$groupSize(I[I)I

    move-result v2

    add-int/2addr v1, v2

    :cond_f
    :goto_7
    iput v1, v0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SlotWriter(current = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->currentGroupEnd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " gap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/runtime/SlotWriter;->groupGapStart:I

    iget p0, p0, Landroidx/compose/runtime/SlotWriter;->groupGapLen:I

    add-int/2addr v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final tryAnchor$runtime_release(I)Landroidx/compose/runtime/Anchor;
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result v1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->anchors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/compose/runtime/SlotWriter;->getSize$runtime_release()I

    move-result p0

    invoke-static {v1, p1, p0}, Landroidx/compose/runtime/SlotTableKt;->search(Ljava/util/ArrayList;II)I

    move-result p0

    if-ltz p0, :cond_0

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Landroidx/compose/runtime/Anchor;

    :cond_0
    return-object v0
.end method

.method public final update(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->insertCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->parent:I

    invoke-virtual {p0, v1, v0}, Landroidx/compose/runtime/SlotWriter;->insertSlots(II)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    invoke-virtual {p0, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result v2

    aget-object v0, v0, v2

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentSlot:I

    iget v2, p0, Landroidx/compose/runtime/SlotWriter;->currentSlotEnd:I

    if-gt v0, v2, :cond_1

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aput-object p1, v2, p0

    return-void

    :cond_1
    const-string p0, "Writing to an invalid slot"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final updateAux(Ljava/lang/Object;)V
    .locals 4

    iget v0, p0, Landroidx/compose/runtime/SlotWriter;->currentGroup:I

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$hasAux(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v2, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0, v2}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v3

    mul-int/lit8 v0, v0, 0x5

    add-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    shr-int/lit8 v0, v0, 0x1d

    invoke-static {v0}, Landroidx/compose/runtime/SlotTableKt;->countOneBits(I)I

    move-result v0

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aput-object p1, v1, p0

    return-void

    :cond_0
    const-string p0, "Updating the data of a group that was not created with a data slot"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final updateContainsMark(I)V
    .locals 3

    if-ltz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/runtime/PrioritySet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, v2}, Landroidx/compose/runtime/PrioritySet;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Landroidx/compose/runtime/SlotWriter;->pendingRecalculateMarks:Landroidx/compose/runtime/PrioritySet;

    :cond_0
    invoke-virtual {v0, p1}, Landroidx/compose/runtime/PrioritySet;->add(I)V

    :cond_1
    return-void
.end method

.method public final updateNodeOfGroup(ILjava/lang/Object;)V
    .locals 3

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/SlotWriter;->groupIndexToAddress(I)I

    move-result v0

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    invoke-static {v0, v1}, Landroidx/compose/runtime/SlotTableKt;->access$isNode(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p0, Landroidx/compose/runtime/SlotWriter;->slots:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/compose/runtime/SlotWriter;->groups:[I

    invoke-virtual {p0, v0, v1}, Landroidx/compose/runtime/SlotWriter;->dataIndex(I[I)I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/SlotWriter;->dataIndexToDataAddress(I)I

    move-result p0

    aput-object p2, p1, p0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Updating the node of a group at "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " that was not created with as a node group"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeImmediateRuntimeError(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
