.class public Landroid/telephony/ims/stub/ImsEcbmImplBase;
.super Ljava/lang/Object;
.source "ImsEcbmImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsEcbmImplBase"


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final greylist-max-o mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

.field private greylist-max-o mListener:Lcom/android/ims/internal/IImsEcbmListener;

.field private final blacklist mLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;)Lcom/android/ims/internal/IImsEcbmListener;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmListener(Landroid/telephony/ims/stub/ImsEcbmImplBase;Lcom/android/ims/internal/IImsEcbmListener;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/stub/ImsEcbmImplBase$1;-><init>(Landroid/telephony/ims/stub/ImsEcbmImplBase;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

    return-void
.end method


# virtual methods
.method public final whitelist enteredEcbm()V
    .locals 3

    const-string v0, "ImsEcbmImplBase"

    const-string v1, "Entered ECBM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbmListener;->enteredECBM()V
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

.method public whitelist exitEmergencyCallbackMode()V
    .locals 2

    const-string v0, "ImsEcbmImplBase"

    const-string v1, "exitEmergencyCallbackMode() not implemented"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final whitelist exitedEcbm()V
    .locals 3

    const-string v0, "ImsEcbmImplBase"

    const-string v1, "Exited ECBM."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mListener:Lcom/android/ims/internal/IImsEcbmListener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Lcom/android/ims/internal/IImsEcbmListener;->exitedECBM()V
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

.method public greylist-max-o getImsEcbm()Lcom/android/ims/internal/IImsEcbm;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mImsEcbm:Lcom/android/ims/internal/IImsEcbm;

    return-object v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsEcbmImplBase;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method
