.class final Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$19;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$19;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Landroid/media/MediaRoute2Info;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2$2$6$19;->this$0:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v0, 0x3e

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v1, v0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->createRouteDevice$default(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Landroid/media/MediaRoute2Info;ZZI)Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    move-result-object p0

    return-object p0
.end method
