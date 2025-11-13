.class public final Landroid/media/tv/tuner/filter/SharedFilter;
.super Ljava/lang/Object;
.source "SharedFilter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/tv/tuner/filter/SharedFilter$Status;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_INACCESSIBLE:I = 0x80

.field private static final blacklist TAG:Ljava/lang/String; = "SharedFilter"


# instance fields
.field private blacklist mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

.field private blacklist mCallbackLock:Ljava/lang/Object;

.field private blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private blacklist mIsAccessible:Z

.field private blacklist mIsClosed:Z

.field private blacklist mLock:Ljava/lang/Object;

.field private blacklist mNativeContext:J


# direct methods
.method public static synthetic blacklist $r8$lambda$6cYwnreU5Tdh95CFutT6Im_-qLU(Landroid/media/tv/tuner/filter/SharedFilter;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter;->lambda$onFilterStatus$0(I)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$MoT-gdCpVPlnV0lPf3Y8HcDAnkw(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter;->lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private synthetic blacklist lambda$onFilterEvent$1([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilterCallback;->onFilterEvent(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    goto :goto_1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic blacklist lambda$onFilterStatus$0(I)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    invoke-interface {v1, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilterCallback;->onFilterStatusChanged(Landroid/media/tv/tuner/filter/SharedFilter;I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private native blacklist nativeFlushSharedFilter()I
.end method

.method private native blacklist nativeSharedClose()I
.end method

.method private native blacklist nativeSharedRead([BJJ)I
.end method

.method private native blacklist nativeStartSharedFilter()I
.end method

.method private native blacklist nativeStopSharedFilter()I
.end method

.method private blacklist onFilterEvent([Landroid/media/tv/tuner/filter/FilterEvent;)V
    .locals 5

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda1;-><init>(Landroid/media/tv/tuner/filter/SharedFilter;[Landroid/media/tv/tuner/filter/FilterEvent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_0
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    instance-of v4, v3, Landroid/media/tv/tuner/filter/MediaEvent;

    if-eqz v4, :cond_1

    move-object v4, v3

    check-cast v4, Landroid/media/tv/tuner/filter/MediaEvent;

    invoke-virtual {v4}, Landroid/media/tv/tuner/filter/MediaEvent;->release()V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist onFilterStatus(I)V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/16 v1, 0x80

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/media/tv/tuner/filter/SharedFilter$$ExternalSyntheticLambda0;-><init>(Landroid/media/tv/tuner/filter/SharedFilter;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x0

    :try_start_1
    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeSharedClose()I

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    iput-object v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public whitelist flush()I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeFlushSharedFilter()I

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

.method public blacklist getCallback()Landroid/media/tv/tuner/filter/SharedFilterCallback;
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist read([BJJ)I
    .locals 9

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    array-length v1, p1

    int-to-long v1, v1

    sub-long/2addr v1, p2

    invoke-static {p4, p5, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p0

    move-object v4, p1

    move-wide v5, p2

    :try_start_1
    invoke-direct/range {v3 .. v8}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeSharedRead([BJJ)I

    move-result p4

    monitor-exit v0

    return p4

    :catchall_0
    move-exception v1

    move-wide v7, p4

    move-object p4, v1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p4

    :catchall_1
    move-exception p4

    goto :goto_0
.end method

.method public blacklist setCallback(Landroid/media/tv/tuner/filter/SharedFilterCallback;Ljava/util/concurrent/Executor;)V
    .locals 2

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mCallback:Landroid/media/tv/tuner/filter/SharedFilterCallback;

    iput-object p2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist start()I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeStartSharedFilter()I

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

.method public whitelist stop()I
    .locals 3

    iget-object v0, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsAccessible:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceAccessible(Ljava/lang/String;Z)V

    const-string v1, "SharedFilter"

    iget-boolean v2, p0, Landroid/media/tv/tuner/filter/SharedFilter;->mIsClosed:Z

    invoke-static {v1, v2}, Landroid/media/tv/tuner/TunerUtils;->checkResourceState(Ljava/lang/String;Z)V

    invoke-direct {p0}, Landroid/media/tv/tuner/filter/SharedFilter;->nativeStopSharedFilter()I

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
