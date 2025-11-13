.class public final Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/media/MediaRouter2Manager$Callback;


# instance fields
.field public final synthetic $$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field public final synthetic $this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/MediaRouter2Manager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/ProducerScope;",
            "Landroid/media/MediaRouter2Manager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferredFeaturesChanged(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPreferredFeaturesChanged() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RouteDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;->invokeSuspend$updateRoutes(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/MediaRouter2Manager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onRequestFailed(I)V
    .locals 2

    const-string v0, "onRequestFailed() - "

    const-string v1, "RouteDeviceController"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;->invokeSuspend$updateRoutes(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/MediaRouter2Manager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onRouteListingPreferenceUpdated(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onRouteListingPreferenceUpdated() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RouteDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;->invokeSuspend$updateRoutes(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/MediaRouter2Manager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onRoutesUpdated()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;

    invoke-static {v0, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;->invokeSuspend$updateRoutes(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/MediaRouter2Manager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onSessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSessionReleased() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RouteDeviceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;->invokeSuspend$updateRoutes(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/MediaRouter2Manager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onSessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSessionUpdated() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RouteDeviceController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;->invokeSuspend$updateRoutes(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/MediaRouter2Manager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onTransferFailed(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onTransferFailed() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " - "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RouteDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;->invokeSuspend$updateRoutes(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/MediaRouter2Manager;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public final onTransferred(Landroid/media/RoutingSessionInfo;Landroid/media/RoutingSessionInfo;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onTransferred() - "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RouteDeviceController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$$this$callbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1$callback$1;->$this_routeDeviceChanges:Landroid/media/MediaRouter2Manager;

    invoke-static {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion$routeDeviceChanges$1;->invokeSuspend$updateRoutes(Lkotlinx/coroutines/channels/ProducerScope;Landroid/media/MediaRouter2Manager;)Lkotlinx/coroutines/Job;

    return-void
.end method
