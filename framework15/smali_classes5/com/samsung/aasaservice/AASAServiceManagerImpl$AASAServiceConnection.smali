.class Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;
.super Ljava/lang/Object;
.source "AASAServiceManagerImpl.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/aasaservice/AASAServiceManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AASAServiceConnection"
.end annotation


# instance fields
.field private final blacklist deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private blacklist readyCallback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;


# direct methods
.method public constructor blacklist <init>(Lcom/samsung/aasaservice/AASAServiceManager$Callback;Landroid/os/IBinder$DeathRecipient;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;->readyCallback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;

    iput-object p2, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-void
.end method

.method private blacklist addDeathHandler(Landroid/os/IBinder;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "AASAServiceManager"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;->addDeathHandler(Landroid/os/IBinder;)V

    invoke-static {}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->-$$Nest$sfgetlock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {p2}, Lcom/samsung/aasaservice/IAASA$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/aasaservice/IAASA;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->-$$Nest$sfputaasaService(Lcom/samsung/aasaservice/IAASA;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;->readyCallback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;->readyCallback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;

    invoke-interface {v0}, Lcom/samsung/aasaservice/AASAServiceManager$Callback;->onReady()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/aasaservice/AASAServiceManagerImpl$AASAServiceConnection;->readyCallback:Lcom/samsung/aasaservice/AASAServiceManager$Callback;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3

    invoke-static {}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->-$$Nest$sfgetlock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    const-string v1, "AASAServiceManager"

    const-string/jumbo v2, "onServiceDisconnected"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->-$$Nest$sfputaasaService(Lcom/samsung/aasaservice/IAASA;)V

    invoke-static {v1}, Lcom/samsung/aasaservice/AASAServiceManagerImpl;->-$$Nest$sfputaasaServiceConn(Landroid/content/ServiceConnection;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
