.class public abstract Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.super Landroidx/compose/ui/layout/Placeable;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

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
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1;->INSTANCE:Landroidx/compose/ui/node/LookaheadCapablePlaceable$Companion$onCommitAffectingRuler$1;

    sput-object v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->onCommitAffectingRuler:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable;-><init>()V

    sget-object v0, Landroidx/compose/ui/layout/PlaceableKt;->DefaultLayerBlock:Lkotlin/jvm/functions/Function1;

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
.method public abstract calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I
.end method

.method public final captureRulers(Landroidx/compose/ui/node/PlaceableResult;)V
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x7

    iget-boolean v4, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v1, Landroidx/compose/ui/node/PlaceableResult;->result:Landroidx/compose/ui/layout/MeasureResult;

    invoke-interface {v4}, Landroidx/compose/ui/layout/MeasureResult;->getRulers()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    if-nez v4, :cond_1

    goto/16 :goto_11

    :cond_1
    iget-object v4, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_2

    new-instance v4, Landroidx/collection/MutableObjectFloatMap;

    invoke-direct {v4, v6, v2, v5}, Landroidx/collection/MutableObjectFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v4, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValuesCache:Landroidx/collection/MutableObjectFloatMap;

    :cond_2
    iget-object v7, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-nez v7, :cond_3

    new-instance v7, Landroidx/collection/MutableObjectFloatMap;

    invoke-direct {v7, v6, v2, v5}, Landroidx/collection/MutableObjectFloatMap;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v7, v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    :cond_3
    iget-object v5, v7, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    iget-object v8, v7, Landroidx/collection/ObjectFloatMap;->values:[F

    iget-object v9, v7, Landroidx/collection/ObjectFloatMap;->metadata:[J

    array-length v10, v9

    add-int/lit8 v10, v10, -0x2

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    const/16 v6, 0x8

    if-ltz v10, :cond_10

    const/4 v2, 0x0

    :goto_0
    aget-wide v11, v9, v2

    not-long v13, v11

    shl-long/2addr v13, v3

    and-long/2addr v13, v11

    and-long/2addr v13, v15

    cmp-long v13, v13, v15

    if-eqz v13, :cond_f

    sub-int v13, v2, v10

    not-int v13, v13

    ushr-int/lit8 v13, v13, 0x1f

    rsub-int/lit8 v13, v13, 0x8

    const/4 v14, 0x0

    :goto_1
    if-ge v14, v13, :cond_e

    const-wide/16 v20, 0xff

    and-long v22, v11, v20

    const-wide/16 v18, 0x80

    cmp-long v22, v22, v18

    if-gez v22, :cond_d

    shl-int/lit8 v22, v2, 0x3

    add-int v22, v22, v14

    aget-object v6, v5, v22

    aget v22, v8, v22

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v24

    goto :goto_2

    :cond_4
    const/16 v24, 0x0

    :goto_2
    const v25, -0x3361d2af    # -8.293031E7f

    mul-int v24, v24, v25

    shl-int/lit8 v25, v24, 0x10

    xor-int v24, v24, v25

    ushr-int/lit8 v15, v24, 0x7

    and-int/lit8 v3, v24, 0x7f

    move-object/from16 v24, v5

    iget v5, v4, Landroidx/collection/ObjectFloatMap;->_capacity:I

    and-int v27, v15, v5

    move-object/from16 v29, v8

    const/16 v28, 0x0

    :goto_3
    iget-object v8, v4, Landroidx/collection/ObjectFloatMap;->metadata:[J

    shr-int/lit8 v30, v27, 0x3

    const/16 v16, 0x7

    and-int/lit8 v31, v27, 0x7

    move-object/from16 v32, v9

    shl-int/lit8 v9, v31, 0x3

    aget-wide v33, v8, v30

    ushr-long v33, v33, v9

    const/16 v17, 0x1

    add-int/lit8 v30, v30, 0x1

    aget-wide v30, v8, v30

    rsub-int/lit8 v8, v9, 0x40

    shl-long v30, v30, v8

    int-to-long v8, v9

    neg-long v8, v8

    const/16 v35, 0x3f

    shr-long v8, v8, v35

    and-long v8, v30, v8

    or-long v8, v33, v8

    int-to-long v0, v3

    const-wide v30, 0x101010101010101L

    mul-long v33, v0, v30

    move/from16 v35, v2

    move/from16 v36, v3

    xor-long v2, v8, v33

    sub-long v30, v2, v30

    not-long v2, v2

    and-long v2, v30, v2

    const-wide v25, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v2, v2, v25

    :goto_4
    const-wide/16 v30, 0x0

    cmp-long v33, v2, v30

    if-eqz v33, :cond_6

    invoke-static {v2, v3}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v30

    shr-int/lit8 v30, v30, 0x3

    add-int v30, v27, v30

    and-int v30, v30, v5

    move-object/from16 v33, v7

    iget-object v7, v4, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    aget-object v7, v7, v30

    invoke-static {v7, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    move/from16 v31, v10

    move v3, v13

    move/from16 v0, v30

    move/from16 v30, v14

    goto/16 :goto_8

    :cond_5
    const-wide/16 v30, 0x1

    sub-long v30, v2, v30

    and-long v2, v2, v30

    move-object/from16 v7, v33

    goto :goto_4

    :cond_6
    move-object/from16 v33, v7

    not-long v2, v8

    const/4 v7, 0x6

    shl-long/2addr v2, v7

    and-long/2addr v2, v8

    const-wide v7, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v2, v7

    cmp-long v2, v2, v30

    if-eqz v2, :cond_c

    invoke-virtual {v4, v15}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    move-result v2

    iget v3, v4, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    if-nez v3, :cond_9

    iget-object v3, v4, Landroidx/collection/ObjectFloatMap;->metadata:[J

    shr-int/lit8 v5, v2, 0x3

    aget-wide v7, v3, v5

    const/4 v3, 0x7

    and-int/lit8 v5, v2, 0x7

    shl-int/lit8 v3, v5, 0x3

    shr-long/2addr v7, v3

    const-wide/16 v20, 0xff

    and-long v7, v7, v20

    const-wide/16 v27, 0xfe

    cmp-long v3, v7, v27

    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    iget v2, v4, Landroidx/collection/ObjectFloatMap;->_capacity:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_8

    iget v3, v4, Landroidx/collection/ObjectFloatMap;->_size:I

    int-to-long v7, v3

    sget v3, Lkotlin/ULong;->$r8$clinit:I

    const-wide/16 v27, 0x20

    mul-long v7, v7, v27

    int-to-long v2, v2

    const-wide/16 v27, 0x19

    mul-long v2, v2, v27

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v2

    if-gtz v2, :cond_8

    iget v2, v4, Landroidx/collection/ObjectFloatMap;->_capacity:I

    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroidx/collection/MutableObjectFloatMap;->resizeStorage(I)V

    goto :goto_5

    :cond_8
    iget v2, v4, Landroidx/collection/ObjectFloatMap;->_capacity:I

    invoke-static {v2}, Landroidx/collection/ScatterMapKt;->nextCapacity(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroidx/collection/MutableObjectFloatMap;->resizeStorage(I)V

    :goto_5
    invoke-virtual {v4, v15}, Landroidx/collection/MutableObjectFloatMap;->findFirstAvailableSlot(I)I

    move-result v2

    :cond_9
    :goto_6
    iget v3, v4, Landroidx/collection/ObjectFloatMap;->_size:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    iput v3, v4, Landroidx/collection/ObjectFloatMap;->_size:I

    iget v3, v4, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    iget-object v5, v4, Landroidx/collection/ObjectFloatMap;->metadata:[J

    shr-int/lit8 v7, v2, 0x3

    aget-wide v8, v5, v7

    const/4 v15, 0x7

    and-int/lit8 v27, v2, 0x7

    shl-int/lit8 v15, v27, 0x3

    shr-long v27, v8, v15

    const-wide/16 v20, 0xff

    and-long v27, v27, v20

    const-wide/16 v18, 0x80

    cmp-long v27, v27, v18

    if-nez v27, :cond_a

    const/16 v27, 0x1

    goto :goto_7

    :cond_a
    const/16 v27, 0x0

    :goto_7
    sub-int v3, v3, v27

    iput v3, v4, Landroidx/collection/MutableObjectFloatMap;->growthLimit:I

    move v3, v13

    move/from16 v30, v14

    shl-long v13, v20, v15

    not-long v13, v13

    and-long/2addr v8, v13

    shl-long v13, v0, v15

    or-long/2addr v8, v13

    aput-wide v8, v5, v7

    iget v7, v4, Landroidx/collection/ObjectFloatMap;->_capacity:I

    const/4 v8, 0x7

    add-int/lit8 v9, v2, -0x7

    and-int/2addr v9, v7

    and-int/2addr v7, v8

    add-int/2addr v9, v7

    shr-int/lit8 v7, v9, 0x3

    and-int/2addr v9, v8

    shl-int/lit8 v8, v9, 0x3

    aget-wide v13, v5, v7

    move/from16 v31, v10

    const-wide/16 v20, 0xff

    shl-long v9, v20, v8

    not-long v9, v9

    and-long/2addr v9, v13

    shl-long/2addr v0, v8

    or-long/2addr v0, v9

    aput-wide v0, v5, v7

    not-int v0, v2

    :goto_8
    if-gez v0, :cond_b

    not-int v0, v0

    :cond_b
    iget-object v1, v4, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    aput-object v6, v1, v0

    iget-object v1, v4, Landroidx/collection/ObjectFloatMap;->values:[F

    aput v22, v1, v0

    const/16 v0, 0x8

    goto :goto_9

    :cond_c
    move/from16 v31, v10

    move v3, v13

    move/from16 v30, v14

    const/16 v0, 0x8

    add-int/lit8 v28, v28, 0x8

    add-int v27, v27, v28

    and-int v27, v27, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, v32

    move-object/from16 v7, v33

    move/from16 v2, v35

    move/from16 v3, v36

    goto/16 :goto_3

    :cond_d
    move/from16 v35, v2

    move-object/from16 v24, v5

    move v0, v6

    move-object/from16 v33, v7

    move-object/from16 v29, v8

    move-object/from16 v32, v9

    move/from16 v31, v10

    move v3, v13

    move/from16 v30, v14

    :goto_9
    shr-long/2addr v11, v0

    const/4 v1, 0x1

    add-int/lit8 v14, v30, 0x1

    move-object/from16 v1, p1

    move v6, v0

    move v13, v3

    move-object/from16 v5, v24

    move-object/from16 v8, v29

    move/from16 v10, v31

    move-object/from16 v9, v32

    move-object/from16 v7, v33

    move/from16 v2, v35

    const/4 v3, 0x7

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_e
    move/from16 v35, v2

    move-object/from16 v24, v5

    move v0, v6

    move-object/from16 v33, v7

    move-object/from16 v29, v8

    move-object/from16 v32, v9

    move/from16 v31, v10

    move v3, v13

    const/4 v1, 0x1

    if-ne v3, v0, :cond_11

    move/from16 v10, v31

    move/from16 v0, v35

    goto :goto_a

    :cond_f
    move-object/from16 v24, v5

    move-object/from16 v33, v7

    move-object/from16 v29, v8

    move-object/from16 v32, v9

    const/4 v1, 0x1

    move v0, v2

    :goto_a
    if-eq v0, v10, :cond_11

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v5, v24

    move-object/from16 v8, v29

    move-object/from16 v9, v32

    move-object/from16 v7, v33

    const/16 v6, 0x8

    const-wide v15, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto/16 :goto_0

    :cond_10
    move-object/from16 v33, v7

    :cond_11
    invoke-virtual/range {v33 .. v33}, Landroidx/collection/MutableObjectFloatMap;->clear()V

    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getLayoutNode()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v0, :cond_12

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v0, v0, Landroidx/compose/ui/platform/AndroidComposeView;->snapshotObserver:Landroidx/compose/ui/node/OwnerSnapshotObserver;

    if-eqz v0, :cond_12

    sget-object v1, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->onCommitAffectingRuler:Lkotlin/jvm/functions/Function1;

    new-instance v2, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    invoke-direct {v2, v5, v3}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$captureRulers$3;-><init>(Landroidx/compose/ui/node/PlaceableResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    invoke-virtual {v0, v5, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :goto_b
    move-object/from16 v7, v33

    goto :goto_c

    :cond_12
    move-object/from16 v3, p0

    goto :goto_b

    :goto_c
    iget-object v0, v7, Landroidx/collection/ObjectFloatMap;->keys:[Ljava/lang/Object;

    iget-object v1, v7, Landroidx/collection/ObjectFloatMap;->metadata:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_19

    const/4 v5, 0x0

    :goto_d
    aget-wide v6, v1, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_18

    sub-int v8, v5, v2

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v9, 0x0

    :goto_e
    if-ge v9, v8, :cond_17

    const-wide/16 v13, 0xff

    and-long v15, v6, v13

    const-wide/16 v18, 0x80

    cmp-long v15, v15, v18

    if-gez v15, :cond_16

    shl-int/lit8 v15, v5, 0x3

    add-int/2addr v15, v9

    aget-object v15, v0, v15

    check-cast v15, Landroidx/compose/ui/layout/Ruler;

    invoke-virtual {v4, v15}, Landroidx/collection/ObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v16

    if-ltz v16, :cond_13

    goto :goto_f

    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v16

    if-eqz v16, :cond_16

    move-object/from16 v10, v16

    :cond_14
    iget-object v11, v10, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->rulerValues:Landroidx/collection/MutableObjectFloatMap;

    if-eqz v11, :cond_15

    invoke-virtual {v11, v15}, Landroidx/collection/ObjectFloatMap;->findKeyIndex(Ljava/lang/Object;)I

    move-result v11

    if-ltz v11, :cond_15

    goto :goto_f

    :cond_15
    invoke-virtual {v10}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;

    move-result-object v10

    if-nez v10, :cond_14

    :cond_16
    :goto_f
    const/16 v10, 0x8

    shr-long/2addr v6, v10

    const/4 v11, 0x1

    add-int/2addr v9, v11

    const/4 v10, 0x7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    goto :goto_e

    :cond_17
    const/16 v10, 0x8

    const/4 v11, 0x1

    const-wide/16 v13, 0xff

    const-wide/16 v18, 0x80

    if-ne v8, v10, :cond_19

    goto :goto_10

    :cond_18
    const/16 v10, 0x8

    const/4 v11, 0x1

    const-wide/16 v13, 0xff

    const-wide/16 v18, 0x80

    :goto_10
    if-eq v5, v2, :cond_19

    add-int/2addr v5, v11

    goto :goto_d

    :cond_19
    invoke-virtual {v4}, Landroidx/collection/MutableObjectFloatMap;->clear()V

    :goto_11
    return-void
.end method

.method public final get(Landroidx/compose/ui/layout/AlignmentLine;)I
    .locals 3

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->getHasMeasureResult()Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->calculateAlignmentLine(Landroidx/compose/ui/layout/AlignmentLine;)I

    move-result v0

    if-ne v0, v1, :cond_1

    return v1

    :cond_1
    instance-of p1, p1, Landroidx/compose/ui/layout/VerticalAlignmentLine;

    if-eqz p1, :cond_2

    iget-wide p0, p0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    const/16 v1, 0x20

    shr-long/2addr p0, v1

    :goto_0
    long-to-int p0, p0

    goto :goto_1

    :cond_2
    iget-wide p0, p0, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    sget-object v1, Landroidx/compose/ui/unit/IntOffset;->Companion:Landroidx/compose/ui/unit/IntOffset$Companion;

    const-wide v1, 0xffffffffL

    and-long/2addr p0, v1

    goto :goto_0

    :goto_1
    add-int/2addr v0, p0

    return v0
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
    .locals 8

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;

    const/4 v5, 0x0

    move-object v1, v0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Landroidx/compose/ui/node/LookaheadCapablePlaceable$layout$1;-><init>(IILjava/util/Map;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

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

.method public final setPlacedUsingCurrentFrameOfReference()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacedUsingCurrentFrameOfReference:Z

    return-void
.end method
