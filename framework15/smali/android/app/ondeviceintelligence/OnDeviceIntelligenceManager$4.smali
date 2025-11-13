.class Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;
.super Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;
.source "OnDeviceIntelligenceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;->requestFeatureDownload(Landroid/app/ondeviceintelligence/Feature;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;

.field final synthetic blacklist val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

.field final synthetic blacklist val$callbackExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method constructor blacklist <init>(Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->this$0:Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager;

    iput-object p2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadCompleted$6(Landroid/app/ondeviceintelligence/DownloadCallback;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/app/ondeviceintelligence/DownloadCallback;->onDownloadCompleted(Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadCompleted$7(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda3;-><init>(Landroid/app/ondeviceintelligence/DownloadCallback;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadFailed$4(Landroid/app/ondeviceintelligence/DownloadCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 0

    invoke-interface {p0, p1, p2, p3}, Landroid/app/ondeviceintelligence/DownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadFailed$5(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda0;-><init>(Landroid/app/ondeviceintelligence/DownloadCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadProgress$2(Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/app/ondeviceintelligence/DownloadCallback;->onDownloadProgress(J)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadProgress$3(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda4;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda4;-><init>(Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadStarted$0(Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .locals 0

    invoke-interface {p0, p1, p2}, Landroid/app/ondeviceintelligence/DownloadCallback;->onDownloadStarted(J)V

    return-void
.end method

.method static synthetic blacklist lambda$onDownloadStarted$1(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda5;-><init>(Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public blacklist onDownloadCompleted(Landroid/os/PersistableBundle;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0, v1, p1}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda1;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;Landroid/os/PersistableBundle;)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 7

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    new-instance v6, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda2;

    move-object v0, v6

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda2;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;ILjava/lang/String;Landroid/os/PersistableBundle;)V

    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onDownloadProgress(J)V
    .locals 3

    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda7;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method

.method public blacklist onDownloadStarted(J)V
    .locals 3

    iget-object v0, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callbackExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4;->val$callback:Landroid/app/ondeviceintelligence/DownloadCallback;

    new-instance v2, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;

    invoke-direct {v2, v0, v1, p1, p2}, Landroid/app/ondeviceintelligence/OnDeviceIntelligenceManager$4$$ExternalSyntheticLambda6;-><init>(Ljava/util/concurrent/Executor;Landroid/app/ondeviceintelligence/DownloadCallback;J)V

    invoke-static {v2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void
.end method
