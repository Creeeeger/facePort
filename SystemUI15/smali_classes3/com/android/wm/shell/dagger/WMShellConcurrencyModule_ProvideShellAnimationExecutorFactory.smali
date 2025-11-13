.class public final Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ldagger/internal/Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static provideShellAnimationExecutor()Lcom/android/wm/shell/common/HandlerExecutor;
    .locals 5

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "wmshell.anim"

    const/16 v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$2;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$2;-><init>(Landroid/os/HandlerThread;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v2, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    :cond_1
    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    return-object v1
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;->provideShellAnimationExecutor()Lcom/android/wm/shell/common/HandlerExecutor;

    move-result-object p0

    return-object p0
.end method
