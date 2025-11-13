.class public final Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;
.super Ljava/lang/Object;
.source "OnDeviceIntelligenceManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$ResponseParams;,
        Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$InferenceParams;,
        Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$StateParams;,
        Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$RequestType;
    }
.end annotation


# static fields
.field public static final blacklist API_VERSION_BUNDLE_KEY:Ljava/lang/String; = "ApiVersionBundleKey"

.field public static final blacklist AUGMENT_REQUEST_CONTENT_BUNDLE_KEY:Ljava/lang/String; = "AugmentRequestContentBundleKey"

.field public static final whitelist REQUEST_TYPE_EMBEDDINGS:I = 0x2

.field public static final whitelist REQUEST_TYPE_INFERENCE:I = 0x0

.field public static final whitelist REQUEST_TYPE_PREPARE:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "OnDeviceIntelligence"


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    return-void
.end method

.method private static blacklist configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda4;-><init>(Landroid/os/CancellationSignal;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    return-object v0
.end method

.method private static blacklist configureRemoteProcessingSignalFuture(Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/ProcessingSignal;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/android/internal/infra/AndroidFuture;

    invoke-direct {v0}, Lcom/android/internal/infra/AndroidFuture;-><init>()V

    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda0;-><init>(Landroid/app/ondeviceintelligence/ProcessingSignal;)V

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/infra/AndroidFuture;->whenCompleteAsync(Ljava/util/function/BiConsumer;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    return-object v0
.end method

.method static synthetic blacklist lambda$configureRemoteCancellationFuture$5(Landroid/os/CancellationSignal;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    nop

    invoke-static {p1}, Landroid/os/ICancellationSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/ICancellationSignal;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/CancellationSignal;->setRemote(Landroid/os/ICancellationSignal;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "OnDeviceIntelligence"

    const-string v1, "Unable to receive the remote cancellation signal."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic blacklist lambda$configureRemoteProcessingSignalFuture$6(Landroid/app/ondeviceintelligence/ProcessingSignal;Landroid/os/IBinder;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/app/ondeviceintelligence/IProcessingSignal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/ondeviceintelligence/IProcessingSignal;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/ondeviceintelligence/ProcessingSignal;->setRemote(Landroid/app/ondeviceintelligence/IProcessingSignal;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "OnDeviceIntelligence"

    const-string v1, "Unable to receive the remote processing signal."

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method static synthetic blacklist lambda$getVersion$0(Ljava/util/function/LongConsumer;)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method static synthetic blacklist lambda$getVersion$1(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda3;-><init>(Ljava/util/function/LongConsumer;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getVersion$2(Ljava/util/function/LongConsumer;J)V
    .locals 0

    invoke-interface {p0, p1, p2}, Ljava/util/function/LongConsumer;->accept(J)V

    return-void
.end method

.method static synthetic blacklist lambda$getVersion$3(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda2;-><init>(Ljava/util/function/LongConsumer;J)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$getVersion$4(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;Landroid/os/Bundle;)V
    .locals 3

    if-nez p2, :cond_0

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda5;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    :cond_0
    const-string v0, "ApiVersionBundleKey"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, p1, v0, v1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;J)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method


# virtual methods
.method public whitelist getFeature(ILjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$1;

    invoke-direct {v0, p0, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$1;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v1, p1, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getFeature(ILandroid/app/ondeviceintelligence/IFeatureCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getFeatureDetails(Landroid/app/ondeviceintelligence/Feature;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/FeatureDetails;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3;

    invoke-direct {v0, p0, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$3;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v1, p1, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getFeatureDetails(Landroid/app/ondeviceintelligence/Feature;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getLatestInferenceInfo(J)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/InferenceInfo;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getLatestInferenceInfo(J)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getRemoteServicePackageName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getRemoteServicePackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist getVersion(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Ljava/util/function/LongConsumer;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v1, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->getVersion(Landroid/os/RemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist listFeatures(Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;

    invoke-direct {v0, p0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$2;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-interface {v1, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->listFeatures(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILandroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;)V
    .locals 7

    :try_start_0
    new-instance v6, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;

    invoke-direct {v6, p0, p6, p7}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$6;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/ProcessingCallback;)V

    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-static {p4, p6}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v4

    invoke-static {p5, p6}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteProcessingSignalFuture(Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v6}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->processRequest(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IResponseCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILandroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;)V
    .locals 7

    :try_start_0
    new-instance v6, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;

    invoke-direct {v6, p0, p6, p7}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$7;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/StreamingProcessingCallback;)V

    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-static {p4, p6}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v4

    invoke-static {p5, p6}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteProcessingSignalFuture(Landroid/app/ondeviceintelligence/ProcessingSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-interface/range {v0 .. v6}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->processRequestStreaming(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;ILcom/android/internal/infra/AndroidFuture;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IStreamingResponseCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;

    invoke-direct {v0, p0, p3, p4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;)V

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-static {p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    invoke-interface {v1, p1, v2, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/IDownloadCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public whitelist requestTokenInfo(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/os/Bundle;",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/TokenInfo;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$5;

    invoke-direct {v0, p0, p4, p5}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$5;-><init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->mService:Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;

    invoke-static {p3, p4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->configureRemoteCancellationFuture(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;)Lcom/android/internal/infra/AndroidFuture;

    move-result-object v2

    invoke-interface {v1, p1, p2, v2, v0}, Landroid/app/ondeviceintelligence/IOnDeviceIntelligenceManager;->requestTokenInfo(Landroid/app/ondeviceintelligence/Feature;Landroid/os/Bundle;Lcom/android/internal/infra/AndroidFuture;Landroid/app/ondeviceintelligence/ITokenInfoCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
