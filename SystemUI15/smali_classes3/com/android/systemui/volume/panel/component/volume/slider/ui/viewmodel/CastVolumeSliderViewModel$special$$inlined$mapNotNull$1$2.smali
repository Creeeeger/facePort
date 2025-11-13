.class public final Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

.field public final synthetic this$0:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2;->this$0:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2$1;

    iget v3, v2, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2$1;

    invoke-direct {v2, v0, v1}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object v1, v2, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2$1;->result:Ljava/lang/Object;

    sget-object v3, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v4, v2, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2$1;->label:I

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v5, :cond_1

    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move-object/from16 v1, p1

    check-cast v1, Landroid/media/session/MediaController$PlaybackInfo;

    const/4 v4, 0x0

    if-eqz v1, :cond_3

    iget-object v6, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2;->this$0:Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lkotlin/ranges/IntRange;

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    move-result v8

    const/4 v9, 0x0

    invoke-direct {v7, v9, v8}, Lkotlin/ranges/IntRange;-><init>(II)V

    new-instance v8, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$State;

    invoke-virtual {v1}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    move-result v1

    int-to-float v11, v1

    iget v1, v7, Lkotlin/ranges/IntProgression;->first:I

    int-to-float v1, v1

    iget v7, v7, Lkotlin/ranges/IntProgression;->last:I

    int-to-float v7, v7

    new-instance v12, Lkotlin/ranges/ClosedFloatRange;

    invoke-direct {v12, v1, v7}, Lkotlin/ranges/ClosedFloatRange;-><init>(FF)V

    new-instance v13, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const v1, 0x7f080856

    invoke-direct {v13, v1, v4}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    iget-object v1, v6, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel;->context:Landroid/content/Context;

    const v4, 0x7f130bb4

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object v10, v8

    invoke-direct/range {v10 .. v16}, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$State;-><init>(FLkotlin/ranges/ClosedFloatingPointRange;Lcom/android/systemui/common/shared/model/Icon;Ljava/lang/String;ZI)V

    move-object v4, v8

    :cond_3
    if-eqz v4, :cond_4

    iput v5, v2, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2$1;->label:I

    iget-object v0, v0, Lcom/android/systemui/volume/panel/component/volume/slider/ui/viewmodel/CastVolumeSliderViewModel$special$$inlined$mapNotNull$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, v4, v2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v3, :cond_4

    return-object v3

    :cond_4
    :goto_1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method
