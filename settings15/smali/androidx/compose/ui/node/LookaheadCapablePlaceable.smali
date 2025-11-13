.class public abstract Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.super Landroidx/compose/ui/layout/Placeable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/ui/node/MeasureScopeWithLayoutNode;
.implements Landroidx/compose/ui/node/FrameOfReferencePlacementDelegate;


# static fields
.field public static final onCommitAffectingRuler:Lkotlin/jvm/functions/Function1;


# instance fields
.field public isPlacedUsingCurrentFrameOfReference:Z

.field public isPlacingForAlignment:Z

.field public isShallowPlacing:Z

.field public final placementScope:Landroidx/compose/ui/layout/LookaheadCapablePlacementScope;

.field public rulerValues:Landroidx/collection/MutableObjectFloatMap;

.field public rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1;->INSTANCE:Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1;

    sput-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->onCommitAffectingRuler:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    new-instance v0, Landroidx/compose/ui/layout/LookaheadCapablePlacementScope;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/LookaheadCapablePlacementScope;-><init>(Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    iput-object v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->placementScope:Landroidx/compose/ui/layout/LookaheadCapablePlacementScope;

    return-void
.end method

.method public static invalidateAlignmentLinesFromPositionChange(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->onAlignmentsChanged()V

    goto :goto_1

    :cond_1
    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate$MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LayoutNodeAlignmentLines;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroidx/compose/ui/node/AlignmentLines;->onAlignmentsChanged()V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public abstract calculateAlignmentLine(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I
.end method

.method public final captureRulers(Landroidx/compose/ui/node/PlaceableResult;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    if-nez v2, :cond_1

    goto/16 :goto_11

    :cond_1
    iget-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/collection/MutableObjectFloatMap;

    invoke-direct {v2}, Landroidx/collection/MutableObjectFloatMap;-><init>()V

    iput-object v2, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;

    :cond_2
    iget-object v3, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-nez v3, :cond_3

    new-instance v3, Landroidx/collection/MutableObjectFloatMap;

    invoke-direct {v3}, Landroidx/collection/MutableObjectFloatMap;-><init>()V

    iput-object v3, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    :cond_3
    iget-object v4, v3, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    iget-object v5, v3, Landroidx/collection/MutableObjectFloatMap;->values:[F

    iget-object v6, v3, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    array-length v7, v6

    add-int/lit8 v7, v7, -0x2

    const/4 v8, 0x7

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    if-ltz v7, :cond_10

    const/4 v10, 0x0

    :goto_0
    aget-wide v12, v6, v10

    move/from16 v20, v10

    not-long v9, v12

    shl-long/2addr v9, v8

    and-long/2addr v9, v12

    and-long/2addr v9, v14

    cmp-long v9, v9, v14

    if-eqz v9, :cond_f

    sub-int v10, v20, v7

    not-int v9, v10

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v9, :cond_e

    const-wide/16 v18, 0xff

    and-long v21, v12, v18

    const-wide/16 v16, 0x80

    cmp-long v21, v21, v16

    if-gez v21, :cond_d

    shl-int/lit8 v21, v20, 0x3

    add-int v21, v21, v10

    aget-object v11, v4, v21

    aget v21, v5, v21

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Ljava/lang/Object;->hashCode()I

    move-result v23

    goto :goto_2

    :cond_4
    const/16 v23, 0x0

    :goto_2
    const v24, -0x3361d2af    # -8.293031E7f

    mul-int v23, v23, v24

    shl-int/lit8 v24, v23, 0x10

    xor-int v23, v23, v24

    ushr-int/lit8 v8, v23, 0x7

    and-int/lit8 v14, v23, 0x7f

    iget v15, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    and-int v23, v8, v15

    move-object/from16 v28, v4

    const/16 v27, 0x0

    :goto_3
    iget-object v4, v2, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    shr-int/lit8 v29, v23, 0x3

    and-int/lit8 v30, v23, 0x7

    move-object/from16 v31, v5

    shl-int/lit8 v5, v30, 0x3

    aget-wide v32, v4, v29

    ushr-long v32, v32, v5

    const/16 v30, 0x1

    add-int/lit8 v29, v29, 0x1

    aget-wide v34, v4, v29

    rsub-int/lit8 v4, v5, 0x40

    shl-long v34, v34, v4

    int-to-long v4, v5

    neg-long v4, v4

    const/16 v29, 0x3f

    shr-long v4, v4, v29

    and-long v4, v34, v4

    or-long v4, v32, v4

    int-to-long v0, v14

    const-wide v32, 0x101010101010101L

    mul-long v34, v0, v32

    move-object/from16 v29, v6

    move/from16 v36, v7

    xor-long v6, v4, v34

    sub-long v32, v6, v32

    not-long v6, v6

    and-long v6, v32, v6

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v6, v6, v25

    :goto_4
    const-wide/16 v32, 0x0

    cmp-long v34, v6, v32

    if-eqz v34, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v32

    shr-int/lit8 v32, v32, 0x3

    add-int v32, v23, v32

    and-int v32, v32, v15

    move/from16 v34, v14

    iget-object v14, v2, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    aget-object v14, v14, v32

    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    move/from16 v22, v9

    move/from16 v0, v32

    goto/16 :goto_8

    :cond_5
    const-wide/16 v32, 0x1

    sub-long v32, v6, v32

    and-long v6, v6, v32

    move/from16 v14, v34

    goto :goto_4

    :cond_6
    move/from16 v34, v14

    not-long v6, v4

    const/4 v14, 0x6

    shl-long/2addr v6, v14

    and-long/2addr v4, v6

    const-wide v6, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v4, v6

    cmp-long v4, v4, v32

    if-eqz v4, :cond_c

    invoke-virtual {v2, v8}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    move-result v4

    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    if-nez v5, :cond_9

    iget-object v5, v2, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    shr-int/lit8 v6, v4, 0x3

    aget-wide v5, v5, v6

    and-int/lit8 v7, v4, 0x7

    shl-int/lit8 v7, v7, 0x3

    shr-long/2addr v5, v7

    const-wide/16 v14, 0xff

    and-long/2addr v5, v14

    const-wide/16 v14, 0xfe

    cmp-long v5, v5, v14

    if-nez v5, :cond_7

    goto :goto_6

    :cond_7
    iget v4, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    const/16 v5, 0x8

    if-le v4, v5, :cond_8

    iget v6, v2, Landroidx/collection/MutableObjectFloatMap;->_size:I

    int-to-long v6, v6

    const-wide/16 v14, 0x20

    mul-long/2addr v6, v14

    int-to-long v14, v4

    const-wide/16 v22, 0x19

    mul-long v14, v14, v22

    invoke-static {v6, v7, v14, v15}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v4

    if-gtz v4, :cond_8

    iget v4, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    invoke-static {v4}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/collection/MutableObjectFloatMap;->resizeStorage(I)V

    goto :goto_5

    :cond_8
    iget v4, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    invoke-static {v4}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroidx/collection/MutableObjectFloatMap;->resizeStorage(I)V

    :goto_5
    invoke-virtual {v2, v8}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    move-result v4

    :cond_9
    :goto_6
    iget v6, v2, Landroidx/collection/MutableObjectFloatMap;->_size:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v2, Landroidx/collection/MutableObjectFloatMap;->_size:I

    iget v6, v2, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    iget-object v7, v2, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    shr-int/lit8 v8, v4, 0x3

    aget-wide v14, v7, v8

    and-int/lit8 v22, v4, 0x7

    shl-int/lit8 v22, v22, 0x3

    shr-long v32, v14, v22

    const-wide/16 v18, 0xff

    and-long v32, v32, v18

    const-wide/16 v16, 0x80

    cmp-long v23, v32, v16

    if-nez v23, :cond_a

    goto :goto_7

    :cond_a
    const/16 v30, 0x0

    :goto_7
    sub-int v6, v6, v30

    iput v6, v2, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    shl-long v5, v18, v22

    not-long v5, v5

    and-long/2addr v5, v14

    shl-long v14, v0, v22

    or-long/2addr v5, v14

    aput-wide v5, v7, v8

    iget v5, v2, Landroidx/collection/MutableObjectFloatMap;->_capacity:I

    add-int/lit8 v6, v4, -0x7

    and-int/2addr v6, v5

    const/4 v8, 0x7

    and-int/2addr v5, v8

    add-int/2addr v6, v5

    shr-int/lit8 v5, v6, 0x3

    and-int/2addr v6, v8

    shl-int/lit8 v6, v6, 0x3

    aget-wide v14, v7, v5

    move/from16 v22, v9

    const-wide/16 v18, 0xff

    shl-long v8, v18, v6

    not-long v8, v8

    and-long/2addr v8, v14

    shl-long/2addr v0, v6

    or-long/2addr v0, v8

    aput-wide v0, v7, v5

    not-int v0, v4

    :goto_8
    if-gez v0, :cond_b

    not-int v0, v0

    :cond_b
    iget-object v1, v2, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    aput-object v11, v1, v0

    iget-object v1, v2, Landroidx/collection/MutableObjectFloatMap;->values:[F

    aput v21, v1, v0

    :goto_9
    const/16 v0, 0x8

    goto :goto_a

    :cond_c
    move/from16 v22, v9

    const/16 v0, 0x8

    add-int/lit8 v27, v27, 0x8

    add-int v23, v23, v27

    and-int v23, v23, v15

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, v29

    move-object/from16 v5, v31

    move/from16 v14, v34

    move/from16 v7, v36

    goto/16 :goto_3

    :cond_d
    move-object/from16 v28, v4

    move-object/from16 v31, v5

    move-object/from16 v29, v6

    move/from16 v36, v7

    move/from16 v22, v9

    goto :goto_9

    :goto_a
    shr-long/2addr v12, v0

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move/from16 v9, v22

    move-object/from16 v4, v28

    move-object/from16 v6, v29

    move-object/from16 v5, v31

    move/from16 v7, v36

    const/4 v8, 0x7

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_e
    move-object/from16 v28, v4

    move-object/from16 v31, v5

    move-object/from16 v29, v6

    move/from16 v36, v7

    const/16 v0, 0x8

    if-ne v9, v0, :cond_10

    move/from16 v0, v20

    move/from16 v7, v36

    goto :goto_b

    :cond_f
    move-object/from16 v28, v4

    move-object/from16 v31, v5

    move-object/from16 v29, v6

    move/from16 v0, v20

    :goto_b
    if-eq v0, v7, :cond_10

    add-int/lit8 v10, v0, 0x1

    move-object/from16 v1, p1

    move-object/from16 v4, v28

    move-object/from16 v6, v29

    move-object/from16 v5, v31

    const/4 v8, 0x7

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_10
    invoke-virtual {v3}, Landroidx/collection/MutableObjectFloatMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_11

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeView;->snapshotObserver:Landroidx/compose/ui/node/OwnerSnapshotObserver;

    if-eqz v0, :cond_11

    sget-object v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->onCommitAffectingRuler:Lkotlin/jvm/functions/Function1;

    new-instance v4, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct {v4, v6, v5}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;-><init>(Landroidx/compose/ui/node/PlaceableResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    invoke-virtual {v0, v6, v1, v4}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    goto :goto_c

    :cond_11
    move-object/from16 v5, p0

    :goto_c
    iget-object v0, v3, Landroidx/collection/MutableObjectFloatMap;->keys:[Ljava/lang/Object;

    iget-object v1, v3, Landroidx/collection/MutableObjectFloatMap;->metadata:[J

    array-length v3, v1

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_18

    const/4 v4, 0x0

    :goto_d
    aget-wide v6, v1, v4

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v12

    cmp-long v8, v8, v12

    if-eqz v8, :cond_17

    sub-int v8, v4, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v8, :cond_16

    const-wide/16 v14, 0xff

    and-long v18, v6, v14

    const-wide/16 v16, 0x80

    cmp-long v18, v18, v16

    if-gez v18, :cond_15

    shl-int/lit8 v18, v4, 0x3

    add-int v18, v18, v9

    aget-object v18, v0, v18

    invoke-static/range {v18 .. v18}, Landroidx/appcompat/app/ToolbarActionBar$$ExternalSyntheticThrowCCEIfNotNull0;->m(Ljava/lang/Object;)V

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Landroidx/collection/MutableObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v18

    if-ltz v18, :cond_12

    goto :goto_f

    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v18

    if-eqz v18, :cond_15

    move-object/from16 v11, v18

    :cond_13
    iget-object v12, v11, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-eqz v12, :cond_14

    invoke-virtual {v12, v10}, Landroidx/collection/MutableObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v12

    if-ltz v12, :cond_14

    goto :goto_f

    :cond_14
    invoke-virtual {v11}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v11

    if-nez v11, :cond_13

    :cond_15
    :goto_f
    const/16 v10, 0x8

    shr-long/2addr v6, v10

    add-int/lit8 v9, v9, 0x1

    const/4 v10, 0x7

    const-wide v12, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_e

    :cond_16
    const/16 v10, 0x8

    const-wide/16 v14, 0xff

    const-wide/16 v16, 0x80

    if-ne v8, v10, :cond_18

    goto :goto_10

    :cond_17
    const/16 v10, 0x8

    const-wide/16 v14, 0xff

    const-wide/16 v16, 0x80

    :goto_10
    if-eq v4, v3, :cond_18

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_18
    invoke-virtual {v2}, Landroidx/collection/MutableObjectFloatMap;->clear()V

    :goto_11
    return-void
.end method

.method public final get(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I
    .locals 4

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getHasMeasureResult()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->calculateAlignmentLine(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I

    move-result p1

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    add-int/2addr p1, p0

    return p1
.end method

.method public abstract getChild()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public abstract getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
.end method

.method public abstract getHasMeasureResult()Z
.end method

.method public abstract getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
.end method

.method public abstract getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;
.end method

.method public abstract getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.end method

.method public abstract getPosition-nOcc-ac()J
.end method

.method public isLookingAhead()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final layout(IILjava/util/Map;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;
    .locals 7

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;-><init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p3, "Size("

    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " x "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public abstract replace$ui_release()V
.end method

.method public final setPlacedUsingCurrentFrameOfReference(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUsingCurrentFrameOfReference:Z

    return-void
.end method
