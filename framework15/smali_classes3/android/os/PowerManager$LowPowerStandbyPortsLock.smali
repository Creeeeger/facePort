.class public final Landroid/os/PowerManager$LowPowerStandbyPortsLock;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LowPowerStandbyPortsLock"
.end annotation


# instance fields
.field private blacklist mHeld:Z

.field private final blacklist mPorts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mToken:Landroid/os/IBinder;

.field final synthetic blacklist this$0:Landroid/os/PowerManager;


# direct methods
.method constructor blacklist <init>(Landroid/os/PowerManager;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PowerManager$LowPowerStandbyPortDescription;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mPorts:Ljava/util/List;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public whitelist acquire()V
    .locals 4

    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    iget-object v3, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mPorts:Ljava/util/List;

    invoke-static {v3}, Landroid/os/PowerManager$LowPowerStandbyPortDescription;->toParcelable(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->acquireLowPowerStandbyPorts(Landroid/os/IBinder;Ljava/util/List;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected whitelist test-api finalize()V
    .locals 3

    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z

    if-eqz v1, :cond_0

    const-string v1, "PowerManager"

    const-string v2, "LowPowerStandbyPorts finalized while still held"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->release()V

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

.method public whitelist release()V
    .locals 3

    iget-object v0, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->this$0:Landroid/os/PowerManager;

    iget-object v1, v1, Landroid/os/PowerManager;->mService:Landroid/os/IPowerManager;

    iget-object v2, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mToken:Landroid/os/IBinder;

    invoke-interface {v1, v2}, Landroid/os/IPowerManager;->releaseLowPowerStandbyPorts(Landroid/os/IBinder;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/os/PowerManager$LowPowerStandbyPortsLock;->mHeld:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
