.class public Landroid/view/InsetsAnimationThread;
.super Landroid/os/HandlerThread;
.source "InsetsAnimationThread.java"


# static fields
.field private static blacklist sHandler:Landroid/os/Handler;

.field private static blacklist sInstance:Landroid/view/InsetsAnimationThread;


# direct methods
.method private constructor blacklist <init>()V
    .locals 1

    const-string v0, "InsetsAnimations"

    invoke-direct {p0, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist ensureThreadLocked()V
    .locals 3

    sget-object v0, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/InsetsAnimationThread;

    invoke-direct {v0}, Landroid/view/InsetsAnimationThread;-><init>()V

    sput-object v0, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    sget-object v0, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationThread;->start()V

    sget-object v0, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    invoke-virtual {v0}, Landroid/view/InsetsAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    invoke-virtual {v1}, Landroid/view/InsetsAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Landroid/view/InsetsAnimationThread;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public static blacklist get()Landroid/view/InsetsAnimationThread;
    .locals 2

    const-class v0, Landroid/view/InsetsAnimationThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/view/InsetsAnimationThread;->ensureThreadLocked()V

    sget-object v1, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .locals 2

    const-class v0, Landroid/view/InsetsAnimationThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/view/InsetsAnimationThread;->ensureThreadLocked()V

    sget-object v1, Landroid/view/InsetsAnimationThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist release()V
    .locals 2

    const-class v0, Landroid/view/InsetsAnimationThread;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    sget-object v1, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    invoke-virtual {v1}, Landroid/view/InsetsAnimationThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quitSafely()V

    const/4 v1, 0x0

    sput-object v1, Landroid/view/InsetsAnimationThread;->sInstance:Landroid/view/InsetsAnimationThread;

    sput-object v1, Landroid/view/InsetsAnimationThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
