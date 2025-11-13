.class public Landroid/hardware/location/ContextHubClient;
.super Ljava/lang/Object;
.source "ContextHubClient.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "ContextHubClient"


# instance fields
.field private final greylist-max-o mAttachedHub:Landroid/hardware/location/ContextHubInfo;

.field private greylist-max-o mClientProxy:Landroid/hardware/location/IContextHubClient;

.field private final greylist-max-o mCloseGuard:Ldalvik/system/CloseGuard;

.field private blacklist mId:Ljava/lang/Integer;

.field private final greylist-max-o mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final blacklist mPersistent:Z


# direct methods
.method constructor blacklist <init>(Landroid/hardware/location/ContextHubInfo;Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Landroid/hardware/location/ContextHubClient;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mId:Ljava/lang/Integer;

    iput-object p1, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    iput-boolean p2, p0, Landroid/hardware/location/ContextHubClient;->mPersistent:Z

    iget-boolean v1, p0, Landroid/hardware/location/ContextHubClient;->mPersistent:Z

    if-eqz v1, :cond_0

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    goto :goto_0

    :cond_0
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "ContextHubClient.close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private blacklist doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I
    .locals 4

    const-string v0, "NanoAppMessage cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v0}, Landroid/hardware/location/ContextHubInfo;->getMaxPacketLengthBytes()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->getMessageBody()[B

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    if-le v2, v0, :cond_0

    array-length v2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Message (%d bytes) exceeds max payload length (%d bytes)"

    invoke-virtual {v3, v2}, Ljava/lang/String;->formatted([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ContextHubClient"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    return v2

    :cond_0
    if-nez p2, :cond_1

    :try_start_0
    iget-object v2, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v2, p1}, Landroid/hardware/location/IContextHubClient;->sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I

    move-result v2

    return v2

    :cond_1
    iget-object v2, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v2, p1, p2}, Landroid/hardware/location/IContextHubClient;->sendReliableMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method private blacklist waitForClientProxy()V
    .locals 2

    nop

    :goto_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_1

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized blacklist callbackFinished()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubClient;->waitForClientProxy()V

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->callbackFinished()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public whitelist test-api close()V
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mIsClosed:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_1
    :goto_0
    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    :cond_0
    iget-boolean v0, p0, Landroid/hardware/location/ContextHubClient;->mPersistent:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/location/ContextHubClient;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public whitelist getAttachedHub()Landroid/hardware/location/ContextHubInfo;
    .locals 1

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    return-object v0
.end method

.method public whitelist getId()I
    .locals 2

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mId:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "ID was not set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized blacklist reliableMessageCallbackFinished(IB)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/location/ContextHubClient;->waitForClientProxy()V

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0, p1, p2}, Landroid/hardware/location/IContextHubClient;->reliableMessageCallbackFinished(IB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public whitelist sendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/hardware/location/ContextHubClient;->doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result v0

    return v0
.end method

.method public whitelist sendReliableMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;)Landroid/hardware/location/ContextHubTransaction;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/location/NanoAppMessage;",
            ")",
            "Landroid/hardware/location/ContextHubTransaction<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/hardware/location/ContextHubTransaction;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Landroid/hardware/location/ContextHubTransaction;-><init>(I)V

    invoke-static {}, Landroid/chre/flags/Flags;->reliableMessageImplementation()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/location/ContextHubClient;->mAttachedHub:Landroid/hardware/location/ContextHubInfo;

    invoke-virtual {v1}, Landroid/hardware/location/ContextHubInfo;->supportsReliableMessages()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/location/NanoAppMessage;->isBroadcastMessage()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-static {v0}, Landroid/hardware/location/ContextHubTransactionHelper;->createTransactionCallback(Landroid/hardware/location/ContextHubTransaction;)Landroid/hardware/location/IContextHubTransactionCallback;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Landroid/hardware/location/ContextHubClient;->doSendMessageToNanoApp(Landroid/hardware/location/NanoAppMessage;Landroid/hardware/location/IContextHubTransactionCallback;)I

    move-result v3

    if-eqz v3, :cond_1

    new-instance v4, Landroid/hardware/location/ContextHubTransaction$Response;

    invoke-direct {v4, v3, v2}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    new-instance v1, Landroid/hardware/location/ContextHubTransaction$Response;

    const/16 v3, 0x9

    invoke-direct {v1, v3, v2}, Landroid/hardware/location/ContextHubTransaction$Response;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/hardware/location/ContextHubTransaction;->setResponse(Landroid/hardware/location/ContextHubTransaction$Response;)V

    return-object v0
.end method

.method declared-synchronized greylist-max-o setClientProxy(Landroid/hardware/location/IContextHubClient;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "IContextHubClient cannot be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/hardware/location/ContextHubClient;->mClientProxy:Landroid/hardware/location/IContextHubClient;

    invoke-interface {v0}, Landroid/hardware/location/IContextHubClient;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/location/ContextHubClient;->mId:Ljava/lang/Integer;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot change client proxy multiple times"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
