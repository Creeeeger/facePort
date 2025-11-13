.class public final synthetic Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/pip/PipTransition;

.field public final synthetic f$1:Landroid/app/TaskInfo;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Landroid/window/WindowContainerToken;

.field public final synthetic f$4:Z

.field public final synthetic f$5:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic f$6:Landroid/view/SurfaceControl;

.field public final synthetic f$7:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/PipTransition;Landroid/app/TaskInfo;ZLandroid/window/WindowContainerToken;ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$1:Landroid/app/TaskInfo;

    iput-boolean p3, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$2:Z

    iput-object p4, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$3:Landroid/window/WindowContainerToken;

    iput-boolean p5, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$4:Z

    iput-object p6, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$5:Landroid/view/SurfaceControl$Transaction;

    iput-object p7, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$6:Landroid/view/SurfaceControl;

    iput-object p8, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$7:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final onTransitionFinished(Landroid/window/WindowContainerTransaction;)V
    .locals 13

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$1:Landroid/app/TaskInfo;

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$3:Landroid/window/WindowContainerToken;

    iget-object v2, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$5:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$6:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$0:Lcom/android/wm/shell/pip/PipTransition;

    iget-object v5, v4, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v5, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->onExitPipFinished(Landroid/app/TaskInfo;)V

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->SHELL_TRANSITIONS_ROTATION:Z

    const/4 v5, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$2:Z

    const/4 v6, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_0

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v0, "PipTransition"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v12

    const-string v11, "%s: startExitAnimation() not exiting to fullscreen"

    const-wide v8, 0x56cb3dae5ed83b04L    # 1.279530242465905E110

    const/4 v10, 0x0

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    :goto_0
    invoke-virtual {p1, v1, v5}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v4, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v1, v6}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v6}, Landroid/window/WindowContainerTransaction;->setActivityWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_2
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$4:Z

    if-eqz v0, :cond_4

    iget-object v0, v4, Lcom/android/wm/shell/pip/PipTransition;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    :cond_3
    iput-object v5, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    invoke-virtual {v2, v3}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransition$$ExternalSyntheticLambda3;->f$7:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {p0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method
