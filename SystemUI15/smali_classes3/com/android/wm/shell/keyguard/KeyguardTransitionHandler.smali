.class public final Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/common/TaskStackListenerCallback;


# instance fields
.field public mAppearTransition:Landroid/window/IRemoteTransition;

.field public mDreamToken:Landroid/window/WindowContainerToken;

.field public mExitTransition:Landroid/window/IRemoteTransition;

.field public mIsLaunchingActivityOverLockscreen:Z

.field public mKeyguardShowing:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

.field public mOccludeTransition:Landroid/window/IRemoteTransition;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mStartedTransitions:Landroid/util/ArrayMap;

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public mUnoccludeTransition:Landroid/window/IRemoteTransition;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/TaskStackListenerImpl;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p5, Landroid/util/ArrayMap;

    invoke-direct {p5}, Landroid/util/ArrayMap;-><init>()V

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mExitTransition:Landroid/window/IRemoteTransition;

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mAppearTransition:Landroid/window/IRemoteTransition;

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

    iput-object p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mUnoccludeTransition:Landroid/window/IRemoteTransition;

    const/4 p5, 0x1

    iput-boolean p5, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mKeyguardShowing:Z

    iput-object p3, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p2, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p6, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    new-instance p2, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static finishAnimationImmediately(Landroid/os/IBinder;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;)V
    .locals 6

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    new-instance v2, Landroid/window/TransitionInfo;

    const/16 v0, 0xc

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/window/TransitionInfo;-><init>(II)V

    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v5, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;

    invoke-direct {v5, v3}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;-><init>(I)V

    :try_start_0
    iget-object v0, p1, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mPlayer:Landroid/window/IRemoteTransition;

    move-object v3, v4

    move-object v4, p0

    invoke-interface/range {v0 .. v5}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardTransition"

    const-string v0, "RemoteException thrown from KeyguardService transition"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static handles(Landroid/window/TransitionInfo;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->isKeyguardGoingAway()Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getFlags()I

    move-result p0

    const v0, 0x43900

    and-int/2addr p0, v0

    if-eqz p0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 0

    invoke-static {}, Landroid/service/dreams/Flags;->dismissDreamOnKeyguardDismiss()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mDreamToken:Landroid/window/WindowContainerToken;

    if-eqz p1, :cond_0

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mDreamToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0}, Landroid/window/WindowContainerTransaction;->removeTask(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 p1, 0x4

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x7ed8e31fcc4338b8L    # 1.0666741295401251E303

    const/4 v3, 0x0

    const-string/jumbo v4, "unknown keyguard transition %s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mInfo:Landroid/window/TransitionInfo;

    invoke-virtual {v0}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v6

    const-wide v2, 0x7afdddff13d63d61L    # 2.77581199308143E284

    const/4 v4, 0x0

    const-string v5, "canceling keyguard exit transition %s"

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v0, p3}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;->mPlayer:Landroid/window/IRemoteTransition;

    new-instance v6, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;

    const/4 p0, 0x0

    invoke-direct {v6, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$FakeFinishCallback;-><init>(I)V

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v1 .. v6}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "KeyguardTransition"

    const-string p2, "RemoteException thrown from KeyguardService transition"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, 0x0

    invoke-interface {p5, p0}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    goto :goto_1

    :cond_3
    invoke-static {p4, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->finishAnimationImmediately(Landroid/os/IBinder;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;)V

    :goto_1
    return-void
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mKeyguardShowing:Z

    return-void
.end method

.method public final onTaskMovedToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mDreamToken:Landroid/window/WindowContainerToken;

    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;

    if-eqz p0, :cond_0

    invoke-static {p1, p0}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->finishAnimationImmediately(Landroid/os/IBinder;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;)V

    :cond_0
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 8

    invoke-static {p2}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->handles(Landroid/window/TransitionInfo;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mIsLaunchingActivityOverLockscreen:Z

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mExitTransition:Landroid/window/IRemoteTransition;

    const-string v2, "going-away"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mAppearTransition:Landroid/window/IRemoteTransition;

    const-string v2, "appearing"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    invoke-static {p2, v1}, Lcom/android/systemui/animation/RemoteAnimationRunnerCompat$1$$ExternalSyntheticOutline0;->m(Landroid/window/TransitionInfo;I)I

    move-result v1

    :goto_0
    if-ltz v1, :cond_4

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result v3

    invoke-static {v3}, Lcom/android/wm/shell/shared/TransitionUtil;->isOpeningType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeByDreamTransition:Landroid/window/IRemoteTransition;

    const-string v2, "occlude-by-dream"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mOccludeTransition:Landroid/window/IRemoteTransition;

    const-string v2, "occlude"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_5
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getFlags()I

    move-result v1

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mUnoccludeTransition:Landroid/window/IRemoteTransition;

    const-string/jumbo v2, "unocclude"

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v0

    return v0

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Refused to play keyguard transition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardTransition"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    return v2
.end method

.method public final startAnimation(Landroid/window/IRemoteTransition;Ljava/lang/String;Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    const/4 v10, 0x0

    if-nez v7, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    move-result-object v1

    const-wide v2, -0x3f69d00cd456c98aL    # -1419.9874712409487

    const/4 v4, 0x0

    const-string v5, "missing handler for keyguard %s transition"

    move-object/from16 p0, v0

    move-wide/from16 p1, v2

    move/from16 p3, v4

    move-object/from16 p4, v5

    move-object/from16 p5, v1

    invoke-static/range {p0 .. p5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return v10

    :cond_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v11, 0x1

    aget-boolean v1, v1, v11

    if-eqz v1, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    move-object/from16 v2, p2

    filled-new-array {v2, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-wide v13, 0x71e2140aad183744L    # 3.7670713960368735E240

    const/4 v15, 0x0

    const-string/jumbo v16, "start keyguard %s transition, info = %s"

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :try_start_0
    iget-object v1, v0, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;->mStartedTransitions:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;

    move-object/from16 v3, p6

    invoke-direct {v2, v0, v9, v3, v7}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$StartedTransition;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)V

    invoke-virtual {v1, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;

    move-object v1, v12

    move-object/from16 v2, p0

    move-object/from16 v3, p6

    move-object/from16 v4, p4

    move-object/from16 v5, p3

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler$1;-><init>(Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/window/TransitionInfo;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    move-object/from16 v0, p5

    invoke-interface {v7, v8, v9, v0, v12}, Landroid/window/IRemoteTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual/range {p5 .. p5}, Landroid/view/SurfaceControl$Transaction;->clear()V

    return v11

    :catch_0
    move-exception v0

    const-string v1, "KeyguardTransition"

    const-string v2, "RemoteException thrown from local IRemoteTransition"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v10
.end method
