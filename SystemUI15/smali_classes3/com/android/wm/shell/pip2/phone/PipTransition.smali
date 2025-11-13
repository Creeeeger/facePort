.class public final Lcom/android/wm/shell/pip2/phone/PipTransition;
.super Lcom/android/wm/shell/pip/PipTransitionController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnterTransition:Landroid/os/IBinder;

.field public mExitViaExpandTransition:Landroid/os/IBinder;

.field public mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public final mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

.field public mResizeTransition:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipMenuController;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/pip2/phone/PipScheduler;Lcom/android/wm/shell/pip2/phone/PipTransitionState;)V
    .locals 10

    move-object v7, p0

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/wm/shell/pip/PipTransitionController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipMenuController;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;)V

    move-object v0, p1

    iput-object v0, v7, Lcom/android/wm/shell/pip2/phone/PipTransition;->mContext:Landroid/content/Context;

    iput-object v8, v7, Lcom/android/wm/shell/pip2/phone/PipTransition;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iput-object v7, v8, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    iput-object v9, v7, Lcom/android/wm/shell/pip2/phone/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    invoke-virtual {v9, p0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->addPipTransitionStateChangedListener(Lcom/android/wm/shell/pip2/phone/PipTransitionState$PipTransitionStateChangedListener;)V

    return-void
.end method

.method public static getPipChange$1(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;
    .locals 3

    invoke-virtual {p0}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/TransitionInfo$Change;

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 3

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getPipTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v2

    if-ne v2, v1, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_3

    :goto_1
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip2/phone/PipTransition;->getEnterPipTransaction(Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object p2

    invoke-virtual {p3, p2, v1}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mEnterTransition:Landroid/os/IBinder;

    :cond_3
    return-void
.end method

.method public final finishTransition(Landroid/view/SurfaceControl$Transaction;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_0

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v0, p1}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    return-void
.end method

.method public final getEnterPipTransaction(Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 4

    invoke-virtual {p1}, Landroid/window/TransitionRequestInfo;->getPipTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v3, v1, v2, v0, p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBoundsStateForEntry(Landroid/content/ComponentName;Landroid/content/pm/ActivityInfo;Landroid/app/PictureInPictureParams;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v3, p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, v1, p0}, Landroid/window/WindowContainerTransaction;->movePipActivityToPinnedRootTask(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p0}, Landroid/window/WindowContainerTransaction;->deferConfigToTransitionEnd(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    return-object v0
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 3

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getPipTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    :goto_1
    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mEnterTransition:Landroid/os/IBinder;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/pip2/phone/PipTransition;->getEnterPipTransaction(Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    return-void
.end method

.method public final onClientDrawAtTransitionEnd()V
    .locals 3

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget-object v2, v1, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_0

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipTransition$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip2/phone/PipTransition$1;-><init>(Lcom/android/wm/shell/pip2/phone/PipTransition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip2/phone/PipTransition;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget p0, v1, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mState:I

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    const/4 v0, 0x3

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final onInit()V
    .locals 1

    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    :cond_0
    return-void
.end method

.method public final onPipTransitionStateChanged(IILandroid/os/Bundle;)V
    .locals 3

    const/4 p1, 0x2

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    if-eq p2, p1, :cond_1

    const/16 p1, 0x8

    if-eq p2, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPinnedTaskLeash:Landroid/view/SurfaceControl;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    const/4 p2, 0x1

    if-eqz p3, :cond_2

    move v0, p2

    goto :goto_0

    :cond_2
    move v0, p1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No extra bundle for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    const-string v0, "pip_task_token"

    const-class v1, Landroid/window/WindowContainerToken;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/WindowContainerToken;

    iput-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    const-string v0, "pip_task_leash"

    const-class v1, Landroid/view/SurfaceControl;

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPinnedTaskLeash:Landroid/view/SurfaceControl;

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    move p1, p2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Unexpected bundle for "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public final onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 10

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mEnterTransition:Landroid/os/IBinder;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    if-eq p1, v0, :cond_a

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result v0

    const/16 v6, 0xa

    if-ne v0, v6, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mExitViaExpandTransition:Landroid/os/IBinder;

    const/16 v6, 0x8

    if-ne p1, v0, :cond_1

    iput-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mExitViaExpandTransition:Landroid/os/IBinder;

    const/4 p0, 0x7

    invoke-virtual {v5, p0, v4}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {p5, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v5, v6, v4}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    return v3

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mResizeTransition:Landroid/os/IBinder;

    if-ne p1, v0, :cond_3

    iput-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mResizeTransition:Landroid/os/IBinder;

    invoke-static {p2}, Lcom/android/wm/shell/pip2/phone/PipTransition;->getPipChange$1(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p3, p2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string v0, "pip_start_tx"

    invoke-virtual {p2, v0, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "pip_finish_tx"

    invoke-virtual {p2, p3, p4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p3, "pip_dest_bounds"

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p3, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iput-object p5, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/4 p0, 0x5

    invoke-virtual {v5, p0, p2}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    move v2, v3

    :goto_0
    return v2

    :cond_3
    iget-object p0, v5, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p2, p0}, Landroid/window/TransitionInfo;->getChange(Landroid/window/WindowContainerToken;)Landroid/window/TransitionInfo$Change;

    move-result-object p0

    if-nez p0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p1

    const/4 p4, 0x4

    if-ne p1, p4, :cond_6

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p1

    if-ne p1, p4, :cond_6

    move p1, v3

    goto :goto_1

    :cond_6
    move p1, v2

    :goto_1
    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getType()I

    move-result p2

    if-ne p2, v1, :cond_7

    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p0

    if-ne p0, v1, :cond_7

    move p0, v3

    goto :goto_2

    :cond_7
    move p0, v2

    :goto_2
    if-nez p1, :cond_9

    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    :goto_3
    return v2

    :cond_9
    :goto_4
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {p5, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {v5, v6, v4}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    return v3

    :cond_a
    :goto_5
    iput-object v4, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mEnterTransition:Landroid/os/IBinder;

    invoke-static {p2}, Lcom/android/wm/shell/pip2/phone/PipTransition;->getPipChange$1(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-nez p1, :cond_b

    return v2

    :cond_b
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    const-string v0, "pip_task_token"

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object v6

    invoke-virtual {p4, v0, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "pip_task_leash"

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p1

    invoke-virtual {p4, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v5, v1, p4}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    iget-boolean p1, v5, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz p1, :cond_12

    invoke-static {p2}, Lcom/android/wm/shell/pip2/phone/PipTransition;->getPipChange$1(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-nez p1, :cond_c

    goto/16 :goto_8

    :cond_c
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    move-result-object p2

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getLeash()Landroid/view/SurfaceControl;

    move-result-object p4

    if-eqz p2, :cond_11

    if-nez p4, :cond_d

    goto/16 :goto_8

    :cond_d
    iget-object v0, v5, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    iget-object v2, v5, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeAppBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    invoke-virtual {p1}, Landroid/app/PictureInPictureParams;->getAspectRatioFloat()F

    move-result p1

    if-nez v0, :cond_e

    invoke-virtual {v1}, Landroid/app/PictureInPictureParams;->getSourceRectHint()Landroid/graphics/Rect;

    move-result-object p1

    goto :goto_6

    :cond_e
    invoke-static {v2, p1}, Lcom/android/wm/shell/common/pip/PipUtils;->getEnterPipWithOverlaySrcRectHint(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    :goto_6
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {p3, p4, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget v8, v6, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Rect;->left:I

    int-to-float v9, v9

    mul-float/2addr v9, v7

    sub-float/2addr v8, v9

    iget v9, v6, Landroid/graphics/Rect;->top:I

    int-to-float v9, v9

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    mul-float/2addr p1, v7

    sub-float/2addr v9, p1

    invoke-virtual {p3, p4, v8, v9}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p3, p4, v7, v7}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    if-eqz v0, :cond_f

    iget-object p1, v5, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mSwipePipToHomeAppBounds:Landroid/graphics/Rect;

    invoke-static {p1, v6}, Lcom/android/wm/shell/pip/PipContentOverlay$PipAppIconOverlay;->getOverlaySize(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result p1

    const/high16 p4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v0, p4, p4}, Landroid/view/SurfaceControl$Transaction;->setScale(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result p4

    sub-int/2addr p4, p1

    int-to-float p4, p4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr p4, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v6, p1

    int-to-float p1, v6

    div-float/2addr p1, v5

    invoke-virtual {v2, v0, p4, p1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    :cond_f
    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mPipScheduler:Lcom/android/wm/shell/pip2/phone/PipScheduler;

    iget-object p1, p1, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p3, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipTransition;)V

    invoke-virtual {v2, p1, p3}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1, p2, v2}, Landroid/window/WindowContainerTransaction;->setBoundsChangeTransaction(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl$Transaction;)Landroid/window/WindowContainerTransaction;

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_7

    :cond_10
    move-object v4, v1

    :goto_7
    invoke-interface {p5, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    move v2, v3

    :cond_11
    :goto_8
    return v2

    :cond_12
    invoke-static {p2}, Lcom/android/wm/shell/pip2/phone/PipTransition;->getPipChange$1(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-eqz p1, :cond_15

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getChanges()Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ne p4, v3, :cond_15

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p4

    const/4 v0, 0x3

    if-eq p4, v0, :cond_13

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getMode()I

    move-result p1

    if-ne p1, v3, :cond_15

    :cond_13
    invoke-static {p2}, Lcom/android/wm/shell/pip2/phone/PipTransition;->getPipChange$1(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object p1

    if-nez p1, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget-object p2, v5, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPinnedTaskLeash:Landroid/view/SurfaceControl;

    const-string p4, "Leash is null for alpha transition."

    invoke-static {p2, p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p4, p1, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p3, p2, p4, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p4

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p4, p2, v0, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    new-instance p1, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;

    iget-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mContext:Landroid/content/Context;

    invoke-direct {p1, p4, p2, p3, v2}, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;-><init>(Landroid/content/Context;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;I)V

    new-instance p2, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0, p5}, Lcom/android/wm/shell/pip2/phone/PipTransition$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipTransition;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V

    iput-object p2, p1, Lcom/android/wm/shell/pip2/animation/PipAlphaAnimator;->mAnimationEndCallback:Ljava/lang/Runnable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    move v2, v3

    :goto_9
    return v2

    :cond_15
    invoke-static {p2}, Lcom/android/wm/shell/pip2/phone/PipTransition;->getPipChange$1(Landroid/window/TransitionInfo;)Landroid/window/TransitionInfo$Change;

    move-result-object p0

    if-nez p0, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {p0}, Landroid/window/TransitionInfo$Change;->getContainer()Landroid/window/WindowContainerToken;

    invoke-virtual {p3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-interface {p5, v4}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    move v2, v3

    :goto_a
    return v2
.end method

.method public final startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V
    .locals 0

    iget-object p3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p3, p1, p2, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p2

    const/16 p3, 0x3e9

    if-ne p1, p3, :cond_0

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mExitViaExpandTransition:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public final startResizeTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v1, 0x3f8

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipTransition;->mResizeTransition:Landroid/os/IBinder;

    return-void
.end method
