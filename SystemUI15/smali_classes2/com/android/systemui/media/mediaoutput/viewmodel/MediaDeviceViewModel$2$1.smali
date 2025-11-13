.class public final Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$2$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $$this$launch:Lkotlinx/coroutines/CoroutineScope;

.field public final synthetic this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$2$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$2$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$2$1;->this$0:Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;

    iget-object v0, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->mediaSdkManager:Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    new-instance p1, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$2$1$2$1;

    invoke-direct {p1, v0, p2, v1}, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$2$1$2$1;-><init>(Lcom/samsung/android/smartthingsmediasdk/mediasdk/SmartThingsMediaSdkManager;Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;Lkotlin/coroutines/Continuation;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel$2$1;->$$this$launch:Lkotlinx/coroutines/CoroutineScope;

    const/4 p2, 0x3

    invoke-static {p0, v1, v1, p1, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    goto :goto_1

    :cond_1
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    iget-object p1, p2, Lcom/android/systemui/media/mediaoutput/viewmodel/MediaDeviceViewModel;->_mediaDevicesFlow:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    if-ne p0, p1, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_2
    return-object p0
.end method
