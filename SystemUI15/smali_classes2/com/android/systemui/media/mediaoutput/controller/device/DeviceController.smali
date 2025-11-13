.class public abstract Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final audioDevicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

.field public final controllerJob$delegate:Lkotlin/Lazy;

.field public final controllerScope$delegate:Lkotlin/Lazy;

.field public final devicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController$controllerJob$2;->INSTANCE:Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController$controllerJob$2;

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->controllerJob$delegate:Lkotlin/Lazy;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController$controllerScope$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController$controllerScope$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->controllerScope$delegate:Lkotlin/Lazy;

    sget-object v0, Lkotlinx/coroutines/channels/BufferOverflow;->DROP_OLDEST:Lkotlinx/coroutines/channels/BufferOverflow;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v0, v3}, Lkotlinx/coroutines/flow/SharedFlowKt;->MutableSharedFlow$default(IILkotlinx/coroutines/channels/BufferOverflow;I)Lkotlinx/coroutines/flow/SharedFlowImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController$devicesFlow$1$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController$devicesFlow$1$1;-><init>(Lkotlinx/coroutines/flow/MutableSharedFlow;Lkotlin/coroutines/Continuation;)V

    const/4 v4, 0x3

    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->devicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    iput-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->audioDevicesFlow:Lkotlinx/coroutines/flow/SharedFlowImpl;

    return-void
.end method


# virtual methods
.method public adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
    .locals 0

    return-void
.end method

.method public cancel(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->controllerJob$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/JobImpl;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public deselect(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 0

    return-void
.end method

.method public final getControllerScope()Lkotlinx/coroutines/CoroutineScope;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->controllerScope$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public select(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 0

    return-void
.end method

.method public transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 0

    return-void
.end method
