.class public abstract Lcom/android/wm/shell/pip/PipTransitionController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;


# instance fields
.field public mDeferBoundsTransaction:Z

.field public mMixedHandler:Lcom/android/wm/shell/transition/DefaultMixedHandler;

.field public final mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTransitionController$1;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public final mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

.field public mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTransitionCallbacks:Ljava/util/List;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipMenuController;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/wm/shell/pip/PipTransitionController$1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipTransitionController$1;-><init>(Lcom/android/wm/shell/pip/PipTransitionController;)V

    iput-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipAnimationCallback:Lcom/android/wm/shell/pip/PipTransitionController$1;

    iput-object p4, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iput-object p5, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipMenuController:Lcom/android/wm/shell/common/pip/PipMenuController;

    iput-object p2, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p6, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iput-object p3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_0

    new-instance p2, Lcom/android/wm/shell/pip/PipTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/wm/shell/pip/PipTransitionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipTransitionController;)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public augmentRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;Landroid/window/WindowContainerTransaction;)V
    .locals 0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Request isn\'t entering PiP"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public end()V
    .locals 0

    return-void
.end method

.method public end(Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda6;)V
    .locals 0

    return-void
.end method

.method public finishTransition(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public forceFinishTransition(Lcom/android/wm/shell/pip/PipTaskOrganizer$$ExternalSyntheticLambda3;)V
    .locals 0

    return-void
.end method

.method public handleRotateDisplay(IILandroid/window/WindowContainerTransaction;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEnteringPip(Landroid/window/TransitionInfo$Change;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isPackageActiveInPip(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, v0, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-static {p0}, Lcom/android/wm/shell/common/split/SplitScreenUtils;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onFinishResize(Landroid/app/TaskInfo;Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public onFixedRotationFinished()V
    .locals 0

    return-void
.end method

.method public onFixedRotationStarted()V
    .locals 0

    return-void
.end method

.method public onInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/transition/Transitions;->addHandler(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)V

    return-void
.end method

.method public onStartEnterPipFromSplit(Landroid/window/TransitionInfo$Change;Landroid/window/TransitionInfo;)V
    .locals 0

    return-void
.end method

.method public final sendOnPipTransitionCancelled$1(I)V
    .locals 2

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string/jumbo v0, "sendOnPipTransitionCancelled direction="

    const-string v1, "PipTaskOrganizer"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;->onPipTransitionCanceled(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sendOnPipTransitionFinished(I)V
    .locals 6

    sget v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    const-string v0, "[PipTransitionController] sendOnPipTransitionFinished direction="

    const-string v1, "PipTaskOrganizer"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;

    invoke-interface {v1, p1}, Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;->onPipTransitionFinished(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/app/Flags;->enablePipUiStateCallbackOnEntering()Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    new-instance p1, Landroid/app/PictureInPictureUiState$Builder;

    invoke-direct {p1}, Landroid/app/PictureInPictureUiState$Builder;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/PictureInPictureUiState$Builder;->setTransitioningToPip(Z)Landroid/app/PictureInPictureUiState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PictureInPictureUiState$Builder;->build()Landroid/app/PictureInPictureUiState;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p1, 0x4

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "Failed to set alert PiP state change."

    const/4 v5, 0x0

    const-wide v1, -0x71a67f0ec8f1c45bL

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public final sendOnPipTransitionStarted$1(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    sget v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->EXTRA_CONTENT_OVERLAY_FADE_OUT_DELAY_MS:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[PipTransitionController] sendOnPipTransitionStarted direction="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " pipBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PipTaskOrganizer"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_0

    iget-object v3, p0, Lcom/android/wm/shell/pip/PipTransitionController;->mPipTransitionCallbacks:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;

    invoke-interface {v3, p1, v0}, Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;->onPipTransitionStarted(ILandroid/graphics/Rect;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isInPipDirection(I)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroid/app/Flags;->enablePipUiStateCallbackOnEntering()Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object p0

    new-instance p1, Landroid/app/PictureInPictureUiState$Builder;

    invoke-direct {p1}, Landroid/app/PictureInPictureUiState$Builder;-><init>()V

    invoke-virtual {p1, v2}, Landroid/app/PictureInPictureUiState$Builder;->setTransitioningToPip(Z)Landroid/app/PictureInPictureUiState$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/PictureInPictureUiState$Builder;->build()Landroid/app/PictureInPictureUiState;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->onPictureInPictureUiStateChanged(Landroid/app/PictureInPictureUiState;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 p1, 0x4

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "Failed to set alert PiP state change."

    const/4 v5, 0x0

    const-wide v1, -0x71a67f0ec8f1c45bL

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setEnterAnimationType(I)V
    .locals 0

    return-void
.end method

.method public setStartTransactionForRemote(Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method

.method public startEnterAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .locals 0

    return-void
.end method

.method public startExitTransition(ILandroid/window/WindowContainerTransaction;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public startResizeTransition(Landroid/window/WindowContainerTransaction;)V
    .locals 0

    return-void
.end method

.method public syncPipSurfaceState(Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    return-void
.end method
