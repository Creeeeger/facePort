.class final Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$adjustVolume$1;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$adjustVolume$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$adjustVolume$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;

    iget-object v0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->updateJob:Lkotlinx/coroutines/Job;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$adjustVolume$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;

    invoke-virtual {v0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$adjustVolume$1$1;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$adjustVolume$1;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;

    invoke-direct {v3, p0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController$adjustVolume$1$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {v2, v1, v1, v3, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    move-result-object p0

    iput-object p0, v0, Lcom/android/systemui/media/mediaoutput/controller/device/BuiltInDeviceController;->updateJob:Lkotlinx/coroutines/Job;

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
