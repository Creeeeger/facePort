.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final DEBUG_DEV:Z

.field public static final DEBUG_PIP:Z


# instance fields
.field public final mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mBinder:Landroid/os/Binder;

.field public mCancelButtonManager:Lcom/android/wm/shell/common/DismissViewManager;

.field public final mContext:Landroid/content/Context;

.field public final mDownPoint:Landroid/graphics/Point;

.field public mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

.field public final mHandler:Landroid/os/Handler;

.field public mHasDropped:Z

.field public mHideRequested:Z

.field public final mHideRunnable:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

.field public final mHideTasks:Ljava/util/ArrayList;

.field public mIsMwHandlerType:Z

.field public mIsPipNaturalSwitching:Z

.field public mLastChanger:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

.field public final mMovePoint:Landroid/graphics/Point;

.field public final mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

.field public mNaturalSwitchingMode:I

.field public mNaturalSwitchingStartReported:Z

.field public mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

.field public mNsWindowingMode:I

.field public mPassedInitialSlop:Z

.field public mReadyToStart:Z

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mStatusBarManager:Landroid/app/StatusBarManager;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

.field public final mTouchGap:Landroid/graphics/Point;

.field public mTouchSlop:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.debug.ns.dev"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->DEBUG_DEV:Z

    const-string v0, "persist.debug.ns.pip"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->DEBUG_PIP:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;I)V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRunnable:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mBinder:Landroid/os/Binder;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mLastChanger:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingChanger;

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iput-object p6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    const-string/jumbo p2, "statusbar"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/StatusBarManager;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    new-instance p2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    new-instance p1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    invoke-direct {p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    new-instance p1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$1;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;)V

    invoke-virtual {p3, p1}, Lcom/android/wm/shell/transition/Transitions;->registerObserver(Lcom/android/wm/shell/transition/Transitions$TransitionObserver;)V

    return-void
.end method

