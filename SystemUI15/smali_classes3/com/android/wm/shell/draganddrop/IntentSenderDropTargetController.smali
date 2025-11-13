.class public final Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDropTargetUiController;


# static fields
.field public static final sFullscreenHitRegion:Landroid/graphics/Rect;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mDragStartedWithinThreshold:Z

.field public mEdgeFlags:I

.field public mIgnoreActionDragLocation:Z

.field public mShowDropTarget:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->sFullscreenHitRegion:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mDragStartedWithinThreshold:Z

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mIgnoreActionDragLocation:Z

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-void
.end method

.method public static isInThreshold(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 4

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

    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v0

    sget-object v2, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->sFullscreenHitRegion:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    invoke-virtual {p0}, Landroid/view/DragEvent;->getX()F

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p0, p0, p1

    if-lez p0, :cond_1

    :cond_0
    const/4 v3, 0x1

    :cond_1
    return v3
.end method


# virtual methods
.method public final onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    const-string v4, "IntentSenderDropTargetController"

    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v3, v8, :cond_d

    const/4 v9, 0x0

    const/4 v10, 0x4

    if-eq v3, v6, :cond_4

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    if-eq v3, v10, :cond_1

    const/4 v0, 0x6

    if-eq v3, v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v0, v9, v7}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Ljava/lang/Runnable;Z)V

    goto/16 :goto_2

    :cond_1
    iput-boolean v8, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mIgnoreActionDragLocation:Z

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    move-object v4, v3

    check-cast v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-boolean v4, v4, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    if-nez v4, :cond_2

    iget v4, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    sub-int/2addr v4, v8

    iput v4, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-boolean v4, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mShowDropTarget:Z

    if-eqz v4, :cond_2

    new-instance v4, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2}, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    invoke-interface {v3, v1, v4}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    :cond_2
    iput-boolean v7, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mShowDropTarget:Z

    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->smartTipController:Lcom/android/wm/shell/draganddrop/SmartTipController;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/SmartTipController;->dismissHelpTipIfPossible()V

    goto/16 :goto_2

    :cond_3
    iput-boolean v8, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mIgnoreActionDragLocation:Z

    invoke-virtual {v5, v1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v0

    return v0

    :cond_4
    iget-boolean v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mIgnoreActionDragLocation:Z

    if-eqz v3, :cond_5

    const-string v0, "Ignore ACTION_DRAG_LOCATION"

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_5
    iget-boolean v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mDragStartedWithinThreshold:Z

    if-eqz v3, :cond_7

    invoke-static {v1, v2}, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->isInThreshold(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v1

    if-nez v1, :cond_6

    iput-boolean v7, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mDragStartedWithinThreshold:Z

    :cond_6
    return v8

    :cond_7
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-float v11, v11

    const v12, 0x3d656042    # 0.056f

    mul-float/2addr v11, v12

    const/high16 v12, 0x3f000000    # 0.5f

    add-float/2addr v11, v12

    float-to-int v11, v11

    iget v3, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v11

    iget v12, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    and-int/lit8 v13, v12, 0x1

    if-eqz v13, :cond_8

    if-lt v4, v11, :cond_a

    :cond_8
    and-int/lit8 v11, v12, 0x2

    if-eqz v11, :cond_9

    if-gt v4, v3, :cond_a

    :cond_9
    and-int/lit8 v3, v12, 0x4

    if-eqz v3, :cond_c

    sget-object v3, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->sFullscreenHitRegion:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_a
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/wm/shell/common/MultiWindowOverheatUI;->showIfNeeded(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    iput-boolean v8, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mIgnoreActionDragLocation:Z

    return v7

    :cond_b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v7}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    iput-boolean v8, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mShowDropTarget:Z

    goto/16 :goto_2

    :cond_c
    iget-object v1, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v1, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v1, v9, v7}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Ljava/lang/Runnable;Z)V

    iput-boolean v7, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mShowDropTarget:Z

    goto/16 :goto_2

    :cond_d
    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-eqz v3, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unexpected drag start during an active drag="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_e
    iput-boolean v7, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mIgnoreActionDragLocation:Z

    new-instance v3, Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v10

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move/from16 v9, p2

    invoke-virtual {v7, v9}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v11

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragFlags()I

    move-result v13

    iget-object v14, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v15, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    move-object v9, v3

    invoke-direct/range {v9 .. v15}, Lcom/android/wm/shell/draganddrop/DragSession;-><init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    iput-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-virtual {v3}, Lcom/android/wm/shell/draganddrop/DragSession;->update()V

    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    add-int/2addr v3, v8

    iput v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    iget-object v10, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v12

    iget-object v13, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    move-object v9, v3

    check-cast v9, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    const/4 v11, 0x0

    const/4 v14, 0x1

    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->prepare(Lcom/android/wm/shell/draganddrop/DragSession;Lcom/android/internal/logging/InstanceId;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    invoke-static {v1, v2}, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->isInThreshold(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mDragStartedWithinThreshold:Z

    const/4 v3, 0x7

    iput v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    invoke-virtual {v7, v3}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget v9, v3, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v10, v3, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v3, v3, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    invoke-static {v7, v9, v10, v3}, Lcom/android/wm/shell/common/DisplayLayout;->navigationBarPosition(Landroid/content/res/Resources;III)I

    move-result v3

    if-eq v3, v8, :cond_10

    if-eq v3, v6, :cond_f

    goto :goto_0

    :cond_f
    iget v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    and-int/lit8 v3, v3, -0x3

    iput v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    goto :goto_0

    :cond_10
    iget v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    :cond_11
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v1

    if-nez v1, :cond_12

    const-string/jumbo v0, "setIgnoreEdgeFlags. clipData null."

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_12
    invoke-virtual {v1}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string/jumbo v3, "setIgnoreEdgeFlags. description null."

    if-nez v1, :cond_13

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_13
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    if-nez v1, :cond_14

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_14
    const-string v3, "com.samsung.android.content.clipdescription.extra.IGNORE_LEFT_EDGE"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    and-int/lit8 v3, v3, -0x2

    iput v3, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    :cond_15
    const-string v3, "com.samsung.android.content.clipdescription.extra.IGNORE_RIGHT_EDGE"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget v1, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    and-int/lit8 v1, v1, -0x3

    iput v1, v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;->mEdgeFlags:I

    :cond_16
    :goto_1
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->show()V

    new-instance v0, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v5, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyListeners(Ljava/util/function/Function;)Z

    :goto_2
    return v8
.end method
