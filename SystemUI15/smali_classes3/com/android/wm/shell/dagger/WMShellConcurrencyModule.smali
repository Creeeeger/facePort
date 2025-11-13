.class public abstract Lcom/android/wm/shell/dagger/WMShellConcurrencyModule;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createShellMainThread()Landroid/os/HandlerThread;
    .locals 5

    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "wmshell.main"

    const/16 v2, -0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->SYSPERF_VI_BOOST:Z

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$1;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$1;-><init>(Landroid/os/HandlerThread;)V

    const-wide/16 v3, 0x2710

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object v0
.end method
