.class public final Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mAnimatingTransition:Landroid/os/IBinder;

.field public final mAnimations:Ljava/util/ArrayList;

.field public mDividerFadeAnimation:Landroid/animation/ValueAnimator;

.field public mDurationScale:F

.field public mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

.field public final mOnFinish:Ljava/lang/Runnable;

.field public mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

.field public mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

.field public mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

.field public mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

.field public final mRemoteFinishCB:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;

.field public mSplitInvocationListener:Lcom/android/systemui/wmshell/WMShell$8;

.field public mSplitInvocationListenerExecutor:Ljava/util/concurrent/Executor;

.field public final mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public final mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/transition/Transitions;Ljava/lang/Runnable;Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;)V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mRemoteFinishCB:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda0;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mOnFinish:Ljava/lang/Runnable;

    iput-object p4, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mStageCoordinator:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION:Z

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/android/wm/shell/transition/Transitions;->mMultiTaskingTransitProvider:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    iget-object p1, p2, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    :cond_0
    return-void
.end method


# virtual methods
.method public final buildSurfaceAnimation(Landroid/window/TransitionInfo$Change;Landroid/view/SurfaceControl;I)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buildSurfaceAnimation: leash="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenTransitions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;

    const/4 v0, 0x2

    invoke-direct {v6, p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;I)V

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndAbsBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mMultiTaskingTransitions:Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;

    invoke-virtual {v2, p3, v0}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->loadAnimationFromResources(ILandroid/graphics/Rect;)Landroid/view/animation/Animation;

    move-result-object v4

    invoke-virtual {p1}, Landroid/window/TransitionInfo$Change;->getEndDisplayId()I

    move-result p1

    iget-object p3, v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p3, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object p1

    iget-object p3, v2, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->mAnimationLoaderMap:Landroid/util/SparseArray;

    const/4 v1, 0x1

    invoke-virtual {p3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/wm/shell/transition/AnimationLoader;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p3, p1}, Lcom/android/wm/shell/transition/AnimationLoader;->getCornerRadius(Landroid/content/Context;)F

    move-result v3

    cmpg-float v3, v3, v1

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    instance-of v3, v4, Landroid/view/animation/AnimationSet;

    if-eqz v3, :cond_1

    move-object v3, v4

    check-cast v3, Landroid/view/animation/AnimationSet;

    invoke-virtual {p3, v0, v3, p1}, Lcom/android/wm/shell/transition/AnimationLoader;->addRoundedClipAnimation(Landroid/graphics/Rect;Landroid/view/animation/AnimationSet;Landroid/content/Context;)V

    :cond_1
    :goto_0
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasRoundedCornerRadius()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v4}, Landroid/view/animation/Animation;->getRoundedCornerRadius()F

    move-result p1

    move v8, p1

    goto :goto_1

    :cond_2
    move v8, v1

    :goto_1
    new-instance v7, Landroid/graphics/Point;

    const/4 p1, 0x0

    invoke-direct {v7, p1, p1}, Landroid/graphics/Point;-><init>(II)V

    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v9, p1, p1}, Landroid/graphics/Rect;->offsetTo(II)V

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    const/4 v10, 0x0

    move-object v5, p2

    invoke-virtual/range {v2 .. v10}, Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider;->buildSurfaceAnimator(Ljava/util/ArrayList;Landroid/view/animation/Animation;Landroid/view/SurfaceControl;Ljava/lang/Runnable;Landroid/graphics/Point;FLandroid/graphics/Rect;Z)Lcom/android/wm/shell/transition/MultiTaskingTransitionProvider$SurfaceValueAnimator;

    return-void
.end method

