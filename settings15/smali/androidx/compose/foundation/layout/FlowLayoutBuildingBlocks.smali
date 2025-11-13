.class public final Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final constraints:J

.field public final crossAxisSpacing:I

.field public final mainAxisSpacing:I

.field public final maxItemsInMainAxis:I

.field public final maxLines:I

.field public final overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;


# direct methods
.method public constructor <init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->maxItemsInMainAxis:I

    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iput-wide p3, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->constraints:J

    iput p5, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->maxLines:I

    iput p6, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->mainAxisSpacing:I

    iput p7, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->crossAxisSpacing:I

    return-void
.end method


# virtual methods
.method public final getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;
    .locals 5

    iget-boolean p1, p1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p1, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object v1, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    iget-object p2, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->seeMoreMeasurable:Landroidx/compose/ui/layout/Measurable;

    iget-object p4, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->seeMoreSize:Landroidx/collection/IntIntPair;

    iget-object p1, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->seeMorePlaceable:Landroidx/compose/ui/layout/Placeable;

    goto :goto_2

    :cond_3
    iget p2, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->minLinesToShowCollapse:I

    sub-int/2addr p2, v2

    if-lt p3, p2, :cond_4

    iget p2, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->minCrossAxisSizeToShowCollapse:I

    if-lt p4, p2, :cond_4

    iget-object p2, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->collapseMeasurable:Landroidx/compose/ui/layout/Measurable;

    goto :goto_1

    :cond_4
    move-object p2, v0

    :goto_1
    iget-object p4, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->collapseSize:Landroidx/collection/IntIntPair;

    iget-object p1, p1, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->collapsePlaceable:Landroidx/compose/ui/layout/Placeable;

    :goto_2
    if-nez p2, :cond_6

    :cond_5
    move-object v1, v0

    goto :goto_3

    :cond_6
    new-instance v1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    invoke-static {p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v3, p4, Landroidx/collection/IntIntPair;->packedValue:J

    invoke-direct {v1, p2, p1, v3, v4}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;-><init>(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/layout/Placeable;J)V

    :goto_3
    if-nez v1, :cond_7

    return-object v0

    :cond_7
    if-ltz p3, :cond_8

    if-eqz p6, :cond_9

    const/16 p1, 0x20

    iget-wide p2, v1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->ellipsisSize:J

    shr-long p1, p2, p1

    long-to-int p1, p1

    sub-int/2addr p5, p1

    if-ltz p5, :cond_8

    iget p0, p0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->maxItemsInMainAxis:I

    if-ge p6, p0, :cond_8

    goto :goto_4

    :cond_8
    const/4 v2, 0x0

    :cond_9
    :goto_4
    iput-boolean v2, v1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->placeEllipsisOnLastContentLine:Z

    return-object v1
.end method

.method public final getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p5

    move/from16 v3, p6

    move/from16 v4, p8

    add-int v7, p7, v4

    const/4 v11, 0x1

    if-nez v2, :cond_0

    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    invoke-direct {v0, v11, v11}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    return-object v0

    :cond_0
    iget-object v5, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object v6, v5, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    sget-object v8, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->Visible:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    const-wide v9, 0xffffffffL

    iget-wide v12, v2, Landroidx/collection/IntIntPair;->packedValue:J

    if-ne v6, v8, :cond_1

    goto :goto_1

    :cond_1
    iget v2, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->maxLines:I

    if-lt v3, v2, :cond_2

    goto :goto_0

    :cond_2
    and-long v14, p3, v9

    long-to-int v2, v14

    and-long v14, v12, v9

    long-to-int v6, v14

    sub-int/2addr v2, v6

    if-gez v2, :cond_3

    :goto_0
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    invoke-direct {v0, v11, v11}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    return-object v0

    :cond_3
    :goto_1
    iget v2, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->mainAxisSpacing:I

    iget v6, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->crossAxisSpacing:I

    iget-wide v14, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->constraints:J

    iget v8, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->maxItemsInMainAxis:I

    const/16 v16, 0x20

    if-nez v1, :cond_4

    move-wide v0, v9

    goto :goto_3

    :cond_4
    if-lt v1, v8, :cond_5

    goto :goto_2

    :cond_5
    shr-long v9, p3, v16

    long-to-int v9, v9

    shr-long v0, v12, v16

    long-to-int v0, v0

    sub-int/2addr v9, v0

    if-gez v9, :cond_7

    :goto_2
    if-eqz p9, :cond_6

    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    invoke-direct {v0, v11, v11}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    return-object v0

    :cond_6
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v0

    const-wide v8, 0xffffffffL

    and-long v14, p3, v8

    long-to-int v1, v14

    sub-int/2addr v1, v6

    sub-int/2addr v1, v4

    invoke-static {v0, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v4

    shr-long v0, v12, v16

    long-to-int v0, v0

    sub-int/2addr v0, v2

    const-wide v1, 0xffffffffL

    and-long/2addr v1, v12

    long-to-int v1, v1

    invoke-static {v0, v1}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v0

    new-instance v6, Landroidx/collection/IntIntPair;

    invoke-direct {v6, v0, v1}, Landroidx/collection/IntIntPair;-><init>(J)V

    add-int/lit8 v8, v3, 0x1

    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide v3, v4

    move-object v5, v6

    move v6, v8

    move v8, v9

    move v9, v10

    move v10, v12

    invoke-virtual/range {v0 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    iget-boolean v0, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    invoke-direct {v1, v11, v0}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    return-object v1

    :cond_7
    const-wide v0, 0xffffffffL

    :goto_3
    and-long v9, v12, v0

    long-to-int v0, v9

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v1, v1, p7

    if-eqz p10, :cond_8

    const/4 v5, 0x0

    goto :goto_4

    :cond_8
    move/from16 v7, p1

    invoke-virtual {v5, v3, v1, v7}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->ellipsisSize-F35zm-w$foundation_layout_release(IIZ)Landroidx/collection/IntIntPair;

    move-result-object v5

    :goto_4
    if-eqz v5, :cond_b

    add-int/lit8 v7, p2, 0x1

    if-lt v7, v8, :cond_9

    goto :goto_5

    :cond_9
    shr-long v7, p3, v16

    long-to-int v7, v7

    shr-long v8, v12, v16

    long-to-int v8, v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    iget-wide v8, v5, Landroidx/collection/IntIntPair;->packedValue:J

    shr-long v8, v8, v16

    long-to-int v2, v8

    sub-int/2addr v7, v2

    if-gez v7, :cond_b

    :goto_5
    if-eqz p10, :cond_a

    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    invoke-direct {v0, v11, v11}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    return-object v0

    :cond_a
    invoke-static {v14, v15}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    const-wide v7, 0xffffffffL

    and-long v7, p3, v7

    long-to-int v7, v7

    sub-int/2addr v7, v6

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sub-int/2addr v7, v0

    invoke-static {v2, v7}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v6

    add-int/lit8 v0, v3, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move/from16 p1, v4

    move/from16 p2, v2

    move-wide/from16 p3, v6

    move-object/from16 p5, v5

    move/from16 p6, v0

    move/from16 p7, v1

    move/from16 p8, v3

    move/from16 p9, v8

    move/from16 p10, v9

    invoke-virtual/range {p0 .. p10}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v0

    new-instance v1, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    iget-boolean v0, v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    invoke-direct {v1, v0, v0}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    return-object v1

    :cond_b
    new-instance v0, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;-><init>(ZZ)V

    return-object v0
.end method
