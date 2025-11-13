.class public final Landroid/hardware/location/ContextHubManager;
.super Ljava/lang/Object;
.source "ContextHubManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/location/ContextHubManager$Callback;,
        Landroid/hardware/location/ContextHubManager$ICallback;,
        Landroid/hardware/location/ContextHubManager$Event;,
        Landroid/hardware/location/ContextHubManager$AuthorizationState;
    }
.end annotation


# static fields
.field public static final whitelist AUTHORIZATION_DENIED:I = 0x0

.field public static final whitelist AUTHORIZATION_DENIED_GRACE_PERIOD:I = 0x1

.field public static final whitelist AUTHORIZATION_GRANTED:I = 0x2

.field public static final whitelist EVENT_CLIENT_AUTHORIZATION:I = 0x7

.field public static final whitelist EVENT_HUB_RESET:I = 0x6

.field public static final whitelist EVENT_NANOAPP_ABORTED:I = 0x4

.field public static final whitelist EVENT_NANOAPP_DISABLED:I = 0x3

.field public static final whitelist EVENT_NANOAPP_ENABLED:I = 0x2

.field public static final whitelist EVENT_NANOAPP_LOADED:I = 0x0

.field public static final whitelist EVENT_NANOAPP_MESSAGE:I = 0x5

.field public static final whitelist EVENT_NANOAPP_UNLOADED:I = 0x1

.field public static final whitelist EXTRA_CLIENT_AUTHORIZATION_STATE:Ljava/lang/String; = "android.hardware.location.extra.CLIENT_AUTHORIZATION_STATE"

.field public static final whitelist EXTRA_CONTEXT_HUB_INFO:Ljava/lang/String; = "android.hardware.location.extra.CONTEXT_HUB_INFO"

.field public static final whitelist EXTRA_EVENT_TYPE:Ljava/lang/String; = "android.hardware.location.extra.EVENT_TYPE"

.field public static final whitelist EXTRA_MESSAGE:Ljava/lang/String; = "android.hardware.location.extra.MESSAGE"

.field public static final whitelist EXTRA_NANOAPP_ABORT_CODE:Ljava/lang/String; = "android.hardware.location.extra.NANOAPP_ABORT_CODE"

.field public static final whitelist EXTRA_NANOAPP_ID:Ljava/lang/String; = "android.hardware.location.extra.NANOAPP_ID"

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ContextHubManager"


# instance fields
.field private greylist-max-o mCallback:Landroid/hardware/location/ContextHubManager$Callback;

.field private greylist-max-o mCallbackHandler:Landroid/os/Handler;

.field private final greylist-max-o mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

.field private greylist-max-o mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private final greylist-max-o mMainLooper:Landroid/os/Looper;

