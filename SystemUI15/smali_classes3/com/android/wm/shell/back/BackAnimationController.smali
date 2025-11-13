.class public final Lcom/android/wm/shell/back/BackAnimationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;


# static fields
.field public static final IS_ENABLED:Z


# instance fields
.field public mActiveCallback:Landroid/window/IOnBackInvokedCallback;

.field public final mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field public final mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

.field public final mAnimationTimeoutRunnable:Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

.field public mApps:[Landroid/view/RemoteAnimationTarget;

.field public final mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

.field mBackAnimationAdapter:Landroid/window/BackAnimationAdapter;

.field public mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

.field public mBackGestureStarted:Z

.field public mBackNavigationInfo:Landroid/window/BackNavigationInfo;

.field public final mContext:Landroid/content/Context;

.field public mCurrentTracker:Landroid/window/BackTouchTracker;

.field public mCustomizer:Lcom/android/systemui/navigationbar/gestural/EdgeBackGestureHandler$$ExternalSyntheticLambda6;

.field public final mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field final mNavigationObserver:Landroid/os/RemoteCallback;

.field public mOnBackStartDispatched:Z

.field public mPilferPointerCallback:Ljava/lang/Runnable;

.field public mPointersPilfered:Z

.field public mPostCommitAnimationInProgress:Z

.field public mPreviousNavigationType:I

.field public mQueuedTracker:Landroid/window/BackTouchTracker;

.field public final mRequirePointerPilfer:Z

.field public final mShellBackAnimationRegistry:Lcom/android/wm/shell/back/ShellBackAnimationRegistry;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public mShouldStartOnNextMoveEvent:Z

.field public mThresholdCrossed:Z

.field final mTouchableArea:Landroid/graphics/Rect;

.field public mTrackingLatency:Z

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.wm.debug.predictive_back"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    sput-boolean v1, Lcom/android/wm/shell/back/BackAnimationController;->IS_ENABLED:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/app/IActivityTaskManager;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/back/ShellBackAnimationRegistry;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p7, 0x0

    invoke-direct {p4, p7}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-boolean p7, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    iput-boolean p7, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    iput-boolean p7, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    iput-boolean p7, p0, Lcom/android/wm/shell/back/BackAnimationController;->mOnBackStartDispatched:Z

    iput-boolean p7, p0, Lcom/android/wm/shell/back/BackAnimationController;->mThresholdCrossed:Z

    iput-boolean p7, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPointersPilfered:Z

    new-instance p4, Landroid/graphics/Rect;

    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    iput-object p4, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchableArea:Landroid/graphics/Rect;

    new-instance v0, Landroid/window/BackTouchTracker;

    invoke-direct {v0}, Landroid/window/BackTouchTracker;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    new-instance v0, Landroid/window/BackTouchTracker;

    invoke-direct {v0}, Landroid/window/BackTouchTracker;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/back/BackAnimationController;I)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/wm/shell/back/BackAnimationController$1;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/back/BackAnimationController$1;-><init>(Lcom/android/wm/shell/back/BackAnimationController;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mNavigationObserver:Landroid/os/RemoteCallback;

    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    invoke-direct {v0, p0, p7}, Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;-><init>(Lcom/android/wm/shell/back/BackAnimationController;I)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimation:Lcom/android/wm/shell/back/BackAnimationController$BackAnimationImpl;

    iput-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p5, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iput-object p6, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {p6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050005

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mRequirePointerPilfer:Z

    new-instance p2, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/back/BackAnimationController;I)V

    invoke-virtual {p1, p2, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    iput-object p8, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationBackground:Lcom/android/wm/shell/back/BackAnimationBackground;

    iput-object p9, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellBackAnimationRegistry:Lcom/android/wm/shell/back/ShellBackAnimationRegistry;

    invoke-static {p6}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iput-object p10, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    const-class p1, Landroid/view/WindowManager;

    invoke-virtual {p6, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p4, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/content/Context;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/back/ShellBackAnimationRegistry;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V
    .locals 11

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v5

    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v6, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/back/BackAnimationController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/app/IActivityTaskManager;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/back/ShellBackAnimationRegistry;Lcom/android/wm/shell/sysui/ShellCommandHandler;)V

    return-void
.end method

.method public static dispatchOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V
    .locals 3

    const-string v0, "ShellBackPreview"

    const-string v1, "dispatchOnBackInvoked, caller="

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p0}, Landroid/window/IOnBackInvokedCallback;->onBackInvoked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "dispatchOnBackInvoked error: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public static validateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_2

    aget-object v3, p0, v1

    iget-object v3, v3, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    invoke-virtual {v3}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-nez v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_1
    return v0
.end method


# virtual methods
.method public final cancelLatencyTracking()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTrackingLatency:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/internal/util/LatencyTracker;->onActionCancel(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTrackingLatency:Z

    return-void
.end method

.method public final dispatchOnBackProgressed(Landroid/window/IOnBackInvokedCallback;Landroid/window/BackMotionEvent;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToAnimator()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->isAppProgressGenerationAllowed()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {p1, p2}, Landroid/window/IOnBackInvokedCallback;->onBackProgressed(Landroid/window/BackMotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "ShellBackPreview"

    const-string p2, "dispatchOnBackProgressed error: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final finishBackAnimation()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, -0x6fca8bd33ca2c7b6L    # -1.381871692041674E-230

    const/4 v5, 0x0

    const-string v6, "BackAnimationController: onBackAnimationFinished()"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->isActive()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v1, v0

    if-eqz v0, :cond_3

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, -0x4502c0597544c886L    # -1.5121189873409047E-24

    const/4 v4, 0x0

    const-string v5, "mCurrentBackGestureInfo was null when back animation finished"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->invokeOrCancelBack(Landroid/window/BackTouchTracker;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->resetTouchTracker()V

    return-void
.end method

.method public finishBackNavigation(Z)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x28779abe501930cfL    # 9.58508206978296E-114

    const/4 v5, 0x0

    const-string v6, "BackAnimationController: finishBackNavigation()"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mApps:[Landroid/view/RemoteAnimationTarget;

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShouldStartOnNextMoveEvent:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mOnBackStartDispatched:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mThresholdCrossed:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPointersPilfered:Z

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellBackAnimationRegistry:Lcom/android/wm/shell/back/ShellBackAnimationRegistry;

    iget-object v2, v1, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mDefaultCrossActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    iget-object v1, v1, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mDefaultCrossActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    invoke-virtual {v1}, Lcom/android/wm/shell/back/ShellBackAnimation;->getRunner()Lcom/android/wm/shell/back/BackAnimationRunner;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->cancelLatencyTracking()V

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v1

    iput v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPreviousNavigationType:I

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v1, p1}, Landroid/window/BackNavigationInfo;->onBackNavigationFinished(Z)V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    :cond_3
    return-void
.end method

.method public final getActiveTracker()Landroid/window/BackTouchTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final invokeOrCancelBack(Landroid/window/BackTouchTracker;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/window/BackTouchTracker;->getTriggerBack()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/window/IBackAnimationFinishedCallback;->onAnimationFinished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShellBackPreview"

    const-string v2, "Failed call IBackAnimationFinishedCallback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object v0

    invoke-virtual {p1}, Landroid/window/BackTouchTracker;->getTriggerBack()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->tryDispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V

    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/window/BackTouchTracker;->getTriggerBack()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation(Z)V

    return-void
.end method

.method public final isAppProgressGenerationAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->isAppProgressGenerationAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getTouchableRegion()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchableArea:Landroid/graphics/Rect;

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBackAnimationFinished()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackAnimation()V

    return-void
.end method

.method public final onBackNavigationInfoReceived(Landroid/window/BackNavigationInfo;Landroid/window/BackTouchTracker;)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const-wide v3, -0x25c2a7d30de8cb8cL    # -4.9659684984943906E126

    const/4 v5, 0x0

    const-string v6, "Received backNavigationInfo:%s"

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-nez p1, :cond_2

    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 p2, 0x4

    aget-boolean p1, p1, p2

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, -0x50fe07a11bd2c49aL    # -2.9600841190757865E-82

    const/4 v3, 0x0

    const-string v4, "Received BackNavigationInfo is null."

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->cancelLatencyTracking()V

    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/window/BackNavigationInfo;->getType()I

    move-result p1

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToAnimator()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object p2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellBackAnimationRegistry:Lcom/android/wm/shell/back/ShellBackAnimationRegistry;

    iget-object p2, p2, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/back/BackAnimationRunner;

    if-nez p1, :cond_3

    iput-object v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    goto :goto_0

    :cond_3
    iput-boolean v2, p1, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    iput-boolean v1, p1, Lcom/android/wm/shell/back/BackAnimationRunner;->mAnimationCancelled:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->tryPilferPointers()V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {p1}, Landroid/window/BackNavigationInfo;->getOnBackInvokedCallback()Landroid/window/IOnBackInvokedCallback;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->cancelLatencyTracking()V

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p2, v3}, Landroid/window/BackTouchTracker;->createStartEvent(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackMotionEvent;

    move-result-object p2

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mOnBackStartDispatched:Z

    if-nez v0, :cond_6

    if-eqz p1, :cond_6

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mThresholdCrossed:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mRequirePointerPilfer:Z

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-interface {p1, p2}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V

    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mOnBackStartDispatched:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "ShellBackPreview"

    const-string v0, "dispatchOnBackStarted error: "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->isAppProgressGenerationAllowed()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->tryPilferPointers()V

    :cond_7
    :goto_2
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellBackAnimationRegistry:Lcom/android/wm/shell/back/ShellBackAnimationRegistry;

    iget-object v0, p1, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/back/ShellBackAnimation;->onConfigurationChanged()V

    :cond_0
    iget-object v0, p1, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mDefaultCrossActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/back/ShellBackAnimation;->onConfigurationChanged()V

    :cond_1
    iget-object p1, p1, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mCrossTaskAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/wm/shell/back/ShellBackAnimation;->onConfigurationChanged()V

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mTouchableArea:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onThresholdCrossed()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mThresholdCrossed:Z

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->shouldDispatchToAnimator()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v1}, Landroid/window/BackTouchTracker;->updateStartLocation()V

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    iget-object v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/window/BackTouchTracker;->createStartEvent(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackMotionEvent;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mOnBackStartDispatched:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_1

    iget-boolean v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mThresholdCrossed:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/wm/shell/back/BackAnimationController;->mRequirePointerPilfer:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v1, v2}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mOnBackStartDispatched:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShellBackPreview"

    const-string v2, "dispatchOnBackStarted error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->isAppProgressGenerationAllowed()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->tryPilferPointers()V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->tryPilferPointers()V

    :cond_3
    :goto_1
    return-void
.end method

.method public final resetTouchTracker()V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    iput-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->reset()V

    iput-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mQueuedTracker:Landroid/window/BackTouchTracker;

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->isInInitialState()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackGestureStarted:Z

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->tryDispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation(Z)V

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x2126222841653e99L    # 5.409296818056854E-149

    const/4 v3, 0x0

    const-string/jumbo v4, "resetTouchTracker -> reset an unfinished gesture"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_1

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, -0x6f07a05c72c3c0c4L    # -6.430470760784355E-227

    const/4 v3, 0x0

    const-string/jumbo v4, "resetTouchTracker -> no queued gesture"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->getTriggerBack()Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, 0x32db12c4e6ff3334L    # 1.0283060623673102E-63

    const/4 v5, 0x0

    const-string/jumbo v6, "resetTouchTracker -> start queued back navigation AND post commit animation"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v3, -0xfa43bee2efbc3d4L

    const/4 v5, 0x0

    const-string v6, "injectBackKey"

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/wm/shell/back/BackAnimationController;->sendBackEvent(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->sendBackEvent(I)V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->finishBackNavigation(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p0}, Landroid/window/BackTouchTracker;->reset()V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->isFinished()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_8

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, -0xe04e073c589ca65L    # -1.1303632013212253E241

    const/4 v3, 0x0

    const-string/jumbo v4, "resetTouchTracker -> queued gesture not finished; do nothing"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_7

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, 0x2d253e59783833ccL    # 3.2589558040256047E-91

    const/4 v4, 0x0

    const-string/jumbo v5, "resetTouchTracker -> reset queued gesture"

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {p0}, Landroid/window/BackTouchTracker;->reset()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final sendBackEvent(I)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v13, Landroid/view/KeyEvent;

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v11, 0x48

    const/16 v12, 0x101

    move-object v0, v13

    move-wide v1, v3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    iget-object p1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    invoke-virtual {v13, p1}, Landroid/view/KeyEvent;->setDisplayId(I)V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mContext:Landroid/content/Context;

    const-class p1, Landroid/hardware/input/InputManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/input/InputManager;

    const/4 p1, 0x0

    invoke-virtual {p0, v13, p1}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 p1, 0x4

    aget-boolean p0, p0, p1

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v1, 0x4e118ace8893adeL

    const/4 v3, 0x0

    const-string v4, "Inject input event fail"

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final setTriggerBack(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/window/IOnBackInvokedCallback;->setTriggerBack(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ShellBackPreview"

    const-string/jumbo v2, "remote setTriggerBack error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/wm/shell/back/BackAnimationController;->getActiveTracker()Landroid/window/BackTouchTracker;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/window/BackTouchTracker;->setTriggerBack(Z)V

    :cond_1
    return-void
.end method

.method public final shouldDispatchToAnimator()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mEnableAnimations:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/window/BackNavigationInfo;->isPrepareRemoteAnimation()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final startPostCommitAnimation()V
    .locals 9

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mShellExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/back/BackAnimationController;->mAnimationTimeoutRunnable:Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v3, 0x0

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v4, 0x18b431f9305930a8L

    const/4 v6, 0x0

    const-string v7, "BackAnimationController: startPostCommitAnimation()"

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPostCommitAnimationInProgress:Z

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->getTriggerBack()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    invoke-virtual {v0, v2}, Landroid/window/BackNavigationInfo;->onBackGestureFinished(Z)V

    iget-object p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-static {p0}, Lcom/android/wm/shell/back/BackAnimationController;->dispatchOnBackInvoked(Landroid/window/IOnBackInvokedCallback;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/back/BackAnimationController;->tryDispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V

    :goto_0
    return-void
.end method

.method public final startSystemAnimation()V
    .locals 17

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, -0x6bc9a625f29bcb8dL

    const/4 v4, 0x0

    const-string v5, "Lack of navigation info to start animation."

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mApps:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0}, Lcom/android/wm/shell/back/BackAnimationController;->validateAnimationTargets([Landroid/view/RemoteAnimationTarget;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    const/4 v1, 0x3

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v2, 0x53d8961762bf38e7L    # 8.205625932366512E95

    const/4 v4, 0x0

    const-string v5, "Not starting animation due to mApps being null."

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackNavigationInfo:Landroid/window/BackNavigationInfo;

    iget-object v2, v1, Lcom/android/wm/shell/back/BackAnimationController;->mShellBackAnimationRegistry:Lcom/android/wm/shell/back/ShellBackAnimationRegistry;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getType()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_5

    iget-object v6, v2, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->contains(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, v2, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mCustomizeActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    if-eqz v6, :cond_4

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getCustomAnimationInfo()Landroid/window/BackNavigationInfo$CustomAnimationInfo;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Lcom/android/wm/shell/back/ShellBackAnimation;->prepareNextAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v0, v2, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/back/BackAnimationRunner;

    iput-boolean v4, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    iget-object v0, v2, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v6}, Lcom/android/wm/shell/back/ShellBackAnimation;->getRunner()Lcom/android/wm/shell/back/BackAnimationRunner;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v5, v2, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mDefaultCrossActivityAnimation:Lcom/android/wm/shell/back/ShellBackAnimation;

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Landroid/window/BackNavigationInfo;->getLetterboxColor()I

    move-result v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v0}, Lcom/android/wm/shell/back/ShellBackAnimation;->prepareNextAnimation(Landroid/window/BackNavigationInfo$CustomAnimationInfo;I)Z

    :cond_5
    :goto_0
    iget-object v0, v2, Lcom/android/wm/shell/back/ShellBackAnimationRegistry;->mAnimationDefinition:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/back/BackAnimationRunner;

    const-string v2, "ShellBackPreview"

    if-nez v0, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Animation didn\'t be defined for type "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/window/BackNavigationInfo;->typeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-nez v0, :cond_8

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mBackAnimationFinishedCallback:Landroid/window/IBackAnimationFinishedCallback;

    if-eqz v0, :cond_7

    :try_start_0
    invoke-interface {v0, v4}, Landroid/window/IBackAnimationFinishedCallback;->onAnimationFinished(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v0

    const-string v0, "Failed call IBackNaviAnimationController"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    :goto_1
    return-void

    :cond_8
    iget-object v3, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mCallback:Landroid/window/IOnBackInvokedCallback;

    iput-object v3, v1, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_BACK_PREVIEW_enabled:[Z

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_9

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_BACK_PREVIEW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-wide v6, 0x5645200fd7ae3f3bL    # 3.876057014975452E107

    const/4 v8, 0x0

    const-string v9, "BackAnimationController: startAnimation()"

    const/4 v10, 0x0

    invoke-static/range {v5 .. v10}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    iget-object v13, v1, Lcom/android/wm/shell/back/BackAnimationController;->mApps:[Landroid/view/RemoteAnimationTarget;

    new-instance v3, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;

    const/4 v5, 0x2

    invoke-direct {v3, v1, v5}, Lcom/android/wm/shell/back/BackAnimationController$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/back/BackAnimationController;I)V

    new-instance v5, Lcom/android/wm/shell/back/BackAnimationRunner$1;

    invoke-direct {v5, v0, v13, v3}, Lcom/android/wm/shell/back/BackAnimationRunner$1;-><init>(Lcom/android/wm/shell/back/BackAnimationRunner;[Landroid/view/RemoteAnimationTarget;Ljava/lang/Runnable;)V

    iput-boolean v4, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mWaitingAnimation:Z

    invoke-virtual {v0, v13}, Lcom/android/wm/shell/back/BackAnimationRunner;->shouldMonitorCUJ([Landroid/view/RemoteAnimationTarget;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mContext:Landroid/content/Context;

    aget-object v6, v13, v4

    iget-object v6, v6, Landroid/view/RemoteAnimationTarget;->leash:Landroid/view/SurfaceControl;

    iget v7, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mCujType:I

    invoke-static {v7, v3, v6}, Lcom/android/wm/shell/common/InteractionJankMonitorUtils;->beginTracing(ILandroid/content/Context;Landroid/view/SurfaceControl;)V

    :cond_a
    :try_start_1
    iget-object v11, v0, Lcom/android/wm/shell/back/BackAnimationRunner;->mRunner:Landroid/view/IRemoteAnimationRunner;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v12, -0x1

    move-object/from16 v16, v5

    invoke-interface/range {v11 .. v16}, Landroid/view/IRemoteAnimationRunner;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    const-string v3, "Failed call onAnimationStart"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mApps:[Landroid/view/RemoteAnimationTarget;

    array-length v0, v0

    const/4 v3, 0x1

    if-lt v0, v3, :cond_c

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    invoke-virtual {v0}, Landroid/window/BackTouchTracker;->updateStartLocation()V

    iget-object v0, v1, Lcom/android/wm/shell/back/BackAnimationController;->mCurrentTracker:Landroid/window/BackTouchTracker;

    iget-object v5, v1, Lcom/android/wm/shell/back/BackAnimationController;->mApps:[Landroid/view/RemoteAnimationTarget;

    aget-object v4, v5, v4

    invoke-virtual {v0, v4}, Landroid/window/BackTouchTracker;->createStartEvent(Landroid/view/RemoteAnimationTarget;)Landroid/window/BackMotionEvent;

    move-result-object v0

    iget-object v4, v1, Lcom/android/wm/shell/back/BackAnimationController;->mActiveCallback:Landroid/window/IOnBackInvokedCallback;

    if-nez v4, :cond_b

    goto :goto_3

    :cond_b
    :try_start_2
    invoke-interface {v4, v0}, Landroid/window/IOnBackInvokedCallback;->onBackStarted(Landroid/window/BackMotionEvent;)V

    iput-boolean v3, v1, Lcom/android/wm/shell/back/BackAnimationController;->mOnBackStartDispatched:Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    const-string v1, "dispatchOnBackStarted error: "

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    :goto_3
    return-void
.end method

.method public final tryDispatchOnBackCancelled(Landroid/window/IOnBackInvokedCallback;)V
    .locals 1

    iget-boolean p0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mOnBackStartDispatched:Z

    const-string v0, "ShellBackPreview"

    if-nez p0, :cond_0

    const-string p0, "Skipping dispatching onBackCancelled. Start was never dispatched."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-interface {p1}, Landroid/window/IOnBackInvokedCallback;->onBackCancelled()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "dispatchOnBackCancelled error: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final tryPilferPointers()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPointersPilfered:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mThresholdCrossed:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPilferPointerCallback:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/back/BackAnimationController;->mPointersPilfered:Z

    :cond_2
    :goto_0
    return-void
.end method
