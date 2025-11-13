.class public final Landroidx/compose/foundation/layout/FlowMeasurePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;


# instance fields
.field public final crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

.field public final crossAxisArrangementSpacing:F

.field public final horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

.field public final mainAxisSpacing:F

.field public final maxItemsInMainAxis:I

.field public final maxLines:I

.field public final maxMainAxisIntrinsicItemSize:Lkotlin/jvm/internal/Lambda;

.field public final minCrossAxisIntrinsicItemSize:Lkotlin/jvm/internal/Lambda;

.field public final minMainAxisIntrinsicItemSize:Lkotlin/jvm/internal/Lambda;

.field public final overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

.field public final verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/Arrangement$Horizontal;Landroidx/compose/foundation/layout/Arrangement$Vertical;FLandroidx/compose/foundation/layout/CrossAxisAlignment$VerticalCrossAxisAlignment;FIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iput-object p2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iput p3, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    iput-object p4, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    iput p5, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    iput p6, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    iput p7, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    iput-object p8, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    sget-object p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxMainAxisIntrinsicItemSize$1;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxMainAxisIntrinsicItemSize$1;

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxMainAxisIntrinsicItemSize:Lkotlin/jvm/internal/Lambda;

    sget p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy$maxCrossAxisIntrinsicItemSize$1;->$r8$clinit:I

    sget-object p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy$minCrossAxisIntrinsicItemSize$1;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$minCrossAxisIntrinsicItemSize$1;

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minCrossAxisIntrinsicItemSize:Lkotlin/jvm/internal/Lambda;

    sget-object p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy$minMainAxisIntrinsicItemSize$1;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$minMainAxisIntrinsicItemSize$1;

    iput-object p1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minMainAxisIntrinsicItemSize:Lkotlin/jvm/internal/Lambda;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    iget-object v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    iget-object v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    iget v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    iget-object v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    iget v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    iget v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    iget v3, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    if-eq v1, v3, :cond_8

    return v2

    :cond_8
    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    iget-object p1, p1, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    return v2

    :cond_9
    return v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    invoke-static {v0, v1, v2}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget-object v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-static {v2, v1, v0}, Landroidx/compose/animation/FlingCalculator$FlingInfo$$ExternalSyntheticOutline0;->m(IIF)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    invoke-static {v2, v0, v1}, Landroidx/compose/animation/core/KeyframesSpec$KeyframeEntity$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-virtual {p0}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 52

    move-object/from16 v13, p0

    move-object/from16 v14, p1

    move-object/from16 v0, p2

    move-wide/from16 v1, p3

    const/4 v15, 0x1

    iget v3, v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    const/4 v12, 0x0

    if-eqz v3, :cond_0

    iget v3, v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    iget-object v4, v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    if-nez v3, :cond_1

    iget-object v3, v4, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    sget-object v5, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->Visible:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-eq v3, v5, :cond_1

    :cond_0
    move-object v3, v14

    goto/16 :goto_1a

    :cond_1
    invoke-static/range {p2 .. p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$2;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$2;

    invoke-static {v14, v12, v12, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {v15, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_3

    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/layout/Measurable;

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    :goto_0
    const/4 v7, 0x2

    invoke-static {v7, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->getOrNull(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/Measurable;

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v7, Landroidx/compose/foundation/layout/LayoutOrientation;->Horizontal:Landroidx/compose/foundation/layout/LayoutOrientation;

    invoke-static {v1, v2, v7}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v8

    const/16 v10, 0xa

    invoke-static {v10, v8, v9}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(IJ)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(J)J

    move-result-wide v8

    if-eqz v5, :cond_5

    new-instance v10, Landroidx/compose/foundation/layout/FlowLayoutOverflowState$setOverflowMeasurables$3$1;

    invoke-direct {v10, v4, v13}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState$setOverflowMeasurables$3$1;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;)V

    invoke-static {v5, v13, v8, v9, v10}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    iput-object v5, v4, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->seeMoreMeasurable:Landroidx/compose/ui/layout/Measurable;

    :cond_5
    if-eqz v0, :cond_6

    new-instance v5, Landroidx/compose/foundation/layout/FlowLayoutOverflowState$setOverflowMeasurables$4$1;

    invoke-direct {v5, v4, v13}, Landroidx/compose/foundation/layout/FlowLayoutOverflowState$setOverflowMeasurables$4$1;-><init>(Landroidx/compose/foundation/layout/FlowLayoutOverflowState;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;)V

    invoke-static {v0, v13, v8, v9, v5}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    iput-object v0, v4, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->collapseMeasurable:Landroidx/compose/ui/layout/Measurable;

    :cond_6
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v1, v2, v7}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->constructor-impl(JLandroidx/compose/foundation/layout/LayoutOrientation;)J

    move-result-wide v24

    new-instance v11, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v1, 0x10

    new-array v1, v1, [Landroidx/compose/ui/layout/MeasureResult;

    invoke-direct {v11, v1}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v1

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v2

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    sget-object v4, Landroidx/collection/IntObjectMapKt;->EmptyIntObjectMap:Landroidx/collection/MutableIntObjectMap;

    new-instance v4, Landroidx/collection/MutableIntObjectMap;

    invoke-direct {v4}, Landroidx/collection/MutableIntObjectMap;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iget v5, v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    invoke-interface {v14, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v5

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v5, v7

    float-to-int v9, v5

    iget v5, v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-interface {v14, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v5

    float-to-double v7, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-float v5, v7

    float-to-int v5, v5

    invoke-static {v12, v1, v12, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v7

    const/16 v12, 0xe

    invoke-static {v12, v7, v8}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->copy-yUG9Ft0$default(IJ)J

    move-result-wide v16

    move-wide/from16 p2, v7

    invoke-static/range {v16 .. v17}, Landroidx/compose/foundation/layout/OrientationIndependentConstraints;->toBoxConstraints-OenEA2s(J)J

    move-result-wide v6

    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-nez v16, :cond_7

    const/4 v12, 0x0

    goto :goto_3

    :cond_7
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroidx/compose/ui/layout/Measurable;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v12, v16

    :goto_3
    if-eqz v12, :cond_8

    new-instance v15, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$nextSize$1$1;

    invoke-direct {v15, v8}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$nextSize$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-static {v12, v13, v6, v7, v15}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    move-result-wide v14

    move/from16 v27, v2

    new-instance v2, Landroidx/collection/IntIntPair;

    invoke-direct {v2, v14, v15}, Landroidx/collection/IntIntPair;-><init>(J)V

    goto :goto_4

    :cond_8
    move/from16 v27, v2

    const/4 v2, 0x0

    :goto_4
    const/16 v14, 0x20

    move-object v15, v11

    move-object/from16 v39, v12

    if-eqz v2, :cond_9

    iget-wide v11, v2, Landroidx/collection/IntIntPair;->packedValue:J

    shr-long/2addr v11, v14

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_5

    :cond_9
    const/4 v11, 0x0

    :goto_5
    const-wide v40, 0xffffffffL

    move-object/from16 v42, v15

    if-eqz v2, :cond_a

    iget-wide v14, v2, Landroidx/collection/IntIntPair;->packedValue:J

    and-long v14, v14, v40

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    goto :goto_6

    :cond_a
    const/4 v14, 0x0

    :goto_6
    new-instance v15, Landroidx/collection/MutableIntList;

    invoke-direct {v15}, Landroidx/collection/MutableIntList;-><init>()V

    move-object/from16 v43, v14

    new-instance v14, Landroidx/collection/MutableIntList;

    invoke-direct {v14}, Landroidx/collection/MutableIntList;-><init>()V

    new-instance v44, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;

    iget v12, v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    move-object/from16 v46, v11

    iget v11, v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    move-object/from16 v47, v15

    iget-object v15, v13, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    move-object/from16 v16, v44

    move/from16 v17, v11

    move-object/from16 v18, v15

    move-wide/from16 v19, v24

    move/from16 v21, v12

    move/from16 v22, v9

    move/from16 v23, v5

    invoke-direct/range {v16 .. v23}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;-><init>(ILandroidx/compose/foundation/layout/FlowLayoutOverflowState;JIII)V

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    invoke-static {v1, v3}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v31

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v30, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    move-object/from16 v28, v44

    move-object/from16 v33, v2

    invoke-virtual/range {v28 .. v38}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v11

    iget-boolean v12, v11, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    if-eqz v12, :cond_c

    if-eqz v2, :cond_b

    const/16 v18, 0x1

    goto :goto_7

    :cond_b
    const/16 v18, 0x0

    :goto_7
    const/16 v19, -0x1

    const/16 v20, 0x0

    const/16 v22, 0x0

    move-object/from16 v16, v44

    move-object/from16 v17, v11

    move/from16 v21, v1

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v2

    goto :goto_8

    :cond_c
    const/4 v2, 0x0

    :goto_8
    move/from16 v18, v1

    move-object/from16 v16, v2

    move/from16 v23, v5

    move-object v12, v11

    move-object/from16 v48, v14

    move/from16 v11, v27

    move-object/from16 v2, v39

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v39, 0x0

    move v14, v3

    move/from16 v27, v14

    const/4 v3, 0x0

    :goto_9
    iget-boolean v12, v12, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInContainer:Z

    if-nez v12, :cond_15

    if-eqz v2, :cond_15

    invoke-static/range {v46 .. v46}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual/range {v46 .. v46}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static/range {v43 .. v43}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move/from16 v46, v1

    invoke-virtual/range {v43 .. v43}, Ljava/lang/Integer;->intValue()I

    move-result v1

    move/from16 v21, v11

    add-int v11, v17, v12

    invoke-static {v5, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int v5, v18, v12

    move/from16 v17, v11

    const/4 v12, 0x1

    add-int/lit8 v11, v3, 0x1

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-virtual {v4, v3, v2}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    sub-int v22, v11, v19

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto :goto_b

    :cond_d
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/layout/Measurable;
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_a

    :catch_1
    const/4 v2, 0x0

    :goto_a
    move-object v3, v2

    const/4 v2, 0x0

    :goto_b
    iput-object v2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    if-eqz v3, :cond_e

    new-instance v12, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1$1;

    invoke-direct {v12, v8}, Landroidx/compose/foundation/layout/FlowLayoutKt$breakDownItems$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    move-object/from16 p4, v10

    move/from16 v43, v11

    invoke-static {v3, v13, v6, v7, v12}, Landroidx/compose/foundation/layout/FlowLayoutKt;->measureAndCache-rqJ1uqs(Landroidx/compose/ui/layout/Measurable;Landroidx/compose/foundation/layout/FlowLineMeasurePolicy;JLkotlin/jvm/functions/Function1;)J

    move-result-wide v10

    new-instance v12, Landroidx/collection/IntIntPair;

    invoke-direct {v12, v10, v11}, Landroidx/collection/IntIntPair;-><init>(J)V

    goto :goto_c

    :cond_e
    move-object/from16 p4, v10

    move/from16 v43, v11

    move-object v12, v2

    :goto_c
    if-eqz v12, :cond_f

    iget-wide v10, v12, Landroidx/collection/IntIntPair;->packedValue:J

    const/16 v45, 0x20

    shr-long v10, v10, v45

    long-to-int v10, v10

    add-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_d

    :cond_f
    const/16 v45, 0x20

    move-object v10, v2

    :goto_d
    move-object/from16 v49, v3

    if-eqz v12, :cond_10

    iget-wide v2, v12, Landroidx/collection/IntIntPair;->packedValue:J

    and-long v2, v2, v40

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_e

    :cond_10
    const/4 v2, 0x0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    invoke-static {v5, v14}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v31

    if-nez v12, :cond_11

    move-object/from16 v50, v2

    const/16 v33, 0x0

    goto :goto_f

    :cond_11
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    move-object/from16 v50, v2

    invoke-static {v3, v11}, Landroidx/collection/IntIntPair;->constructor-impl(II)J

    move-result-wide v2

    new-instance v11, Landroidx/collection/IntIntPair;

    invoke-direct {v11, v2, v3}, Landroidx/collection/IntIntPair;-><init>(J)V

    move-object/from16 v33, v11

    :goto_f
    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v28, v44

    move/from16 v30, v22

    move/from16 v34, v39

    move/from16 v35, v20

    move/from16 v36, v1

    invoke-virtual/range {v28 .. v38}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapInfo-OpUlnko(ZIJLandroidx/collection/IntIntPair;IIIZZ)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;

    move-result-object v2

    iget-boolean v3, v2, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;->isLastItemInLine:Z

    if-eqz v3, :cond_14

    move/from16 v11, v17

    move/from16 v3, v21

    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    move-result v3

    move/from16 v11, v46

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int v14, v20, v1

    if-eqz v12, :cond_12

    const/16 v18, 0x1

    goto :goto_10

    :cond_12
    const/16 v18, 0x0

    :goto_10
    move-object/from16 v16, v44

    move-object/from16 v17, v2

    move/from16 v19, v39

    move/from16 v20, v14

    move/from16 v21, v5

    invoke-virtual/range {v16 .. v22}, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks;->getWrapEllipsisInfo(Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapInfo;ZIIII)Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;

    move-result-object v5

    move-object/from16 v12, v48

    invoke-virtual {v12, v1}, Landroidx/collection/MutableIntList;->add(I)V

    sub-int v1, v27, v14

    sub-int v1, v1, v23

    move-object/from16 v17, v0

    move/from16 v16, v1

    move/from16 v1, v43

    move-object/from16 v0, v47

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntList;->add(I)V

    if-eqz v10, :cond_13

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int/2addr v10, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    :goto_11
    const/16 v18, 0x1

    goto :goto_12

    :cond_13
    const/4 v10, 0x0

    goto :goto_11

    :goto_12
    add-int/lit8 v39, v39, 0x1

    add-int v20, v14, v23

    move/from16 v19, v1

    move-object/from16 v46, v10

    move v10, v11

    move/from16 v21, v10

    move/from16 v14, v16

    move v11, v3

    move-object/from16 v16, v5

    const/4 v3, 0x0

    const/4 v5, 0x0

    goto :goto_13

    :cond_14
    move/from16 v22, v1

    move/from16 v11, v17

    move/from16 v3, v21

    move/from16 v1, v43

    move/from16 v21, v46

    move-object/from16 v12, v48

    const/16 v18, 0x1

    move-object/from16 v17, v0

    move-object/from16 v0, v47

    move-object/from16 v46, v10

    move v10, v5

    move/from16 v5, v22

    move/from16 v51, v11

    move v11, v3

    move/from16 v3, v51

    :goto_13
    move-object/from16 v47, v0

    move/from16 v18, v10

    move-object/from16 v48, v12

    move-object/from16 v0, v17

    move-object/from16 v43, v50

    move-object/from16 v10, p4

    move-object v12, v2

    move/from16 v17, v3

    move-object/from16 v2, v49

    move v3, v1

    move/from16 v1, v21

    goto/16 :goto_9

    :cond_15
    move-object/from16 p4, v10

    move v3, v11

    move-object/from16 v0, v47

    move-object/from16 v12, v48

    const/16 v18, 0x1

    if-eqz v16, :cond_19

    move-object/from16 v2, v16

    iget-object v1, v2, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->ellipsis:Landroidx/compose/ui/layout/Measurable;

    move-object/from16 v10, p4

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    iget-object v5, v2, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->placeable:Landroidx/compose/ui/layout/Placeable;

    invoke-virtual {v4, v1, v5}, Landroidx/collection/MutableIntObjectMap;->set(ILjava/lang/Object;)V

    iget v1, v0, Landroidx/collection/MutableIntList;->_size:I

    add-int/lit8 v1, v1, -0x1

    iget-boolean v5, v2, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->placeEllipsisOnLastContentLine:Z

    const-string v6, "IntList is empty."

    iget-wide v7, v2, Landroidx/compose/foundation/layout/FlowLayoutBuildingBlocks$WrapEllipsisInfo;->ellipsisSize:J

    if-eqz v5, :cond_17

    invoke-virtual {v12, v1}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v2

    and-long v7, v7, v40

    long-to-int v5, v7

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v12, v1, v2}, Landroidx/collection/MutableIntList;->set(II)V

    iget v2, v0, Landroidx/collection/MutableIntList;->_size:I

    if-eqz v2, :cond_16

    iget-object v5, v0, Landroidx/collection/MutableIntList;->content:[I

    const/4 v6, 0x1

    sub-int/2addr v2, v6

    aget v2, v5, v2

    add-int/2addr v2, v6

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableIntList;->set(II)V

    goto :goto_14

    :cond_16
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    and-long v1, v7, v40

    long-to-int v1, v1

    invoke-virtual {v12, v1}, Landroidx/collection/MutableIntList;->add(I)V

    iget v1, v0, Landroidx/collection/MutableIntList;->_size:I

    if-eqz v1, :cond_18

    iget-object v2, v0, Landroidx/collection/MutableIntList;->content:[I

    const/4 v5, 0x1

    sub-int/2addr v1, v5

    aget v1, v2, v1

    add-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroidx/collection/MutableIntList;->add(I)V

    goto :goto_14

    :cond_18
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0, v6}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_19
    move-object/from16 v10, p4

    :goto_14
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v14, v1, [Landroidx/compose/ui/layout/Placeable;

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_1a

    invoke-virtual {v4, v2}, Landroidx/collection/MutableIntObjectMap;->get(I)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v14, v2

    const/4 v5, 0x1

    add-int/2addr v2, v5

    goto :goto_15

    :cond_1a
    const/4 v5, 0x1

    iget v1, v0, Landroidx/collection/MutableIntList;->_size:I

    new-array v15, v1, [I

    const/4 v2, 0x0

    :goto_16
    if-ge v2, v1, :cond_1b

    const/16 v16, 0x0

    aput v16, v15, v2

    add-int/2addr v2, v5

    goto :goto_16

    :cond_1b
    const/16 v16, 0x0

    iget v1, v0, Landroidx/collection/MutableIntList;->_size:I

    new-array v11, v1, [I

    move/from16 v2, v16

    :goto_17
    if-ge v2, v1, :cond_1c

    aput v16, v11, v2

    add-int/2addr v2, v5

    goto :goto_17

    :cond_1c
    iget-object v8, v0, Landroidx/collection/MutableIntList;->content:[I

    iget v7, v0, Landroidx/collection/MutableIntList;->_size:I

    move v6, v3

    move/from16 v5, v16

    move/from16 v17, v5

    move/from16 v18, v17

    :goto_18
    if-ge v5, v7, :cond_1d

    aget v19, v8, v5

    invoke-virtual {v12, v5}, Landroidx/collection/MutableIntList;->get(I)I

    move-result v4

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-static/range {p2 .. p3}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v3

    move-object/from16 v0, p0

    move v1, v6

    move/from16 v20, v5

    move v5, v9

    move v13, v6

    move-object/from16 v6, p1

    move-wide/from16 v21, p2

    move/from16 v23, v7

    move-object v7, v10

    move-object/from16 v26, v8

    move-object v8, v14

    move/from16 v27, v9

    move/from16 v9, v17

    move-object/from16 v17, v10

    move/from16 v10, v19

    move-object/from16 v28, v14

    move-object v14, v11

    move-object v11, v15

    move-object/from16 v16, v12

    move/from16 v12, v20

    invoke-static/range {v0 .. v12}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt;->measure(Landroidx/compose/foundation/layout/RowColumnMeasurePolicy;IIIIILandroidx/compose/ui/layout/MeasureScope;Ljava/util/List;[Landroidx/compose/ui/layout/Placeable;II[II)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v1

    invoke-interface {v0}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v2

    aput v2, v14, v20

    add-int v18, v18, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v6

    move-object/from16 v1, v42

    invoke-virtual {v1, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v0, 0x1

    add-int/lit8 v5, v20, 0x1

    move-object/from16 v13, p0

    move-object v11, v14

    move-object/from16 v12, v16

    move-object/from16 v10, v17

    move/from16 v17, v19

    move-wide/from16 p2, v21

    move/from16 v7, v23

    move-object/from16 v8, v26

    move/from16 v9, v27

    move-object/from16 v14, v28

    const/16 v16, 0x0

    goto :goto_18

    :cond_1d
    move v13, v6

    move-object v14, v11

    move-object/from16 v1, v42

    invoke-virtual {v1}, Landroidx/compose/runtime/collection/MutableVector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v12, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    goto :goto_19

    :cond_1e
    move-object/from16 v0, p0

    move v12, v13

    :goto_19
    iget-object v0, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->getSpacing-D9Ej5fM()F

    move-result v2

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/ui/unit/Density;->roundToPx-0680j_4(F)I

    move-result v2

    iget v4, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    mul-int/2addr v4, v2

    add-int v4, v4, v18

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/Constraints;->getMinHeight-impl(J)I

    move-result v2

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v5

    invoke-static {v4, v2, v5}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v2

    invoke-interface {v0, v3, v2, v14, v15}, Landroidx/compose/foundation/layout/Arrangement$Vertical;->arrange(Landroidx/compose/ui/unit/Density;I[I[I)V

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/Constraints;->getMinWidth-impl(J)I

    move-result v0

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v4

    invoke-static {v12, v0, v4}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result v0

    new-instance v4, Landroidx/compose/foundation/layout/FlowLayoutKt$placeHelper$5;

    invoke-direct {v4, v1}, Landroidx/compose/foundation/layout/FlowLayoutKt$placeHelper$5;-><init>(Landroidx/compose/runtime/collection/MutableVector;)V

    invoke-static {v3, v0, v2, v4}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null verticalArrangement"

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :goto_1a
    sget-object v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$1;->INSTANCE:Landroidx/compose/foundation/layout/FlowMeasurePolicy$measure$1;

    const/4 v1, 0x0

    invoke-static {v3, v1, v1, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0
.end method

.method public final minIntrinsicMainAxisSize(Ljava/util/List;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    iget-object v2, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minMainAxisIntrinsicItemSize:Lkotlin/jvm/internal/Lambda;

    iget-object v0, v0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->minCrossAxisIntrinsicItemSize:Lkotlin/jvm/internal/Lambda;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v14, v3, [I

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aput v4, v14, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v5

    new-array v15, v5, [I

    move v6, v4

    :goto_1
    if-ge v6, v5, :cond_2

    aput v4, v15, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    move v7, v4

    :goto_2
    if-ge v7, v6, :cond_3

    move-object/from16 v10, p1

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v8, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v14, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v8, v9, v4}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    aput v4, v15, v7

    add-int/lit8 v7, v7, 0x1

    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    move-object/from16 v10, p1

    const v0, 0x7fffffff

    if-eq v12, v0, :cond_4

    if-eq v11, v0, :cond_4

    mul-int v0, v11, v12

    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    sget-object v4, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandOrCollapseIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    const/4 v6, 0x1

    if-ge v0, v2, :cond_6

    iget-object v2, v13, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    sget-object v7, Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;->ExpandIndicator:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-eq v2, v7, :cond_5

    if-ne v2, v4, :cond_6

    :cond_5
    :goto_3
    move v2, v6

    goto :goto_4

    :cond_6
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_7

    iget v2, v13, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->minLinesToShowCollapse:I

    if-lt v12, v2, :cond_7

    iget-object v2, v13, Landroidx/compose/foundation/layout/FlowLayoutOverflowState;->type:Landroidx/compose/foundation/layout/FlowLayoutOverflow$OverflowType;

    if-ne v2, v4, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_4
    sub-int/2addr v0, v2

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_5
    if-ge v2, v3, :cond_8

    aget v7, v14, v2

    add-int/2addr v4, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v6

    mul-int v2, v2, p3

    add-int/2addr v2, v4

    if-eqz v5, :cond_14

    const/4 v4, 0x0

    aget v7, v15, v4

    new-instance v4, Lkotlin/ranges/IntRange;

    sub-int/2addr v5, v6

    invoke-direct {v4, v6, v5, v6}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {v4}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v4

    :cond_9
    :goto_6
    iget-boolean v5, v4, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v5, :cond_a

    invoke-virtual {v4}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v5

    aget v5, v15, v5

    if-ge v7, v5, :cond_9

    move v7, v5

    goto :goto_6

    :cond_a
    if-eqz v3, :cond_13

    const/4 v4, 0x0

    aget v4, v14, v4

    new-instance v5, Lkotlin/ranges/IntRange;

    sub-int/2addr v3, v6

    invoke-direct {v5, v6, v3, v6}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {v5}, Lkotlin/ranges/IntProgression;->iterator()Lkotlin/ranges/IntProgressionIterator;

    move-result-object v3

    :cond_b
    :goto_7
    iget-boolean v5, v3, Lkotlin/ranges/IntProgressionIterator;->hasNext:Z

    if-eqz v5, :cond_c

    invoke-virtual {v3}, Lkotlin/ranges/IntProgressionIterator;->nextInt()I

    move-result v5

    aget v5, v14, v5

    if-ge v4, v5, :cond_b

    move v4, v5

    goto :goto_7

    :cond_c
    move v9, v2

    move v8, v4

    move v4, v9

    :goto_8
    if-gt v8, v9, :cond_12

    if-ne v7, v1, :cond_d

    goto :goto_a

    :cond_d
    add-int v2, v8, v9

    div-int/lit8 v16, v2, 0x2

    new-instance v3, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$1;

    invoke-direct {v3, v14}, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$1;-><init>([I)V

    new-instance v4, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$2;

    invoke-direct {v4, v15}, Landroidx/compose/foundation/layout/FlowLayoutKt$intrinsicCrossAxisSize$2;-><init>([I)V

    move-object/from16 v2, p1

    move/from16 v5, v16

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v17, v8

    move/from16 v8, p5

    move v11, v9

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-static/range {v2 .. v10}, Landroidx/compose/foundation/layout/FlowLayoutKt;->intrinsicCrossAxisSize(Ljava/util/List;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;IIIIILandroidx/compose/foundation/layout/FlowLayoutOverflowState;)J

    move-result-wide v2

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v7, v4

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int v2, v2

    if-gt v7, v1, :cond_10

    if-ge v2, v0, :cond_e

    goto :goto_9

    :cond_e
    if-ge v7, v1, :cond_f

    add-int/lit8 v9, v16, -0x1

    move-object/from16 v10, p1

    move/from16 v11, p5

    move/from16 v4, v16

    move/from16 v8, v17

    goto :goto_8

    :cond_f
    move/from16 v4, v16

    goto :goto_a

    :cond_10
    :goto_9
    add-int/lit8 v8, v16, 0x1

    if-le v8, v11, :cond_11

    move v4, v8

    goto :goto_a

    :cond_11
    move-object/from16 v10, p1

    move v9, v11

    move/from16 v4, v16

    move/from16 v11, p5

    goto :goto_8

    :cond_12
    :goto_a
    return v4

    :cond_13
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlowMeasurePolicy(isHorizontal=true, horizontalArrangement="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->horizontalArrangement:Landroidx/compose/foundation/layout/Arrangement$Horizontal;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", verticalArrangement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->verticalArrangement:Landroidx/compose/foundation/layout/Arrangement$Vertical;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mainAxisSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->mainAxisSpacing:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crossAxisAlignment="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisAlignment:Landroidx/compose/foundation/layout/CrossAxisAlignment;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", crossAxisArrangementSpacing="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->crossAxisArrangementSpacing:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", maxItemsInMainAxis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxItemsInMainAxis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", maxLines="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->maxLines:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", overflow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/foundation/layout/FlowMeasurePolicy;->overflow:Landroidx/compose/foundation/layout/FlowLayoutOverflowState;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