.field private final greylist-max-o mService:Landroid/hardware/location/IContextHubService;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$Callback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmCallbackHandler(Landroid/hardware/location/ContextHubManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocalCallback(Landroid/hardware/location/ContextHubManager;)Landroid/hardware/location/ContextHubManager$ICallback;
    .locals 0

    iget-object p0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$minvokeOnMessageReceiptCallback(Landroid/hardware/location/ContextHubManager;IILandroid/hardware/location/ContextHubMessage;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager;->invokeOnMessageReceiptCallback(IILandroid/hardware/location/ContextHubMessage;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/hardware/location/IContextHubService;Landroid/os/Looper;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/hardware/location/ContextHubManager$3;

    invoke-direct {v0, p0}, Landroid/hardware/location/ContextHubManager$3;-><init>(Landroid/hardware/location/ContextHubManager;)V

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    const-string v0, "service cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "mainLooper cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    iput-object p2, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mClientCallback:Landroid/hardware/location/IContextHubCallback$Stub;

    invoke-interface {v0, v1}, Landroid/hardware/location/IContextHubService;->registerCallback(Landroid/hardware/location/IContextHubCallback;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;
    .locals 1

    new-instance v0, Landroid/hardware/location/ContextHubManager$2;

    invoke-direct {v0, p0, p3, p2, p1}, Landroid/hardware/location/ContextHubManager$2;-><init>(Landroid/hardware/location/ContextHubManager;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;Landroid/hardware/location/ContextHubClient;)V

    return-object v0
.end method

.method private greylist-max-o createQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;>;)",
            "Landroid/hardware/location/IContextHubTransactionCallback;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/location/ContextHubManager$1;

    invoke-direct {v0, p0, p1}, Landroid/hardware/location/ContextHubManager$1;-><init>(Landroid/hardware/location/ContextHubManager;Landroid/hardware/location/ContextHubTransaction;)V

    return-object v0
.end method

.method private declared-synchronized blacklist invokeOnMessageReceiptCallback(IILandroid/hardware/location/ContextHubMessage;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/location/ContextHubManager$Callback;->onMessageReceipt(IILandroid/hardware/location/ContextHubMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public whitelist createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/ContextHubClient;
    .locals 8

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/app/PendingIntent;->isImmutable()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/hardware/location/ContextHubClient;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1}, Landroid/hardware/location/ContextHubClient;-><init>(Landroid/hardware/location/ContextHubInfo;Z)V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    move-object v4, p3

    move-wide v5, p4

    move-object v7, v1

    invoke-interface/range {v2 .. v7}, Landroid/hardware/location/IContextHubService;->createPendingIntentClient(ILandroid/app/PendingIntent;JLjava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v0, v2}, Landroid/hardware/location/ContextHubClient;->setClientProxy(Landroid/hardware/location/IContextHubClient;)V

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "PendingIntent must be mutable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;
    .locals 6

    const-string v0, "Callback cannot be null"

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "Executor cannot be null"

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/location/ContextHubClient;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1}, Landroid/hardware/location/ContextHubClient;-><init>(Landroid/hardware/location/ContextHubInfo;Z)V

    invoke-direct {p0, v0, p4, p3}, Landroid/hardware/location/ContextHubManager;->createClientCallback(Landroid/hardware/location/ContextHubClient;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/IContextHubClientCallback;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    :try_start_0
    iget-object v4, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p2}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v5

    invoke-interface {v4, v5, v1, v2, v3}, Landroid/hardware/location/IContextHubService;->createClient(ILandroid/hardware/location/IContextHubClientCallback;Ljava/lang/String;Ljava/lang/String;)Landroid/hardware/location/IContextHubClient;

    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    invoke-virtual {v0, v4}, Landroid/hardware/location/ContextHubClient;->setClientProxy(Landroid/hardware/location/IContextHubClient;)V

    return-object v0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v5

    throw v5
.end method

.method public whitelist createClient(Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/ContextHubClient;
    .locals 6

    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Landroid/app/PendingIntent;J)Landroid/hardware/location/ContextHubClient;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;
    .locals 2

    new-instance v0, Landroid/os/HandlerExecutor;

    invoke-static {}, Landroid/os/Handler;->getMain()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1, v0, p2}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;

    move-result-object v0

    return-object v0
.end method

.method public whitelist createClient(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/ContextHubClientCallback;Ljava/util/concurrent/Executor;)Landroid/hardware/location/ContextHubClient;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p3, p2}, Landroid/hardware/location/ContextHubManager;->createClient(Landroid/content/Context;Landroid/hardware/location/ContextHubInfo;Ljava/util/concurrent/Executor;Landroid/hardware/location/ContextHubClientCallback;)Landroid/hardware/location/ContextHubClient;

    move-result-object v0

    return-object v0
.end method

.method public whitelist disableNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    nop

    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->disableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist disableTestMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/hardware/location/IContextHubService;->setTestMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist enableNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    nop

    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->enableNanoApp(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public blacklist enableTestMode()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/hardware/location/IContextHubService;->setTestMode(Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->findNanoAppOnHub(ILandroid/hardware/location/NanoAppFilter;)[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getContextHubHandles()[I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getContextHubHandles()[I

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->getContextHubInfo(I)Landroid/hardware/location/ContextHubInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getContextHubs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/location/ContextHubInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubService;->getContextHubs()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->getNanoAppInstanceInfo(I)Landroid/hardware/location/NanoAppInstanceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J
    .locals 3

    const-string v0, "hubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v1, p1}, Landroid/hardware/location/IContextHubService;->getPreloadedNanoAppIds(Landroid/hardware/location/ContextHubInfo;)[J

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    if-nez v0, :cond_0

    const/4 v1, 0x0

    new-array v0, v1, [J

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public whitelist loadNanoApp(ILandroid/hardware/location/NanoApp;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoApp(ILandroid/hardware/location/NanoApp;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist loadNanoApp(Landroid/hardware/location/ContextHubInfo;Landroid/hardware/location/NanoAppBinary;)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "Landroid/hardware/location/NanoAppBinary;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "NanoAppBinary cannot be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    nop

    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2}, Landroid/hardware/location/IContextHubService;->loadNanoAppOnHub(ILandroid/hardware/location/IContextHubTransactionCallback;Landroid/hardware/location/NanoAppBinary;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist queryNanoApps(Landroid/hardware/location/ContextHubInfo;)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/util/List<",
            "Landroid/hardware/location/NanoAppState;",
            ">;>;"
        }
    .end annotation

    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/hardware/location/ContextHubManager;->createQueryCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1}, Landroid/hardware/location/IContextHubService;->queryNanoApps(ILandroid/hardware/location/IContextHubTransactionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist registerCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/hardware/location/ContextHubManager;->registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I

    move-result v0

    return v0
.end method

.method public whitelist registerCallback(Landroid/hardware/location/ContextHubManager$Callback;Landroid/os/Handler;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eqz v0, :cond_0

    const-string v0, "ContextHubManager"

    const-string v1, "Max number of callbacks reached!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :cond_0
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-nez p2, :cond_1

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/hardware/location/ContextHubManager;->mMainLooper:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o registerCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eqz v0, :cond_0

    const-string v0, "ContextHubManager"

    const-string v1, "Max number of local callbacks reached!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    iput-object p1, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist sendMessage(IILandroid/hardware/location/ContextHubMessage;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1, p2, p3}, Landroid/hardware/location/IContextHubService;->sendMessage(IILandroid/hardware/location/ContextHubMessage;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unloadNanoApp(I)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-interface {v0, p1}, Landroid/hardware/location/IContextHubService;->unloadNanoApp(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist unloadNanoApp(Landroid/hardware/location/ContextHubInfo;J)Landroid/hardware/location/ContextHubTransaction;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/ContextHubInfo;",
            "J)",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "ContextHubInfo cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    nop

    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubManager;->mService:Landroid/hardware/location/IContextHubService;

    invoke-virtual {p1}, Landroid/hardware/location/ContextHubInfo;->getId()I

    move-result v3

    invoke-interface {v2, v3, v1, p2, p3}, Landroid/hardware/location/IContextHubService;->unloadNanoAppFromHub(ILandroid/hardware/location/IContextHubTransactionCallback;J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public whitelist unregisterCallback(Landroid/hardware/location/ContextHubManager$Callback;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    if-eq p1, v0, :cond_0

    const-string v0, "ContextHubManager"

    const-string v1, "Cannot recognize callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallback:Landroid/hardware/location/ContextHubManager$Callback;

    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mCallbackHandler:Landroid/os/Handler;

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized greylist-max-o unregisterCallback(Landroid/hardware/location/ContextHubManager$ICallback;)I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;

    if-eq p1, v0, :cond_0

    const-string v0, "ContextHubManager"

    const-string v1, "Cannot recognize local callback!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-object v0, p0, Landroid/hardware/location/ContextHubManager;->mLocalCallback:Landroid/hardware/location/ContextHubManager$ICallback;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
