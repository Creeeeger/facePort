.class public final synthetic Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/transition/RecentsMixedTransition;

.field public final synthetic f$1:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/transition/RecentsMixedTransition;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/RecentsMixedTransition;

    iput-object p2, p0, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda1;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda1;->f$1:Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/transition/RecentsMixedTransition;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    :goto_0
    iget v3, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    const/4 v4, 0x1

    iget-object v1, v1, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, p1, v0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onRecentsInSplitAnimationFinish(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_3

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v9, "onRecentsPairToPairAnimationFinish"

    const/4 v10, 0x0

    const-wide v6, 0x3546b82accb13e43L    # 4.744032715562783E-52

    const/4 v8, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_1
    if-ltz v0, :cond_5

    iget-object v2, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mMainStage:Lcom/android/wm/shell/splitscreen/MainStage;

    iget-object v5, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4, p1, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictChildren(Landroid/window/WindowContainerTransaction;I)V

    goto :goto_2

    :cond_3
    iget-object v4, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSideStage:Lcom/android/wm/shell/splitscreen/SideStage;

    iget-object v5, v4, Lcom/android/wm/shell/splitscreen/StageTaskListener;->mChildrenTaskInfo:Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;

    iget-object v5, v5, Lcom/android/wm/shell/splitscreen/StageTaskListener$RunningTaskInfoList;->mTaskIds:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v4, p1, v3}, Lcom/android/wm/shell/splitscreen/StageTaskListener;->evictChildren(Landroid/window/WindowContainerTransaction;I)V

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_5
    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mSplitTransitions:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/android/wm/shell/splitscreen/StageCoordinator;->mPausingTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->updateRecentTasksSplitPair()V

    :cond_6
    :goto_3
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->onTransitionAnimationComplete()V

    iget-object p0, p0, Lcom/android/wm/shell/transition/RecentsMixedTransition$$ExternalSyntheticLambda1;->f$2:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
