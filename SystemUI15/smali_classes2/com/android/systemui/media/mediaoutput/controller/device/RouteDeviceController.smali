.class public abstract Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;
.super Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final context:Landroid/content/Context;

.field public final dataStore:Landroidx/datastore/core/DataStore;

.field public isSupportForTransferDuringRouting:Z

.field public isSupportTransferableRoutesWhileConnecting:Z

.field public packageName:Ljava/lang/String;

.field public final refreshRoutes:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final routeDevices$delegate:Lkotlin/Lazy;

.field public final router2Manager$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->Companion:Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Landroidx/datastore/core/DataStore;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/media/AudioManager;",
            "Landroidx/datastore/core/DataStore;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->dataStore:Landroidx/datastore/core/DataStore;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->isSupportForTransferDuringRouting:Z

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$router2Manager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$router2Manager$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->router2Manager$delegate:Lkotlin/Lazy;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->refreshRoutes:Lkotlinx/coroutines/flow/StateFlowImpl;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->packageName:Ljava/lang/String;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$routeDevices$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->routeDevices$delegate:Lkotlin/Lazy;

    const-string p1, "RouteDeviceController"

    const-string p2, "init()"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$1;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$1;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p1, p3, p3, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$3;

    invoke-direct {p2, p0, p3}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$3;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Lkotlin/coroutines/Continuation;)V

    invoke-static {p1, p3, p3, p2, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    return-void
.end method

.method public static final access$getFeatureAvailable(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Landroid/media/MediaRoute2Info;)Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getFeatures()Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    instance-of p1, p0, Ljava/util/Collection;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string v1, "android.media.route.feature.EMPTY"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "com.google.android.gms.cast.CATEGORY_CAST_DYNAMIC_SESSION"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return v0
.end method

.method public static synthetic createRouteDevice$default(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Landroid/media/MediaRoute2Info;ZZI)Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;
    .locals 7

    sget-object v2, Lcom/android/systemui/media/mediaoutput/entity/State;->CONNECTED:Lcom/android/systemui/media/mediaoutput/entity/State;

    and-int/lit8 v0, p4, 0x4

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    move v3, p2

    and-int/lit8 p2, p4, 0x10

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    move v5, p3

    const/4 v6, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->createRouteDevice(Landroid/media/MediaRoute2Info;Lcom/android/systemui/media/mediaoutput/entity/State;ZZZZ)Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final adjustVolume(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "adjustVolume() - "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RouteDeviceController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object p0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    if-eqz p1, :cond_0

    move-object v1, p1

    :cond_0
    invoke-virtual {p0, v1, p2}, Landroid/media/MediaRouter2Manager;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object p0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    if-eqz p1, :cond_2

    move-object v1, p1

    :cond_2
    invoke-virtual {p0, v1, p2}, Landroid/media/MediaRouter2Manager;->setRouteVolume(Landroid/media/MediaRoute2Info;I)V

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object p0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;->routingSessionInfo:Landroid/media/RoutingSessionInfo;

    if-eqz p1, :cond_4

    move-object v1, p1

    :cond_4
    invoke-virtual {p0, v1, p2}, Landroid/media/MediaRouter2Manager;->setSessionVolume(Landroid/media/RoutingSessionInfo;I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final cancel(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 4

    const-string v0, "cancel() - "

    const-string v1, "RouteDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;->getMediaRoute2Info()Landroid/media/MediaRoute2Info;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaRouter2Manager;->getRemoteSessions()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v2}, Landroid/media/RoutingSessionInfo;->getClientPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v1, v0

    :cond_2
    check-cast v1, Landroid/media/RoutingSessionInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    :cond_3
    return-void
.end method

.method public final close()V
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->close()V

    const-string p0, "RouteDeviceController"

    const-string v0, "close()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public abstract createGroupDevice(Landroid/media/RoutingSessionInfo;Ljava/util/List;)Lcom/android/systemui/media/mediaoutput/entity/GroupDevice;
.end method

.method public abstract createRouteDevice(Landroid/media/MediaRoute2Info;Lcom/android/systemui/media/mediaoutput/entity/State;ZZZZ)Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;
.end method

.method public final deselect(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 5

    const-string v0, "deselect() - "

    const-string v1, "RouteDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    invoke-interface {p1}, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;->getMediaRoute2Info()Landroid/media/MediaRoute2Info;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v2

    :cond_2
    check-cast v1, Landroid/media/RoutingSessionInfo;

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRouter2Manager;->deselectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$WifiSpeakerCheckBox;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$WifiSpeakerCheckBox;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$App;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$App;-><init>(Ljava/lang/String;)V

    filled-new-array {v2}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$StreamExpansionRemove;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$StreamExpansionRemove;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Number;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p1, v0}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Number;-><init>(I)V

    filled-new-array {p1}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    :cond_3
    return-void
.end method

.method public getAvailableSession(Ljava/util/List;)Landroid/media/RoutingSessionInfo;
    .locals 0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->lastOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/RoutingSessionInfo;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public final getRouter2Manager()Landroid/media/MediaRouter2Manager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->router2Manager$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/MediaRouter2Manager;

    return-object p0
.end method

.method public select(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 5

    const-string/jumbo v0, "select() - "

    const-string v1, "RouteDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/ChromeCastDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;

    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/AudioMirroringDevice;->mediaRoute2Info:Landroid/media/MediaRoute2Info;

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/media/RoutingSessionInfo;

    invoke-virtual {v3}, Landroid/media/RoutingSessionInfo;->getSelectableRoutes()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p1}, Landroid/media/MediaRoute2Info;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v1, v2

    :cond_3
    check-cast v1, Landroid/media/RoutingSessionInfo;

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v0

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaRouter2Manager;->selectRoute(Landroid/media/RoutingSessionInfo;Landroid/media/MediaRoute2Info;)V

    sget-object p1, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;

    sget-object v0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$WifiSpeakerCheckBox;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$WifiSpeakerCheckBox;

    new-instance v2, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$App;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$App;-><init>(Ljava/lang/String;)V

    filled-new-array {v2}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    sget-object p0, Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$StreamExpansionAdd;->INSTANCE:Lcom/android/systemui/media/mediaoutput/analytics/SaEvent$StreamExpansionAdd;

    new-instance p1, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Number;

    invoke-virtual {v1}, Landroid/media/RoutingSessionInfo;->getSelectedRoutes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/systemui/media/mediaoutput/analytics/SaCustom$Number;-><init>(I)V

    filled-new-array {p1}, [Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/media/mediaoutput/analytics/MoSaLogging;->send(Lcom/android/systemui/media/mediaoutput/analytics/SaEvent;[Lcom/android/systemui/media/mediaoutput/analytics/SaCustom;)V

    :cond_4
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->packageName:Ljava/lang/String;

    const-string v1, "packageName changed : "

    const-string v2, " -> "

    const-string v3, "RouteDeviceController"

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/systemui/bixby2/controller/MWBixbyController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "."

    invoke-static {p1, v1, v0}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    iput-object p1, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/DeviceController;->getControllerScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$packageName$2;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController$packageName$2;-><init>(Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;Lkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p1, v1, v1, v0, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/Job;

    :cond_2
    return-void
.end method

.method public transfer(Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;)V
    .locals 4

    const-string/jumbo v0, "transfer() - "

    const-string v1, "RouteDeviceController"

    invoke-static {v0, p1, v1}, Lcom/android/systemui/media/mediaoutput/controller/device/AudioMirroringDeviceController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Lcom/android/systemui/media/mediaoutput/entity/AudioDevice;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->routeDevice:Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;->getMediaRoute2Info()Landroid/media/MediaRoute2Info;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/BuiltInDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    if-eqz p1, :cond_1

    move-object v1, p1

    :cond_1
    new-instance p1, Lkotlin/Pair;

    invoke-direct {p1, v0, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, p1

    goto :goto_1

    :cond_2
    instance-of v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;

    iget-object v0, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->routeDevice:Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/android/systemui/media/mediaoutput/entity/RouteDevice;->getMediaRoute2Info()Landroid/media/MediaRoute2Info;

    move-result-object v1

    :cond_3
    iget-object p1, p1, Lcom/android/systemui/media/mediaoutput/entity/BluetoothDevice;->audioDeviceInfo:Landroid/media/AudioDeviceInfo;

    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v0

    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRoute2Info;

    invoke-virtual {v1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioDeviceInfo;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3}, Landroid/media/MediaRouter2Manager;->transfer(Ljava/lang/String;Landroid/media/MediaRoute2Info;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/media/MediaRouter2Manager;->getRoutingSessions(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/RoutingSessionInfo;

    invoke-virtual {p0}, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->getRouter2Manager()Landroid/media/MediaRouter2Manager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/media/MediaRouter2Manager;->releaseSession(Landroid/media/RoutingSessionInfo;)V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/android/systemui/media/mediaoutput/controller/device/RouteDeviceController;->audioManager:Landroid/media/AudioManager;

    invoke-static {p0, v0}, Lcom/android/systemui/media/mediaoutput/ext/AudioManagerExtKt;->setDeviceForced(Landroid/media/AudioManager;Landroid/media/AudioDeviceInfo;)V

    :cond_6
    return-void
.end method
