.class public final Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;
.super Landroid/media/session/MediaController$Callback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;

    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAudioInfoChanged(Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAudioInfoChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RemoteDeviceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;

    invoke-virtual {p1}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    sget-object v0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v1, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1$onAudioInfoChanged$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1$onAudioInfoChanged$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {p1, v0, v2, v1, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onSessionDestroyed()V
    .locals 4

    const-string v0, "RemoteDeviceController"

    const-string v1, "onSessionDestroyed()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    sget-object v1, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object v1, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/MainCoroutineDispatcher;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1$onSessionDestroyed$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController$callback$1$onSessionDestroyed$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RemoteDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x2

    invoke-static {v0, v1, v3, v2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method
