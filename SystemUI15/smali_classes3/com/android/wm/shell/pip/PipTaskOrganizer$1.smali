.class public final Lcom/android/wm/shell/pip/PipTaskOrganizer$1;
.super Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mIsCancelled:Z

.field public mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-direct {p0}, Lcom/android/wm/shell/pip/PipAnimationController$PipAnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPipAnimationCancel(Landroid/app/TaskInfo;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 2

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mIsCancelled:Z

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPipAnimationCancel direction="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PipTaskOrganizer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;ZI)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionCancelled$1(I)V

    return-void
.end method

.method public final onPipAnimationEnd(Landroid/app/TaskInfo;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 9

    const/4 p1, 0x1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;->close()V

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_0
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v6

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mIsCancelled:Z

    iget-object v8, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    if-eqz v0, :cond_2

    invoke-virtual {v8, v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    iget-object p0, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    iput-object v1, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipFinishResizeWCTRunnable:Ljava/lang/Runnable;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getAnimationType()I

    move-result v7

    iget-object v5, p3, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    sget p3, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string p3, "onPipAnimationEnd direction="

    const-string v0, " type"

    const-string v2, " mState="

    invoke-static {v6, v7, p3, v0, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object v0, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "PipTaskOrganizer"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result p3

    if-eqz p3, :cond_3

    iget-object p3, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipOverlay:Landroid/view/SurfaceControl;

    if-eqz p3, :cond_3

    const/4 v0, -0x1

    invoke-virtual {v8, p3, p1, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->fadeOutAndRemoveOverlay(Landroid/view/SurfaceControl;ZI)V

    :cond_3
    iget-boolean p3, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz p3, :cond_4

    if-nez v7, :cond_4

    const/4 p3, 0x2

    if-ne v6, p3, :cond_4

    new-instance p0, Landroid/window/WindowContainerTransaction;

    invoke-direct {p0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mToken:Landroid/window/WindowContainerToken;

    invoke-virtual {p0, p1, v5}, Landroid/window/WindowContainerTransaction;->scheduleFinishEnterPip(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object p1, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, p0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    iget-object p0, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    invoke-virtual {v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result p1

    iget-object p3, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {p3, p0, p1, p2}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->round(Landroid/view/SurfaceControl;ZLandroid/view/SurfaceControl$Transaction;)V

    iput-object p2, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mDeferredAnimEndTransaction:Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_4
    invoke-static {v6}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result p3

    const/4 v0, 0x5

    if-nez p3, :cond_6

    if-ne v6, v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    goto :goto_1

    :cond_6
    :goto_0
    move p3, p1

    :goto_1
    iget-object v2, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v2, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    if-ne v2, v0, :cond_7

    if-eqz p3, :cond_9

    :cond_7
    new-instance p3, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda1;

    invoke-direct {p3, v8}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;)V

    iget-object v0, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {p2, v0, p3}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    new-instance p3, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;

    move-object v2, p3

    move-object v3, p0

    move-object v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$1;Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;II)V

    iget-object p0, v8, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    invoke-interface {p0}, Lcom/android/wm/shell/common/pip/PipMenuController;->isMenuVisible()Z

    move-result p0

    if-nez p0, :cond_8

    invoke-virtual {p3}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda2;->run()V

    goto :goto_2

    :cond_8
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p0

    new-instance p2, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda13;

    invoke-direct {p2, v8, p3, p1}, Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda13;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer;Ljava/lang/Object;I)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p2, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final onPipAnimationStart(Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->this$0:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipPerfHintController:Lcom/android/wm/shell/common/pip/PipPerfHintController;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTaskOrganizer$1;)V

    const-string v3, "PipTaskOrganizer::mPipAnimationCallback"

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/common/pip/PipPerfHintController;->startSession(Ljava/util/function/Consumer;Ljava/lang/String;)Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mPipHighPerfSession:Lcom/android/wm/shell/common/pip/PipPerfHintController$PipHighPerfSession;

    :cond_0
    invoke-virtual {p1}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result p1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer$1;->mIsCancelled:Z

    sget p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string p0, "onPipAnimationStart direction="

    const-string v1, "PipTaskOrganizer"

    invoke-static {p1, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x2

    if-ne p1, p0, :cond_1

    iget-object p0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/PipTransitionState;->setTransitionState(I)V

    :cond_1
    iget-object p0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionStarted$1(I)V

    return-void
.end method
