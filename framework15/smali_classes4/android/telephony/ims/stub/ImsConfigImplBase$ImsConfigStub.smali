.class public Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;
.super Landroid/telephony/ims/aidl/IImsConfig$Stub;
.source "ImsConfigImplBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/ims/stub/ImsConfigImplBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImsConfigStub"
.end annotation


# instance fields
.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field greylist-max-o mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/telephony/ims/stub/ImsConfigImplBase;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mLock:Ljava/lang/Object;

.field private greylist-max-o mProvisionedIntValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mProvisionedStringValue:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$-Mx3zXashXOuNkxV3bkC7C6XlLI(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$setConfigInt$4(IILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$0Z8ona2dK4v9WzpCemVy_4PMdUQ(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$addRcsConfigCallback$9(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$CgQ8IfTmF1GBDKFHLEO7WNbgP8E(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$setConfigString$5(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$G4MhBbE58l-I4VZ_8ofM_6C--hg(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$notifyIntImsConfigChanged$13(IILjava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$LbMfnvOi1uAfnnvmU5XCdunHRZo(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$addImsConfigCallback$0(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$RYdTjamFc2Nf85khtPsnIK9_9lk(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;[BZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$notifyRcsAutoConfigurationReceived$7([BZLjava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$StKGJ0oFnsZi7NFMhrlzQtA6kLo(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$updateImsCarrierConfigs$6(Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$VqA3p0l4u7HWk4wl645nThOxbLw(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$removeImsConfigCallback$1(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ah31-O5PQ7H6rY_AOYc5uZNOVow(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$setRcsClientConfiguration$12(Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cBCyiOMBtebiVTrWc6bsLNd0jyI(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$removeRcsConfigCallback$10(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fRkG3Q-ktpppoNNVvDmxNj5UUVc(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$notifyStringImsConfigChanged$14(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$gLFABTmwutW5UAFkWeJQb3UQKFw(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$triggerRcsReconfiguration$11(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$tLSF7tc1HZFkOnktjSS5PHaLQ2Q(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$getConfigString$3(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xeRe4cXnR8uz2Gsuiu2v5Sjr24c(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$getConfigInt$2(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic blacklist $r8$lambda$xsVOBLsk-ZJ4cjui-PhILQ1_kiU(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->lambda$notifyRcsAutoConfigurationRemoved$8(Ljava/util/concurrent/atomic/AtomicReference;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmExecutor(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/Executor;)V
    .locals 0

    iput-object p1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyImsConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(ILjava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/telephony/ims/stub/ImsConfigImplBase;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Landroid/telephony/ims/aidl/IImsConfig$Stub;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    iput-object p2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private blacklist executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->runAsync(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->join()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CompletionException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsConfigImplBase Binder - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ImsConfigImplBase"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/RemoteException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda1;-><init>(Ljava/util/function/Supplier;)V

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/concurrent/CompletableFuture;->supplyAsync(Ljava/util/function/Supplier;Ljava/util/concurrent/Executor;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CompletableFuture;->get()Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ImsConfigImplBase Binder - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ImsConfigImplBase"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/RemoteException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    :cond_0
    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private greylist-max-o getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mImsConfigImplBaseWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/ims/stub/ImsConfigImplBase;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Landroid/os/RemoteException;

    const-string v2, "Fail to get ImsConfigImpl"

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private synthetic blacklist lambda$addImsConfigCallback$0(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$maddImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$addRcsConfigCallback$9(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$maddRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsync$15(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$executeMethodAsyncForResult$16(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private synthetic blacklist lambda$getConfigInt$2(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, -0x1

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getConfigInt(I)I

    move-result v2

    move v0, v2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    monitor-exit v1

    return-object v3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private synthetic blacklist lambda$getConfigString$3(ILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getConfigString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    :goto_0
    :try_start_2
    monitor-exit v1

    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {p2, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private synthetic blacklist lambda$notifyIntImsConfigChanged$13(IILjava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$notifyRcsAutoConfigurationReceived$7([BZLjava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$monNotifyRcsAutoConfigurationReceived(Landroid/telephony/ims/stub/ImsConfigImplBase;[BZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$notifyRcsAutoConfigurationRemoved$8(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$monNotifyRcsAutoConfigurationRemoved(Landroid/telephony/ims/stub/ImsConfigImplBase;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$notifyStringImsConfigChanged$14(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$removeImsConfigCallback$1(Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mremoveImsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$removeRcsConfigCallback$10(Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mremoveRcsConfigCallback(Landroid/telephony/ims/stub/ImsConfigImplBase;Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$setConfigInt$4(IILjava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 5

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setConfig(II)I

    move-result v2

    move v0, v2

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-string v2, "ImsConfigImplBase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set provision value of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " failed with error code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(II)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private synthetic blacklist lambda$setConfigString$5(ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)Ljava/lang/Integer;
    .locals 4

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setConfig(ILjava/lang/String;)I

    move-result v2

    move v0, v2

    if-nez v0, :cond_0

    iget-object v2, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->notifyImsConfigChanged(ILjava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {p3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    return-object v2
.end method

.method private synthetic blacklist lambda$setRcsClientConfiguration$12(Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$triggerRcsReconfiguration$11(Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ims/stub/ImsConfigImplBase;->triggerAutoConfiguration()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$updateImsCarrierConfigs$6(Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 1

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method private greylist-max-o notifyImsConfigChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;II)V

    return-void
.end method

.method private greylist-max-o notifyImsConfigChanged(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->-$$Nest$mnotifyConfigChanged(Landroid/telephony/ims/stub/ImsConfigImplBase;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public greylist-max-o addImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda11;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "addImsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception addImsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist addRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda7;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "addRcsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception addRcsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist clearCachedValue()V
    .locals 2

    const-string v0, "ImsConfigImplBase"

    const-string v1, "clearCachedValue"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o getConfigInt(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda12;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getConfigInt"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception getConfigString"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public greylist-max-o getConfigString(I)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda2;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/util/concurrent/atomic/AtomicReference;)V

    const-string v2, "getConfigString"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception getConfigString"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist getRcsClientConfiguration(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->getRcsClientConfiguration(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist notifyIntImsConfigChanged(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda13;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "notifyIntImsConfigChanged"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyIntImsConfigChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist notifyProvisionedIntValueChanged(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyProvisionedValueChanged(II)V

    return-void
.end method

.method public blacklist notifyProvisionedStringValueChanged(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyProvisionedValueChanged(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist notifyRcsAutoConfigurationErrorReceived(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyAutoConfigurationErrorReceived(ILjava/lang/String;)V

    return-void
.end method

.method public blacklist notifyRcsAutoConfigurationReceived([BZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda0;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;[BZLjava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "notifyRcsAutoConfigurationReceived"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyRcsAutoConfigurationReceived"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist notifyRcsAutoConfigurationRemoved()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda9;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "notifyRcsAutoConfigurationRemoved"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyRcsAutoConfigurationRemoved"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist notifyRcsPreConfigurationReceived([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->getImsConfigImpl()Landroid/telephony/ims/stub/ImsConfigImplBase;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/ims/stub/ImsConfigImplBase;->notifyPreProvisioningReceived([B)V

    return-void
.end method

.method public blacklist notifyStringImsConfigChanged(ILjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda8;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "notifyStringImsConfigChanged"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception notifyStringImsConfigChanged"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public greylist-max-o removeImsConfigCallback(Landroid/telephony/ims/aidl/IImsConfigCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda14;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IImsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "removeImsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception removeImsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist removeRcsConfigCallback(Landroid/telephony/ims/aidl/IRcsConfigCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda15;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/aidl/IRcsConfigCallback;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "removeRcsConfigCallback"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception removeRcsConfigCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public greylist-max-o setConfigInt(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda16;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;IILjava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "setConfigInt"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception setConfigInt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public greylist-max-o setConfigString(ILjava/lang/String;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;ILjava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "setConfigString"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsyncForResult(Ljava/util/function/Supplier;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    return v1

    :cond_0
    const-string v2, "ImsConfigImplBase"

    const-string v3, "ImsConfigImplBase Exception setConfigInt"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteException;

    throw v2
.end method

.method public blacklist setRcsClientConfiguration(Landroid/telephony/ims/RcsClientConfiguration;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda5;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/telephony/ims/RcsClientConfiguration;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "setRcsClientConfiguration"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception setRcsClientConfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method public blacklist triggerRcsReconfiguration()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda6;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "triggerRcsReconfiguration"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception triggerRcsReconfiguration"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method

.method protected blacklist updateCachedValue(II)V
    .locals 4

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedIntValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected blacklist updateCachedValue(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->mProvisionedStringValue:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist updateImsCarrierConfigs(Landroid/os/PersistableBundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v1, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, v0}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub$$ExternalSyntheticLambda10;-><init>(Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;Landroid/os/PersistableBundle;Ljava/util/concurrent/atomic/AtomicReference;)V

    const-string/jumbo v2, "updateImsCarrierConfigs"

    invoke-direct {p0, v1, v2}, Landroid/telephony/ims/stub/ImsConfigImplBase$ImsConfigStub;->executeMethodAsync(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "ImsConfigImplBase"

    const-string v2, "ImsConfigImplBase Exception updateImsCarrierConfigs"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteException;

    throw v1
.end method
