.class public final Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController;->$r8$clinit:I

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$1$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController;->getSmartMirroringClient()Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "SmartMirroringClient"

    const-string/jumbo v1, "scanMirroring()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->service:Landroid/os/Messenger;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;->audioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/media/AudioManager;->getDevices(I)[Landroid/media/AudioDeviceInfo;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, p1, v4

    invoke-virtual {v5}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v5

    const/16 v6, 0x19

    if-ne v5, v6, :cond_0

    move-object v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    :try_start_0
    sget p1, Lkotlin/Result;->$r8$clinit:I

    const/4 p1, 0x3

    invoke-static {v1, p1, v3, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    sget v0, Lkotlin/Result;->$r8$clinit:I

    new-instance v0, Lkotlin/Result$Failure;

    invoke-direct {v0, p1}, Lkotlin/Result$Failure;-><init>(Ljava/lang/Throwable;)V

    move-object p1, v0

    :goto_2
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController;->getSmartMirroringClient()Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient$registerClient$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringClient;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$1$1$emit$$inlined$map$1;

    invoke-direct {v0, p1}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$1$1$emit$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$1$1$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$1$1$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/media/mediaoutput/controller/device/SmartMirroringDeviceController$1$1$emit$$inlined$map$1;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_4

    goto :goto_3

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_3
    return-object p0
.end method
