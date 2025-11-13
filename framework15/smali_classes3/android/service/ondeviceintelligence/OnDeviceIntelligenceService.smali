.class public abstract Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;
.super Landroid/app/Service;
.source "OnDeviceIntelligenceService.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist SERVICE_INTERFACE:Ljava/lang/String; = "android.service.ondeviceintelligence.OnDeviceIntelligenceService"

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private blacklist mHandler:Landroid/os/Handler;

.field private volatile blacklist mRemoteProcessingService:Landroid/service/ondeviceintelligence/IRemoteProcessingService;


# direct methods
.method public static synthetic blacklist $r8$lambda$WGhlx7Qy9NmPTt2WmxjyjgGi1Ko(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->lambda$onGetReadOnlyFileDescriptor$1(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRemoteProcessingService(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/service/ondeviceintelligence/IRemoteProcessingService;)V
    .locals 0

    iput-object p1, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mRemoteProcessingService:Landroid/service/ondeviceintelligence/IRemoteProcessingService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monGetReadOnlyFileDescriptor(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->onGetReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapDownloadCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IDownloadCallback;)Landroid/app/ondeviceintelligence/DownloadCallback;
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapDownloadCallback(Landroid/app/ondeviceintelligence/IDownloadCallback;)Landroid/app/ondeviceintelligence/DownloadCallback;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapFeatureCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureCallback;)Landroid/os/OutcomeReceiver;
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapFeatureCallback(Landroid/app/ondeviceintelligence/IFeatureCallback;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapFeatureDetailsCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)Landroid/os/OutcomeReceiver;
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapFeatureDetailsCallback(Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mwrapListFeaturesCallback(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)Landroid/os/OutcomeReceiver;
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->wrapListFeaturesCallback(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)Landroid/os/OutcomeReceiver;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smtryClosePfds(Ljava/util/Collection;)V
    .locals 0

    invoke-static {p0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->tryClosePfds(Ljava/util/Collection;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor whitelist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$onGetReadOnlyFileDescriptor$1(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetReadOnlyFileDescriptor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " under internal app storage."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, 0x10000000

    :try_start_0
    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    move-object v1, v2

    sget-object v2, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    const-string v3, "Successfully opened a file with ParcelFileDescriptor."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    :goto_0
    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    sget-object v3, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    const-string v4, "Cannot open file. No ParcelFileDescriptor returned."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v2}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p2, v1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    :cond_2
    throw v2
.end method

.method static synthetic blacklist lambda$tryClosePfds$0(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    const-string v2, "Error closing FD"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist onGetReadOnlyFileDescriptor(Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/internal/infra/AndroidFuture<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onGetReadOnlyFileDescriptor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda0;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/lang/String;Lcom/android/internal/infra/AndroidFuture;)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method private static blacklist tryClosePfds(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/Collection;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private blacklist wrapDownloadCallback(Landroid/app/ondeviceintelligence/IDownloadCallback;)Landroid/app/ondeviceintelligence/DownloadCallback;
    .locals 1

    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$6;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IDownloadCallback;)V

    return-object v0
.end method

.method private blacklist wrapFeatureCallback(Landroid/app/ondeviceintelligence/IFeatureCallback;)Landroid/os/OutcomeReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/IFeatureCallback;",
            ")",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$3;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureCallback;)V

    return-object v0
.end method

.method private blacklist wrapFeatureDetailsCallback(Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)Landroid/os/OutcomeReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;",
            ")",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/FeatureDetails;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$5;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IFeatureDetailsCallback;)V

    return-object v0
.end method

.method private blacklist wrapListFeaturesCallback(Landroid/app/ondeviceintelligence/IListFeaturesCallback;)Landroid/os/OutcomeReceiver;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/IListFeaturesCallback;",
            ")",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;

    invoke-direct {v0, p0, p1}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$4;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Landroid/app/ondeviceintelligence/IListFeaturesCallback;)V

    return-object v0
.end method


# virtual methods
.method public final whitelist onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.service.ondeviceintelligence.OnDeviceIntelligenceService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;

    invoke-direct {v0, p0}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$1;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;)V

    return-object v0

    :cond_0
    sget-object v0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    const-string v1, "Incorrect service interface, returning null."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist onCreate()V
    .locals 4

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    iput-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public abstract whitelist onDownloadFeature(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/CancellationSignal;Landroid/app/ondeviceintelligence/DownloadCallback;)V
.end method

.method public abstract whitelist onGetFeature(IILandroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetFeatureDetails(ILandroid/app/ondeviceintelligence/Feature;Landroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/app/ondeviceintelligence/FeatureDetails;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetReadOnlyFeatureFileDescriptorMap(Landroid/app/ondeviceintelligence/Feature;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ondeviceintelligence/Feature;",
            "Ljava/util/function/Consumer<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;>;)V"
        }
    .end annotation
.end method

.method public abstract whitelist onGetVersion(Ljava/util/function/LongConsumer;)V
.end method

.method public abstract whitelist onInferenceServiceConnected()V
.end method

.method public abstract whitelist onInferenceServiceDisconnected()V
.end method

.method public abstract whitelist onListFeatures(ILandroid/os/OutcomeReceiver;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/util/List<",
            "Landroid/app/ondeviceintelligence/Feature;",
            ">;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation
.end method

.method public blacklist onReady()V
    .locals 0

    return-void
.end method

.method public final whitelist updateProcessingState(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/os/PersistableBundle;",
            "Landroid/app/ondeviceintelligence/OnDeviceIntelligenceException;",
            ">;)V"
        }
    .end annotation

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mRemoteProcessingService:Landroid/service/ondeviceintelligence/IRemoteProcessingService;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->mRemoteProcessingService:Landroid/service/ondeviceintelligence/IRemoteProcessingService;

    new-instance v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;

    invoke-direct {v1, p0, p2, p3}, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService$2;-><init>(Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, p1, v1}, Landroid/service/ondeviceintelligence/IRemoteProcessingService;->updateProcessingState(Landroid/os/Bundle;Landroid/service/ondeviceintelligence/IProcessingUpdateStatusCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Landroid/service/ondeviceintelligence/OnDeviceIntelligenceService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in updateProcessingState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Remote processing service is unavailable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
