.class final Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;
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
.field final synthetic $device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

.field final synthetic $volume:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;ILkotlin/coroutines/Continuation;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;",
            "Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;",
            "I",
            "Lkotlin/coroutines/Continuation;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iput p3, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->$volume:I

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->$volume:I

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;-><init>(Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;ILkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    iget v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel;->controllerMap:Ljava/util/Map;

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    invoke-interface {v0}, Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;->getFinalControllerType()Lcom/android/systemui/media/mediaoutput/controller/device/ControllerType;

    move-result-object v0

    check-cast p1, Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->$device:Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    iget p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/SessionAudioPathViewModel$adjustVolume$1;->$volume:I

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V

    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
