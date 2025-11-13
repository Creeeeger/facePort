.class public Landroid/telephony/ims/stub/ImsConfigImplBase;
.super Ljava/lang/Object;
.source "ImsConfigImplBase.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;,
        Landroid/telephony/ims/stub/ImsConfigImplBase$SetConfigResult;
    }
.end annotation


# static fields
.field public static final whitelist CONFIG_RESULT_FAILED:I = 0x1

.field public static final whitelist CONFIG_RESULT_SUCCESS:I = 0x0

.field public static final whitelist CONFIG_RESULT_UNKNOWN:I = -0x1

.field private static final greylist-max-o TAG:Ljava/lang/String; = "ImsConfigImplBase"


# instance fields
.field private final blacklist mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IImsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

.field private final blacklist mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/telephony/util/RemoteCallbackListExt<",
            "Landroid/telephony/ims/aidl/IRcsConfigCallback;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRcsConfigData:[B

.field private final blacklist mRcsConfigDataLock:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$maddImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$maddRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyConfigChanged(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNotifyRcsAutoConfigurationReceived(Landroid/telephony/ims/stub/ImsConfigImplBase;[BZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationReceived([BZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monNotifyRcsAutoConfigurationRemoved(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    .locals 0

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->onNotifyRcsAutoConfigurationRemoved()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mremoveRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-direct {v0}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-void
.end method

.method private greylist-max-o addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method private blacklist addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->register(Landroid/os/IInterface;)Z

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {p1, v1}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "ImsConfigImplBase"

    const-string v3, "dead binder to call onConfigurationChanged, skipping."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

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

.method static synthetic blacklist lambda$notifyAutoConfigurationErrorReceived$4(ILjava/lang/String;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onAutoConfigurationErrorReceived(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyAutoConfigurationErrorReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyConfigChanged$0(IILandroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onIntConfigChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(int): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyConfigChanged$1(ILjava/lang/String;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/telephony/ims/aidl/IImsConfigCallback;->onStringConfigChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyConfigChanged(string): dead binder in notify, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$notifyPreProvisioningReceived$5([BLandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p1, p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onPreProvisioningReceived([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyPreProvisioningReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onNotifyRcsAutoConfigurationReceived$2([BLandroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-interface {p1, v0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationChanged([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationReceived, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$onNotifyRcsAutoConfigurationRemoved$3(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3

    :try_start_0
    invoke-interface {p0}, Landroid/telephony/ims/aidl/IRcsConfigCallback;->onConfigurationReset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string v2, "dead binder in notifyRcsAutoConfigurationRemoved, skipping."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private final greylist-max-o notifyConfigChanged(II)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda3;-><init>(II)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private greylist-max-o notifyConfigChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda5;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onNotifyRcsAutoConfigurationReceived([BZ)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-static {p1}, Landroid/telephony/ims/RcsConfig;->decompressGzip([B)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    invoke-static {v2, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v1

    return-void

    :cond_1
    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v3, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda1;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_2
    :goto_1
    invoke-virtual {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationReceived([BZ)V

    return-void

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2
.end method

.method private blacklist onNotifyRcsAutoConfigurationRemoved()V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyRcsAutoConfigurationRemoved()V

    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method private greylist-max-o removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method private blacklist removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method


# virtual methods
.method public final blacklist clearConfigurationCache()V
    .locals 2

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->clearCachedValue()V

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigDataLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsConfigData:[B

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getConfigInt(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public whitelist getConfigString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o getIImsConfig()Landroid/telephony/ims/aidl/IImsConfig;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    return-object v0
.end method

.method public blacklist getRcsClientConfiguration(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final whitelist notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda4;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist notifyPreProvisioningReceived([B)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mRcsCallbacks:Lcom/android/internal/telephony/util/RemoteCallbackListExt;

    new-instance v2, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$$ExternalSyntheticLambda0;-><init>([B)V

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/util/RemoteCallbackListExt;->broadcastAction(Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final whitelist notifyProvisionedValueChanged(II)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(II)V

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(int): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final whitelist notifyProvisionedValueChanged(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->updateCachedValue(ILjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ImsConfigImplBase"

    const-string/jumbo v2, "notifyProvisionedValueChanged(string): Framework connection is dead."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public whitelist notifyRcsAutoConfigurationReceived([BZ)V
    .locals 0

    return-void
.end method

.method public whitelist notifyRcsAutoConfigurationRemoved()V
    .locals 0

    return-void
.end method

.method public whitelist setConfig(II)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public whitelist setConfig(ILjava/lang/String;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final blacklist setDefaultExecutor(Ljava/util/concurrent/Executor;)V
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase;->mImsConfigStub:Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->-$$Nest$fputmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method public whitelist setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 0

    return-void
.end method

.method public whitelist triggerAutoConfiguration()V
    .locals 0

    return-void
.end method

.method public blacklist updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .locals 0

    return-void
.end method
