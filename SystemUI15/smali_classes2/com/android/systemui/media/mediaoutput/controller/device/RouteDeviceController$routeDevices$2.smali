.class final Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2;
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
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    sget-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion;

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    invoke-virtual {v1}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;-><init>(Landroid/media/MediaRouter2Manager;Lkotlin/coroutines/Continuation;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    iget-object v3, v1, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->refreshRoutes:Lkotlinx/coroutines/flow/StateFlowImpl;

    new-instance v4, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$1;

    invoke-direct {v4, v1, v2}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Lkotlin/coroutines/Continuation;)V

    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    invoke-direct {v1, v0, v3, v4}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$invoke$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;)V

    return-object v0
.end method
