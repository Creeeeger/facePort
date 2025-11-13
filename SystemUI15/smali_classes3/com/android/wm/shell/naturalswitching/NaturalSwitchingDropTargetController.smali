.class public final Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;


# instance fields
.field public mAllowInterceptTouch:Z

.field public final mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mGestureDetector:Landroid/view/GestureDetector;

.field public mIsRunning:Z

.field public mLayoutChanged:Z

.field public final mMainHandler:Landroid/os/Handler;

.field public mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/SyncTransactionQueue;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mAllowInterceptTouch:Z

    iput-object p1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p3, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p5, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p6, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p7, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    return-void
.end method


# virtual methods
.method public final allowInterceptTouch(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    goto :goto_0

    :cond_1
    if-ne v1, v2, :cond_2

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-nez v4, :cond_3

    return v0

    :cond_3
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v4, :cond_4

    if-ne v1, v2, :cond_4

    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsPipOnly:Z

    if-eqz v1, :cond_4

    return v0

    :cond_4
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isFlexPanelEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    return v0

    :cond_5
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v1

    if-eqz v1, :cond_6

    return v0

    :cond_6
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->preventNaturalSwitching(I)Z

    move-result p1

    if-eqz p1, :cond_7

    return v0

    :cond_7
    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mContext:Landroid/content/Context;

    const-class p1, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result p0

    if-eqz p0, :cond_8

    move p0, v3

    goto :goto_1

    :cond_8
    move p0, v0

    :goto_1
    if-eqz p0, :cond_9

    return v0

    :cond_9
    return v3

    :cond_a
    :goto_2
    return v0
.end method

.method public final onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;I)Z
    .locals 12

    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mAllowInterceptTouch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_14

    const/4 p2, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    if-eq v0, p2, :cond_1

    goto/16 :goto_a

    :cond_1
    iget-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    if-eqz p2, :cond_15

    iput-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    invoke-virtual {p2, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    goto/16 :goto_a

    :cond_2
    iget-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    if-eqz p2, :cond_15

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    invoke-virtual {p2, p1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->update(Landroid/view/MotionEvent;)V

    move v1, v2

    goto/16 :goto_a

    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    if-eqz v0, :cond_15

    iput-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    if-nez v3, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "drag target view is already null. : callers="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "NaturalSwitchingLayout"

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    move v2, v1

    goto/16 :goto_9

    :cond_5
    iput-boolean v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHasDropped:Z

    iget-object p2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissViewManager;

    if-eqz p2, :cond_6

    iget-object p2, p2, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean p2, p2, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    if-eqz p2, :cond_6

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->getCurrentDragTargetRect()Landroid/graphics/Rect;

    move-result-object v9

    iget-object p2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    iget v7, p2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitCreateMode:I

    iget v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    if-ne v3, v2, :cond_7

    iget v3, p2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    iget p2, p2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    :goto_1
    move v6, p2

    move p2, v3

    goto :goto_3

    :cond_7
    iget-object p2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object p2, p2, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz p2, :cond_8

    iget p2, p2, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mNsWindowingMode:I

    move v3, p2

    goto :goto_2

    :cond_8
    move v3, v1

    :goto_2
    iget-object p2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object p2, p2, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {p2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz p2, :cond_9

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result p2

    goto :goto_1

    :cond_9
    move p2, v1

    goto :goto_1

    :goto_3
    iget v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_a

    if-ne p2, v4, :cond_a

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v3}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->adjustDragTargetViewBoundsIfNeeded()V

    :cond_a
    if-eqz p2, :cond_b

    if-ne p2, v4, :cond_c

    iget v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    if-ne v3, v4, :cond_c

    :cond_b
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->startTransition(Z)V

    :cond_c
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHandler:Landroid/os/Handler;

    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRunnable:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    const-wide/16 v10, 0x1388

    invoke-virtual {v3, v4, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/16 v3, 0xd

    if-ne p2, v3, :cond_12

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isVerticalDivision()Z

    move-result v7

    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    const/16 v10, 0x10

    if-eqz v8, :cond_f

    iget-object v8, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isInSubDisplay(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_d

    goto :goto_5

    :cond_d
    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v3, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDropTarget:Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    if-eqz v3, :cond_e

    iget v10, v3, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mStagePosition:I

    :cond_e
    :goto_4
    move v7, v10

    goto :goto_7

    :cond_f
    :goto_5
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v8, v11}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    float-to-int v3, v3

    float-to-int v4, v4

    invoke-virtual {v8, v3, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_10

    if-eqz v7, :cond_e

    const/16 v10, 0x8

    goto :goto_4

    :cond_10
    if-eqz v7, :cond_11

    const/16 v3, 0x20

    goto :goto_6

    :cond_11
    const/16 v3, 0x40

    :goto_6
    move v7, v3

    :goto_7
    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v4, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v6, 0x1

    invoke-virtual/range {v4 .. v10}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onFreeformToSplitRequested(Landroid/app/ActivityManager$RunningTaskInfo;ZIZLandroid/graphics/Rect;Z)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    goto :goto_8

    :cond_12
    new-instance v10, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;

    const/4 v11, 0x0

    move-object v3, v10

    move-object v4, v0

    move v5, p2

    move-object v8, v9

    move v9, v11

    invoke-direct/range {v3 .. v9}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;IIILandroid/graphics/Rect;I)V

    iget v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    if-ne v3, v2, :cond_13

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iput-object v10, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawCallback:Ljava/lang/Runnable;

    iget-object v3, v3, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mMainView:Landroid/view/ViewGroup;

    const-string v4, "#FF000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    goto :goto_8

    :cond_13
    invoke-virtual {v10}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda3;->run()V

    :goto_8
    iget v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    if-eq v0, p2, :cond_4

    :goto_9
    iput-boolean v2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mLayoutChanged:Z

    iget-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget-boolean v0, p2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHasDropped:Z

    if-nez v0, :cond_15

    invoke-virtual {p2, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->hide(Z)V

    goto :goto_a

    :cond_14
    iget-object v0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->allowInterceptTouch(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mAllowInterceptTouch:Z

    iput-boolean v1, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mLayoutChanged:Z

    :cond_15
    :goto_a
    iget-boolean p2, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mAllowInterceptTouch:Z

    if-eqz p2, :cond_16

    iget-object p0, p0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_16
    return v1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 24

    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mIsRunning:Z

    iget-object v2, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3, v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v3

    invoke-static {v3}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iget-object v5, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget-object v6, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v7, "prepare"

    const-string v8, "NaturalSwitchingLayout"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mReadyToStart:Z

    iput-boolean v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHideRequested:Z

    iput-boolean v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mHasDropped:Z

    iget-object v7, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iput-object v2, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    const/4 v9, 0x5

    if-eqz v2, :cond_2

    iget-object v2, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-ne v2, v9, :cond_1

    move v2, v1

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    iput-boolean v2, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    goto :goto_2

    :cond_2
    iput-boolean v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    :goto_2
    iget-object v2, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getVisibleTasks()Ljava/util/List;

    move-result-object v2

    const/4 v10, 0x3

    const/16 v11, 0xd

    const/4 v12, 0x2

    const-string v13, "TaskVisibility"

    if-nez v2, :cond_3

    const-string v2, "initRunningTaskInfos: failed to get list"

    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :cond_3
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v14, v4

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v15}, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_d

    iget v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eqz v4, :cond_4

    goto :goto_6

    :cond_4
    iget-object v4, v15, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result v9

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v4

    if-eq v9, v12, :cond_5

    if-ne v9, v10, :cond_6

    :cond_5
    if-nez v14, :cond_6

    iget-object v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v11, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_4

    :cond_6
    const/4 v10, 0x1

    if-eqz v9, :cond_8

    if-ne v9, v10, :cond_7

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v9, 0x5

    goto :goto_6

    :cond_8
    :goto_5
    invoke-static {v1, v4}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->getNaturalSwitchingWindowingMode(II)I

    move-result v4

    if-eq v1, v10, :cond_a

    if-eq v1, v12, :cond_9

    const/4 v9, 0x5

    if-eq v1, v9, :cond_c

    const/4 v10, 0x6

    if-eq v1, v10, :cond_b

    goto :goto_6

    :cond_9
    const/4 v9, 0x5

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v1, :cond_d

    iget-object v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_6

    :cond_a
    const/4 v9, 0x5

    :cond_b
    const/4 v14, 0x1

    :cond_c
    iget-object v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mRunningTaskInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_d
    :goto_6
    const/4 v1, 0x1

    const/4 v4, 0x0

    const/4 v10, 0x3

    goto :goto_3

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "initRunningTaskInfos: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v2, 0x1600000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/2addr v1, v12

    iput v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchSlop:I

    const/4 v1, 0x0

    iput-boolean v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mPassedInitialSlop:Z

    iget-object v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTouchGap:Landroid/graphics/Point;

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Point;->set(II)V

    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDownPoint:Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v2}, Landroid/graphics/Point;->set(II)V

    iput-object v6, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    iget-object v2, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->getNaturalSwitchingWindowingMode(II)I

    move-result v1

    iput v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_PIP:Z

    if-eqz v2, :cond_10

    if-ne v1, v12, :cond_f

    const/4 v4, 0x1

    goto :goto_8

    :cond_f
    const/4 v4, 0x0

    :goto_8
    iput-boolean v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    :cond_10
    iput-boolean v3, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsMwHandlerType:Z

    iget-object v3, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingAlgorithm:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;

    iput-object v7, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object v4, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object v4, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput v1, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    invoke-static {v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    move-result v9

    const/4 v10, 0x4

    if-eqz v9, :cond_12

    iget-object v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    move-result v9

    if-nez v9, :cond_11

    iget-object v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v9, v11}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    move-result v9

    if-eqz v9, :cond_12

    :cond_11
    :goto_9
    const/4 v9, 0x1

    goto :goto_a

    :cond_12
    iget v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDragTargetWindowingMode:I

    const/4 v13, 0x3

    if-eq v9, v13, :cond_13

    if-eq v9, v10, :cond_13

    const/16 v13, 0xc

    if-ne v9, v13, :cond_14

    :cond_13
    iget-object v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    invoke-virtual {v9}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v9

    if-eqz v9, :cond_14

    goto :goto_9

    :cond_14
    const/4 v9, 0x0

    :goto_a
    iput-boolean v9, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mUseSingleNonTarget:Z

    iput v1, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToWindowingMode:I

    const/4 v1, 0x0

    iput v1, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mShrunkWindowingMode:I

    iput v1, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mSwapWindowingMode:I

    iput v1, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mDropSide:I

    iput v1, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mToPosition:I

    iput v1, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mPushRegion:I

    iput-boolean v1, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mNeedToReparentCell:Z

    iget v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    invoke-static {v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->isFloating(I)Z

    move-result v1

    if-eqz v1, :cond_17

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v1, :cond_16

    iget-boolean v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    if-eqz v1, :cond_15

    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v1

    goto :goto_b

    :cond_15
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v1

    goto :goto_b

    :cond_16
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v1

    :goto_b
    if-eqz v1, :cond_17

    iput v12, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    goto :goto_c

    :cond_17
    invoke-virtual {v7, v11}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    move-result v1

    if-eqz v1, :cond_18

    iput v12, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    goto :goto_c

    :cond_18
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    if-eqz v1, :cond_19

    iget v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    const/4 v9, 0x1

    if-ne v1, v9, :cond_1a

    iput v12, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    goto :goto_c

    :cond_19
    const/4 v9, 0x1

    :cond_1a
    iput v9, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    :goto_c
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v9, 0x7f0d0277

    const/4 v13, 0x0

    invoke-virtual {v1, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iput-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget v9, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    iget v14, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNaturalSwitchingMode:I

    iget-object v15, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v10, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mBackgroundExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v11, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    move-object/from16 v18, v1

    move/from16 v19, v9

    move-object/from16 v20, v11

    move/from16 v21, v14

    move-object/from16 v22, v15

    move-object/from16 v23, v10

    invoke-virtual/range {v18 .. v23}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->init(ILcom/android/wm/shell/naturalswitching/TaskVisibility;ILcom/android/wm/shell/splitscreen/SplitScreenController;Lcom/android/wm/shell/common/ShellExecutor;)V

    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v9

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mOnDrawListener:Lcom/android/wm/shell/naturalswitching/NonDragTargetView$$ExternalSyntheticLambda0;

    invoke-virtual {v9, v1}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v9, 0x7f0d0275

    invoke-virtual {v1, v9, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iput-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v9, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "init: t#"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "DragTargetView"

    invoke-static {v11, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string/jumbo v14, "window"

    invoke-virtual {v10, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/WindowManager;

    iput-object v10, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mWm:Landroid/view/WindowManager;

    iput-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v4, 0x0

    iput-boolean v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mIsDragEndCalled:Z

    iput-object v7, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iput v9, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    const v4, 0x7f0a03be

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    const v4, 0x7f0a03bf

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget v9, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetWindowingMode:I

    invoke-virtual {v4, v9}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->getTaskBounds(I)Landroid/graphics/Rect;

    move-result-object v4

    iput-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_1b

    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    move-result v4

    if-eqz v4, :cond_1b

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    const/4 v9, 0x0

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setZ(F)V

    goto :goto_d

    :cond_1b
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    iget-object v9, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mOutlineProvider:Lcom/android/wm/shell/naturalswitching/DragTargetView$1;

    invoke-virtual {v4, v9}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :goto_d
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object v9, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    iget-object v4, v4, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    invoke-virtual {v4, v9}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mTaskVisibility:Lcom/android/wm/shell/naturalswitching/TaskVisibility;

    iget-object v9, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget-object v4, v4, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mDisplayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    const/4 v10, 0x1

    invoke-virtual {v4, v9, v10}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x105039d

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    iput v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mCornerRadius:I

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v9, 0x1050184

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1050183

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    mul-int/2addr v9, v12

    sub-int/2addr v4, v9

    iput v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDividerSize:I

    if-eqz v2, :cond_1d

    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    sget-boolean v6, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->DEBUG_PIP:Z

    if-eqz v6, :cond_1c

    const v6, 0x6600ff00

    goto :goto_e

    :cond_1c
    const/4 v6, 0x0

    :goto_e
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    goto :goto_10

    :cond_1d
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getSurfaceFreezerSnapshot(I)Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;

    move-result-object v4

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->hasProtectedContent()Z

    move-result v9

    iput-boolean v9, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    :cond_1e
    iget-boolean v9, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    if-eqz v9, :cond_1f

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f060578

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v9, 0x7f080d20

    invoke-virtual {v6, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/16 v6, 0x4c

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_10

    :cond_1f
    if-eqz v4, :cond_20

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/SurfaceFreezerSnapshot;->getSnapshotBitmap()Landroid/graphics/Bitmap;

    move-result-object v13

    :cond_20
    if-nez v13, :cond_21

    const-string v4, "initThumbnail: failed to get snapshot, task #"

    invoke-static {v6, v4, v11}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_21
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v13}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_f
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_10
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    sget-object v9, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$4;

    invoke-direct {v4, v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/high16 v6, 0x43480000    # 200.0f

    const v10, 0x3f7d70a4    # 0.99f

    invoke-static {v6, v10}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v13

    iput-object v13, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v13, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    sget-object v14, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$5;

    invoke-direct {v4, v13, v14}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-static {v6, v10}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    iput-object v6, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleDownAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-direct {v4, v6, v9}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    const/high16 v6, 0x435c0000    # 220.0f

    const v9, 0x3ef0a3d7    # 0.47f

    invoke-static {v6, v9}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v10

    iput-object v10, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleUpAnimX:Landroidx/dynamicanimation/animation/SpringAnimation;

    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v10, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-direct {v4, v10, v14}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    invoke-static {v6, v9}, Lcom/android/systemui/keyguard/animator/ActionUpOrCancelHandler$$ExternalSyntheticOutline0;->m(FF)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v6

    iput-object v6, v4, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    iput-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mScaleUpAnimY:Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_22

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f070ab5

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iget-object v9, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget-object v10, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDownScale:Landroid/graphics/PointF;

    sub-int v13, v6, v4

    int-to-float v13, v13

    int-to-float v6, v6

    div-float/2addr v13, v6

    sub-int v4, v9, v4

    int-to-float v4, v4

    int-to-float v6, v9

    div-float/2addr v4, v6

    invoke-static {v13, v4}, Ljava/lang/Math;->min(FF)F

    move-result v4

    iput v4, v10, Landroid/graphics/PointF;->y:F

    iput v4, v10, Landroid/graphics/PointF;->x:F

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mUpScale:Landroid/graphics/PointF;

    const v6, 0x3f81eb85    # 1.015f

    invoke-virtual {v4, v6, v6}, Landroid/graphics/PointF;->set(FF)V

    :cond_22
    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/16 v20, -0x1

    const/16 v21, 0x7e0

    const/16 v19, -0x1

    const v22, 0x20310

    const/16 v23, -0x2

    move-object/from16 v18, v4

    invoke-direct/range {v18 .. v23}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v6, "NS:DragTargetView"

    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v6, v6, 0x50

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget v6, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/high16 v9, 0x20000

    or-int/2addr v6, v9

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v9, 0x3

    iput v9, v4, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mLp:Landroid/view/WindowManager$LayoutParams;

    const v6, 0x800033

    iput v6, v4, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mWm:Landroid/view/WindowManager;

    invoke-interface {v6, v1, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mHalfTarget:I

    iput v1, v3, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingAlgorithm;->mHalfTarget:I

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    if-eqz v1, :cond_23

    iget v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNsWindowingMode:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_26

    :cond_23
    if-eqz v2, :cond_27

    iget-boolean v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mIsPipNaturalSwitching:Z

    if-eqz v1, :cond_27

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT:Z

    if-eqz v1, :cond_25

    iget-boolean v1, v7, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->mSupportOnlyTwoUpMode:Z

    if-eqz v1, :cond_24

    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v1

    goto :goto_11

    :cond_24
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isMultiSplit()Z

    move-result v1

    goto :goto_11

    :cond_25
    invoke-virtual {v7}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTwoUp()Z

    move-result v1

    :goto_11
    if-eqz v1, :cond_27

    :cond_26
    const/4 v1, 0x1

    goto :goto_12

    :cond_27
    const/16 v1, 0xd

    invoke-virtual {v7, v1}, Lcom/android/wm/shell/naturalswitching/TaskVisibility;->isTaskVisible(I)Z

    move-result v1

    :goto_12
    if-eqz v1, :cond_28

    new-instance v1, Lcom/android/wm/shell/common/DismissViewManager;

    iget-object v3, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    const/16 v4, 0x7e0

    const/4 v6, 0x4

    invoke-direct {v1, v3, v6, v4}, Lcom/android/wm/shell/common/DismissViewManager;-><init>(Landroid/content/Context;II)V

    iput-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DismissViewManager;->createDismissView()V

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DismissViewManager;->createOrUpdateWrapper()V

    :cond_28
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    iget-object v3, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iput-object v3, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2b

    iget-boolean v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    if-nez v6, :cond_29

    if-eqz v4, :cond_29

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    goto :goto_13

    :cond_29
    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v6

    :goto_13
    iget-boolean v7, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHasProtectedContent:Z

    if-nez v7, :cond_2a

    if-eqz v4, :cond_2a

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    goto :goto_14

    :cond_2a
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    :goto_14
    iget-object v7, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {v7, v9, v9, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2b
    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v6, v4, Landroid/graphics/Rect;->top:I

    iput v6, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTarget:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/DragTargetView;->isPipNaturalSwitching()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    goto :goto_15

    :cond_2c
    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget v4, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v12

    add-int/2addr v2, v4

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mStableRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mDragTargetBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v4

    :goto_15
    iget-object v6, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    invoke-virtual {v6, v2, v4}, Landroid/graphics/Point;->set(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "initHandlerPosition: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/DragTargetView;->mHandlerPosition:Landroid/graphics/Point;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    :goto_16
    if-ltz v2, :cond_2e

    iget-object v4, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    iget-object v6, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v7, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v9, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget-object v9, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v9, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBaseBounds:Landroid/graphics/Rect;

    iget v10, v9, Landroid/graphics/Rect;->left:I

    iput v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v9, v9, Landroid/graphics/Rect;->top:I

    iput v9, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-boolean v6, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mHasProtectedContent:Z

    if-eqz v6, :cond_2d

    iget-object v4, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_17

    :cond_2d
    iget-object v6, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mView:Landroid/widget/ImageView;

    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v4, v4, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->mBlurView:Landroid/widget/ImageView;

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_17
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    :cond_2e
    iget v2, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNaturalSwitchingMode:I

    if-ne v2, v12, :cond_31

    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->createNonDragTarget()Lcom/android/wm/shell/naturalswitching/NonDragTarget;

    move-result-object v2

    iget v4, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mDragTargetWindowingMode:I

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_NATURAL_SWITCHING_FULLSCREEN:Z

    if-eqz v6, :cond_30

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2f

    move v3, v6

    :cond_2f
    if-eqz v3, :cond_30

    invoke-virtual {v1}, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->getCenterFreeformBounds()Landroid/graphics/Rect;

    move-result-object v21

    const/16 v22, 0x0

    const/16 v19, 0x0

    const/4 v4, 0x5

    move-object/from16 v17, v2

    move-object/from16 v18, v1

    move/from16 v20, v4

    invoke-virtual/range {v17 .. v22}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->init(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;IILandroid/graphics/Rect;I)V

    :cond_30
    iget-object v3, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mContainingBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/wm/shell/naturalswitching/NonDragTarget;->initForTaskOnly(Lcom/android/wm/shell/naturalswitching/NonDragTargetView;Landroid/graphics/Rect;I)V

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NonDragTargetView;->mNonTargets:Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_31
    iget-object v1, v5, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mDragTargetView:Lcom/android/wm/shell/naturalswitching/DragTargetView;

    new-instance v2, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;

    const/4 v3, 0x1

    invoke-direct {v2, v5, v3}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;I)V

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v5, Lcom/android/wm/shell/naturalswitching/DragTargetView$5;

    invoke-direct {v5, v1, v3, v2}, Lcom/android/wm/shell/naturalswitching/DragTargetView$5;-><init>(Lcom/android/wm/shell/naturalswitching/DragTargetView;Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget-object v2, v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mNonDragTargetView:Lcom/android/wm/shell/naturalswitching/NonDragTargetView;

    const/16 v3, 0x6c

    invoke-static {v3}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->performHapticFeedback(I)Z

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    if-nez v1, :cond_32

    const-string v1, "Couldn\'t get audio manager"

    invoke-static {v8, v1}, Landroid/util/secutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :cond_32
    const/16 v2, 0x6a

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->playSoundEffect(I)V

    :goto_18
    iget-object v1, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    iget-object v1, v1, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->mCancelButtonManager:Lcom/android/wm/shell/common/DismissViewManager;

    if-eqz v1, :cond_33

    sget-object v2, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DismissViewManager;->show()V

    :cond_33
    iget-object v0, v0, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;->mNaturalSwitchingLayout:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/naturalswitching/NaturalSwitchingLayout;->update(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
