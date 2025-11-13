.class public abstract Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;
.super Landroid/app/Service;
.source "SharedConnectivityService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist DEBUG:Z = true

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

.field private blacklist mHotspotNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

.field private blacklist mKnownNetworks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHotspotNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHotspotNetworks(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnownNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmKnownNetworks(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworks:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSettingsState(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSettingsState(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monRegisterCallback(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onRegisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monUnregisterCallback(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onUnregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworks:Ljava/util/List;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworks:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    return-void
.end method

.method public static whitelist areHotspotNetworksEnabledForService(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static whitelist areKnownNetworksEnabledForService(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403bb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist onRegisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :try_start_0
    invoke-interface {p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onServiceConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v2, "Exception in onRegisterCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method

.method private blacklist onUnregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3

    sget-object v0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBind intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHandler:Landroid/os/Handler;

    new-instance v0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService$1;-><init>(Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;)V

    invoke-virtual {p0}, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->onBind()V

    return-object v0
.end method

.method public blacklist onBind()V
    .locals 0

    return-void
.end method

.method public abstract whitelist onConnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
.end method

.method public abstract whitelist onConnectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
.end method

.method public abstract whitelist onDisconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
.end method

.method public abstract whitelist onForgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
.end method

.method public final blacklist setCountdownLatch(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method public final whitelist setHotspotNetworks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworks:Ljava/util/List;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworks:Ljava/util/List;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onHotspotNetworksUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in setHotspotNetworks"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final whitelist setKnownNetworks(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworks:Ljava/util/List;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworks:Ljava/util/List;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onKnownNetworksUpdated(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in setKnownNetworks"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final whitelist setSettingsState(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    .locals 5

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mSettingsState:Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onSharedConnectivitySettingsChanged(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in setSettingsState"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final whitelist updateHotspotNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    .locals 5

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mHotspotNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onHotspotNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in updateHotspotNetworkConnectionStatus"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final whitelist updateKnownNetworkConnectionStatus(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    .locals 5

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mKnownNetworkConnectionStatus:Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    invoke-interface {v2, v3}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;->onKnownNetworkConnectionStatusChanged(Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    sget-object v3, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->TAG:Ljava/lang/String;

    const-string v4, "Exception in updateKnownNetworkConnectionStatus"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/service/SharedConnectivityService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method
