.class public final Lcom/android/compose/TrackMeasurePolicy;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroidx/compose/ui/layout/MeasurePolicy;


# instance fields
.field public final enabled:Z

.field public final isRtl:Z

.field public final onDrawingStateMeasured:Lkotlin/jvm/functions/Function1;

.field public final sliderState:Landroidx/compose/material3/SliderState;

.field public final thumbSize:I


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SliderState;ZIZLkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SliderState;",
            "ZIZ",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/compose/TrackMeasurePolicy;->sliderState:Landroidx/compose/material3/SliderState;

    iput-boolean p2, p0, Lcom/android/compose/TrackMeasurePolicy;->enabled:Z

    iput p3, p0, Lcom/android/compose/TrackMeasurePolicy;->thumbSize:I

    iput-boolean p4, p0, Lcom/android/compose/TrackMeasurePolicy;->isRtl:Z

    iput-object p5, p0, Lcom/android/compose/TrackMeasurePolicy;->onDrawingStateMeasured:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final measure-3p2s80s(Landroidx/compose/ui/layout/MeasureScope;Ljava/util/List;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 30

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxWidth-impl(J)I

    move-result v2

    iget v3, v0, Lcom/android/compose/TrackMeasurePolicy;->thumbSize:I

    add-int/2addr v2, v3

    invoke-static/range {p3 .. p4}, Landroidx/compose/ui/unit/Constraints;->getMaxHeight-impl(J)I

    move-result v3

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_c

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v7}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v8

    sget-object v9, Lcom/android/compose/TrackComponent;->Background:Lcom/android/compose/TrackComponent;

    if-ne v8, v9, :cond_b

    invoke-static {v2, v2, v3, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v8

    invoke-interface {v7, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v6

    move v7, v5

    :goto_1
    const/4 v8, 0x0

    if-ge v7, v6, :cond_1

    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v10}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v10

    sget-object v11, Lcom/android/compose/TrackComponent;->Icon:Lcom/android/compose/TrackComponent;

    if-ne v10, v11, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    move-object v9, v8

    :goto_2
    check-cast v9, Landroidx/compose/ui/layout/Measurable;

    if-eqz v9, :cond_2

    invoke-static {v3, v3, v3, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v6

    invoke-interface {v9, v6, v7}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v6

    goto :goto_3

    :cond_2
    move-object v6, v8

    :goto_3
    if-eqz v6, :cond_3

    iget v7, v6, Landroidx/compose/ui/layout/Placeable;->width:I

    goto :goto_4

    :cond_3
    move v7, v5

    :goto_4
    iget-boolean v9, v0, Lcom/android/compose/TrackMeasurePolicy;->enabled:Z

    if-eqz v9, :cond_4

    sub-int v9, v2, v7

    div-int/lit8 v9, v9, 0x2

    goto :goto_5

    :cond_4
    sub-int v9, v2, v7

    :goto_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10

    move v11, v5

    :goto_6
    if-ge v11, v10, :cond_6

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Landroidx/compose/ui/layout/Measurable;

    invoke-static {v13}, Landroidx/compose/ui/layout/LayoutIdKt;->getLayoutId(Landroidx/compose/ui/layout/Measurable;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lcom/android/compose/TrackComponent;->Label:Lcom/android/compose/TrackComponent;

    if-ne v13, v14, :cond_5

    goto :goto_7

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_6
    move-object v12, v8

    :goto_7
    check-cast v12, Landroidx/compose/ui/layout/Measurable;

    if-eqz v12, :cond_7

    invoke-static {v5, v9, v3, v3}, Landroidx/compose/ui/unit/ConstraintsKt;->Constraints(IIII)J

    move-result-wide v8

    invoke-interface {v12, v8, v9}, Landroidx/compose/ui/layout/Measurable;->measure-BRTryo0(J)Landroidx/compose/ui/layout/Placeable;

    move-result-object v8

    :cond_7
    iget-boolean v1, v0, Lcom/android/compose/TrackMeasurePolicy;->isRtl:Z

    const/4 v5, 0x0

    iget-object v9, v0, Lcom/android/compose/TrackMeasurePolicy;->sliderState:Landroidx/compose/material3/SliderState;

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/compose/DrawingState;

    int-to-float v15, v2

    int-to-float v14, v3

    sub-int v10, v2, v7

    int-to-float v10, v10

    const/4 v11, 0x1

    int-to-float v11, v11

    invoke-static {v9}, Lcom/android/compose/PlatformSliderKt;->access$getCoercedNormalizedValue(Landroidx/compose/material3/SliderState;)F

    move-result v9

    sub-float/2addr v11, v9

    mul-float v9, v11, v10

    int-to-float v7, v7

    if-eqz v8, :cond_8

    iget v5, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    int-to-float v5, v5

    :cond_8
    move/from16 v19, v5

    const/4 v11, 0x1

    const/4 v5, 0x0

    move-object v10, v1

    move v12, v15

    move v13, v14

    move/from16 v17, v14

    move v14, v9

    move v9, v15

    move v15, v5

    move/from16 v16, v9

    move/from16 v18, v7

    invoke-direct/range {v10 .. v19}, Lcom/android/compose/DrawingState;-><init>(ZFFFFFFFF)V

    goto :goto_8

    :cond_9
    new-instance v1, Lcom/android/compose/DrawingState;

    int-to-float v10, v2

    int-to-float v11, v3

    int-to-float v12, v7

    sub-int v7, v2, v7

    int-to-float v7, v7

    invoke-static {v9}, Lcom/android/compose/PlatformSliderKt;->access$getCoercedNormalizedValue(Landroidx/compose/material3/SliderState;)F

    move-result v9

    mul-float/2addr v9, v7

    add-float v26, v9, v12

    if-eqz v8, :cond_a

    iget v5, v8, Landroidx/compose/ui/layout/Placeable;->width:I

    int-to-float v5, v5

    :cond_a
    move/from16 v29, v5

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v1

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v27, v11

    move/from16 v28, v12

    invoke-direct/range {v20 .. v29}, Lcom/android/compose/DrawingState;-><init>(ZFFFFFFFF)V

    :goto_8
    iget-object v0, v0, Lcom/android/compose/TrackMeasurePolicy;->onDrawingStateMeasured:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/compose/TrackMeasurePolicy$measure$1;

    invoke-direct {v0, v4, v6, v8}, Lcom/android/compose/TrackMeasurePolicy$measure$1;-><init>(Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Placeable;)V

    move-object/from16 v7, p1

    invoke-static {v7, v2, v3, v0}, Landroidx/compose/ui/layout/MeasureScope;->layout$default(Landroidx/compose/ui/layout/MeasureScope;IILkotlin/jvm/functions/Function1;)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object v0

    return-object v0

    :cond_b
    move-object/from16 v7, p1

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Collection contains no element matching the predicate."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
