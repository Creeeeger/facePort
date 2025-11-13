.class Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;
.super Ljava/lang/Object;
.source "BinderInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BinderProxyCountEventListenerDelegate"
.end annotation


# instance fields
.field private blacklist mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$uTwGgNRFwJEB9sy_0L2mCEH5G9c(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->lambda$notifyLimitReached$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$zK4q70eO0uQPQRK57ImSP_uYHr0(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->lambda$notifyWarningReached$1(I)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;-><init>()V

    return-void
.end method

.method private synthetic blacklist lambda$notifyLimitReached$0(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;->onLimitReached(I)V

    return-void
.end method

.method private synthetic blacklist lambda$notifyWarningReached$1(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    invoke-interface {v0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;->onWarningThresholdReached(I)V

    return-void
.end method


# virtual methods
.method blacklist notifyLimitReached(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist notifyWarningReached(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method blacklist setListener(Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;Landroid/os/Handler;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mBinderProxyCountEventListener:Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListener;

    iput-object p2, p0, Lcom/android/internal/os/BinderInternal$BinderProxyCountEventListenerDelegate;->mHandler:Landroid/os/Handler;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
