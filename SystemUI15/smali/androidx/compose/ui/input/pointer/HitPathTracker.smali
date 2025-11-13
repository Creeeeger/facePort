.class public final Landroidx/compose/ui/input/pointer/HitPathTracker;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final hitPointerIdsAndNodes:Landroidx/collection/MutableLongObjectMap;

.field public final root:Landroidx/compose/ui/input/pointer/NodeParent;

.field public final rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    new-instance p1, Landroidx/compose/ui/input/pointer/NodeParent;

    invoke-direct {p1}, Landroidx/compose/ui/input/pointer/NodeParent;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    new-instance p1, Landroidx/collection/MutableLongObjectMap;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Landroidx/collection/MutableLongObjectMap;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->hitPointerIdsAndNodes:Landroidx/collection/MutableLongObjectMap;

    return-void
.end method


# virtual methods
.method public final addHitPath-QJqDSyo(JLjava/util/List;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/HitPathTracker;->hitPointerIdsAndNodes:Landroidx/collection/MutableLongObjectMap;

    const/4 v4, 0x0

    iput v4, v0, Landroidx/collection/LongObjectMap;->_size:I

    iget-object v5, v0, Landroidx/collection/LongObjectMap;->metadata:[J

    sget-object v6, Landroidx/collection/ScatterMapKt;->EmptyGroup:[J

    const-wide/16 v7, 0xff

    const/4 v9, 0x7

    if-eq v5, v6, :cond_0

    invoke-static {v5}, Lkotlin/collections/ArraysKt___ArraysJvmKt;->fill$default([J)V

    iget-object v5, v0, Landroidx/collection/LongObjectMap;->metadata:[J

    iget v6, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    shr-int/lit8 v10, v6, 0x3

    and-int/2addr v6, v9

    shl-int/lit8 v6, v6, 0x3

    aget-wide v11, v5, v10

    shl-long v13, v7, v6

    not-long v7, v13

    and-long v6, v11, v7

    or-long/2addr v6, v13

    aput-wide v6, v5, v10

    :cond_0
    iget-object v5, v0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    iget v6, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    const/4 v7, 0x0

    invoke-static {v5, v4, v6, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iget v5, v0, Landroidx/collection/LongObjectMap;->_capacity:I

    invoke-static {v5}, Landroidx/collection/ScatterMapKt;->loadedCapacity(I)I

    move-result v5

    iget v6, v0, Landroidx/collection/LongObjectMap;->_size:I

    sub-int/2addr v5, v6

    iput v5, v0, Landroidx/collection/MutableLongObjectMap;->growthLimit:I

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    move-object v11, v3

    move v8, v4

    move v10, v6

    :goto_0
    if-ge v8, v5, :cond_8

    move-object/from16 v12, p3

    invoke-interface {v12, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/compose/ui/Modifier$Node;

    if-eqz v10, :cond_6

    iget-object v14, v11, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget v15, v14, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v15, :cond_3

    iget-object v14, v14, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move/from16 v16, v4

    :goto_1
    aget-object v19, v14, v16

    move-object/from16 v9, v19

    check-cast v9, Landroidx/compose/ui/input/pointer/Node;

    iget-object v9, v9, Landroidx/compose/ui/input/pointer/Node;->modifierNode:Landroidx/compose/ui/Modifier$Node;

    invoke-static {v9, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v9, v16, 0x1

    if-lt v9, v15, :cond_2

    goto :goto_2

    :cond_2
    move/from16 v16, v9

    const/4 v9, 0x7

    goto :goto_1

    :cond_3
    :goto_2
    move-object/from16 v19, v7

    :goto_3
    move-object/from16 v9, v19

    check-cast v9, Landroidx/compose/ui/input/pointer/Node;

    if-eqz v9, :cond_5

    iput-boolean v6, v9, Landroidx/compose/ui/input/pointer/Node;->isIn:Z

    iget-object v11, v9, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v11, v1, v2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->add-0FcD4WY(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_4

    new-instance v11, Landroidx/collection/MutableObjectList;

    invoke-direct {v11, v4, v6, v7}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v2, v11}, Landroidx/collection/MutableLongObjectMap;->set(JLandroidx/collection/MutableObjectList;)V

    :cond_4
    check-cast v11, Landroidx/collection/MutableObjectList;

    invoke-virtual {v11, v9}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    :goto_4
    move-object v11, v9

    goto :goto_5

    :cond_5
    move v10, v4

    :cond_6
    new-instance v9, Landroidx/compose/ui/input/pointer/Node;

    invoke-direct {v9, v13}, Landroidx/compose/ui/input/pointer/Node;-><init>(Landroidx/compose/ui/Modifier$Node;)V

    iget-object v13, v9, Landroidx/compose/ui/input/pointer/Node;->pointerIds:Landroidx/compose/ui/input/pointer/util/PointerIdArray;

    invoke-virtual {v13, v1, v2}, Landroidx/compose/ui/input/pointer/util/PointerIdArray;->add-0FcD4WY(J)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/LongObjectMap;->get(J)Ljava/lang/Object;

    move-result-object v13

    if-nez v13, :cond_7

    new-instance v13, Landroidx/collection/MutableObjectList;

    invoke-direct {v13, v4, v6, v7}, Landroidx/collection/MutableObjectList;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {v0, v1, v2, v13}, Landroidx/collection/MutableLongObjectMap;->set(JLandroidx/collection/MutableObjectList;)V

    :cond_7
    check-cast v13, Landroidx/collection/MutableObjectList;

    invoke-virtual {v13, v9}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    iget-object v11, v11, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v11, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    goto :goto_4

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x7

    goto :goto_0

    :cond_8
    if-eqz p4, :cond_e

    iget-object v1, v0, Landroidx/collection/LongObjectMap;->keys:[J

    iget-object v2, v0, Landroidx/collection/LongObjectMap;->values:[Ljava/lang/Object;

    iget-object v0, v0, Landroidx/collection/LongObjectMap;->metadata:[J

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    if-ltz v5, :cond_e

    move v7, v4

    :goto_6
    aget-wide v8, v0, v7

    not-long v10, v8

    const/4 v12, 0x7

    shl-long/2addr v10, v12

    and-long/2addr v10, v8

    const-wide v13, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v10, v13

    cmp-long v10, v10, v13

    if-eqz v10, :cond_d

    sub-int v10, v7, v5

    not-int v10, v10

    ushr-int/lit8 v10, v10, 0x1f

    const/16 v11, 0x8

    rsub-int/lit8 v10, v10, 0x8

    move v13, v4

    :goto_7
    if-ge v13, v10, :cond_c

    const-wide/16 v14, 0xff

    and-long v16, v8, v14

    const-wide/16 v18, 0x80

    cmp-long v16, v16, v18

    if-gez v16, :cond_b

    shl-int/lit8 v16, v7, 0x3

    add-int v16, v16, v13

    aget-wide v14, v1, v16

    aget-object v16, v2, v16

    move-object/from16 v4, v16

    check-cast v4, Landroidx/collection/MutableObjectList;

    iget-object v12, v3, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget v11, v12, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez v11, :cond_a

    iget-object v12, v12, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    const/16 v16, 0x0

    :goto_8
    aget-object v19, v12, v16

    move-object/from16 p3, v0

    move-object/from16 v0, v19

    check-cast v0, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v0, v14, v15, v4}, Landroidx/compose/ui/input/pointer/Node;->removeInvalidPointerIdsAndChanges(JLandroidx/collection/MutableObjectList;)V

    add-int/lit8 v0, v16, 0x1

    if-lt v0, v11, :cond_9

    goto :goto_9

    :cond_9
    move/from16 v16, v0

    move-object/from16 v0, p3

    goto :goto_8

    :cond_a
    move-object/from16 p3, v0

    :goto_9
    const/16 v0, 0x8

    goto :goto_a

    :cond_b
    move-object/from16 p3, v0

    move v0, v11

    :goto_a
    shr-long/2addr v8, v0

    add-int/lit8 v13, v13, 0x1

    move v11, v0

    const/4 v4, 0x0

    const/4 v12, 0x7

    move-object/from16 v0, p3

    goto :goto_7

    :cond_c
    move-object/from16 p3, v0

    move v0, v11

    if-ne v10, v0, :cond_e

    goto :goto_b

    :cond_d
    move-object/from16 p3, v0

    :goto_b
    if-eq v7, v5, :cond_e

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p3

    const/4 v4, 0x0

    goto :goto_6

    :cond_e
    return-void
.end method

.method public final dispatchChanges(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->root:Landroidx/compose/ui/input/pointer/NodeParent;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/HitPathTracker;->rootCoordinates:Landroidx/compose/ui/layout/LayoutCoordinates;

    iget-object v1, p1, Landroidx/compose/ui/input/pointer/InternalPointerEvent;->changes:Landroidx/collection/LongSparseArray;

    invoke-virtual {v0, v1, p0, p1, p2}, Landroidx/compose/ui/input/pointer/NodeParent;->buildCache(Landroidx/collection/LongSparseArray;Landroidx/compose/ui/layout/LayoutCoordinates;Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return v1

    :cond_0
    iget-object p0, v0, Landroidx/compose/ui/input/pointer/NodeParent;->children:Landroidx/compose/runtime/collection/MutableVector;

    iget v2, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v3, 0x1

    if-lez v2, :cond_4

    iget-object v4, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move v5, v1

    move v6, v5

    :cond_1
    aget-object v7, v4, v5

    check-cast v7, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v7, p1, p2}, Landroidx/compose/ui/input/pointer/Node;->dispatchMainEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;Z)Z

    move-result v7

    if-nez v7, :cond_3

    if-eqz v6, :cond_2

    goto :goto_0

    :cond_2
    move v6, v1

    goto :goto_1

    :cond_3
    :goto_0
    move v6, v3

    :goto_1
    add-int/lit8 v5, v5, 0x1

    if-lt v5, v2, :cond_1

    goto :goto_2

    :cond_4
    move v6, v1

    :goto_2
    iget p2, p0, Landroidx/compose/runtime/collection/MutableVector;->size:I

    if-lez p2, :cond_8

    iget-object p0, p0, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    move v2, v1

    move v4, v2

    :cond_5
    aget-object v5, p0, v2

    check-cast v5, Landroidx/compose/ui/input/pointer/Node;

    invoke-virtual {v5, p1}, Landroidx/compose/ui/input/pointer/Node;->dispatchFinalEventPass(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v4, :cond_6

    goto :goto_3

    :cond_6
    move v4, v1

    goto :goto_4

    :cond_7
    :goto_3
    move v4, v3

    :goto_4
    add-int/lit8 v2, v2, 0x1

    if-lt v2, p2, :cond_5

    goto :goto_5

    :cond_8
    move v4, v1

    :goto_5
    invoke-virtual {v0, p1}, Landroidx/compose/ui/input/pointer/NodeParent;->cleanUpHits(Landroidx/compose/ui/input/pointer/InternalPointerEvent;)V

    if-nez v4, :cond_9

    if-eqz v6, :cond_a

    :cond_9
    move v1, v3

    :cond_a
    return v1
.end method
