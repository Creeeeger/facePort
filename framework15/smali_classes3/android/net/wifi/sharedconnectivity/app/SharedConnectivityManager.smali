.class public Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
.super Ljava/lang/Object;
.source "SharedConnectivityManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG:Z

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final blacklist mCallbackProxyCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mIntentAction:Ljava/lang/String;

.field private final blacklist mProxyDataLock:Ljava/lang/Object;

.field private final blacklist mProxyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;",
            "Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

.field private blacklist mServiceConnection:Landroid/content/ServiceConnection;

.field private final blacklist mServicePackageName:Ljava/lang/String;

.field private blacklist mUserManager:Landroid/os/UserManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmBroadcastReceiver(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackProxyCache(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxyDataLock(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmProxyMap(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmService(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbind(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->bind()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterCallbackInternal(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->registerCallbackInternal(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$2;

    invoke-direct {v0, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$2;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServicePackageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mIntentAction:Ljava/lang/String;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method private blacklist bind()V
    .locals 4

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;

    invoke-direct {v0, p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$1;-><init>(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;)V

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServicePackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mIntentAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mUserManager:Landroid/os/UserManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :goto_0
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10403bb

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v3, 0x10403ba

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-direct {v4, p0, v1, v3}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_1
    :goto_0
    sget-object v4, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v5, "To support shared connectivity service on this device, the service\'s package name and intent action strings must not be empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    sget-object v3, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v4, "To support shared connectivity service on this device, the service\'s package name and intent action strings must be defined"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2
.end method

.method public static blacklist create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;
    .locals 1

    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;

    invoke-direct {v0, p0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static synthetic blacklist lambda$bind$0(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Failed to bind after user unlock"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onRegisterCallbackFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method private blacklist registerCallbackInternal(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p2}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->registerCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v2, "Exception in registerCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-interface {p1, v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onRegisterCallbackFailed(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method private blacklist unbind()V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    :cond_0
    return-void
.end method


# virtual methods
.method public whitelist connectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Z
    .locals 4

    const-string v0, "Hotspot network cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->connectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in connectHotspotNetwork"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public whitelist connectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Z
    .locals 4

    const-string v0, "Known network cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->connectKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in connectKnownNetwork"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public whitelist disconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)Z
    .locals 4

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->disconnectHotspotNetwork(Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in disconnectHotspotNetwork"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public whitelist forgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)Z
    .locals 4

    const-string v0, "Known network cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0, p1}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->forgetKnownNetwork(Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in forgetKnownNetwork"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public blacklist getBroadcastReceiver()Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method public whitelist getHotspotNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;
    .locals 4

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getHotspotNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/HotspotNetworkConnectionStatus;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getHotspotNetworkConnectionStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public whitelist getHotspotNetworks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/HotspotNetwork;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getHotspotNetworks()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getHotspotNetworks"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public whitelist getKnownNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;
    .locals 4

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getKnownNetworkConnectionStatus()Landroid/net/wifi/sharedconnectivity/app/KnownNetworkConnectionStatus;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getKnownNetworkConnectionStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public whitelist getKnownNetworks()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/sharedconnectivity/app/KnownNetwork;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getKnownNetworks()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getKnownNetworks"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public blacklist getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public whitelist getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;
    .locals 4

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    invoke-interface {v0}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->getSettingsState()Landroid/net/wifi/sharedconnectivity/app/SharedConnectivitySettingsState;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in getSettingsState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public whitelist registerCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V
    .locals 4

    const-string v0, "executor cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;

    invoke-direct {v0, p1, p2}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;-><init>(Ljava/util/concurrent/Executor;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)V

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->bind()V

    :cond_2
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_3
    invoke-direct {p0, p2, v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->registerCallbackInternal(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager$SharedConnectivityCallbackProxy;)V

    return-void

    :cond_4
    :goto_1
    sget-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v1, "Callback already registered"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Callback already registered"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;->onRegisterCallbackFailed(Ljava/lang/Exception;)V

    return-void
.end method

.method public blacklist setService(Landroid/os/IInterface;)V
    .locals 1

    move-object v0, p1

    check-cast v0, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    iput-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    return-void
.end method

.method public whitelist unregisterCallback(Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityClientCallback;)Z
    .locals 5

    const-string v0, "callback cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v2, "Callback not found, cannot unregister"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mCallbackProxyCache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->unbind()V

    :cond_1
    return v2

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :try_start_3
    iget-object v0, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyDataLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mService:Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;

    iget-object v4, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;

    invoke-interface {v3, v4}, Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityService;->unregisterCallback(Landroid/net/wifi/sharedconnectivity/service/ISharedConnectivityCallback;)V

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->mProxyMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v3, :cond_3

    :try_start_5
    invoke-direct {p0}, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->unbind()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    nop

    return v2

    :catchall_1
    move-exception v2

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v2
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception v0

    sget-object v2, Landroid/net/wifi/sharedconnectivity/app/SharedConnectivityManager;->TAG:Ljava/lang/String;

    const-string v3, "Exception in unregisterCallback"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method
