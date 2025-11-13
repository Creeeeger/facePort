.class final Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2;"
    }
.end annotation


# instance fields
.field final synthetic $$this$combineTransform:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector;"
        }
    .end annotation
.end field

.field final synthetic $activeSessions:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;

.field final synthetic $communicationDevice:Landroid/media/AudioDeviceInfo;

.field final synthetic $defaultSession:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Landroid/media/AudioDeviceInfo;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/FlowCollector;",
            "Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;",
            "Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;",
            "Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;",
            "Landroid/media/AudioDeviceInfo;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$$this$combineTransform:Lkotlinx/coroutines/flow/FlowCollector;

    iput-object p2, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$defaultSession:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iput-object p3, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$activeSessions:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;

    iput-object p4, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->this$0:Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;

    iput-object p5, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$communicationDevice:Landroid/media/AudioDeviceInfo;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 7

    new-instance p1, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$$this$combineTransform:Lkotlinx/coroutines/flow/FlowCollector;

    iget-object v2, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$defaultSession:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-object v3, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$activeSessions:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;

    iget-object v4, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->this$0:Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;

    iget-object v5, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$communicationDevice:Landroid/media/AudioDeviceInfo;

    move-object v0, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Landroid/media/AudioDeviceInfo;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$defaultSession:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$activeSessions:Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;

    iget-object v3, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->this$0:Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;

    iget-object v4, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$communicationDevice:Landroid/media/AudioDeviceInfo;

    new-instance v5, Lkotlin/collections/builders/ListBuilder;

    invoke-direct {v5}, Lkotlin/collections/builders/ListBuilder;-><init>()V

    const/4 v6, 0x3

    if-eqz p1, :cond_4

    iget-object v7, v1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;->remote:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-object p1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->sessionToken:Landroid/media/session/MediaSession$Token;

    if-eqz v7, :cond_2

    iget-object v7, v7, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->sessionToken:Landroid/media/session/MediaSession$Token;

    goto :goto_0

    :cond_2
    const/4 v7, 0x0

    :goto_0
    invoke-static {p1, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-ne p1, v2, :cond_4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, v1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;->remote:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    if-eqz p1, :cond_3

    iget-boolean v1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->canAdjustVolume:Z

    if-ne v1, v2, :cond_3

    new-instance v1, Lcom/android/systemui/volume/panel/component/volume/domain/model/SliderType$MediaDeviceCast;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/panel/component/volume/domain/model/SliderType$MediaDeviceCast;-><init>(Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;)V

    invoke-virtual {v5, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-static {v3, v5, v6}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;->access$addStream(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/collections/builders/ListBuilder;I)V

    goto :goto_1

    :cond_4
    invoke-static {v3, v5, v6}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;->access$addStream(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/collections/builders/ListBuilder;I)V

    iget-object p1, v1, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;->remote:Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    if-eqz p1, :cond_5

    iget-boolean v1, p1, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;->canAdjustVolume:Z

    if-ne v1, v2, :cond_5

    new-instance v1, Lcom/android/systemui/volume/panel/component/volume/domain/model/SliderType$MediaDeviceCast;

    invoke-direct {v1, p1}, Lcom/android/systemui/volume/panel/component/volume/domain/model/SliderType$MediaDeviceCast;-><init>(Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;)V

    invoke-virtual {v5, v1}, Lkotlin/collections/builders/ListBuilder;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_1
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result p1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_6

    const/4 p1, 0x6

    invoke-static {v3, v5, p1}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;->access$addStream(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/collections/builders/ListBuilder;I)V

    goto :goto_2

    :cond_6
    const/4 p1, 0x0

    invoke-static {v3, v5, p1}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;->access$addStream(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/collections/builders/ListBuilder;I)V

    :goto_2
    const/4 p1, 0x2

    invoke-static {v3, v5, p1}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;->access$addStream(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/collections/builders/ListBuilder;I)V

    const/4 p1, 0x5

    invoke-static {v3, v5, p1}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;->access$addStream(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/collections/builders/ListBuilder;I)V

    const/4 p1, 0x4

    invoke-static {v3, v5, p1}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;->access$addStream(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/collections/builders/ListBuilder;I)V

    invoke-virtual {v5}, Lkotlin/collections/builders/ListBuilder;->build()Lkotlin/collections/builders/ListBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->$$this$combineTransform:Lkotlinx/coroutines/flow/FlowCollector;

    iput v2, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;->label:I

    invoke-interface {v1, p1, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
