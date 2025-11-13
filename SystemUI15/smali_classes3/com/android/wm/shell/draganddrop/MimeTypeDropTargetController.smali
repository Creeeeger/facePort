.class public final Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/draganddrop/IDropTargetUiController;


# instance fields
.field public final mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public mIgnoreActionDragLocation:Z

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    iput-object p2, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public final onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getAction()I

    move-result v3

    iget-object v4, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    const/4 v5, -0x1

    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    const-string v7, "DragAndDropController_Mime"

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    const/4 v10, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-boolean v3, v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    if-eqz v3, :cond_0

    const-string v0, "dragLayout is showing"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v10

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->show()V

    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    goto/16 :goto_2

    :pswitch_2
    iput-boolean v10, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v3, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-boolean v3, v3, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    if-eqz v3, :cond_1

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_DROPPED:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    iget-object v1, v6, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Landroid/content/pm/ActivityInfo;)V

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v3, v3, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    if-eq v3, v5, :cond_2

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v7, "Re-showing task surface: taskId=%d"

    invoke-static {v5, v7, v3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v3, v3, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    invoke-virtual {v4, v3, v10}, Lcom/android/wm/shell/ShellTaskOrganizer;->setTaskSurfaceVisibility(IZ)V

    :cond_2
    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    sub-int/2addr v3, v10

    iput v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    new-instance v4, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;

    invoke-direct {v4, v0, v2}, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    invoke-interface {v3, v1, v4}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_END:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    iget-object v1, v6, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v6, v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Landroid/content/pm/ActivityInfo;)V

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v9, v0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyListeners(Ljava/util/function/Function;)Z

    goto/16 :goto_2

    :pswitch_3
    iput-boolean v10, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    invoke-virtual {v9, v1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v0

    return v0

    :pswitch_4
    iget-boolean v3, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    if-eqz v3, :cond_3

    const-string v0, "Ignore ACTION_DRAG_LOCATION"

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_3
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v8, 0x4

    :cond_5
    invoke-static {v2, v8}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    :goto_1
    iget-object v3, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v9, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v4, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda3;

    invoke-direct {v4, v0}, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;)V

    check-cast v3, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_6
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    goto/16 :goto_2

    :pswitch_5
    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-eqz v3, :cond_7

    const-string v0, "Unexpected drag start during an active drag"

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_7
    new-instance v3, Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v12

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move/from16 v11, p2

    invoke-virtual {v7, v11}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v14

    iget-object v7, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    iget-object v15, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    const/16 v16, 0x0

    move-object v11, v3

    move-object/from16 v17, v15

    move/from16 v15, v16

    move-object/from16 v16, v7

    invoke-direct/range {v11 .. v17}, Lcom/android/wm/shell/draganddrop/DragSession;-><init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/ExecutableAppHolder;Lcom/android/wm/shell/draganddrop/VisibleTasks;)V

    iput-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-virtual {v3}, Lcom/android/wm/shell/draganddrop/DragSession;->update()V

    iget v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    add-int/2addr v3, v10

    iput v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    iget-object v12, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-virtual {v6, v12}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->logStart(Lcom/android/wm/shell/draganddrop/DragSession;)Lcom/android/internal/logging/InstanceId;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    move-result-object v14

    iget-object v15, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    const/16 v16, 0x0

    move-object v11, v3

    check-cast v11, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual/range {v11 .. v16}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->prepare(Lcom/android/wm/shell/draganddrop/DragSession;Lcom/android/internal/logging/InstanceId;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v3, v3, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    if-eq v3, v5, :cond_8

    sget-object v5, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v6, "Hiding task surface: taskId=%d"

    invoke-static {v5, v6, v3}, Lcom/android/internal/protolog/common/ProtoLog;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v3, v3, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    invoke-virtual {v4, v3, v8}, Lcom/android/wm/shell/ShellTaskOrganizer;->setTaskSurfaceVisibility(IZ)V

    :cond_8
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, v8}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    new-instance v3, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v9, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyListeners(Ljava/util/function/Function;)Z

    iput-boolean v8, v0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mIgnoreActionDragLocation:Z

    invoke-static/range {p3 .. p3}, Lcom/android/wm/shell/draganddrop/IDropTargetUiController;->performDragStartedHapticAndSound(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->show()V

    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    :goto_2
    return v10

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
