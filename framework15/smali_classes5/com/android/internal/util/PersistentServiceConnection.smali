.class public Lcom/android/internal/util/PersistentServiceConnection;
.super Lcom/android/internal/util/ObservableServiceConnection;
.source "PersistentServiceConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/PersistentServiceConnection$Injector;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/util/ObservableServiceConnection<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final blacklist mBaseReconnectDelayMs:I

.field private blacklist mCancelToken:Ljava/lang/Object;

.field private final blacklist mConnectRunnable:Ljava/lang/Runnable;

.field private final blacklist mConnectionCallback:Lcom/android/internal/util/ObservableServiceConnection$Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/util/ObservableServiceConnection$Callback<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;

.field private final blacklist mInjector:Lcom/android/internal/util/PersistentServiceConnection$Injector;

.field private final blacklist mLock:Ljava/lang/Object;

.field private final blacklist mMaxReconnectAttempts:I

.field private final blacklist mMinConnectionDurationMs:I

.field private blacklist mReconnectAttempts:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmInjector(Lcom/android/internal/util/PersistentServiceConnection;)Lcom/android/internal/util/PersistentServiceConnection$Injector;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mInjector:Lcom/android/internal/util/PersistentServiceConnection$Injector;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLock(Lcom/android/internal/util/PersistentServiceConnection;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmMinConnectionDurationMs(Lcom/android/internal/util/PersistentServiceConnection;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mMinConnectionDurationMs:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCancelToken(Lcom/android/internal/util/PersistentServiceConnection;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/util/PersistentServiceConnection;->mCancelToken:Ljava/lang/Object;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmReconnectAttempts(Lcom/android/internal/util/PersistentServiceConnection;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/util/PersistentServiceConnection;->mReconnectAttempts:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbindInternalLocked(Lcom/android/internal/util/PersistentServiceConnection;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/PersistentServiceConnection;->bindInternalLocked()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mscheduleConnectionAttemptLocked(Lcom/android/internal/util/PersistentServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/PersistentServiceConnection;->scheduleConnectionAttemptLocked()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;Landroid/content/Intent;IIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer<",
            "TT;>;",
            "Landroid/content/Intent;",
            "IIII)V"
        }
    .end annotation

    new-instance v10, Lcom/android/internal/util/PersistentServiceConnection$Injector;

    invoke-direct {v10}, Lcom/android/internal/util/PersistentServiceConnection$Injector;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/util/PersistentServiceConnection;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;Landroid/content/Intent;IIIILcom/android/internal/util/PersistentServiceConnection$Injector;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;Landroid/content/Intent;IIIILcom/android/internal/util/PersistentServiceConnection$Injector;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/Handler;",
            "Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer<",
            "TT;>;",
            "Landroid/content/Intent;",
            "IIII",
            "Lcom/android/internal/util/PersistentServiceConnection$Injector;",
            ")V"
        }
    .end annotation

    move-object v6, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/util/ObservableServiceConnection;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/internal/util/ObservableServiceConnection$ServiceTransformer;Landroid/content/Intent;I)V

    new-instance v0, Lcom/android/internal/util/PersistentServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/android/internal/util/PersistentServiceConnection$1;-><init>(Lcom/android/internal/util/PersistentServiceConnection;)V

    iput-object v0, v6, Lcom/android/internal/util/PersistentServiceConnection;->mConnectionCallback:Lcom/android/internal/util/ObservableServiceConnection$Callback;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v6, Lcom/android/internal/util/PersistentServiceConnection;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/internal/util/PersistentServiceConnection$2;

    invoke-direct {v0, p0}, Lcom/android/internal/util/PersistentServiceConnection$2;-><init>(Lcom/android/internal/util/PersistentServiceConnection;)V

    iput-object v0, v6, Lcom/android/internal/util/PersistentServiceConnection;->mConnectRunnable:Ljava/lang/Runnable;

    move-object v0, p3

    iput-object v0, v6, Lcom/android/internal/util/PersistentServiceConnection;->mHandler:Landroid/os/Handler;

    move v1, p7

    iput v1, v6, Lcom/android/internal/util/PersistentServiceConnection;->mMinConnectionDurationMs:I

    move v2, p8

    iput v2, v6, Lcom/android/internal/util/PersistentServiceConnection;->mMaxReconnectAttempts:I

    move/from16 v3, p9

    iput v3, v6, Lcom/android/internal/util/PersistentServiceConnection;->mBaseReconnectDelayMs:I

    move-object/from16 v4, p10

    iput-object v4, v6, Lcom/android/internal/util/PersistentServiceConnection;->mInjector:Lcom/android/internal/util/PersistentServiceConnection$Injector;

    return-void
.end method

.method private blacklist bindInternalLocked()Z
    .locals 1

    invoke-super {p0}, Lcom/android/internal/util/ObservableServiceConnection;->bind()Z

    move-result v0

    return v0
.end method

.method private blacklist cancelPendingConnectionAttemptLocked()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mCancelToken:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/util/PersistentServiceConnection;->mCancelToken:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mCancelToken:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private blacklist scheduleConnectionAttemptLocked()V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/util/PersistentServiceConnection;->cancelPendingConnectionAttemptLocked()V

    iget v0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mReconnectAttempts:I

    iget v1, p0, Lcom/android/internal/util/PersistentServiceConnection;->mMaxReconnectAttempts:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mBaseReconnectDelayMs:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/internal/util/PersistentServiceConnection;->mReconnectAttempts:I

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/internal/util/PersistentServiceConnection;->mCancelToken:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/util/PersistentServiceConnection;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/util/PersistentServiceConnection;->mConnectRunnable:Ljava/lang/Runnable;

    iget-object v4, p0, Lcom/android/internal/util/PersistentServiceConnection;->mCancelToken:Ljava/lang/Object;

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget v2, p0, Lcom/android/internal/util/PersistentServiceConnection;->mReconnectAttempts:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/util/PersistentServiceConnection;->mReconnectAttempts:I

    return-void
.end method


# virtual methods
.method public blacklist bind()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/PersistentServiceConnection;->mConnectionCallback:Lcom/android/internal/util/ObservableServiceConnection$Callback;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/PersistentServiceConnection;->addCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/util/PersistentServiceConnection;->mReconnectAttempts:I

    invoke-direct {p0}, Lcom/android/internal/util/PersistentServiceConnection;->bindInternalLocked()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist unbind()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/util/PersistentServiceConnection;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/PersistentServiceConnection;->mConnectionCallback:Lcom/android/internal/util/ObservableServiceConnection$Callback;

    invoke-virtual {p0, v1}, Lcom/android/internal/util/PersistentServiceConnection;->removeCallback(Lcom/android/internal/util/ObservableServiceConnection$Callback;)V

    invoke-direct {p0}, Lcom/android/internal/util/PersistentServiceConnection;->cancelPendingConnectionAttemptLocked()V

    invoke-super {p0}, Lcom/android/internal/util/ObservableServiceConnection;->unbind()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
