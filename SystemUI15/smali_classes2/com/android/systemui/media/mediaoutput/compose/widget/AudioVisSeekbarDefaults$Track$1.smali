.class final Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;
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
.field final synthetic $colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

.field final synthetic $enabled:Z

.field final synthetic $isRtl:Z

.field final synthetic $sliderState:Landroidx/compose/material3/SliderState;

.field final synthetic $waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;


# direct methods
.method public constructor <init>(ZLandroidx/compose/material3/SliderState;Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;ZLcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$isRtl:Z

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$sliderState:Landroidx/compose/material3/SliderState;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iput-boolean p4, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$enabled:Z

    iput-object p5, p0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    check-cast v12, Landroidx/compose/ui/graphics/drawscope/DrawScope;

    invoke-interface {v12}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->getSize-NH-jbRc()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v13

    iget-boolean v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$isRtl:Z

    const/4 v14, 0x0

    if-eqz v1, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    move v15, v14

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$sliderState:Landroidx/compose/material3/SliderState;

    iget-object v1, v1, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    mul-float/2addr v1, v13

    sub-float v1, v13, v1

    :goto_1
    move v11, v1

    goto :goto_2

    :cond_1
    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$sliderState:Landroidx/compose/material3/SliderState;

    iget-object v1, v1, Landroidx/compose/material3/SliderState;->valueState$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableFloatState;

    invoke-virtual {v1}, Landroidx/compose/runtime/SnapshotMutableFloatStateImpl;->getFloatValue()F

    move-result v1

    mul-float/2addr v1, v13

    goto :goto_1

    :goto_2
    cmpg-float v1, v15, v11

    if-nez v1, :cond_2

    move v15, v11

    goto :goto_5

    :cond_2
    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-boolean v2, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$enabled:Z

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->trackColor-WaAFU9c$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZZ)J

    move-result-wide v2

    invoke-static {v15, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    invoke-static {v11, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    iget v8, v1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    sget-object v1, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v16, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    const/4 v10, 0x0

    const/16 v17, 0x1e0

    move-object v1, v12

    move/from16 v9, v16

    move/from16 v18, v11

    move/from16 v11, v17

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFIFI)V

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-boolean v2, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$enabled:Z

    if-eqz v2, :cond_3

    iget-wide v1, v1, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->activeTrackSecondaryColor:J

    :goto_3
    move-wide v2, v1

    goto :goto_4

    :cond_3
    iget-wide v1, v1, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->disabledActiveTrackSecondaryColor:J

    goto :goto_3

    :goto_4
    invoke-static {v15, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v4

    move/from16 v15, v18

    invoke-static {v15, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v6

    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    iget v8, v1, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    const/4 v10, 0x0

    const/16 v11, 0x1e0

    move-object v1, v12

    move/from16 v9, v16

    invoke-static/range {v1 .. v11}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFIFI)V

    :goto_5
    iget-object v1, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$colors:Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;

    iget-boolean v2, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$enabled:Z

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarColors;->trackColor-WaAFU9c$frameworks__base__packages__SystemUI__android_common__SystemUI_core(ZZ)J

    move-result-wide v1

    invoke-static {v15, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v3

    iget-boolean v5, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$isRtl:Z

    if-eqz v5, :cond_4

    move v13, v14

    :cond_4
    invoke-static {v13, v14}, Landroidx/compose/ui/geometry/OffsetKt;->Offset(FF)J

    move-result-wide v5

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/AudioVisSeekbarDefaults$Track$1;->$waveOptions:Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;

    iget v7, v0, Lcom/android/systemui/media/mediaoutput/compose/widget/WaveOptions;->trackWidth:F

    sget-object v0, Landroidx/compose/ui/graphics/StrokeCap;->Companion:Landroidx/compose/ui/graphics/StrokeCap$Companion;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget v8, Landroidx/compose/ui/graphics/StrokeCap;->Round:I

    const/4 v9, 0x0

    const/16 v10, 0x1e0

    move-object v0, v12

    invoke-static/range {v0 .. v10}, Landroidx/compose/ui/graphics/drawscope/DrawScope;->drawLine-NGM6Ib0$default(Landroidx/compose/ui/graphics/drawscope/DrawScope;JJJFIFI)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
