.class Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;
.super Landroid/media/IMediaRouter2Manager$Stub;
.source "MediaRouter2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Client"
.end annotation


# instance fields
.field final synthetic blacklist this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;


# direct methods
.method public static synthetic blacklist $r8$lambda$afM8YrbqTbSbMsnn3Xlwb7uDsvs(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;II)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monRequestFailedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;II)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fdlCw522Ets56XcEJ_JHqHWPNbY(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monDiscoveryPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gWN3D3i6QTJ7BLUuJdyQi_uQ3OE(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;ILandroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monSessionCreatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;ILandroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$j7ISaTLRB7dyWbNK0zAYd7RTBQg(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .locals 0

    invoke-static {p0}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monInvalidateInstanceOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$mrVyffRBx4nsfSpuI3Qk3oigKa0(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monRouteListingPreferenceChangedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Ljava/lang/String;Landroid/media/RouteListingPreference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tROjnuph3ZKEWoAyyr_82XBPwVA(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monSessionUpdatedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$weFlKxNxSmpPLGtn_TsVwtAHp3w(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->-$$Nest$monSessionReleasedOnHandler(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/RoutingSessionInfo;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-direct {p0}, Landroid/media/IMediaRouter2Manager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;-><init>(Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;)V

    return-void
.end method


# virtual methods
.method public blacklist invalidateInstance()V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-static {v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist notifyDiscoveryPreferenceChanged(Ljava/lang/String;Landroid/media/RouteDiscoveryPreference;)V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda6;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist notifyRequestFailed(II)V
    .locals 5

    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist notifyRouteListingPreferenceChange(Ljava/lang/String;Landroid/media/RouteListingPreference;)V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-static {v1, v2, p1, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist notifyRoutesUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaRoute2Info;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Landroid/media/MediaRouter2$MediaRouter2Stub$$ExternalSyntheticLambda3;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v2, v2, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist notifySessionCreated(ILandroid/media/RoutingSessionInfo;)V
    .locals 4

    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda2;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3, p2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist notifySessionReleased(Landroid/media/RoutingSessionInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda5;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public blacklist notifySessionUpdated(Landroid/media/RoutingSessionInfo;)V
    .locals 3

    iget-object v0, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    iget-object v0, v0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;->this$0:Landroid/media/MediaRouter2;

    invoke-static {v0}, Landroid/media/MediaRouter2;->-$$Nest$fgetmHandler(Landroid/media/MediaRouter2;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client$$ExternalSyntheticLambda1;-><init>()V

    iget-object v2, p0, Landroid/media/MediaRouter2$ProxyMediaRouter2Impl$Client;->this$1:Landroid/media/MediaRouter2$ProxyMediaRouter2Impl;

    invoke-static {v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
