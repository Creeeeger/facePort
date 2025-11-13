.class final Landroidx/compose/material3/SliderDefaults$Track$6$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $activeTickColor:J

.field final synthetic $activeTrackColor:J

.field final synthetic $drawStopIndicator:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2;"
        }
    .end annotation
.end field

.field final synthetic $drawTick:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3;"
        }
    .end annotation
.end field

.field final synthetic $inactiveTickColor:J

.field final synthetic $inactiveTrackColor:J

.field final synthetic $sliderState:Landroidx/compose/material3/SliderState;

.field final synthetic $thumbTrackGapSize:F

.field final synthetic $trackInsideCornerSize:F


# direct methods
.method public constructor <init>(Landroidx/compose/material3/SliderState;JJJJFFLkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/material3/SliderState;",
            "JJJJFF",
            "Lkotlin/jvm/functions/Function2;",
            "Lkotlin/jvm/functions/Function3;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$sliderState:Landroidx/compose/material3/SliderState;

    iput-wide p2, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$inactiveTrackColor:J

    iput-wide p4, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$activeTrackColor:J

    iput-wide p6, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$inactiveTickColor:J

    iput-wide p8, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$activeTickColor:J

    iput p10, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$thumbTrackGapSize:F

    iput p11, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$trackInsideCornerSize:F

    iput-object p12, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$drawStopIndicator:Lkotlin/jvm/functions/Function2;

    iput-object p13, p0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$drawTick:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    check-cast v11, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    sget-object v2, Landroidx/compose/material3/SliderDefaults;->INSTANCE:Landroidx/compose/material3/SliderDefaults;

    iget-object v3, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$sliderState:Landroidx/compose/material3/SliderState;

    iget-object v12, v3, Landroidx/compose/material3/SliderState;->tickFractions:[F

    invoke-virtual {v3}, Landroidx/compose/material3/SliderState;->getCoercedValueAsFraction$material3_release()F

    move-result v13

    iget-wide v7, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$inactiveTrackColor:J

    iget-wide v14, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$activeTrackColor:J

    iget-wide v9, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$inactiveTickColor:J

    iget-wide v5, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$activeTickColor:J

    iget-object v3, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$sliderState:Landroidx/compose/material3/SliderState;

    iget-object v3, v3, Landroidx/compose/material3/SliderState;->trackHeight$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v3}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v3

    invoke-interface {v11, v3}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v3

    const/4 v4, 0x0

    invoke-interface {v11, v4}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(I)F

    move-result v1

    iget-object v4, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$sliderState:Landroidx/compose/material3/SliderState;

    iget-object v4, v4, Landroidx/compose/material3/SliderState;->thumbWidth$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v4}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v4

    invoke-interface {v11, v4}, Landroidx/compose/ui/unit/Density;->toDp-u2uoSUM(F)F

    move-result v4

    move-wide/from16 v16, v5

    iget v5, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$thumbTrackGapSize:F

    iget v6, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$trackInsideCornerSize:F

    move-object/from16 v18, v12

    iget-object v12, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$drawStopIndicator:Lkotlin/jvm/functions/Function2;

    iget-object v0, v0, Landroidx/compose/material3/SliderDefaults$Track$6$1;->$drawTick:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v19

    invoke-static/range {v19 .. v20}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    move-object/from16 v19, v0

    const/4 v0, 0x0

    invoke-static {v0, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v20

    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v2

    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v0

    invoke-static {v2, v0}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v22

    invoke-interface {v11, v3}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v0

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v24

    sub-float v3, v3, v24

    mul-float/2addr v3, v13

    add-float/2addr v3, v2

    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v24

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v3

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v26

    sub-float v3, v3, v26

    const/16 v26, 0x0

    mul-float v3, v3, v26

    add-float/2addr v3, v2

    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v26

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v3, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v26

    const/4 v2, 0x2

    int-to-float v2, v2

    div-float v28, v0, v2

    invoke-interface {v11, v6}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v29

    const/4 v3, 0x0

    int-to-float v6, v3

    sget-object v30, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-static {v5, v6}, Ljava/lang/Float;->compare(FF)I

    move-result v6

    if-lez v6, :cond_0

    invoke-interface {v11, v1}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v1

    div-float/2addr v1, v2

    invoke-interface {v11, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v6

    add-float/2addr v1, v6

    invoke-interface {v11, v4}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v4

    div-float/2addr v4, v2

    invoke-interface {v11, v5}, Landroidx/compose/ui/unit/Density;->toPx-0680j_4(F)F

    move-result v2

    add-float/2addr v2, v4

    move/from16 v30, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/16 v30, 0x0

    :goto_0
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v4

    sub-float v4, v4, v30

    sub-float v4, v4, v28

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    add-float v2, v2, v30

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v31

    const/4 v4, 0x0

    invoke-static {v2, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    sub-float v2, v31, v2

    invoke-static {v2, v0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v32

    move-object v2, v11

    move/from16 v34, v3

    move-wide v3, v5

    move-wide/from16 v5, v32

    move-wide/from16 v32, v9

    move/from16 v9, v29

    move/from16 v10, v28

    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/SliderDefaults;->drawTrackPath-Cx2C_VA(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFF)V

    if-eqz v12, :cond_2

    sub-float v2, v31, v28

    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v2

    invoke-interface {v12, v11, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    move/from16 v34, v3

    move-wide/from16 v32, v9

    :cond_2
    :goto_1
    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v2

    sub-float v2, v2, v30

    const/4 v3, 0x0

    sub-float/2addr v2, v3

    cmpl-float v4, v2, v28

    if-lez v4, :cond_3

    invoke-static {v3, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-static {v2, v0}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide v6

    move-object v2, v11

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v14

    move/from16 v9, v28

    move/from16 v10, v29

    invoke-static/range {v2 .. v10}, Landroidx/compose/material3/SliderDefaults;->drawTrackPath-Cx2C_VA(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFF)V

    :cond_3
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    add-float v0, v0, v28

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v2

    invoke-static {v0, v2}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v2

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    sub-float v0, v0, v28

    invoke-static/range {v22 .. v23}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v4

    invoke-static {v0, v4}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    sub-float/2addr v0, v1

    invoke-static/range {v26 .. v27}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v6

    add-float/2addr v6, v1

    new-instance v1, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v1, v0, v6}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v0

    sub-float v0, v0, v30

    invoke-static/range {v24 .. v25}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v1

    add-float v1, v1, v30

    new-instance v6, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v6, v0, v1}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    move-object/from16 v0, v18

    array-length v1, v0

    move/from16 v7, v34

    move v8, v7

    :goto_2
    if-ge v7, v1, :cond_9

    aget v9, v0, v7

    const/4 v10, 0x1

    add-int/lit8 v14, v8, 0x1

    if-eqz v12, :cond_4

    array-length v15, v0

    sub-int/2addr v15, v10

    if-ne v8, v15, :cond_4

    move-object/from16 v15, v19

    const/4 v8, 0x0

    :goto_3
    const/4 v9, 0x1

    goto :goto_7

    :cond_4
    cmpl-float v8, v9, v13

    if-gtz v8, :cond_6

    const/4 v8, 0x0

    cmpg-float v10, v9, v8

    if-gez v10, :cond_5

    goto :goto_4

    :cond_5
    move/from16 v10, v34

    goto :goto_5

    :cond_6
    const/4 v8, 0x0

    :goto_4
    const/4 v10, 0x1

    :goto_5
    invoke-static {v2, v3, v4, v5, v9}, Landroidx/compose/ui/geometry/OffsetKt;->lerp-Wko1d7g(JJF)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-interface {v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v15

    invoke-static {v9, v15}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    move-result v9

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v6, v9}, Lkotlin/ranges/ClosedFloatRange;->contains(Ljava/lang/Comparable;)Z

    move-result v9

    if-eqz v9, :cond_7

    move-object/from16 v15, v19

    goto :goto_3

    :cond_7
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/geometry/Offset;->box-impl(J)Landroidx/compose/ui/geometry/Offset;

    move-result-object v9

    if-eqz v10, :cond_8

    move-wide/from16 v20, v32

    goto :goto_6

    :cond_8
    move-wide/from16 v20, v16

    :goto_6
    invoke-static/range {v20 .. v21}, Landroidx/compose/ui/graphics/Color;->box-impl(J)Landroidx/compose/ui/graphics/Color;

    move-result-object v10

    move-object/from16 v15, v19

    invoke-interface {v15, v11, v9, v10}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_7
    add-int/2addr v7, v9

    move v8, v14

    move-object/from16 v19, v15

    goto :goto_2

    :cond_9
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
