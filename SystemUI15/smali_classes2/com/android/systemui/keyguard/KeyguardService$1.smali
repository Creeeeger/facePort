.class public final Lcom/android/systemui/keyguard/KeyguardService$1;
.super Landroid/window/RemoteTransitionStub;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mCounterRotator:Lcom/android/wm/shell/shared/CounterRotator;

.field public final mFinishCallbacks:Ljava/util/Map;

.field public final mLeashMap:Landroid/util/ArrayMap;

.field public final synthetic val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final synthetic val$runner:Landroid/view/IRemoteAnimationRunner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediator;Landroid/view/IRemoteAnimationRunner;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-direct {p0}, Landroid/window/RemoteTransitionStub;-><init>()V

    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    new-instance p1, Lcom/android/wm/shell/shared/CounterRotator;

    invoke-direct {p1}, Lcom/android/wm/shell/shared/CounterRotator;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mCounterRotator:Lcom/android/wm/shell/shared/CounterRotator;

    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mFinishCallbacks:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final finish(Landroid/os/IBinder;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mCounterRotator:Lcom/android/wm/shell/shared/CounterRotator;

    iget-object v1, v1, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mCounterRotator:Lcom/android/wm/shell/shared/CounterRotator;

    iget-object v3, v3, Lcom/android/wm/shell/shared/CounterRotator;->mSurface:Landroid/view/SurfaceControl;

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mFinishCallbacks:Ljava/util/Map;

    check-cast p0, Ljava/util/WeakHashMap;

    invoke-virtual {p0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/window/IRemoteTransitionFinishedCallback;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    invoke-interface {p0, v2, v1}, Landroid/window/IRemoteTransitionFinishedCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_3
    :goto_1
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 0

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x800

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setPendingLock(Z)V

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->cancelKeyguardExitAnimation()V

    return-void

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-interface {p1}, Landroid/view/IRemoteAnimationRunner;->onAnimationCancelled()V

    invoke-virtual {p0, p4}, Lcom/android/systemui/keyguard/KeyguardService$1;->finish(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    .locals 9

    const-string v0, "KeyguardService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Starts IRemoteAnimationRunner: info="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-array v5, v0, [Landroid/view/RemoteAnimationTarget;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    invoke-static {p2, v0, p3, v2}, Lcom/android/systemui/keyguard/KeyguardService;->-$$Nest$smwrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v3

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mLeashMap:Landroid/util/ArrayMap;

    const/4 v4, 0x1

    invoke-static {p2, v4, p3, v2}, Lcom/android/systemui/keyguard/KeyguardService;->-$$Nest$smwrap(Landroid/window/TransitionInfo;ZLandroid/view/SurfaceControl$Transaction;Landroid/util/ArrayMap;)[Landroid/view/RemoteAnimationTarget;

    move-result-object v6

    iget-object v2, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->mFinishCallbacks:Ljava/util/Map;

    check-cast v2, Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1, p4}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :cond_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/TransitionInfo$Change;

    invoke-static {v1, p2}, Landroid/window/TransitionInfo;->isIndependent(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_1
    iget-object p4, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$keyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    iget-object p4, p4, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHelper:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p4, v1, p3, v3, v6}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->initAlphaForAnimationTargets(Landroid/view/IRemoteAnimationRunner;Landroid/view/SurfaceControl$Transaction;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)Z

    move-result p4

    const/4 v1, 0x0

    if-nez p4, :cond_5

    array-length p4, v3

    move v2, v0

    :goto_1
    if-ge v2, p4, :cond_3

    aget-object v7, v3, v2

    iget v8, v7, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v8, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, v7, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v7, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    array-length p4, v6

    move v2, v0

    :goto_3
    if-ge v2, p4, :cond_5

    aget-object v7, v6, v2

    iget v8, v7, Landroid/view/RemoteAnimationTarget;->mode:I

    if-eqz v8, :cond_4

    goto :goto_4

    :cond_4
    iget-object v7, v7, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v7, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p4

    and-int/lit16 p4, p4, 0x800

    if-eqz p4, :cond_6

    move p4, v4

    goto :goto_5

    :cond_6
    move p4, v0

    :goto_5
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v2

    const/high16 v7, 0x40000

    and-int/2addr v2, v7

    if-eqz v2, :cond_7

    move v2, v4

    goto :goto_6

    :cond_7
    move v2, v0

    :goto_6
    if-eqz p4, :cond_9

    if-nez v2, :cond_9

    array-length p4, v3

    move v2, v0

    :goto_7
    if-ge v2, p4, :cond_9

    aget-object v7, v3, v2

    iget v8, v7, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v8, v4, :cond_8

    iget-object v7, v7, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, v7, v1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_9
    invoke-static {}, Landroid/service/dreams/Flags;->dismissDreamOnKeyguardDismiss()Z

    move-result p4

    const/4 v1, 0x5

    if-eqz p4, :cond_b

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p4

    and-int/lit16 p4, p4, 0x100

    if-eqz p4, :cond_b

    array-length p4, v3

    move v2, v0

    :goto_8
    if-ge v2, p4, :cond_b

    aget-object v7, v3, v2

    iget-object v8, v7, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v8, :cond_a

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v8

    if-ne v8, v1, :cond_a

    iget v8, v7, Landroid/view/RemoteAnimationTarget;->mode:I

    if-ne v8, v4, :cond_a

    iget-object p4, v7, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p4}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_9

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_b
    :goto_9
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p3, p0, Lcom/android/systemui/keyguard/KeyguardService$1;->val$runner:Landroid/view/IRemoteAnimationRunner;

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p2

    const/4 v2, 0x7

    if-eq p4, v2, :cond_10

    and-int/lit16 p2, p2, 0x100

    if-eqz p2, :cond_c

    goto :goto_b

    :cond_c
    const/16 p2, 0x8

    if-ne p4, p2, :cond_e

    array-length p2, v3

    if-lez p2, :cond_d

    aget-object p2, v3, v0

    iget-object p2, p2, Landroid/view/RemoteAnimationTarget;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p2, :cond_d

    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    if-ne p2, v1, :cond_d

    const/16 v0, 0x21

    :goto_a
    move v2, v0

    goto :goto_d

    :cond_d
    const/16 v0, 0x16

    goto :goto_a

    :cond_e
    const/16 p2, 0x9

    if-ne p4, p2, :cond_f

    const/16 v0, 0x17

    goto :goto_a

    :cond_f
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected transit type: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "KeyguardService"

    invoke-static {p4, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_10
    :goto_b
    array-length p2, v3

    if-nez p2, :cond_11

    const/16 p2, 0x15

    :goto_c
    move v0, p2

    goto :goto_a

    :cond_11
    const/16 p2, 0x14

    goto :goto_c

    :goto_d
    new-instance p2, Lcom/android/systemui/keyguard/KeyguardService$1$1;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/keyguard/KeyguardService$1$1;-><init>(Lcom/android/systemui/keyguard/KeyguardService$1;Landroid/os/IBinder;)V

    move-object v1, p3

    move-object v4, v6

    move-object v6, p2

    invoke-interface/range {v1 .. v6}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
