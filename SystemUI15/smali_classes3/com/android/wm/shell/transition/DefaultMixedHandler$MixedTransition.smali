.class public abstract Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAnimType:I

.field public mClosingSplitScreenWithEnterPip:Z

.field public mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

.field public mFinishT:Landroid/view/SurfaceControl$Transaction;

.field public mFinishWCT:Landroid/window/WindowContainerTransaction;

.field public mHasRequestToRemote:Z

.field public mInFlightSubAnimations:I

.field public mInfo:Landroid/window/TransitionInfo;

.field public final mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

.field public mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

.field public final mMixedHandler:Lcom/android/wm/shell/transition/MixedTransitionHandler;

.field public final mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final mPlayer:Lcom/android/wm/shell/transition/Transitions;

.field public final mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

.field public mTaskViewTransitions:Lcom/android/wm/shell/taskview/TaskViewTransitions;

.field public final mTransition:Landroid/os/IBinder;

.field public final mType:I


# direct methods
.method public constructor <init>(ILandroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/transition/MixedTransitionHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/splitscreen/StageCoordinator;Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mAnimType:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mLeftoversHandler:Lcom/android/wm/shell/transition/Transitions$TransitionHandler;

    iput-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInfo:Landroid/window/TransitionInfo;

    iput-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    iput-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishT:Landroid/view/SurfaceControl$Transaction;

    iput-object v1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishCB:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    iput v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iput p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mType:I

    iput-object p2, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPlayer:Lcom/android/wm/shell/transition/Transitions;

    iput-object p4, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mMixedHandler:Lcom/android/wm/shell/transition/MixedTransitionHandler;

    iput-object p5, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mPipHandler:Lcom/android/wm/shell/pip/PipTransitionController;

    iput-object p6, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mSplitHandler:Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iput-object p7, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mKeyguardHandler:Lcom/android/wm/shell/keyguard/KeyguardTransitionHandler;

    return-void
.end method


# virtual methods
.method public final joinFinishArgs(Landroid/window/WindowContainerTransaction;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mFinishWCT:Landroid/window/WindowContainerTransaction;

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p1, p0}, Landroid/window/WindowContainerTransaction;->merge(Landroid/window/WindowContainerTransaction;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract mergeAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/os/IBinder;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
.end method

.method public abstract onTransitionConsumed(Landroid/os/IBinder;ZLandroid/view/SurfaceControl$Transaction;)V
.end method

.method public abstract startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
.end method

.method public final startSubAnimation(Lcom/android/wm/shell/transition/Transitions$TransitionHandler;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInfo:Landroid/window/TransitionInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_TRANSITIONS_enabled:[Z

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {p2}, Landroid/window/TransitionInfo;->getDebugId()I

    move-result v1

    int-to-long v5, v1

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_TRANSITIONS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v12

    const-wide v8, 0x208299e4a7d439c7L    # 4.439477738222453E-152

    const/4 v10, 0x5

    const-string/jumbo v11, "startSubAnimation #%d.%d"

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    iget-object v5, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mTransition:Landroid/os/IBinder;

    new-instance v9, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda5;

    const/4 v1, 0x2

    move-object v6, p2

    invoke-direct {v9, v1, p0, p2}, Lcom/android/wm/shell/transition/DefaultMixedHandler$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    move-object v4, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-interface/range {v4 .. v9}, Lcom/android/wm/shell/transition/Transitions$TransitionHandler;->startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/android/wm/shell/transition/DefaultMixedHandler$MixedTransition;->mInFlightSubAnimations:I

    return v2

    :cond_1
    return v3
.end method
