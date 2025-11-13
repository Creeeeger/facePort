.class public abstract Landroid/view/TunnelModeEnabledListener;
.super Ljava/lang/Object;
.source "TunnelModeEnabledListener.java"


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mNativeListener:J


# direct methods
.method public constructor blacklist <init>(Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/TunnelModeEnabledListener;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {p0}, Landroid/view/TunnelModeEnabledListener;->nativeCreate(Landroid/view/TunnelModeEnabledListener;)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    return-void
.end method

.method public static blacklist dispatchOnTunnelModeEnabledChanged(Landroid/view/TunnelModeEnabledListener;Z)V
    .locals 2

    iget-object v0, p0, Landroid/view/TunnelModeEnabledListener;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/view/TunnelModeEnabledListener$$ExternalSyntheticLambda0;-><init>(Landroid/view/TunnelModeEnabledListener;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic blacklist lambda$dispatchOnTunnelModeEnabledChanged$0(Landroid/view/TunnelModeEnabledListener;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/view/TunnelModeEnabledListener;->onTunnelModeEnabledChanged(Z)V

    return-void
.end method

.method private static native blacklist nativeCreate(Landroid/view/TunnelModeEnabledListener;)J
.end method

.method private static native blacklist nativeDestroy(J)V
.end method

.method private static native blacklist nativeRegister(J)V
.end method

.method private static native blacklist nativeUnregister(J)V
.end method

.method public static blacklist register(Landroid/view/TunnelModeEnabledListener;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->nativeRegister(J)V

    return-void
.end method

.method public static blacklist unregister(Landroid/view/TunnelModeEnabledListener;)V
    .locals 4

    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->nativeUnregister(J)V

    return-void
.end method


# virtual methods
.method public blacklist destroy()V
    .locals 4

    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Landroid/view/TunnelModeEnabledListener;->unregister(Landroid/view/TunnelModeEnabledListener;)V

    iget-wide v0, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    invoke-static {v0, v1}, Landroid/view/TunnelModeEnabledListener;->nativeDestroy(J)V

    iput-wide v2, p0, Landroid/view/TunnelModeEnabledListener;->mNativeListener:J

    return-void
.end method

.method protected whitelist test-api finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/view/TunnelModeEnabledListener;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public abstract blacklist onTunnelModeEnabledChanged(Z)V
.end method
