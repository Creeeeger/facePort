.class public final Lcom/android/wm/shell/pip2/phone/PipScheduler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/pip2/phone/PipTransitionState;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p3, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p4, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    new-instance v1, Lcom/android/wm/shell/pip2/phone/PipScheduler$PipSchedulerReceiver;

    const/4 p2, 0x0

    invoke-direct {v1, p0, p2}, Lcom/android/wm/shell/pip2/phone/PipScheduler$PipSchedulerReceiver;-><init>(Lcom/android/wm/shell/pip2/phone/PipScheduler;I)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string p0, "com.android.wm.shell.pip2.phone.PipScheduler"

    invoke-direct {v2, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v3, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    :cond_0
    return-void
.end method


# virtual methods
.method public final scheduleAnimateResizePip(Landroid/graphics/Rect;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    if-eqz v1, :cond_1

    iget v1, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mState:I

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    const/4 v2, 0x7

    if-ge v1, v2, :cond_1

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v2, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v2, p1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    if-eqz p2, :cond_0

    iget-object p1, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, p1}, Landroid/window/WindowContainerTransaction;->deferConfigToTransitionEnd(Landroid/window/WindowContainerToken;)Landroid/window/WindowContainerTransaction;

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/pip/PipTransitionController;->startResizeTransition(Landroid/window/WindowContainerTransaction;)V

    :cond_1
    return-void
.end method

.method public final scheduleExitPipViaExpand()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget-object v1, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v3, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    invoke-virtual {v1, v3, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPipTaskToken:Landroid/window/WindowContainerToken;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipScheduler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, v2}, Lcom/android/wm/shell/pip2/phone/PipScheduler$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip2/phone/PipScheduler;Landroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public final scheduleFinishResizePip(Z)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v0, Lcom/android/wm/shell/pip2/phone/PipScheduler$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip2/phone/PipScheduler$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip2/phone/PipScheduler;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->setState(ILandroid/os/Bundle;)V

    move-object p1, v1

    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipTransitionController;->finishTransition(Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method

.method public final scheduleUserResizePip(Landroid/graphics/Rect;F)V
    .locals 6

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p1, 0x3

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "%s: Attempted to user resize PIP to empty bounds, aborting."

    const-string p0, "PipScheduler"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x25bc53a6fca130b2L    # 6.538510796741292E-127

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipTransitionState:Lcom/android/wm/shell/pip2/phone/PipTransitionState;

    iget-object v0, v0, Lcom/android/wm/shell/pip2/phone/PipTransitionState;->mPinnedTaskLeash:Landroid/view/SurfaceControl;

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/16 v3, 0x9

    new-array v3, v3, [F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object p0, p0, Lcom/android/wm/shell/pip2/phone/PipScheduler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {p0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v4, p0

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    iget p0, p1, Landroid/graphics/Rect;->left:I

    int-to-float p0, p0

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    invoke-virtual {v2, p0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result p0

    int-to-float p0, p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v2, p2, p0, p1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void
.end method
