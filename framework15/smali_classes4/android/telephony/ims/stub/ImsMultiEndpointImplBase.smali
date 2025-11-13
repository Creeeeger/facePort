.class public Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;
.super Ljava/lang/Object;
.source "ImsMultiEndpointImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "MultiEndpointImplBase"


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

.field private greylist-max-o mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)Lcom/android/ims/internal/IImsExternalCallStateListener;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;Lcom/android/ims/internal/IImsExternalCallStateListener;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    return-void
.end method


# virtual methods
.method public greylist-max-o getIImsMultiEndpoint()Lcom/android/ims/internal/IImsMultiEndpoint;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mImsMultiEndpoint:Lcom/android/ims/internal/IImsMultiEndpoint;

    return-object v0
.end method

.method public final whitelist onImsExternalCallStateUpdate(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/ims/ImsExternalCallState;",
            ">;)V"
        }
    .end annotation

    const-string v0, "MultiEndpointImplBase"

    const-string v1, "ims external call state update triggered."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mListener:Lcom/android/ims/internal/IImsExternalCallStateListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1, p1}, Lcom/android/ims/internal/IImsExternalCallStateListener;->onImsExternalCallStateUpdate(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist requestImsExternalCallStateInfo()V
    .locals 2

    const-string v0, "MultiEndpointImplBase"

    const-string/jumbo v1, "requestImsExternalCallStateInfo() not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsMultiEndpointImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
