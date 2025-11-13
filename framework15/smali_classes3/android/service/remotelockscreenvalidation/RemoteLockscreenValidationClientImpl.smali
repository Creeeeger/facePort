.class public Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;
.super Ljava/lang/Object;
.source "RemoteLockscreenValidationClientImpl.java"

# interfaces
.implements Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsConnected:Z

.field private final blacklist mIsServiceAvailable:Z

.field private final blacklist mLifecycleExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mRequestQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

.field private blacklist mServiceInfo:Landroid/content/pm/ServiceInfo;


# direct methods
.method public static synthetic blacklist $r8$lambda$JfDA3YI3mH_ZxG7DEtqteu_Sqrw(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->connectInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$XGCA6jt69t5p-pUSdF5_pduhwcw(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->lambda$executeApiCall$2(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fW1e4QfOBfp1pbY974ICoMF-bDw(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->lambda$onServiceConnected$3(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fW2bGMD08Z-WsSIxym66YnjfrfI(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->disconnectInternal()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$qfNcIPQN5PocN5B_BCexaCqTTGg(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->lambda$connectInternal$1(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$spHN2YSAzEmGir5GAz3fJLehukE(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->lambda$disconnectInternal$0()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/content/ComponentName;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mContext:Landroid/content/Context;

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0, p3}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->isServiceAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsServiceAvailable:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    if-nez p2, :cond_0

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    return-void
.end method

.method private blacklist connect()V
    .locals 2

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda3;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist connectInternal()V
    .locals 4

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-nez v0, :cond_0

    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "RemoteLockscreenValidation service unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.remotelockscreenvalidation.RemoteLockscreenValidationService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/16 v1, 0x21

    iget-object v2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v0, v1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda4;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/content/Intent;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private blacklist disconnectInternal()V
    .locals 2

    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string v1, "already disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mLifecycleExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda5;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    return-void
.end method

.method private blacklist executeApiCall(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V
    .locals 2

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda2;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist executeInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V
    .locals 1

    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    invoke-direct {p0, p1, v0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->performApiCallInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->connect()V

    :goto_0
    return-void
.end method

.method private blacklist getServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-wide/16 v1, 0x80

    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ComponentInfoFlags;->of(J)Landroid/content/pm/PackageManager$ComponentInfoFlags;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;Landroid/content/pm/PackageManager$ComponentInfoFlags;)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Cannot resolve service %s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist isServiceAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->getServiceInfo(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v2, "android.permission.BIND_REMOTE_LOCKSCREEN_VALIDATION_SERVICE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    iget-object v3, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s/%s does not require permission %s"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$connectInternal$1(Landroid/content/Intent;I)V
    .locals 1

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p0, p2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private synthetic blacklist lambda$disconnectInternal$0()V
    .locals 1

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private synthetic blacklist lambda$executeApiCall$2(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->executeInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V

    return-void
.end method

.method private synthetic blacklist lambda$onServiceConnected$3(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->onConnectedInternal(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    return-void
.end method

.method private blacklist onConnectedInternal(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .locals 3

    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsConnected:Z

    if-nez v0, :cond_0

    sget-object v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onConnectInternal but connection closed"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    return-void

    :cond_0
    iput-object p1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;

    iget-object v2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mService:Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    invoke-direct {p0, v1, v2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->performApiCallInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    iget-object v2, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mRequestQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist performApiCallInternal(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    .locals 3

    if-nez p2, :cond_0

    const-string v0, "Service is null"

    invoke-virtual {p1, v0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;->onError(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;->exec(Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "executeInternal error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;->onError(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->disconnect()V

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist disconnect()V
    .locals 2

    iget-object v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda0;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist isServiceAvailable()Z
    .locals 1

    iget-boolean v0, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mIsServiceAvailable:Z

    return v0
.end method

.method public whitelist onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->disconnect()V

    return-void
.end method

.method public whitelist onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->disconnect()V

    return-void
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    nop

    invoke-static {p2}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;

    move-result-object v0

    iget-object v1, p0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$$ExternalSyntheticLambda1;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method

.method public blacklist validateLockscreenGuess([BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->isServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Service is not available"

    invoke-interface {p2, v0}, Landroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->TAG:Ljava/lang/String;

    const-string v2, "Error while failing for service unavailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance v0, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$1;-><init>(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;[BLandroid/service/remotelockscreenvalidation/IRemoteLockscreenValidationCallback;)V

    invoke-direct {p0, v0}, Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl;->executeApiCall(Landroid/service/remotelockscreenvalidation/RemoteLockscreenValidationClientImpl$Call;)V

    return-void
.end method
