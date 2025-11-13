.class final Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;
.super Landroid/service/trust/ITrustAgentService$Stub;
.source "TrustAgentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/TrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TrustAgentServiceWrapper"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/service/trust/TrustAgentService;


# direct methods
.method private constructor blacklist <init>(Landroid/service/trust/TrustAgentService;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-direct {p0}, Landroid/service/trust/ITrustAgentService$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/trust/TrustAgentService;Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;-><init>(Landroid/service/trust/TrustAgentService;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o onConfigure(Ljava/util/List;Landroid/os/IBinder;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/PersistableBundle;",
            ">;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/service/trust/TrustAgentService$ConfigurationData;

    invoke-direct {v1, p1, p2}, Landroid/service/trust/TrustAgentService$ConfigurationData;-><init>(Ljava/util/List;Landroid/os/IBinder;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o onDeviceLocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o onDeviceUnlocked()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o onEscrowTokenAdded([BJLandroid/os/UserHandle;)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_handle"

    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "user_handle"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o onEscrowTokenRemoved(JZ)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_handle"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_removed_result"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o onTokenStateReceived(JI)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_handle"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "token_state"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o onTrustTimeout()V
    .locals 2

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public greylist-max-o onUnlockAttempt(Z)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o onUnlockLockout(I)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onUserMayRequestUnlock()V
    .locals 2

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public blacklist onUserRequestedUnlock(Z)V
    .locals 3

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmHandler(Landroid/service/trust/TrustAgentService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xa

    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public greylist-max-o setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V
    .locals 4

    iget-object v0, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v0}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmLock(Landroid/service/trust/TrustAgentService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1, p1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fputmCallback(Landroid/service/trust/TrustAgentService;Landroid/service/trust/ITrustAgentServiceCallback;)V

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmManagingTrust(Landroid/service/trust/TrustAgentService;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmCallback(Landroid/service/trust/TrustAgentService;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v1

    iget-object v2, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v2}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmManagingTrust(Landroid/service/trust/TrustAgentService;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/service/trust/ITrustAgentServiceCallback;->setManagingTrust(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v2, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    const-string v3, "calling setManagingTrust()"

    invoke-static {v2, v3}, Landroid/service/trust/TrustAgentService;->-$$Nest$monError(Landroid/service/trust/TrustAgentService;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    invoke-static {v1}, Landroid/service/trust/TrustAgentService;->-$$Nest$fgetmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Landroid/service/trust/TrustAgentService$TrustAgentServiceWrapper;->this$0:Landroid/service/trust/TrustAgentService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/service/trust/TrustAgentService;->-$$Nest$fputmPendingGrantTrustTask(Landroid/service/trust/TrustAgentService;Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