.method public final getPendingTransition(Landroid/os/IBinder;)Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "\tresolved enter transition"

    const/4 v5, 0x0

    const-wide v1, 0x3689f79a4d3731c2L    # 5.685592963871835E-46

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "\tresolved dismiss transition"

    const/4 v5, 0x0

    const-wide v1, -0x123d0f7c3e70c0e6L    # -5.348544184918622E220

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_4

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "\tresolved resize transition"

    const/4 v5, 0x0

    const-wide v1, -0x6b0416ab3ef9cd87L

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    return-object p0

    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingPassThrough(Landroid/os/IBinder;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_6

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "\tresolved passThrough transition"

    const/4 v5, 0x0

    const-wide v1, 0x1695e5a2a0c03b8fL    # 7.151674817872975E-200

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    return-object p0

    :cond_7
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isPendingDismiss(Landroid/os/IBinder;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPendingEnter(Landroid/os/IBinder;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPendingPassThrough(Landroid/os/IBinder;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isPendingResize(Landroid/os/IBinder;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onFinish(Landroid/window/WindowContainerTransaction;)V
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingEnter(Landroid/os/IBinder;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_2
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v4, 0x89849a8ff013a37L

    const/4 v6, 0x0

    const-string v7, "onFinish for enter transition"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingDismiss(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_4
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v4, 0x36dd8d0004b433a7L    # 2.0704732389056378E-44

    const/4 v6, 0x0

    const-string v7, "onFinish for dismiss transition"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingResize(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    if-eqz v0, :cond_6

    invoke-interface {v0, p1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_6
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v4, -0x52ec26374444c197L    # -1.5226411858405513E-91

    const/4 v6, 0x0

    const-string v7, "onFinish for resize transition"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->isPendingPassThrough(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iget-object v3, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v0, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    if-eqz v0, :cond_8

    invoke-interface {v0, p1, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;->onFinished(Landroid/window/WindowContainerTransaction;Landroid/view/SurfaceControl$Transaction;)V

    :cond_8
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingRemotePassthrough:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_9

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v4, 0x5c845a871fd93bcaL    # 4.734016750826088E137

    const/4 v6, 0x0

    const-string v7, "onFinish for passThrough transition"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    :goto_0
    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mActiveRemoteHandler:Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mOnFinish:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    if-eqz v0, :cond_a

    iput-object v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mFinishCallback:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    invoke-interface {v0, p1}, Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;->onTransitionFinished(Landroid/window/WindowContainerTransaction;)V

    :cond_a
    return-void
.end method

.method public final setDismissTransition(Landroid/os/IBinder;IIZ)V
    .locals 7

    new-instance v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;IIZ)V

    iput-object v6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 p1, 0x1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0x1c03b98570a9c5dfL    # -4.370839490245538E173

    const/4 v3, 0x0

    const-string v4, "  splitTransition  deduced Dismiss due to %s. toTop=%s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 p1, 0x0

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    invoke-static {p3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/android/wm/shell/splitscreen/SplitScreen;->stageTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0x703cfb79e626c1d6L    # -9.569972622593865E-233

    const/4 v3, 0x0

    const-string/jumbo v4, "setDismissTransition: reason=%s dismissTop=%s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V
    .locals 7

    new-instance v6, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    iput-object v6, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 p1, 0x1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string v4, "  splitTransition  deduced Enter split screen"

    const/4 v5, 0x0

    const-wide v1, 0x6390c533a6483dedL    # 4.050595527344558E171

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 p1, 0x0

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_1

    int-to-long p0, p3

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0x21d055539953c0c9L    # -4.942772668827589E145

    const/16 v3, 0xd

    const-string/jumbo v4, "setEnterTransition: transitType=%d resize=%b"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final startCustomFadeAnimation(Landroid/view/SurfaceControl;ZZZZ)V
    .locals 10

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p2, :cond_0

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v0

    :goto_0
    sub-float v5, v1, v8

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransactionPool:Lcom/android/wm/shell/common/TransactionPool;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v5, v2, v3

    const/4 v3, 0x1

    aput v8, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz p5, :cond_1

    iget p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    mul-float/2addr p5, v2

    float-to-long v2, p5

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/high16 p5, 0x43480000    # 200.0f

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    mul-float/2addr v0, p5

    float-to-long v2, v0

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    if-nez p4, :cond_2

    iget p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    mul-float/2addr p5, v2

    float-to-long v2, p5

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const/high16 p5, 0x43960000    # 300.0f

    iget v2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    mul-float/2addr v2, p5

    float-to-long v2, v2

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    invoke-virtual {v1, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    iput-object v9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_2
    const/high16 p5, 0x43050000    # 133.0f

    iget v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDurationScale:F

    mul-float/2addr v0, p5

    float-to-long v2, v0

    invoke-virtual {v9, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_1
    if-eqz p2, :cond_3

    sget-object p5, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    goto :goto_2

    :cond_3
    sget-object p5, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    :goto_2
    invoke-virtual {v9, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz p4, :cond_5

    if-eqz p3, :cond_4

    const-wide/16 p4, 0x64

    invoke-virtual {v9, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iput-object v9, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mDividerFadeAnimation:Landroid/animation/ValueAnimator;

    goto :goto_3

    :cond_4
    const-wide/16 p4, 0x12c

    invoke-virtual {v9, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object p4, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v9, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    :cond_5
    :goto_3
    new-instance p4, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;

    const/4 v7, 0x1

    move-object v2, p4

    move-object v3, v1

    move-object v4, p1

    move v6, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Landroid/view/SurfaceControl;FFI)V

    invoke-virtual {v9, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda9;

    move-object v2, p5

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda9;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V

    new-instance v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;

    invoke-direct {v0, p0, p5, v9, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$2;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Ljava/lang/Runnable;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p4, "startFadeAnimation: leash="

    invoke-direct {p0, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", show="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_6

    const-string p1, ", isDividerChange=true"

    goto :goto_4

    :cond_6
    const-string p1, ""

    :goto_4
    const-string p2, "SplitScreenTransitions"

    invoke-static {p0, p1, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final startDismissTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IIZ)Landroid/os/IBinder;
    .locals 6

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingDismiss:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$DismissSession;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 p1, 0x1

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    invoke-static {p4}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->exitReasonToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, -0xd4094d71947c2d0L    # -5.363190543567252E244

    const/4 v3, 0x0

    const-string v4, "  splitTransition  skip to start dismiss split transition since it already exist. reason to  dismiss = %s"

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 v0, 0x4

    if-ne p4, v0, :cond_2

    const/16 v0, 0x3ee

    goto :goto_0

    :cond_2
    const/16 v0, 0x3ef

    :goto_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_SHELL_TRANSITION:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isDismissSplitWithFreeform()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0x450

    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_4

    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isDismissSplitWithAllApps()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x451

    :cond_4
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_TASK_ORGANIZER:Z

    if-eqz p2, :cond_5

    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    goto :goto_1

    :cond_5
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setDismissTransition(Landroid/os/IBinder;IIZ)V

    :goto_1
    return-object p1
.end method

.method public final startEnterTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, -0x538c01fe8a02c3d5L    # -1.4975528937420862E-94

    const/4 v4, 0x0

    const-string v5, "  splitTransition  skip to start enter split transition since it already exist. "

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;->mPendingStartedTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1388

    cmp-long v0, v1, v3

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ignore to skip pending enter forcibly, pending="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    iget-object v1, v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mTransition:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", transition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimatingTransition:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SplitScreenTransitions"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;)V

    iput-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingEnter:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$EnterSession;

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mSplitInvocationListenerExecutor:Ljava/util/concurrent/Executor;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mSplitInvocationListener:Lcom/android/systemui/wmshell/WMShell$8;

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->setEnterTransition(Landroid/os/IBinder;Landroid/window/RemoteTransition;IZ)V

    return-void
.end method

.method public final startFadeAnimation(Landroid/view/SurfaceControl;)V
    .locals 13

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->startCustomFadeAnimation(Landroid/view/SurfaceControl;ZZZZ)V

    return-void

    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0x85

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v2, Lcom/android/wm/shell/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;

    const/4 v12, 0x0

    move-object v7, v2

    move-object v8, p0

    move-object v9, p1

    move v11, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;Landroid/view/SurfaceControl;FFI)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$1;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/view/SurfaceControl;FLandroid/animation/ValueAnimator;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object p0, p0, Lcom/android/wm/shell/transition/Transitions;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;

    invoke-direct {p1, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$$ExternalSyntheticLambda2;-><init>(Landroid/animation/ValueAnimator;)V

    check-cast p0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final startFullscreenTransition(Landroid/window/WindowContainerTransaction;Landroid/window/RemoteTransition;)V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v1, p0, Lcom/android/wm/shell/transition/Transitions;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    invoke-direct {v0, v1, p2}, Lcom/android/wm/shell/transition/OneShotRemoteHandler;-><init>(Lcom/android/wm/shell/common/ShellExecutor;Landroid/window/RemoteTransition;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    iput-object p0, v0, Lcom/android/wm/shell/transition/OneShotRemoteHandler;->mTransition:Landroid/os/IBinder;

    return-void
.end method

.method public final startResizeTransition(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;Lcom/android/wm/shell/common/split/SplitDecorManager;Lcom/android/wm/shell/common/split/SplitDecorManager;)V
    .locals 9

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x3c047a2725f53f27L    # 1.387586325086933E-19

    const/4 v5, 0x0

    const-string v6, "  splitTransition deduced Resize split screen."

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_SPLIT_SCREEN_enabled:[Z

    const/4 v2, 0x0

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    if-eqz v0, :cond_1

    move v2, v1

    :cond_1
    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SPLIT_SCREEN:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v8

    const/4 v6, 0x3

    const-string/jumbo v7, "setResizeTransition: hasPendingResize=%b"

    const-wide v4, 0x7371b0b906f33231L    # 1.2368932348525328E248

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    if-eqz v0, :cond_3

    invoke-virtual {p5}, Lcom/android/wm/shell/common/split/SplitDecorManager;->cancelRunningAnimations()V

    invoke-virtual {p6}, Lcom/android/wm/shell/common/split/SplitDecorManager;->cancelRunningAnimations()V

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    iput-boolean v1, p5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mCanceled:Z

    const/4 p6, 0x0

    iput-object p6, p5, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;->mFinishedCallback:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;

    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {p5}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0, p6}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->onFinish(Landroid/window/WindowContainerTransaction;)V

    :cond_3
    iget-object p5, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 p6, 0x6

    invoke-virtual {p5, p6, p1, p2}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p1

    new-instance p2, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    invoke-direct {p2, p0, p1, p3, p4}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;-><init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/os/IBinder;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionConsumedCallback;Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitionFinishedCallback;)V

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->mPendingResize:Lcom/android/wm/shell/splitscreen/SplitScreenTransitions$TransitSession;

    return-void
.end method