.method public static getNaturalSwitchingWindowingMode(II)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_4

    const/4 v1, 0x5

    if-eq p0, v1, :cond_3

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    and-int/lit8 p0, p1, 0x1

    if-eqz p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    and-int/lit8 p0, p1, 0x2

    const/4 v1, 0x4

    if-eqz p0, :cond_2

    return v1

    :cond_2
    and-int/lit8 p0, p1, 0x4

    if-eqz p0, :cond_4

    const/16 p0, 0xc

    return p0

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public static isFloating(I)Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public final hide(Z)V
    .locals 8

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "hide: callers="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x2

    const-string v3, "NaturalSwitchingLayout"

    invoke-static {v2, v3, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRunnable:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-boolean v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    if-eqz v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    new-instance v5, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v5}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    new-instance v7, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda4;

    invoke-direct {v7, v5, v0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    iget-object v6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideTasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v5}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_0
    if-eqz p1, :cond_2

    const-wide/16 v5, 0x1388

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-array p1, v2, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda5;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$2;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_2
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iput-boolean p1, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v2, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    invoke-virtual {v1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    iget-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    if-eqz v1, :cond_4

    const-string v1, "finishNaturalSwitchingIfNeeded"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingStartReported:Z

    iget v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    if-ne v0, p1, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->setDividerVisibilityFromNS(Z)V

    :cond_3
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->finishNaturalSwitching()V

    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissViewManager;

    if-eqz p1, :cond_5

    new-instance v0, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissViewManager;)V

    iget-object p1, p1, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/DismissView;->hide(Ljava/lang/Runnable;)V

    :cond_5
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawListener:Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

    invoke-virtual {v1, v0}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{WindowingMode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NsMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", dragToken="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final update(Landroid/view/MotionEvent;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    if-nez v3, :cond_0

    const-string v0, "NaturalSwitchingLayout"

    const-string v1, "drag target view is already null."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissViewManager;

    if-eqz v5, :cond_1

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v4, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, v5, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/DismissView;->updateView(Landroid/graphics/Rect;)V

    :cond_1
    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    iget v6, v5, Landroid/graphics/Point;->x:I

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-ne v6, v8, :cond_7

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Point;->set(II)V

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    iget-boolean v10, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsMwHandlerType:Z

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v11, :cond_2

    invoke-virtual {v5}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    move-result v11

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v10, :cond_3

    iget v10, v6, Landroid/graphics/Point;->x:I

    iget-object v11, v5, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    :goto_0
    sub-int/2addr v10, v11

    goto :goto_1

    :cond_3
    iget v10, v6, Landroid/graphics/Point;->x:I

    iget-object v11, v5, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    if-ge v10, v12, :cond_4

    sub-int v10, v12, v10

    goto :goto_1

    :cond_4
    iget v11, v11, Landroid/graphics/Rect;->right:I

    if-le v10, v11, :cond_5

    goto :goto_0

    :cond_5
    move v10, v7

    :goto_1
    iget v6, v6, Landroid/graphics/Point;->y:I

    iget-object v11, v5, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    sub-int/2addr v6, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v11

    const/16 v12, 0x64

    if-ge v11, v12, :cond_6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v11

    if-ge v11, v12, :cond_6

    goto :goto_2

    :cond_6
    new-array v11, v1, [F

    fill-array-data v11, :array_0

    invoke-static {v11}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v11

    new-instance v12, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;

    invoke-direct {v12, v5, v9, v10, v6}, Lcom/android/wm/shell/naturalswitching/DragTargetView$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/graphics/Point;II)V

    invoke-virtual {v11, v12}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v11, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v11}, Landroid/animation/ValueAnimator;->start()V

    :cond_7
    :goto_2
    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    iget v9, v6, Landroid/graphics/Point;->x:I

    sub-int v9, v3, v9

    iget-object v10, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    iget v11, v10, Landroid/graphics/Point;->x:I

    add-int/2addr v9, v11

    iget v6, v6, Landroid/graphics/Point;->y:I

    sub-int v6, v4, v6

    iget v10, v10, Landroid/graphics/Point;->y:I

    add-int/2addr v6, v10

    invoke-virtual {v5, v9, v6}, Landroid/graphics/Point;->set(II)V

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    iget-object v9, v5, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    iget v10, v6, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    iget-object v9, v5, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-virtual {v9, v6}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->invalidate()V

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchSlop:I

    if-gt v5, v6, :cond_9

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mMovePoint:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchSlop:I

    if-le v5, v6, :cond_8

    goto :goto_3

    :cond_8
    move v5, v7

    goto :goto_4

    :cond_9
    :goto_3
    move v5, v2

    :goto_4
    iget-boolean v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    const/4 v10, 0x4

    if-nez v6, :cond_10

    iget-boolean v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mReadyToStart:Z

    if-eqz v6, :cond_10

    if-nez v5, :cond_a

    const/16 v5, 0xd

    invoke-virtual {v9, v5}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_a
    iput-boolean v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v5}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->adjustDragTargetViewBoundsIfNeeded()V

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v6}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getMinimumDragTargetViewBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->initPushRegion(Landroid/graphics/Rect;)V

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v5}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isFloatingDragTarget()Z

    move-result v5

    if-nez v5, :cond_10

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v6}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getDropSide()I

    move-result v6

    iput-boolean v2, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsInitialExpanded:Z

    iget-object v11, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v11}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v11

    if-eqz v11, :cond_e

    iget v11, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v5, v11}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->isQuarter(I)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    iget v12, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mQuarterTarget:I

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v11, :cond_10

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v13, v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v13, :cond_b

    iget-object v13, v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5

    :cond_b
    invoke-virtual {v11, v12}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    :goto_5
    iget-object v13, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v13}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result v13

    if-nez v13, :cond_c

    iget-object v13, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->left:I

    iput v14, v12, Landroid/graphics/Rect;->left:I

    iget v13, v13, Landroid/graphics/Rect;->right:I

    iput v13, v12, Landroid/graphics/Rect;->right:I

    goto :goto_6

    :cond_c
    iget-object v13, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    iget v14, v13, Landroid/graphics/Rect;->top:I

    iput v14, v12, Landroid/graphics/Rect;->top:I

    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    iput v13, v12, Landroid/graphics/Rect;->bottom:I

    :goto_6
    if-ne v6, v2, :cond_d

    invoke-virtual {v11, v12}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    goto :goto_7

    :cond_d
    iput-object v11, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    :goto_7
    iget-object v5, v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_9

    :cond_e
    iget-object v11, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v11, v10}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    move-result v11

    if-eqz v11, :cond_10

    iget-object v11, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    iget v12, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v5, v12, v7}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getReverseWindowingMode(IZ)I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v11, :cond_10

    if-ne v6, v2, :cond_f

    iget-object v6, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    invoke-virtual {v11, v6}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    goto :goto_8

    :cond_f
    iput-object v11, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    :goto_8
    iget-object v6, v11, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    iget-object v5, v5, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_10
    :goto_9
    iget-boolean v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    if-eqz v5, :cond_41

    iget v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    if-ne v5, v2, :cond_3a

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v5}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getDropSide()I

    move-result v5

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget v11, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    iget-object v12, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v13, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v13}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v13

    const/4 v14, 0x3

    if-nez v13, :cond_12

    iget-object v13, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v13}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v13

    if-eqz v13, :cond_11

    iget-boolean v13, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsFloatingDragTarget:Z

    if-eqz v13, :cond_11

    goto :goto_a

    :cond_11
    move v1, v10

    goto/16 :goto_11

    :cond_12
    :goto_a
    move v13, v7

    :goto_b
    iget-object v15, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    invoke-virtual {v15}, Landroid/util/SparseArray;->size()I

    move-result v15

    if-ge v13, v15, :cond_14

    iget-object v15, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Rect;

    if-eqz v15, :cond_13

    invoke-virtual {v15, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v15

    if-eqz v15, :cond_13

    iget-object v15, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegions:Landroid/util/SparseArray;

    invoke-virtual {v15, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    goto :goto_c

    :cond_13
    add-int/2addr v13, v2

    goto :goto_b

    :cond_14
    move v13, v7

    :goto_c
    iget v15, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    if-eq v15, v13, :cond_1e

    iput v13, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    if-eqz v13, :cond_11

    iput-boolean v2, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    iget-object v3, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    const/4 v4, 0x0

    if-eqz v3, :cond_15

    iput-object v4, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    :cond_15
    iget-object v3, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v3, :cond_16

    iput-object v4, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    :cond_16
    iget-object v3, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    move v4, v7

    :goto_d
    if-ge v4, v3, :cond_1d

    iget-object v13, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v13, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v15, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {v15, v13}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    new-instance v15, Landroid/graphics/Rect;

    invoke-direct {v15}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, v13, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v15, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    iget v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    if-ne v8, v7, :cond_17

    invoke-virtual {v15}, Landroid/graphics/Rect;->width()I

    move-result v7

    goto :goto_e

    :cond_17
    iget-object v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v7, v8

    div-int/2addr v7, v1

    :goto_e
    iget v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    iget v10, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    if-ne v8, v10, :cond_18

    invoke-virtual {v15}, Landroid/graphics/Rect;->height()I

    move-result v8

    goto :goto_f

    :cond_18
    iget-object v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    iget v10, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDividerSize:I

    sub-int/2addr v8, v10

    div-int/2addr v8, v1

    :goto_f
    iget v10, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    if-eq v10, v2, :cond_1c

    if-eq v10, v1, :cond_1b

    if-eq v10, v14, :cond_1a

    const/4 v1, 0x4

    if-eq v10, v1, :cond_19

    goto :goto_10

    :cond_19
    iget-object v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v10, v7, Landroid/graphics/Rect;->top:I

    iput v10, v15, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    add-int/2addr v7, v8

    iput v7, v15, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    :cond_1a
    const/4 v1, 0x4

    iget-object v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v10, v8, Landroid/graphics/Rect;->left:I

    iput v10, v15, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v7

    iput v8, v15, Landroid/graphics/Rect;->right:I

    goto :goto_10

    :cond_1b
    const/4 v1, 0x4

    iget-object v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v7, v8

    iput v8, v15, Landroid/graphics/Rect;->top:I

    iput v7, v15, Landroid/graphics/Rect;->bottom:I

    goto :goto_10

    :cond_1c
    const/4 v1, 0x4

    iget-object v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->right:I

    sub-int v7, v8, v7

    iput v7, v15, Landroid/graphics/Rect;->left:I

    iput v8, v15, Landroid/graphics/Rect;->right:I

    :goto_10
    invoke-virtual {v13, v15}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    add-int/2addr v4, v2

    move v10, v1

    const/4 v1, 0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    goto/16 :goto_d

    :cond_1d
    move v1, v10

    goto/16 :goto_16

    :cond_1e
    move v1, v10

    if-eqz v13, :cond_1f

    goto/16 :goto_16

    :cond_1f
    :goto_11
    iget v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    if-eq v7, v5, :cond_25

    iput v5, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    iget-object v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v7

    if-eqz v7, :cond_20

    iget-object v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v7, :cond_20

    iget v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    if-eq v7, v2, :cond_20

    goto :goto_16

    :cond_20
    if-eq v5, v2, :cond_24

    const/16 v7, 0x20

    if-ne v5, v7, :cond_21

    goto :goto_13

    :cond_21
    iget-boolean v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsInitialExpanded:Z

    if-eqz v7, :cond_22

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mIsInitialExpanded:Z

    move v3, v7

    goto :goto_14

    :cond_22
    invoke-virtual {v6, v3, v4, v5}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->swapOrShrinkNonTarget(III)V

    :cond_23
    :goto_12
    const/4 v3, 0x0

    goto :goto_14

    :cond_24
    :goto_13
    invoke-virtual {v6}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->undoNonTarget()V

    goto :goto_12

    :cond_25
    if-eq v5, v2, :cond_26

    invoke-virtual {v6, v3, v4}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getTargetUnderPoint(II)Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v7

    if-eqz v7, :cond_23

    iget-object v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eq v7, v8, :cond_23

    invoke-virtual {v6, v3, v4, v5}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->swapOrShrinkNonTarget(III)V

    goto :goto_12

    :cond_26
    iget-boolean v3, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    if-eqz v3, :cond_23

    if-ne v5, v2, :cond_23

    const/4 v3, 0x0

    iput-boolean v3, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    :goto_14
    iget-boolean v4, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushed:Z

    if-nez v4, :cond_27

    :goto_15
    iget-object v4, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_27

    iget-object v4, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v3, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v3}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->animate(Landroid/graphics/Rect;)V

    iget-object v3, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushedNonTargets:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    goto :goto_15

    :cond_27
    :goto_16
    iget v3, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropSide:I

    if-ne v11, v3, :cond_29

    iget-object v3, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eq v12, v3, :cond_28

    goto :goto_17

    :cond_28
    const/4 v7, 0x0

    goto :goto_18

    :cond_29
    :goto_17
    move v7, v2

    :goto_18
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget v3, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mPushRegion:I

    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    if-eqz v3, :cond_2a

    invoke-virtual {v4, v3}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->updateForPush(I)V

    goto/16 :goto_25

    :cond_2a
    invoke-virtual {v9}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v3

    if-eqz v3, :cond_36

    iget v3, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v8, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mSwapTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v6, v6, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v6, :cond_2b

    iget v6, v6, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    goto :goto_19

    :cond_2b
    const/4 v6, 0x0

    :goto_19
    iget-object v9, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v9}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getCurrentDragTargetRect()Landroid/graphics/Rect;

    move-result-object v9

    if-eqz v8, :cond_2c

    iget v10, v8, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    goto :goto_1a

    :cond_2c
    const/4 v10, 0x0

    :goto_1a
    if-eqz v6, :cond_2d

    const/4 v11, 0x0

    iput v11, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->update(IIZ)V

    goto/16 :goto_20

    :cond_2d
    const/4 v11, 0x0

    iput v11, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    iget v6, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    if-ne v6, v5, :cond_2e

    iget v6, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    if-ne v6, v10, :cond_2e

    if-eqz v10, :cond_2e

    goto :goto_20

    :cond_2e
    invoke-virtual {v4, v11}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->updateForPush(I)V

    iput v10, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    iput v5, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    iget v5, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    const/16 v6, 0xc

    if-eq v5, v6, :cond_30

    if-ne v10, v6, :cond_2f

    goto :goto_1c

    :cond_2f
    :goto_1b
    const/4 v2, -0x1

    goto :goto_1d

    :cond_30
    :goto_1c
    iput-boolean v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    goto :goto_1b

    :goto_1d
    iput v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    if-nez v10, :cond_35

    iget v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mHalfTarget:I

    if-ne v5, v2, :cond_34

    iget-object v2, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v5, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget v6, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    if-ne v6, v14, :cond_31

    move v10, v1

    goto :goto_1e

    :cond_31
    move v10, v14

    :goto_1e
    invoke-virtual {v5, v10}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v1

    invoke-static {v9, v2}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {v9, v1}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_32

    goto :goto_1f

    :cond_32
    iget v1, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    iput v1, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_20

    :cond_33
    :goto_1f
    invoke-virtual {v4}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->getDefaultFloatingWindowingMode()I

    move-result v1

    iput v1, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_20

    :cond_34
    invoke-virtual {v4}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->getDefaultFloatingWindowingMode()I

    move-result v1

    iput v1, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    goto :goto_20

    :cond_35
    iput v10, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    iget v1, v8, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mStagePosition:I

    iput v1, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    :goto_20
    iget v1, v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    if-eq v3, v1, :cond_40

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->adjustDragTargetViewBoundsIfNeeded()V

    goto/16 :goto_25

    :cond_36
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v3, :cond_37

    iget v6, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    goto :goto_21

    :cond_37
    const/4 v6, 0x0

    :goto_21
    if-nez v3, :cond_38

    const/4 v1, 0x0

    goto :goto_23

    :cond_38
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v9, v8, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mAnimator:Landroid/animation/ValueAnimator;

    if-eqz v9, :cond_39

    iget-object v8, v8, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_22

    :cond_39
    invoke-virtual {v8, v3}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->getCurrentLayoutBounds(Landroid/graphics/Rect;)V

    :goto_22
    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mShrunkTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mOriginBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v1, v2

    :goto_23
    invoke-virtual {v4, v5, v6, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->update(IIZ)V

    goto :goto_25

    :cond_3a
    if-ne v5, v1, :cond_3f

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    invoke-virtual {v1, v3, v4}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getTargetUnderPoint(II)Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v3

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eq v4, v3, :cond_3e

    if-eqz v3, :cond_3b

    iget-object v4, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    if-eqz v4, :cond_3b

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3b
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v4, :cond_3c

    iget-object v4, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mDropTargetView:Lcom/android/wm/shell/draganddrop/DropTargetView;

    if-eqz v4, :cond_3c

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3c
    sget-boolean v4, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->DEBUG_DEV:Z

    if-eqz v4, :cond_3d

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "handleDropTargets: new="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", old="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "NonDragTargetView"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3d
    iput-object v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    goto :goto_24

    :cond_3e
    const/4 v5, 0x0

    move v2, v5

    :goto_24
    move v7, v2

    goto :goto_25

    :cond_3f
    const/4 v5, 0x0

    move v7, v5

    :cond_40
    :goto_25
    if-eqz v7, :cond_41

    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    const/16 v1, 0x29

    invoke-static {v1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    :cond_41
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
