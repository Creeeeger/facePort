.class final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;
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
.field final synthetic $amplitude:F

.field final synthetic $animatedAmplitude$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $animationOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

.field final synthetic $colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

.field final synthetic $enabled:Z

.field final synthetic $frequency:F

.field final synthetic $isRtl:Z

.field final synthetic $phaseShiftFloat$delegate:Landroidx/compose/runtime/State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/State;"
        }
    .end annotation
.end field

.field final synthetic $sliderState:Landroidx/compose/material3/SliderState;

.field final synthetic $waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;


# direct methods
.method public constructor <init>(ZLandroidx/compose/material3/SliderState;ZLcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;FLcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;FLandroidx/compose/runtime/State;Landroidx/compose/runtime/State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Landroidx/compose/material3/SliderState;",
            "Z",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;",
            "F",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;",
            "Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;",
            "F",
            "Landroidx/compose/runtime/State;",
            "Landroidx/compose/runtime/State;",
            ")V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$isRtl:Z

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$sliderState:Landroidx/compose/material3/SliderState;

    iput-boolean p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$enabled:Z

    iput-object p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$animationOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    iput p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$frequency:F

    iput-object p6, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    iput-object p7, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iput p8, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$amplitude:F

    iput-object p9, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$phaseShiftFloat$delegate:Landroidx/compose/runtime/State;

    iput-object p10, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$animatedAmplitude$delegate:Landroidx/compose/runtime/State;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 32

    move-object/from16 v0, p0

    move-object/from16 v16, p1

    check-cast v16, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v17

    iget-boolean v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$isRtl:Z

    const/16 v18, 0x0

    if-eqz v1, :cond_0

    move/from16 v19, v17

    goto :goto_0

    :cond_0
    move/from16 v19, v18

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$sliderState:Landroidx/compose/material3/SliderState;

    iget-object v1, v1, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    mul-float v1, v1, v17

    sub-float v1, v17, v1

    :goto_1
    move v15, v1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$sliderState:Landroidx/compose/material3/SliderState;

    iget-object v1, v1, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    mul-float v1, v1, v17

    goto :goto_1

    :goto_2
    iget-boolean v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$enabled:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$animationOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;

    iget-boolean v1, v1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveAnimationOptions;->reverse:Z

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$phaseShiftFloat$delegate:Landroidx/compose/runtime/State;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    goto :goto_3

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$phaseShiftFloat$delegate:Landroidx/compose/runtime/State;

    sget-object v2, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    neg-float v1, v1

    :goto_3
    iget-object v2, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$animatedAmplitude$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v2}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    move/from16 v20, v1

    move/from16 v21, v2

    goto :goto_4

    :cond_3
    move/from16 v20, v18

    move/from16 v21, v20

    :goto_4
    iget v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$frequency:F

    div-float v1, v1, v17

    const/4 v2, 0x3

    int-to-float v2, v2

    mul-float v22, v1, v2

    sub-float v1, v15, v19

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x400921fb54442d18L    # Math.PI

    div-double v23, v3, v1

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    iget v13, v1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-boolean v2, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$enabled:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->trackColor-WaAFU9c$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZZ)J

    move-result-wide v25

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-boolean v2, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$enabled:Z

    if-eqz v2, :cond_4

    iget-wide v1, v1, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->activeTrackSecondaryColor:J

    :goto_5
    move-wide/from16 v27, v1

    goto :goto_6

    :cond_4
    iget-wide v1, v1, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->disabledActiveTrackSecondaryColor:J

    goto :goto_5

    :goto_6
    sget-object v29, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->INSTANCE:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$animatedAmplitude$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v11

    iget-boolean v14, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$isRtl:Z

    const/4 v3, 0x0

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    move/from16 v4, v19

    move v5, v15

    move/from16 v6, v20

    move/from16 v7, v22

    move-wide/from16 v8, v23

    move v10, v13

    move/from16 v12, v21

    move/from16 v30, v13

    move/from16 v31, v14

    move-wide/from16 v13, v25

    move/from16 p1, v15

    move/from16 v15, v31

    invoke-static/range {v1 .. v15}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->access$drawTrack-Imwu3XQ(Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;IFFFFDFFFJZ)V

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$animatedAmplitude$delegate:Landroidx/compose/runtime/State;

    invoke-interface {v1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v11

    iget-boolean v15, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$isRtl:Z

    const/4 v3, 0x1

    move-object/from16 v1, v29

    move-object/from16 v2, v16

    move/from16 v4, v19

    move/from16 v5, p1

    move/from16 v6, v20

    move/from16 v7, v22

    move-wide/from16 v8, v23

    move/from16 v10, v30

    move/from16 v12, v21

    move-wide/from16 v13, v27

    invoke-static/range {v1 .. v15}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;->access$drawTrack-Imwu3XQ(Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults;Landroidx/compose/ui/graphics/drawscope/DrawScope;IFFFFDFFFJZ)V

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-boolean v2, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$enabled:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->trackColor-WaAFU9c$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZZ)J

    move-result-wide v1

    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v3

    move/from16 v4, p1

    invoke-static {v4, v3}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    iget-boolean v5, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$isRtl:Z

    if-eqz v5, :cond_5

    move/from16 v5, v18

    goto :goto_7

    :cond_5
    move/from16 v5, v17

    :goto_7
    invoke-interface/range {v16 .. v16}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getCenter-F1C5BW0()J

    move-result-wide v6

    invoke-static {v6, v7}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    move-result v6

    invoke-static {v5, v6}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$3;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    iget v7, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    const/4 v9, 0x0

    const/16 v10, 0x1e0

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFIFI)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
