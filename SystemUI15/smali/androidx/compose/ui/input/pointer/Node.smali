.class public final Landroidx/compose/ui/input/pointer/Node;
.super Landroidx/compose/ui/input/pointer/NodeParent;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public coordinates:Landroidx/compose/ui/node/NodeCoordinator;

.field public hasExited:Z

.field public isIn:Z

.field public final modifierNode:Landroidx/compose/ui/Modifier$Node;

.field public pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

.field public final pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

.field public final relevantChanges:Landroidx/collection/LongSparseArray;

.field public wasIn:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/Modifier$Node;)V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    new-instance p1, Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    new-instance p1, Landroidx/collection/LongSparseArray;

    const/4 v0, 0x2

    invoke-direct {p1, v0}, Landroidx/collection/LongSparseArray;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    return-void
.end method


# virtual methods
.method public final buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 43

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p4}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v4

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v6, v5, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    const/4 v7, 0x1

    if-nez v6, :cond_0

    return v7

    :cond_0
    const/4 v8, 0x0

    :goto_0
    const/4 v9, 0x0

    if-eqz v5, :cond_8

    instance-of v10, v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    const/16 v11, 0x10

    if-eqz v10, :cond_1

    check-cast v5, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-static {v5, v11}, Landroidx/compose/ui/node/DelegatableNodeKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v5

    iput-object v5, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_3

    :cond_1
    iget v10, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v10, v11

    if-eqz v10, :cond_7

    instance-of v10, v5, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_7

    move-object v10, v5

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v12, v9

    :goto_1
    if-eqz v10, :cond_6

    iget v13, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v13, v11

    if-eqz v13, :cond_5

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v7, :cond_2

    move-object v5, v10

    goto :goto_2

    :cond_2
    if-nez v8, :cond_3

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v13, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_3
    if-eqz v5, :cond_4

    invoke-virtual {v8, v5}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v5, 0x0

    :cond_4
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_6
    if-ne v12, v7, :cond_7

    goto :goto_0

    :cond_7
    :goto_3
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    goto :goto_0

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroidx/collection/LongSparseArray;->size()I

    move-result v5

    move v8, v9

    :goto_4
    iget-object v10, v0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    iget-object v11, v0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    if-ge v8, v5, :cond_e

    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->keyAt(I)J

    move-result-wide v12

    invoke-virtual {v1, v8}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-virtual {v11, v12, v13}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->contains(J)Z

    move-result v11

    if-eqz v11, :cond_d

    iget-wide v6, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->isValid-impl(J)Z

    move-result v11

    if-eqz v11, :cond_d

    move-object/from16 v16, v10

    iget-wide v9, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v9, v10}, Landroidx/compose/ui/geometry/Offset;->isValid-impl(J)Z

    move-result v11

    if-eqz v11, :cond_d

    new-instance v11, Ljava/util/ArrayList;

    iget-object v15, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/List;

    if-nez v15, :cond_9

    sget-object v15, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_9
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    invoke-direct {v11, v15}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v15, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/List;

    if-nez v15, :cond_a

    sget-object v15, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_a
    move/from16 v39, v5

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v5

    move/from16 v40, v4

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_c

    invoke-interface {v15, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    move/from16 v18, v5

    move-object/from16 v5, v17

    check-cast v5, Landroidx/compose/ui/input/pointer/HistoricalChange;

    move-wide/from16 v41, v12

    iget-wide v12, v5, Landroidx/compose/ui/input/pointer/HistoricalChange;->position:J

    invoke-static {v12, v13}, Landroidx/compose/ui/geometry/Offset;->isValid-impl(J)Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v17, v15

    new-instance v15, Landroidx/compose/ui/input/pointer/HistoricalChange;

    iget-object v3, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v2, v12, v13, v1}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU$ui_release(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v22

    iget-wide v12, v5, Landroidx/compose/ui/input/pointer/HistoricalChange;->uptimeMillis:J

    move v1, v8

    move-wide/from16 v27, v9

    iget-wide v8, v5, Landroidx/compose/ui/input/pointer/HistoricalChange;->originalEventPosition:J

    const/16 v26, 0x0

    move-object/from16 v19, v15

    move-wide/from16 v20, v12

    move-wide/from16 v24, v8

    invoke-direct/range {v19 .. v26}, Landroidx/compose/ui/input/pointer/HistoricalChange;-><init>(JJJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    move v1, v8

    move-wide/from16 v27, v9

    move-object/from16 v17, v15

    :goto_6
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v3, p3

    move v8, v1

    move-object/from16 v15, v17

    move/from16 v5, v18

    move-wide/from16 v9, v27

    move-wide/from16 v12, v41

    move-object/from16 v1, p1

    goto :goto_5

    :cond_c
    move v1, v8

    move-wide/from16 v27, v9

    move-wide/from16 v41, v12

    iget-object v3, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v6, v7, v4}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU$ui_release(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v5

    iget-object v3, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-wide/from16 v7, v27

    invoke-virtual {v3, v2, v7, v8, v4}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU$ui_release(Landroidx/compose/ui/layout/LayoutCoordinates;JZ)J

    move-result-wide v22

    new-instance v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    move-object/from16 v17, v3

    iget-wide v7, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    move-wide/from16 v34, v7

    iget-wide v7, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->originalEventPosition:J

    move-wide/from16 v36, v7

    iget-wide v7, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    move-wide/from16 v18, v7

    iget-wide v7, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    move-wide/from16 v20, v7

    iget-boolean v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    move/from16 v24, v4

    iget v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressure:F

    move/from16 v25, v4

    iget-wide v7, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    move-wide/from16 v26, v7

    iget-boolean v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    move/from16 v30, v4

    const/16 v31, 0x0

    iget v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    move/from16 v32, v4

    const/16 v38, 0x0

    move-wide/from16 v28, v5

    move-object/from16 v33, v11

    invoke-direct/range {v17 .. v38}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZZILjava/util/List;JJLkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v4, v14, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    iput-object v4, v3, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumed:Landroidx/compose/ui/input/pointer/ConsumedData;

    move-object/from16 v4, v16

    move-wide/from16 v5, v41

    invoke-virtual {v4, v3, v5, v6}, Landroidx/collection/LongSparseArray;->put(Ljava/lang/Object;J)V

    goto :goto_7

    :cond_d
    move/from16 v40, v4

    move/from16 v39, v5

    move v1, v8

    :goto_7
    add-int/lit8 v8, v1, 0x1

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    move/from16 v5, v39

    move/from16 v4, v40

    const/4 v7, 0x1

    const/4 v9, 0x0

    goto/16 :goto_4

    :cond_e
    move/from16 v40, v4

    move-object v4, v10

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    if-nez v1, :cond_f

    const/4 v1, 0x0

    iput v1, v11, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0}, Landroidx/compose/runtime/collection/MutableVector;->clear()V

    const/4 v1, 0x1

    return v1

    :cond_f
    const/4 v1, 0x1

    iget v2, v11, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    sub-int/2addr v2, v1

    :goto_8
    const/4 v1, -0x1

    if-ge v1, v2, :cond_11

    iget-object v1, v11, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->internalArray:[J

    aget-wide v5, v1, v2

    move-object/from16 v1, p1

    invoke-virtual {v1, v5, v6}, Landroidx/collection/LongSparseArray;->indexOfKey(J)I

    move-result v3

    if-ltz v3, :cond_10

    goto :goto_9

    :cond_10
    invoke-virtual {v11, v2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->removeAt(I)V

    :goto_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_8

    :cond_11
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v4}, Landroidx/collection/LongSparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_a
    if-ge v3, v2, :cond_12

    invoke-virtual {v4, v3}, Landroidx/collection/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_12
    new-instance v2, Landroidx/compose/ui/input/pointer/PointerEvent;

    move-object/from16 v3, p3

    invoke-direct {v2, v1, v3}, Landroidx/compose/ui/input/pointer/PointerEvent;-><init>(Ljava/util/List;Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    iget-object v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v4, :cond_14

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v7, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    invoke-virtual {v3, v7, v8}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->activeHoverEvent-0FcD4WY(J)Z

    move-result v7

    if-eqz v7, :cond_13

    goto :goto_c

    :cond_13
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_14
    const/4 v6, 0x0

    :goto_c
    check-cast v6, Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v6, :cond_1c

    iget-boolean v1, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    if-nez p4, :cond_16

    const/4 v3, 0x0

    iput-boolean v3, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    :cond_15
    const/4 v5, 0x1

    goto :goto_d

    :cond_16
    const/4 v3, 0x0

    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-nez v4, :cond_15

    if-nez v1, :cond_17

    iget-boolean v4, v6, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    if-eqz v4, :cond_15

    :cond_17
    iget-object v4, v0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v4, v4, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-static {v6, v4, v5}, Landroidx/compose/ui/input/pointer/PointerEventKt;->isOutOfBounds-O0kMr_c(Landroidx/compose/ui/input/pointer/PointerInputChange;J)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    iput-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    :goto_d
    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iget-boolean v6, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    if-eq v4, v6, :cond_1a

    iget v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/input/pointer/PointerEventType;->Move:I

    invoke-static {v4, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v4

    if-nez v4, :cond_18

    iget v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    sget v6, Landroidx/compose/ui/input/pointer/PointerEventType;->Enter:I

    invoke-static {v4, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v4

    if-nez v4, :cond_18

    iget v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    sget v6, Landroidx/compose/ui/input/pointer/PointerEventType;->Exit:I

    invoke-static {v4, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_1a

    :cond_18
    iget-boolean v1, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-eqz v1, :cond_19

    sget v1, Landroidx/compose/ui/input/pointer/PointerEventType;->Enter:I

    goto :goto_e

    :cond_19
    sget v1, Landroidx/compose/ui/input/pointer/PointerEventType;->Exit:I

    :goto_e
    iput v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    goto :goto_f

    :cond_1a
    iget v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    sget-object v6, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v6, Landroidx/compose/ui/input/pointer/PointerEventType;->Enter:I

    invoke-static {v4, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    if-eqz v4, :cond_1b

    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    if-nez v4, :cond_1b

    sget v1, Landroidx/compose/ui/input/pointer/PointerEventType;->Move:I

    iput v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    goto :goto_f

    :cond_1b
    iget v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    sget v6, Landroidx/compose/ui/input/pointer/PointerEventType;->Exit:I

    invoke-static {v4, v6}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-boolean v4, v0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    if-eqz v4, :cond_1d

    if-eqz v1, :cond_1d

    sget v1, Landroidx/compose/ui/input/pointer/PointerEventType;->Move:I

    iput v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    goto :goto_f

    :cond_1c
    const/4 v3, 0x0

    const/4 v5, 0x1

    :cond_1d
    :goto_f
    if-nez v40, :cond_21

    iget v1, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    sget-object v4, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v4, Landroidx/compose/ui/input/pointer/PointerEventType;->Move:I

    invoke-static {v1, v4}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    if-eqz v1, :cond_21

    iget-object v4, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget-object v6, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-eq v4, v6, :cond_1e

    goto :goto_11

    :cond_1e
    iget-object v4, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    move v6, v3

    :goto_10
    if-ge v6, v4, :cond_20

    iget-object v7, v1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-object v8, v2, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-wide v9, v7, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    iget-wide v7, v8, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v7

    if-nez v7, :cond_1f

    goto :goto_11

    :cond_1f
    add-int/lit8 v6, v6, 0x1

    goto :goto_10

    :cond_20
    move v7, v3

    goto :goto_12

    :cond_21
    :goto_11
    move v7, v5

    :goto_12
    iput-object v2, v0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    return v7
.end method

.method public final cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V
    .locals 12

    invoke-super {p0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iput-boolean v1, p0, Landroidx/compose/ui/input/pointer/Node;->wasIn:Z

    iget-object v1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/input/pointer/PointerInputChange;

    iget-boolean v6, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    xor-int/lit8 v6, v6, 0x1

    iget-wide v7, v5, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    invoke-virtual {p1, v7, v8}, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->activeHoverEvent-0FcD4WY(J)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    iget-boolean v9, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    xor-int/lit8 v9, v9, 0x1

    if-eqz v6, :cond_1

    if-nez v5, :cond_2

    :cond_1
    if-eqz v6, :cond_4

    if-eqz v9, :cond_4

    :cond_2
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    iget v6, v5, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    move v9, v3

    :goto_1
    if-ge v9, v6, :cond_4

    iget-object v10, v5, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->internalArray:[J

    aget-wide v10, v10, v9

    cmp-long v10, v7, v10

    if-nez v10, :cond_3

    invoke-virtual {v5, v9}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->removeAt(I)V

    goto :goto_2

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_5
    iput-boolean v3, p0, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iget p1, v0, Landroidx/compose/ui/input/pointer/PointerEvent;->type:I

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Companion:Landroidx/compose/ui/input/pointer/PointerEventType$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v0, Landroidx/compose/ui/input/pointer/PointerEventType;->Exit:I

    invoke-static {p1, v0}, Landroidx/compose/ui/input/pointer/PointerEventType;->equals-impl0(II)Z

    move-result p1

    iput-boolean p1, p0, Landroidx/compose/ui/input/pointer/Node;->hasExited:Z

    return-void
.end method

.method public final dispatchCancel()V
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget v1, v0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    iget-object v0, v0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move v4, v3

    :cond_0
    aget-object v5, v0, v4

    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v5}, Landroidx/compose/ui/input/pointer/Node;->dispatchCancel()V

    add-int/2addr v4, v2

    if-lt v4, v1, :cond_0

    :cond_1
    const/4 v0, 0x0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    move-object v1, v0

    :goto_0
    if-eqz p0, :cond_9

    instance-of v4, p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v4, :cond_2

    check-cast p0, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {p0}, Landroidx/compose/ui/node/PointerInputModifierNode;->onCancelPointerInput()V

    goto :goto_3

    :cond_2
    iget v4, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-eqz v4, :cond_8

    instance-of v4, p0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_8

    move-object v4, p0

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v6, v3

    :goto_1
    if-eqz v4, :cond_7

    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v5

    if-eqz v7, :cond_6

    add-int/lit8 v6, v6, 0x1

    if-ne v6, v2, :cond_3

    move-object p0, v4

    goto :goto_2

    :cond_3
    if-nez v1, :cond_4

    new-instance v1, Landroidx/compose/runtime/collection/MutableVector;

    new-array v7, v5, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v1, v7, v3}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_4
    if-eqz p0, :cond_5

    invoke-virtual {v1, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object p0, v0

    :cond_5
    invoke-virtual {v1, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_7
    if-ne v6, v2, :cond_8

    goto :goto_0

    :cond_8
    :goto_3
    invoke-static {v1}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    goto :goto_0

    :cond_9
    return-void
.end method

.method public final dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z
    .locals 14

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v5, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v5, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v5, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v6, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v6, v6, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    move-object v8, v1

    move-object v9, v4

    :goto_1
    if-eqz v8, :cond_a

    instance-of v10, v8, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v10, :cond_3

    check-cast v8, Landroidx/compose/ui/node/PointerInputModifierNode;

    sget-object v10, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v8, v5, v10, v6, v7}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_4

    :cond_3
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    const/16 v11, 0x10

    and-int/2addr v10, v11

    if-eqz v10, :cond_9

    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_9

    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v12, v2

    :goto_2
    if-eqz v10, :cond_8

    iget v13, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v13, v11

    if-eqz v13, :cond_7

    add-int/lit8 v12, v12, 0x1

    if-ne v12, v3, :cond_4

    move-object v8, v10

    goto :goto_3

    :cond_4
    if-nez v9, :cond_5

    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    new-array v13, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v13, v2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz v8, :cond_6

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v8, v4

    :cond_6
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_8
    if-ne v12, v3, :cond_9

    goto :goto_1

    :cond_9
    :goto_4
    invoke-static {v9}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_1

    :cond_a
    iget-boolean v1, v1, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v1, :cond_c

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget v5, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v5, :cond_c

    iget-object v1, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    :cond_b
    aget-object v6, v1, v2

    check-cast v6, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v6, p1}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    add-int/2addr v2, v3

    if-lt v2, v5, :cond_b

    :cond_c
    move v2, v3

    :goto_5
    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/Node;->cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->clear()V

    iput-object v4, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    return v2
.end method

.method public final dispatchMainEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 13

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0}, Landroidx/collection/LongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v3, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v3, :cond_2

    goto/16 :goto_9

    :cond_2
    iget-object v3, p0, Landroidx/compose/ui/input/pointer/Node;->pointerEvent:Landroidx/compose/ui/input/pointer/PointerEvent;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v4, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v4, v4, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    const/4 v6, 0x0

    move-object v7, v0

    move-object v8, v6

    :goto_1
    const/16 v9, 0x10

    if-eqz v7, :cond_a

    instance-of v10, v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v10, :cond_3

    check-cast v7, Landroidx/compose/ui/node/PointerInputModifierNode;

    sget-object v9, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v7, v3, v9, v4, v5}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_4

    :cond_3
    iget v10, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v10, v9

    if-eqz v10, :cond_9

    instance-of v10, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_9

    move-object v10, v7

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v11, v1

    :goto_2
    if-eqz v10, :cond_8

    iget v12, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v12, v9

    if-eqz v12, :cond_7

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v2, :cond_4

    move-object v7, v10

    goto :goto_3

    :cond_4
    if-nez v8, :cond_5

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    new-array v12, v9, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v12, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v7, v6

    :cond_6
    invoke-virtual {v8, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_7
    :goto_3
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_8
    if-ne v11, v2, :cond_9

    goto :goto_1

    :cond_9
    :goto_4
    invoke-static {v8}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_1

    :cond_a
    iget-boolean v7, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v7, :cond_c

    iget-object v7, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget v8, v7, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v8, :cond_c

    iget-object v7, v7, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move v10, v1

    :cond_b
    aget-object v11, v7, v10

    check-cast v11, Landroidx/compose/ui/input/pointer/Node;

    iget-object v12, p0, Landroidx/compose/ui/input/pointer/Node;->coordinates:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v11, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    add-int/2addr v10, v2

    if-lt v10, v8, :cond_b

    :cond_c
    iget-boolean p0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p0, :cond_14

    move-object p0, v6

    :goto_5
    if-eqz v0, :cond_14

    instance-of p1, v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz p1, :cond_d

    check-cast v0, Landroidx/compose/ui/node/PointerInputModifierNode;

    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Main:Landroidx/compose/ui/input/pointer/PointerEventPass;

    invoke-interface {v0, v3, p1, v4, v5}, Landroidx/compose/ui/node/PointerInputModifierNode;->onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V

    goto :goto_8

    :cond_d
    iget p1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr p1, v9

    if-eqz p1, :cond_13

    instance-of p1, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz p1, :cond_13

    move-object p1, v0

    check-cast p1, Landroidx/compose/ui/node/DelegatingNode;

    iget-object p1, p1, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move p2, v1

    :goto_6
    if-eqz p1, :cond_12

    iget v7, p1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v9

    if-eqz v7, :cond_11

    add-int/lit8 p2, p2, 0x1

    if-ne p2, v2, :cond_e

    move-object v0, p1

    goto :goto_7

    :cond_e
    if-nez p0, :cond_f

    new-instance p0, Landroidx/compose/runtime/collection/MutableVector;

    new-array v7, v9, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {p0, v7, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;I)V

    :cond_f
    if-eqz v0, :cond_10

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v0, v6

    :cond_10
    invoke-virtual {p0, p1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_11
    :goto_7
    iget-object p1, p1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_6

    :cond_12
    if-ne p2, v2, :cond_13

    goto :goto_5

    :cond_13
    :goto_8
    invoke-static {p0}, Landroidx/compose/ui/node/DelegatableNodeKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_5

    :cond_14
    move v1, v2

    :goto_9
    return v1
.end method

.method public final removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v0, p1, p2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->contains(J)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    iget-object v1, p3, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    iget v4, p3, Landroidx/collection/ObjectList;->_size:I

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v1, v5

    invoke-virtual {p0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, -0x1

    :goto_1
    if-ltz v5, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    if-nez v1, :cond_5

    iget v1, v0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->size:I

    move v4, v2

    :goto_3
    if-ge v4, v1, :cond_4

    iget-object v5, v0, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->internalArray:[J

    aget-wide v5, v5, v4

    cmp-long v5, p1, v5

    if-nez v5, :cond_3

    invoke-virtual {v0, v4}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->removeAt(I)V

    goto :goto_4

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/Node;->relevantChanges:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/LongSparseArray;->remove(J)V

    :cond_5
    iget-object p0, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget v0, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v0, :cond_7

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    :cond_6
    aget-object v1, p0, v2

    check-cast v1, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/compose/ui/input/pointer/Node;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    add-int/2addr v2, v3

    if-lt v2, v0, :cond_6

    :cond_7
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Node(pointerInputFilter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", children="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pointerIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
