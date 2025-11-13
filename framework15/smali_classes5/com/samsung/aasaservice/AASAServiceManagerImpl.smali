.class public Lcom/samsung/aasaservice/AASAServiceManagerImpl;
.super Ljava/lang/Object;
.source "AASAServiceManagerImpl.java"

# interfaces
.implements Lcom/samsung/aasaservice/AASAServiceManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;
    }
.end annotation


# static fields
.field private static final blacklist CLASS_NAME_AASA_SERVICE:Ljava/lang/String; = "com.samsung.aasaservice.AASAService"

.field private static final blacklist MAX_COUNT_TO_RETRY_BINDING:I = 0x5

.field private static final blacklist PACKAGE_NAME_AASA_SERVICE:Ljava/lang/String; = "com.samsung.aasaservice"

.field private static final blacklist TAG:Ljava/lang/String; = "AASAServiceManager"

.field private static blacklist aasaService:Lcom/samsung/aasaservice/IAASA;

.field private static blacklist aasaServiceConn:Landroid/content/ServiceConnection;

.field private static final blacklist lock:Ljava/lang/Object;

.field private static final blacklist mainThreadHandler:Landroid/os/Handler;

.field private static blacklist retryCnt:I


# instance fields
.field private blacklist callback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;

.field private final blacklist context:Landroid/content/Context;


# direct methods
.method public static synthetic blacklist $r8$lambda$G_UFHCCA9l83N_aJR1WnuBmBSnc(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->bindService()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$JekZOOE-kJievez_UnHzTUh1R2s(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->lambda$initialize$0()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cicYVrT14faTgbAn23HV4dDlM6M(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->lambda$createServiceConnection$1()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$z553Salgfa-RIN6b2jHbHb3tvAI(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->notifyReady()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbindService(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->bindService()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetlock()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$sfputaasaService(Lcom/samsung/aasaservice/IAASA;)V
    .locals 0

    sput-object p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaService:Lcom/samsung/aasaservice/IAASA;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfputaasaServiceConn(Landroid/content/ServiceConnection;)V
    .locals 0

    sput-object p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaServiceConn:Landroid/content/ServiceConnection;

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->mainThreadHandler:Landroid/os/Handler;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->lock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->retryCnt:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->context:Landroid/content/Context;

    return-void
.end method

.method private blacklist bindAfterBootComplete(Landroid/content/Context;)V
    .locals 3

    const-string v0, "AASAServiceManager"

    const-string v1, "bindAfterBootComplete"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$1;

    invoke-direct {v0, p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl$1;-><init>(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.samsung.intent.action.LAZY_BOOT_COMPLETE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist bindService()V
    .locals 5

    const-string v0, "AASAServiceManager"

    const-string v1, "bind to AASAService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaService:Lcom/samsung/aasaservice/IAASA;

    if-eqz v1, :cond_0

    const-string v1, "AASAServiceManager"

    const-string v2, "already bound"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->mainThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->unbindService()V

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->createServiceConnection()Landroid/content/ServiceConnection;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->getAasaServiceIntent()Landroid/content/Intent;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "AASAServiceManager"

    const-string/jumbo v2, "succeeded to request bind"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    sput-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaServiceConn:Landroid/content/ServiceConnection;

    const/4 v2, 0x0

    sput v2, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->retryCnt:I

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    const-string v1, "AASAServiceManager"

    const-string/jumbo v2, "failed to request bind"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->retryBindService()V

    :goto_0
    const-string v1, "AASAServiceManager"

    const-string v2, "[END] bind to AASAService"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private blacklist createServiceConnection()Landroid/content/ServiceConnection;
    .locals 3

    new-instance v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;

    new-instance v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V

    new-instance v2, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-direct {v0, v1, v2}, Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;-><init>(Lcom/samsung/aasaservice/AASAServiceManager$Callback;Landroid/os/IBinder$DeathRecipient;)V

    return-object v0
.end method

.method private blacklist getAasaServiceIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.aasaservice"

    const-string v2, "com.samsung.aasaservice.AASAService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private blacklist initialize(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AASAServiceManager"

    const-string/jumbo v1, "initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->isBootCompleted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->bindService()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->bindAfterBootComplete(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private blacklist isBootCompleted()Z
    .locals 3

    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "isBootCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AASAServiceManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic blacklist lambda$createServiceConnection$1()V
    .locals 2

    sget-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic blacklist lambda$createServiceConnection$2()V
    .locals 2

    const-string v0, "AASAServiceManager"

    const-string v1, "binder gone away"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaService:Lcom/samsung/aasaservice/IAASA;

    sput-object v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaServiceConn:Landroid/content/ServiceConnection;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$initialize$0()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->initialize(Landroid/content/Context;)V

    return-void
.end method

.method private blacklist notifyReady()V
    .locals 2

    const-string/jumbo v0, "notify service ready"

    const-string v1, "AASAServiceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->callback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;

    if-nez v0, :cond_0

    const-string v0, "callback is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->callback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;

    invoke-interface {v0}, Lcom/samsung/aasaservice/AASAServiceManager$Callback;->onReady()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->callback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;

    return-void
.end method

.method private blacklist retryBindService()V
    .locals 4

    sget v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->retryCnt:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->retryCnt:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retry to bind to AASAService / "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->retryCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AASAServiceManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->retryCnt:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    sget-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private blacklist unbindService()V
    .locals 3

    sget-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaServiceConn:Landroid/content/ServiceConnection;

    if-eqz v1, :cond_0

    const-string v1, "AASAServiceManager"

    const-string/jumbo v2, "unbind"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->context:Landroid/content/Context;

    sget-object v2, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaServiceConn:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaServiceConn:Landroid/content/ServiceConnection;

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist deinitialize()V
    .locals 2

    const-string v0, "AASAServiceManager"

    const-string v1, "deinitialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->unbindService()V

    return-void
.end method

.method public blacklist initialize(Lcom/samsung/aasaservice/AASAServiceManager$Callback;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->callback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;

    sget-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/aasaservice/AASAServiceManagerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/aasaservice/AASAServiceManagerImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist notifyPolicyUpdateCompletion()V
    .locals 4

    const-string v0, "AASAServiceManager"

    const-string/jumbo v1, "notifyPolicyUpdateCompletion"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaService:Lcom/samsung/aasaservice/IAASA;

    if-nez v1, :cond_0

    const-string v1, "AASAServiceManager"

    const-string/jumbo v2, "not connected yet"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    sget-object v1, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->aasaService:Lcom/samsung/aasaservice/IAASA;

    invoke-interface {v1}, Lcom/samsung/aasaservice/IAASA;->onReceivePolicyUpdateCompletion()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "AASAServiceManager"

    const-string v3, "Error calling IAASA#onReceivePolicyUpdateCompletion"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
