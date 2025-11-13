.class public final Lcom/android/wm/shell/transition/OneShotRemoteHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mFinishedCallbackForSplitScreen:Ljava/lang/Runnable;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitions;

.field public mRemote:Landroid/window/RemoteTransition;

.field public mStartedCallbackForSplitScreen:Ljava/lang/Runnable;

.field public mTransition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    return-void
.end method


# virtual methods
.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 6

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v2

    if-eq v1, v2, :cond_1

    return-object v0

    :cond_1
    iput-object p1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p0, p0, v0

    if-eqz p0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "RemoteTransition directly requested for %s: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x6e9fdbceedc43bf5L    # 7.370277288833216E224

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v10

    const/4 v8, 0x4

    const-string v9, "Merging registered One-shot remote transition %s for (#%d)."

    const-wide v6, -0x6fd5bb2eac0cc518L    # -8.460068588251583E-231

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    new-instance v2, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;

    move-object/from16 v3, p2

    move-object/from16 v4, p5

    invoke-direct {v2, v0, v3, v1, v4}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$1;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    :try_start_0
    iget-object v4, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v4}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v14

    if-ne v14, v1, :cond_1

    move-object v13, v3

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    move-result-object v1

    move-object v13, v1

    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v0}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v11

    move-object/from16 v12, p1

    move-object/from16 v15, p4

    move-object/from16 v16, v2

    invoke-interface/range {v11 .. v16}, Landroid/window/IRemoteTransition;->mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Landroid/window/IRemoteTransitionFinishedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ShellTransitions"

    const-string v2, "Error merging remote transition."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    :try_start_0
    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {p0}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/window/IRemoteTransition;->onTransitionConsumed(Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ShellTransitions"

    const-string p2, "Error calling onTransitionConsumed()"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    move-object/from16 v8, p3

    move-object/from16 v9, p5

    const-string v10, "ShellTransitions"

    iget-object v1, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    const/4 v11, 0x0

    if-eq v1, v0, :cond_0

    return v11

    :cond_0
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v12, 0x1

    aget-boolean v1, v1, v12

    if-eqz v1, :cond_1

    iget-object v1, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v2

    int-to-long v2, v2

    sget-object v13, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v18

    const/16 v16, 0x4

    const-string v17, "Using registered One-shot remote transition %s for (#%d)."

    const-wide v14, 0x3a9ffb46a9ac3f74L    # 2.5834487910243018E-26

    invoke-static/range {v13 .. v18}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    new-instance v13, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;

    invoke-direct {v13, v7, v9}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    new-instance v14, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;

    move-object v1, v14

    move-object/from16 v2, p0

    move-object/from16 v3, p2

    move-object v4, v13

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/transition/OneShotRemoteHandler$2;-><init>(Lcom/android/wm/shell/transition/OneShotRemoteHandler;Landroid/window/TransitionInfo;Landroid/os/IBinder$DeathRecipient;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iget-object v1, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v1}, Landroid/window/RemoteTransition;->getAppThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-static {v1}, Lcom/android/wm/shell/transition/Transitions;->setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mStartedCallbackForSplitScreen:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    iput-object v1, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mStartedCallbackForSplitScreen:Ljava/lang/Runnable;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_FORCE_HIDING_TRANSITION:Z

    if-eqz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v12

    :goto_1
    if-ltz v2, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/TransitionInfo$Change;

    iget-object v4, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitions;

    invoke-static {v10, v3, v4}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->buildForceHideAnimationIfNeeded(Ljava/lang/String;Landroid/window/TransitionInfo$Change;Lcom/android/wm/shell/transition/MultiTaskingTransitions;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startAnimation: remove from remoteInfo, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_4
    iget-object v2, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v2}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v2}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2, v13, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    :cond_5
    iget-object v2, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v2}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v2

    invoke-static {v8, v2}, Lcom/android/wm/shell/transition/RemoteTransitionHandler;->copyIfLocal(Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransition;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    if-ne v2, v8, :cond_6

    move-object/from16 v3, p2

    goto :goto_2

    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/window/TransitionInfo;->localRemoteCopy()Landroid/window/TransitionInfo;

    move-result-object v3

    :goto_2
    iget-object v4, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v4}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object v4

    invoke-interface {v4, v0, v3, v2, v14}, Landroid/window/IRemoteTransition;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/window/IRemoteTransitionFinishedCallback;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/SurfaceControl$Transaction;->clear()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :goto_3
    const-string v2, "Error running remote transition."

    invoke-static {v10, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v0, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v0}, Landroid/window/RemoteTransition;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0, v13, v11}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_7
    invoke-interface {v9, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    iput-object v1, v7, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    :goto_4
    return v12
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OneShotRemoteHandler:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {v1}, Landroid/window/RemoteTransition;->getDebugName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mRemote:Landroid/window/RemoteTransition;

    invoke-virtual {p0}, Landroid/window/RemoteTransition;->getRemoteTransition()Landroid/window/IRemoteTransition;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
