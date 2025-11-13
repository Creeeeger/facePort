.class public final Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDropTargetUiController;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDragStartedWithinThreshold:Z

.field public mEdgeFlags:I

.field public mIgnoreActionDragLocation:Z

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public mShowDropTarget:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method

.method public static containsFlag$1(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInThreshold$1(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 3

    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3d656042    # 0.056f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method public final onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, -0x1

    const-string v10, "DragAndDropController_Launchable"

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    if-eq v4, v5, :cond_13

    const/4 v2, 0x4

    if-eq v4, v6, :cond_4

    if-eq v4, v8, :cond_3

    if-eq v4, v2, :cond_1

    const/4 v1, 0x6

    if-eq v4, v1, :cond_0

    goto/16 :goto_c

    :cond_0
    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    iget-boolean v0, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    check-cast v1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v1, v11, v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Ljava/lang/Runnable;Z)V

    goto/16 :goto_c

    :cond_1
    iput-boolean v5, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-object v4, v2

    check-cast v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-boolean v4, v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    if-nez v4, :cond_2

    iget v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v3}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    invoke-interface {v2, v1, v4}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    :cond_2
    iput-boolean v7, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/SmartTipController;->dismissHelpTipIfPossible()V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v12, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyListeners(Ljava/util/function/Function;)Z

    goto/16 :goto_c

    :cond_3
    iput-boolean v5, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    invoke-virtual {v12, v1, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v0

    return v0

    :cond_4
    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    if-eqz v4, :cond_5

    const-string v0, "Ignore ACTION_DRAG_LOCATION"

    invoke-static {v10, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_5
    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    if-eqz v4, :cond_7

    invoke-static {v1, v3}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->isInThreshold$1(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-boolean v7, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    :cond_6
    return v5

    :cond_7
    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    if-eqz v4, :cond_a

    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v4, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/SmartTipController;->dismissHelpTipIfPossible()V

    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v4, :cond_8

    iget-boolean v4, v1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    if-eqz v4, :cond_8

    move v1, v7

    goto :goto_0

    :cond_8
    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v1, v1, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    :goto_0
    if-eqz v1, :cond_2a

    iput-boolean v7, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v0, v11, v7}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Ljava/lang/Runnable;Z)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-boolean v1, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    if-eqz v1, :cond_9

    iput-boolean v7, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDrawable:Z

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->notifyDragSplitAppIconHasDrawable(Z)V

    :cond_9
    return v7

    :cond_a
    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    const v10, 0x3d656042    # 0.056f

    mul-float/2addr v8, v10

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v8, v10

    float-to-int v8, v8

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v8

    iget v10, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    invoke-static {v10, v5}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag$1(II)Z

    move-result v10

    if-eqz v10, :cond_b

    if-lt v4, v8, :cond_c

    :cond_b
    iget v8, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    invoke-static {v8, v6}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag$1(II)Z

    move-result v8

    if-eqz v8, :cond_11

    if-le v4, v2, :cond_11

    :cond_c
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/wm/shell/common/MultiWindowOverheatUI;->showIfNeeded(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_d

    iput-boolean v5, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    return v7

    :cond_d
    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    if-eqz v2, :cond_e

    invoke-interface {v2}, Lcom/android/wm/shell/draganddrop/AppResult;->hasResizableResolveInfo()Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v5

    goto :goto_1

    :cond_e
    move v2, v7

    :goto_1
    if-nez v2, :cond_f

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mContext:Landroid/content/Context;

    const v2, 0x7f130557

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mContext:Landroid/content/Context;

    invoke-static {v2, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iput-boolean v5, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    return v7

    :cond_f
    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/draganddrop/IDropTargetUiController;->performDragStartedHapticAndSound(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v7}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->show()V

    iput-boolean v5, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mShowDropTarget:Z

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v12, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;)V

    check-cast v2, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_10
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.samsung.android.action.ENTER_CONTENTS_TO_WINDOW"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x40000000    # 2.0f

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v8, "com.samsung.android.permission.MULTI_WINDOW_MONITOR"

    invoke-virtual {v0, v2, v4, v8, v9}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    :cond_11
    iget-object v0, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iget-boolean v2, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mShown:Z

    if-eqz v2, :cond_2a

    iget v2, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mInitialX:I

    iget v3, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mSurfaceHeight:I

    div-int/2addr v3, v6

    sub-int/2addr v1, v3

    iget v3, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mGapWithContent:I

    sub-int/2addr v1, v3

    invoke-static {v7, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-eqz v3, :cond_2a

    invoke-virtual {v3}, Lcom/samsung/android/widget/SemTipPopup;->isShowing()Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_c

    :cond_12
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v3, v2, v1}, Lcom/samsung/android/widget/SemTipPopup;->setTargetPosition(II)V

    iget-object v0, v0, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v0}, Lcom/samsung/android/widget/SemTipPopup;->update()V

    goto/16 :goto_c

    :cond_13
    iget v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-eqz v4, :cond_14

    const-string v0, "Unexpected drag start during an active drag"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_14
    new-instance v4, Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v14

    iget-object v15, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v15, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v17

    iget-object v13, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v11, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    const/16 v18, 0x0

    move-object/from16 v19, v13

    move-object v13, v4

    move-object v7, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v11

    invoke-direct/range {v13 .. v19}, Lcom/android/wm/shell/draganddrop/DragSession;-><init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    iput-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-virtual {v4}, Lcom/android/wm/shell/draganddrop/DragSession;->update()V

    iget v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    add-int/2addr v4, v5

    iput v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    iget-object v14, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v16

    iget-object v11, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    move-object v13, v4

    check-cast v13, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    const/4 v15, 0x0

    const/16 v18, 0x0

    move-object/from16 v17, v11

    invoke-virtual/range {v13 .. v18}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->prepare(Lcom/android/wm/shell/draganddrop/DragSession;Lcom/android/internal/logging/InstanceId;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    invoke-static {v1, v3}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->isInThreshold$1(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mDragStartedWithinThreshold:Z

    iput v8, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    iget v4, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    if-eqz v4, :cond_17

    iget-object v8, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v11, v4, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v13, v4, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {v8, v11, v13, v4}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result v4

    if-eq v4, v5, :cond_16

    if-eq v4, v6, :cond_15

    goto :goto_2

    :cond_15
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    goto :goto_2

    :cond_16
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    and-int/lit8 v4, v4, -0x2

    iput v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    :cond_17
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v4

    if-nez v4, :cond_18

    const-string/jumbo v4, "setIgnoreEdgeFlags. clipData null."

    invoke-static {v10, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_18
    invoke-virtual {v4}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v4

    const-string/jumbo v8, "setIgnoreEdgeFlags. description null."

    if-nez v4, :cond_19

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_19
    invoke-virtual {v4}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v4

    if-nez v4, :cond_1a

    invoke-static {v10, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1a
    const-string v8, "com.samsung.android.content.clipdescription.extra.IGNORE_LEFT_EDGE"

    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1b

    iget v8, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    and-int/lit8 v8, v8, -0x2

    iput v8, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    :cond_1b
    const-string v8, "com.samsung.android.content.clipdescription.extra.IGNORE_RIGHT_EDGE"

    invoke-virtual {v4, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1c

    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    :cond_1c
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_ONE_TOUCH:Z

    if-eqz v4, :cond_1d

    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "otch_long_press_enabled_setting"

    invoke-static {v4, v8, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1d

    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    :cond_1d
    :goto_3
    new-instance v4, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda0;

    const/4 v8, 0x0

    invoke-direct {v4, v8}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v12, v4}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyListeners(Ljava/util/function/Function;)Z

    invoke-virtual {v12}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->supportsMultiWindow()Z

    move-result v4

    if-eqz v4, :cond_29

    invoke-virtual {v7, v2}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    invoke-static {v4, v5}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag$1(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    invoke-static {v4, v6}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag$1(II)Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    goto :goto_4

    :cond_1e
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    invoke-static {v4, v5}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag$1(II)Z

    move-result v4

    if-eqz v4, :cond_1f

    const/4 v4, 0x0

    goto :goto_4

    :cond_1f
    iget v4, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mEdgeFlags:I

    invoke-static {v4, v6}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->containsFlag$1(II)Z

    move-result v4

    if-eqz v4, :cond_20

    iget v4, v2, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    goto :goto_4

    :cond_20
    move v4, v9

    :goto_4
    if-eq v4, v9, :cond_29

    iget-object v3, v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v1

    iget-object v8, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f070355

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iput v8, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mGapWithContent:I

    iget-object v8, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v8}, Lcom/android/wm/shell/common/DisplayLayout;->getDisplayBounds(Landroid/graphics/Rect;)V

    iput v1, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mSurfaceHeight:I

    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/2addr v1, v6

    if-le v4, v1, :cond_21

    move v1, v5

    goto :goto_5

    :cond_21
    const/4 v1, 0x0

    :goto_5
    if-eqz v1, :cond_22

    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    :goto_6
    move v10, v1

    goto :goto_7

    :cond_22
    iget-object v1, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    goto :goto_6

    :goto_7
    iput v10, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mInitialX:I

    iget v1, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mSurfaceHeight:I

    div-int/2addr v1, v6

    sub-int/2addr v7, v1

    iget v1, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mGapWithContent:I

    sub-int/2addr v7, v1

    const/4 v1, 0x0

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v11

    iget-object v2, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mDisplayBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/2addr v2, v6

    if-le v4, v2, :cond_23

    move v2, v5

    goto :goto_8

    :cond_23
    move v2, v1

    :goto_8
    iget-object v4, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mHelpTip:Lcom/android/wm/shell/draganddrop/SmartTip;

    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mPreferences:Landroid/content/SharedPreferences;

    iget-object v7, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mKey:Ljava/lang/String;

    invoke-interface {v6, v7, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v6

    iget v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mLimitCount:I

    if-lt v6, v1, :cond_24

    :goto_9
    const/4 v1, 0x0

    goto/16 :goto_b

    :cond_24
    iget-boolean v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    if-eqz v1, :cond_25

    goto :goto_9

    :cond_25
    iput-boolean v5, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mShowRequested:Z

    iget-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    if-nez v1, :cond_27

    iget-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mLayoutResId:I

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "SmartTip"

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "addView: mRootView="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const v16, 0x1000118

    const/16 v17, -0x3

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/16 v15, 0x96c

    move-object v12, v1

    invoke-direct/range {v12 .. v17}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    invoke-virtual {v1, v6}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iput v5, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mWindowManager:Landroid/view/WindowManager;

    iget-object v8, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    invoke-interface {v6, v8, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Lcom/samsung/android/widget/SemTipPopup;

    iget-object v6, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    const/4 v8, 0x0

    invoke-direct {v1, v6, v8}, Lcom/samsung/android/widget/SemTipPopup;-><init>(Landroid/view/View;I)V

    iput-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->semGetBubblePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_26

    iget-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->semGetBubblePopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    :cond_26
    iget-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_27

    iget-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mTipPopup:Lcom/samsung/android/widget/SemTipPopup;

    invoke-virtual {v1}, Lcom/samsung/android/widget/SemTipPopup;->semGetBalloonPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/widget/PopupWindow;->setTouchModal(Z)V

    :cond_27
    xor-int/lit8 v13, v2, 0x1

    iget-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

    const/4 v12, 0x1

    if-eqz v1, :cond_28

    invoke-virtual {v4, v10, v11, v13, v12}, Lcom/android/wm/shell/draganddrop/SmartTip;->showTipPopup(IIIZ)V

    goto :goto_a

    :cond_28
    iget-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mRootView:Landroid/view/View;

    new-instance v2, Lcom/android/wm/shell/draganddrop/SmartTip$1;

    move-object v8, v2

    move-object v9, v4

    invoke-direct/range {v8 .. v13}, Lcom/android/wm/shell/draganddrop/SmartTip$1;-><init>(Lcom/android/wm/shell/draganddrop/SmartTip;IIZI)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    :goto_a
    iget-object v1, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iget-object v2, v4, Lcom/android/wm/shell/draganddrop/SmartTip;->mPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v2, v7, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    add-int/2addr v2, v5

    invoke-interface {v1, v7, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    move v1, v5

    :goto_b
    iput-boolean v1, v3, Lcom/android/wm/shell/draganddrop/SmartTipController;->mShown:Z

    :cond_29
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;->mIgnoreActionDragLocation:Z

    :cond_2a
    :goto_c
    return v5
.end method
