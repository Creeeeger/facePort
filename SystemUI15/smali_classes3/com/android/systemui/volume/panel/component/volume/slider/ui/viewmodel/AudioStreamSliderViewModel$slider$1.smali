.class final Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function4;"
    }
.end annotation


# instance fields
.field synthetic I$0:I

.field synthetic L$0:Ljava/lang/Object;

.field synthetic Z$0:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->this$0:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;

    const/4 p1, 0x4

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p3, Lcom/android/settingslib/volume/shared/model/RingerMode;

    iget p3, p3, Lcom/android/settingslib/volume/shared/model/RingerMode;->value:I

    check-cast p4, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->this$0:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;

    invoke-direct {v0, p0, p4}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->L$0:Ljava/lang/Object;

    iput-boolean p2, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->Z$0:Z

    iput p3, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->I$0:I

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->label:I

    if-nez v1, :cond_8

    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->L$0:Ljava/lang/Object;

    move-object v13, v1

    check-cast v13, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;

    iget-boolean v8, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->Z$0:Z

    iget v1, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->I$0:I

    iget-object v0, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$slider$1;->this$0:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;

    iget-object v2, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->labelsByStream:Ljava/util/Map;

    iget v3, v13, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    iget v3, v13, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->audioStream:I

    if-eqz v2, :cond_7

    iget-object v4, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->context:Landroid/content/Context;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7

    iget v2, v13, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->volume:I

    int-to-float v4, v2

    new-instance v5, Lkotlin/ranges/IntRange;

    iget v7, v13, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->minVolume:I

    iget v9, v13, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->maxVolume:I

    invoke-direct {v5, v7, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    iget v5, v5, Lkotlin/ranges/IntProgression;->first:I

    int-to-float v5, v5

    new-instance v10, Lkotlin/ranges/IntRange;

    invoke-direct {v10, v7, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    iget v10, v10, Lkotlin/ranges/IntProgression;->last:I

    int-to-float v10, v10

    new-instance v11, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v11, v5, v10}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    const/4 v5, 0x1

    iget-boolean v10, v13, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isMuted:Z

    iget-boolean v12, v13, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByMute:Z

    if-eqz v12, :cond_0

    if-eqz v10, :cond_0

    iget-object v14, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->streamsAffectedByRing:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    const v15, 0x7f080b64

    if-eqz v14, :cond_2

    if-ne v1, v5, :cond_2

    const v15, 0x7f080b6c

    goto :goto_0

    :cond_0
    iget-object v14, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->iconsByStream:Ljava/util/Map;

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    if-eqz v14, :cond_1

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v15

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->toString-impl(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v5, "No icon for the stream: "

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v14, "AudioStreamSliderViewModel"

    invoke-static {v14, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const v15, 0x7f080a5c

    :cond_2
    :goto_0
    new-instance v5, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const/4 v14, 0x0

    invoke-direct {v5, v15, v14}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    iget-object v15, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->context:Landroid/content/Context;

    iget-object v14, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->disabledTextByStream:Ljava/util/Map;

    move/from16 v16, v8

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->box-impl(I)Lcom/android/settingslib/volume/shared/model/AudioStream;

    move-result-object v8

    const v17, 0x7f1312c8

    move-object/from16 v18, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v14, v8, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v15, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-instance v5, Lkotlin/ranges/IntRange;

    invoke-direct {v5, v7, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    iget v14, v5, Lkotlin/ranges/IntProgression;->step:I

    if-eqz v12, :cond_4

    iget-object v5, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->context:Landroid/content/Context;

    if-eqz v10, :cond_3

    const v10, 0x7f131468

    goto :goto_1

    :cond_3
    const v10, 0x7f131466

    :goto_1
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v5, v10, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v10, v5

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    new-instance v5, Lkotlin/ranges/IntRange;

    invoke-direct {v5, v7, v9}, Lkotlin/ranges/IntRange;-><init>(II)V

    iget v5, v5, Lkotlin/ranges/IntProgression;->first:I

    if-ne v2, v5, :cond_6

    iget-object v2, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->context:Landroid/content/Context;

    iget-object v0, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel;->streamsAffectedByRing:Ljava/util/Set;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const v3, 0x7f131467

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    if-ne v1, v0, :cond_5

    const v3, 0x7f131469

    :cond_5
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    new-instance v1, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$State;

    iget-boolean v12, v13, Lcom/android/settingslib/volume/shared/model/AudioStreamModel;->isAffectedByMute:Z

    move-object v2, v1

    move v3, v4

    move-object v4, v11

    move-object/from16 v5, v18

    move-object v7, v8

    move/from16 v8, v16

    move v9, v14

    move-object v11, v0

    invoke-direct/range {v2 .. v13}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/AudioStreamSliderViewModel$State;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;ZLcom/android/settingslib/volume/shared/model/AudioStreamModel;)V

    return-object v1

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {v3}, Lcom/android/settingslib/volume/shared/model/AudioStream;->toString-impl(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No label for the stream: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
