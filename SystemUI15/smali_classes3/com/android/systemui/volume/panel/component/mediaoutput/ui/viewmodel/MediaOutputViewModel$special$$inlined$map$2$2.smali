.class public final Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2$1;

    iget v1, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2$1;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2$1;-><init>(Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2$1;->result:Ljava/lang/Object;

    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v2, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    check-cast p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel;

    invoke-interface {p1}, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel;->getDevice()Lcom/android/systemui/volume/domain/model/AudioOutputDevice;

    move-result-object p2

    instance-of v2, p2, Lcom/android/systemui/volume/domain/model/AudioOutputDevice$Unknown;

    xor-int/2addr v2, v3

    const/4 v4, 0x0

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object p2, v4

    :goto_1
    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcom/android/systemui/volume/domain/model/AudioOutputDevice;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance v2, Lcom/android/systemui/common/shared/model/Icon$Loaded;

    invoke-direct {v2, p2, v4}, Lcom/android/systemui/common/shared/model/Icon$Loaded;-><init>(Landroid/graphics/drawable/Drawable;Lcom/android/systemui/common/shared/model/ContentDescription;)V

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/android/systemui/common/shared/model/Icon$Resource;

    const p2, 0x7f08099e

    invoke-direct {v2, p2, v4}, Lcom/android/systemui/common/shared/model/Icon$Resource;-><init>(ILcom/android/systemui/common/shared/model/ContentDescription;)V

    :goto_2
    instance-of p2, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;

    if-eqz p2, :cond_5

    move-object v4, p1

    check-cast v4, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;

    :cond_5
    const/4 p2, 0x0

    if-eqz v4, :cond_6

    iget-boolean v4, v4, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$MediaSession;->isPlaybackActive:Z

    if-ne v4, v3, :cond_6

    move p2, v3

    :cond_6
    instance-of p1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaOutputComponentModel$Calling;

    const v4, 0x11200c8

    if-nez p2, :cond_8

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    new-instance p1, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/DeviceIconViewModel$IsNotPlaying;

    new-instance p2, Lcom/android/systemui/common/shared/model/Color$Attribute;

    const v5, 0x11200b8

    invoke-direct {p2, v5}, Lcom/android/systemui/common/shared/model/Color$Attribute;-><init>(I)V

    new-instance v5, Lcom/android/systemui/common/shared/model/Color$Attribute;

    invoke-direct {v5, v4}, Lcom/android/systemui/common/shared/model/Color$Attribute;-><init>(I)V

    invoke-direct {p1, v2, p2, v5}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/DeviceIconViewModel$IsNotPlaying;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/Color;Lcom/android/systemui/common/shared/model/Color;)V

    goto :goto_4

    :cond_8
    :goto_3
    new-instance p1, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/DeviceIconViewModel$IsPlaying;

    new-instance p2, Lcom/android/systemui/common/shared/model/Color$Attribute;

    invoke-direct {p2, v4}, Lcom/android/systemui/common/shared/model/Color$Attribute;-><init>(I)V

    new-instance v4, Lcom/android/systemui/common/shared/model/Color$Attribute;

    const v5, 0x11200c4

    invoke-direct {v4, v5}, Lcom/android/systemui/common/shared/model/Color$Attribute;-><init>(I)V

    invoke-direct {p1, v2, p2, v4}, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/DeviceIconViewModel$IsPlaying;-><init>(Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/common/shared/model/Color;Lcom/android/systemui/common/shared/model/Color;)V

    :goto_4
    iput v3, v0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2$1;->label:I

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/mediaoutput/ui/viewmodel/MediaOutputViewModel$special$$inlined$map$2$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_9

    return-object v1

    :cond_9
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
