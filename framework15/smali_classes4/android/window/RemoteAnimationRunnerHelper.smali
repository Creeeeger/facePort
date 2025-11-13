.class public final Landroid/window/RemoteAnimationRunnerHelper;
.super Ljava/lang/Object;
.source "RemoteAnimationRunnerHelper.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field public static final blacklist TYPE_MERGE_ANIM_CALLBACK:I = 0x1

.field public static final blacklist TYPE_TRANSFER_ANIM_CALLBACK:I = 0x2

.field private static greylist sRemoteAnimationRunnerHelper:Landroid/window/RemoteAnimationRunnerHelper;


# instance fields
.field private final blacklist mAnimCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mMergeAnimFilter:Ljava/util/function/Predicate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/window/RemoteAnimationRunnerHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/window/RemoteAnimationRunnerHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/window/RemoteAnimationRunnerHelper;->mAnimCallbacks:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/window/RemoteAnimationRunnerHelper;->mMergeAnimFilter:Ljava/util/function/Predicate;

    return-void
.end method

.method public static blacklist getInstance()Landroid/window/RemoteAnimationRunnerHelper;
    .locals 2

    const-class v0, Landroid/window/RemoteAnimationRunnerHelper;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/window/RemoteAnimationRunnerHelper;->sRemoteAnimationRunnerHelper:Landroid/window/RemoteAnimationRunnerHelper;

    if-nez v1, :cond_0

    new-instance v1, Landroid/window/RemoteAnimationRunnerHelper;

    invoke-direct {v1}, Landroid/window/RemoteAnimationRunnerHelper;-><init>()V

    sput-object v1, Landroid/window/RemoteAnimationRunnerHelper;->sRemoteAnimationRunnerHelper:Landroid/window/RemoteAnimationRunnerHelper;

    :cond_0
    sget-object v1, Landroid/window/RemoteAnimationRunnerHelper;->sRemoteAnimationRunnerHelper:Landroid/window/RemoteAnimationRunnerHelper;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist mergeAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/window/RemoteAnimationRunnerHelper;->mMergeAnimFilter:Ljava/util/function/Predicate;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/window/RemoteAnimationRunnerHelper;->mMergeAnimFilter:Ljava/util/function/Predicate;

    invoke-interface {v0, p1}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->canMergeAnimation()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getParent()Landroid/window/WindowContainerToken;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getFlags()I

    move-result v2

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p2, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->releaseAnimSurfaces()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/window/RemoteAnimationRunnerHelper;->runCallback(I)V

    const/4 v1, 0x0

    invoke-interface {p3, v1, v1}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist runCallback(I)V
    .locals 4

    iget-object v0, p0, Landroid/window/RemoteAnimationRunnerHelper;->mAnimCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/window/RemoteAnimationRunnerHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote callback is null. type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private blacklist transferAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/util/ArrayMap;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/window/IRemoteTransitionFinishedCallback;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->canTransferAnimation()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/window/RemoteAnimationRunnerHelper;->mAnimCallbacks:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/SurfaceControl;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/SurfaceControl;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v5, v6}, Landroid/window/WindowContainerTransaction;->addTransferLeash(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V

    goto :goto_0

    :cond_1
    :goto_1
    sget-object v2, Landroid/window/RemoteAnimationRunnerHelper;->TAG:Ljava/lang/String;

    const-string v3, "Failed to transfer animation due to invalid transition leash"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    invoke-direct {p0, v2}, Landroid/window/RemoteAnimationRunnerHelper;->runCallback(I)V

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->close()V

    invoke-virtual {p1}, Landroid/window/TransitionInfo;->releaseAllSurfaces()V

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    const/4 v1, 0x1

    return v1

    :cond_3
    return v1
.end method


# virtual methods
.method public blacklist mergeOrTransferAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/util/ArrayMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Landroid/window/TransitionInfo;",
            "Landroid/view/SurfaceControl$Transaction;",
            "Landroid/os/IBinder;",
            "Landroid/window/IRemoteTransitionFinishedCallback;",
            "Landroid/util/ArrayMap<",
            "Landroid/view/SurfaceControl;",
            "Landroid/view/SurfaceControl;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p2, p3, p5}, Landroid/window/RemoteAnimationRunnerHelper;->mergeAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_MERGE_TRANSFER:Z

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p3, p5, p6}, Landroid/window/RemoteAnimationRunnerHelper;->transferAnimation(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;Landroid/util/ArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist registerAnimCallback(ILjava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Landroid/window/RemoteAnimationRunnerHelper;->mAnimCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public blacklist setMergeAnimFilter(Ljava/util/function/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/window/TransitionInfo;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroid/window/RemoteAnimationRunnerHelper;->mMergeAnimFilter:Ljava/util/function/Predicate;

    return-void
.end method
