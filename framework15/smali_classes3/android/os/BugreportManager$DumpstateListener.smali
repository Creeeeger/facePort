.class final Landroid/os/BugreportManager$DumpstateListener;
.super Landroid/os/IDumpstateListener$Stub;
.source "BugreportManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/BugreportManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DumpstateListener"
.end annotation


# instance fields
.field private final blacklist mCallback:Landroid/os/BugreportManager$BugreportCallback;

.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mIsConsentDeferred:Z

.field private final blacklist mIsScreenshotRequested:Z

.field final synthetic blacklist this$0:Landroid/os/BugreportManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$O77GmYGqky7qv_V90Z4LcGi5Xzg(Landroid/os/BugreportManager$DumpstateListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onProgress$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$Ou_q5GHxol4VMrSoB665MiupE8w(Landroid/os/BugreportManager$DumpstateListener;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onScreenshotTaken$4(Z)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$PV0u_XFWxqc6JVZ65jJHL0lXcn0(Landroid/os/BugreportManager$DumpstateListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onUiIntensiveBugreportDumpsFinished$5()V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$_A2H6-GN7uCYIIFDdpoU0KbTT_I(Landroid/os/BugreportManager$DumpstateListener;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onFinished$2(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$cwuMcIzx5eYpM25eem1LtOPsHzU(Landroid/os/BugreportManager$DumpstateListener;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onError$1(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$g6yCoaLv53Y3QCBGoi4kKlwuXuc(Landroid/os/BugreportManager$DumpstateListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/BugreportManager$DumpstateListener;->lambda$onFinished$3()V

    return-void
.end method

.method constructor blacklist <init>(Landroid/os/BugreportManager;Ljava/util/concurrent/Executor;Landroid/os/BugreportManager$BugreportCallback;ZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/os/BugreportManager$DumpstateListener;->this$0:Landroid/os/BugreportManager;

    invoke-direct {p0}, Landroid/os/IDumpstateListener$Stub;-><init>()V

    iput-object p2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    iput-boolean p4, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsScreenshotRequested:Z

    iput-boolean p5, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsConsentDeferred:Z

    return-void
.end method

.method private synthetic blacklist lambda$onError$1(I)V
    .locals 1

    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0, p1}, Landroid/os/BugreportManager$BugreportCallback;->onError(I)V

    return-void
.end method

.method private synthetic blacklist lambda$onFinished$2(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0, p1}, Landroid/os/BugreportManager$BugreportCallback;->onFinished(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic blacklist lambda$onFinished$3()V
    .locals 1

    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0}, Landroid/os/BugreportManager$BugreportCallback;->onFinished()V

    return-void
.end method

.method private synthetic blacklist lambda$onProgress$0(I)V
    .locals 2

    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/os/BugreportManager$BugreportCallback;->onProgress(F)V

    return-void
.end method

.method private synthetic blacklist lambda$onScreenshotTaken$4(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x1040267

    goto :goto_0

    :cond_0
    const v0, 0x1040266

    :goto_0
    nop

    iget-object v1, p0, Landroid/os/BugreportManager$DumpstateListener;->this$0:Landroid/os/BugreportManager;

    invoke-static {v1}, Landroid/os/BugreportManager;->-$$Nest$fgetmContext(Landroid/os/BugreportManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private synthetic blacklist lambda$onUiIntensiveBugreportDumpsFinished$5()V
    .locals 1

    iget-object v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mCallback:Landroid/os/BugreportManager$BugreportCallback;

    invoke-virtual {v0}, Landroid/os/BugreportManager$BugreportCallback;->onEarlyReportFinished()V

    return-void
.end method


# virtual methods
.method public blacklist onError(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda1;-><init>(Landroid/os/BugreportManager$DumpstateListener;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onFinished(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-boolean v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsConsentDeferred:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda2;-><init>(Landroid/os/BugreportManager$DumpstateListener;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda3;-><init>(Landroid/os/BugreportManager$DumpstateListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onProgress(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda0;-><init>(Landroid/os/BugreportManager$DumpstateListener;I)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public blacklist onScreenshotTaken(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/os/BugreportManager$DumpstateListener;->mIsScreenshotRequested:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda5;-><init>(Landroid/os/BugreportManager$DumpstateListener;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public blacklist onUiIntensiveBugreportDumpsFinished()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Landroid/os/BugreportManager$DumpstateListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v3, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Landroid/os/BugreportManager$DumpstateListener$$ExternalSyntheticLambda4;-><init>(Landroid/os/BugreportManager$DumpstateListener;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method
