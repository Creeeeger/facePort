.class final Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function5;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function5;"
    }
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field synthetic L$2:Ljava/lang/Object;

.field synthetic L$3:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->this$0:Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;

    const/4 p1, 0x5

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    check-cast p2, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;

    check-cast p3, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    check-cast p4, Landroid/media/AudioDeviceInfo;

    check-cast p5, Lkotlin/coroutines/Continuation;

    new-instance v0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;

    iget-object p0, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->this$0:Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;

    invoke-direct {v0, p0, p5}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;-><init>(Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Lkotlin/coroutines/Continuation;)V

    iput-object p1, v0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$0:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$1:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$2:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$3:Ljava/lang/Object;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {v0, p0}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$0:Ljava/lang/Object;

    move-object v4, p1

    check-cast v4, Lkotlinx/coroutines/flow/FlowCollector;

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$1:Ljava/lang/Object;

    move-object v6, p1

    check-cast v6, Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$2:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;

    iget-object p1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$3:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Landroid/media/AudioDeviceInfo;

    new-instance p1, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;

    iget-object v7, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->this$0:Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;

    const/4 v9, 0x0

    move-object v3, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1$1;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/volume/panel/component/mediaoutput/shared/model/MediaDeviceSession;Lcom/android/systemui/volume/panel/component/mediaoutput/domain/model/MediaDeviceSessions;Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor;Landroid/media/AudioDeviceInfo;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->L$2:Ljava/lang/Object;

    iput v2, p0, Lcom/android/systemui/volume/panel/component/volume/domain/interactor/AudioSlidersInteractor$volumePanelSliders$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/CoroutineScopeKt;->coroutineScope(Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
