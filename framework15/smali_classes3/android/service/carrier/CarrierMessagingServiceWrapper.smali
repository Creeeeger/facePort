.class public final Landroid/service/carrier/CarrierMessagingServiceWrapper;
.super Ljava/lang/Object;
.source "CarrierMessagingServiceWrapper.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;,
        Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;,
        Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;
    }
.end annotation


# instance fields
.field private volatile blacklist mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private volatile blacklist mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

.field private blacklist mOnServiceReadyCallback:Ljava/lang/Runnable;

.field private blacklist mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$monServiceReady(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private blacklist onServiceReady(Landroid/service/carrier/ICarrierMessagingService;)V
    .locals 4

    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public whitelist bindToCarrierMessagingService(Landroid/content/Context;Ljava/lang/String;Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.service.carrier.CarrierMessagingService"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v2, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection-IA;)V

    iput-object v2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    iput-object p4, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api close()V
    .locals 0

    invoke-virtual {p0}, Landroid/service/carrier/CarrierMessagingServiceWrapper;->disconnect()V

    return-void
.end method

.method public whitelist disconnect()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mCarrierMessagingServiceConnection:Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingServiceConnection;

    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mOnServiceReadyCallback:Ljava/lang/Runnable;

    iput-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mServiceReadyCallbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public whitelist downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v1, p0, p5, p4}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/service/carrier/ICarrierMessagingService;->downloadMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
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

.method public whitelist receiveSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v6, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v6, p0, p6, p5}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/service/carrier/ICarrierMessagingService;->filterSms(Landroid/service/carrier/MessagePdu;Ljava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public whitelist sendDataSms([BILjava/lang/String;IILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .locals 8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v7, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v7, p0, p7, p6}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v7}, Landroid/service/carrier/ICarrierMessagingService;->sendDataSms([BILjava/lang/String;IILandroid/service/carrier/ICarrierMessagingCallback;)V
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

.method public whitelist sendMms(Landroid/net/Uri;ILandroid/net/Uri;Ljava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v1, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v1, p0, p5, p4}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    invoke-interface {v0, p1, p2, p3, v1}, Landroid/service/carrier/ICarrierMessagingService;->sendMms(Landroid/net/Uri;ILandroid/net/Uri;Landroid/service/carrier/ICarrierMessagingCallback;)V
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

.method public whitelist sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v6, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v6, p0, p6, p5}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/service/carrier/ICarrierMessagingService;->sendMultipartTextSms(Ljava/util/List;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
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

.method public whitelist sendTextSms(Ljava/lang/String;ILjava/lang/String;ILjava/util/concurrent/Executor;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;)V
    .locals 7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Landroid/service/carrier/CarrierMessagingServiceWrapper;->mICarrierMessagingService:Landroid/service/carrier/ICarrierMessagingService;

    new-instance v6, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;

    invoke-direct {v6, p0, p6, p5}, Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallbackInternal;-><init>(Landroid/service/carrier/CarrierMessagingServiceWrapper;Landroid/service/carrier/CarrierMessagingServiceWrapper$CarrierMessagingCallback;Ljava/util/concurrent/Executor;)V

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/service/carrier/ICarrierMessagingService;->sendTextSms(Ljava/lang/String;ILjava/lang/String;ILandroid/service/carrier/ICarrierMessagingCallback;)V
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
