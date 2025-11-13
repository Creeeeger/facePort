.class public final Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDesktopModeKeyguardChangeListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;

.field public final mDesktopModeWindowDecorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

.field public final mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

.field public final mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

.field public final mEventReceiversByDisplay:Landroid/util/SparseArray;

.field public final mExclusionRegion:Landroid/graphics/Region;

.field public final mExclusionRegionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;

.field public final mGestureExclusionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

.field public mInImmersiveMode:Z

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public final mInputMonitorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

.field public final mMainChoreographer:Landroid/view/Choreographer;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public mMoveToDesktopAnimator:Lcom/android/wm/shell/windowdecor/MoveToDesktopAnimator;

.field public final mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mSysUIPackageName:Ljava/lang/String;

.field public mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransactionFactory:Ljava/util/function/Supplier;

.field public mTransitionDragActive:Z

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecorByTaskId:Landroid/util/SparseArray;

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/view/IWindowManager;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Landroid/view/IWindowManager;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            ")V"
        }
    .end annotation

    new-instance v15, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

    invoke-direct {v15}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;-><init>()V

    new-instance v16, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

    invoke-direct/range {v16 .. v16}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;-><init>()V

    new-instance v17, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct/range {v17 .. v17}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    move-object/from16 v19, v0

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    move-object/from16 v18, p15

    invoke-direct/range {v0 .. v19}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/view/IWindowManager;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;Ljava/util/function/Supplier;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Landroid/view/IWindowManager;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Ljava/util/Optional;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;Ljava/util/function/Supplier;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Landroid/util/SparseArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Landroid/view/IWindowManager;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksController;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;",
            "Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Landroid/util/SparseArray<",
            "Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;I)V

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mExclusionRegionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;

    new-instance v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;I)V

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragToDesktopAnimationStartBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;

    invoke-direct {v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeKeyguardChangeListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v2

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    new-instance v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mGestureExclusionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    const-class v2, Landroid/app/ActivityTaskManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityTaskManager;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v2, p10

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual/range {p14 .. p14}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v2, p15

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeWindowDecorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

    move-object/from16 v2, p16

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInputMonitorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

    move-object/from16 v2, p17

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    move-object/from16 v2, p18

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    const-class v2, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/input/InputManager;

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInputManager:Landroid/hardware/input/InputManager;

    move-object/from16 v2, p19

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x104003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSysUIPackageName:Ljava/lang/String;

    new-instance v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    move-object v2, p5

    invoke-virtual {p5, v1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final createWindowDecoration$2(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->close()V

    :cond_0
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeWindowDecorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$Factory;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v15, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mRootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    move-object v1, v15

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v10}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v2, v11, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v1, Lcom/android/wm/shell/shared/DesktopModeStatus;->IS_VEILED_RESIZE_ENABLED:Z

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransactionFactory:Ljava/util/function/Supplier;

    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    move-object v12, v1

    move-object v5, v15

    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v2

    invoke-direct/range {v12 .. v18}, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Ljava/util/function/Supplier;)V

    iput-object v1, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskDragResizer:Lcom/android/wm/shell/windowdecor/TaskDragResizer;

    goto :goto_0

    :cond_1
    move-object v5, v15

    new-instance v1, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v15, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DragStartListenerImpl;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    move-object v12, v1

    move-object v14, v5

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    invoke-direct/range {v12 .. v17}, Lcom/android/wm/shell/windowdecor/VeiledResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Lcom/android/wm/shell/transition/Transitions;)V

    iput-object v1, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskDragResizer:Lcom/android/wm/shell/windowdecor/TaskDragResizer;

    :goto_0
    new-instance v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v11, v1, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;I)V

    iput-object v2, v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionButtonClickListener:Landroid/view/View$OnClickListener;

    iput-object v2, v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionTouchListener:Landroid/view/View$OnTouchListener;

    iput-object v2, v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionLongClickListener:Landroid/view/View$OnLongClickListener;

    iput-object v2, v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mOnCaptionGenericMotionListener:Landroid/view/View$OnGenericMotionListener;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mExclusionRegionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;

    iput-object v3, v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mExclusionRegionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$ExclusionRegionListenerImpl;

    iput-object v1, v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    iget-object v1, v2, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput-object v1, v5, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iget-object v2, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, v1, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v5

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move v5, v6

    move v6, v7

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    iget v1, v11, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->incrementEventReceiverTasks(I)V

    return-void
.end method

.method public final destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->close()V

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->removeTaskFromEventReceiver(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public final getFocusedDecor()Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return-object v1
.end method

.method public final incrementEventReceiverTasks(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    iget p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mInputMonitorFactory:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$InputMonitorFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "caption-touch"

    invoke-virtual {v1}, Landroid/content/Context;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;Landroid/view/InputMonitor;Landroid/view/InputChannel;Landroid/os/Looper;)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final onInit()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeKeyguardChangeListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    invoke-virtual {v1, v0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    new-instance v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeOnInsetsChangedListener;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeOnInsetsChangedListener;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    invoke-virtual {v2, v0, v1}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;I)V

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopTasksController:Lcom/android/wm/shell/desktopmode/DesktopTasksController;

    iget-object v2, v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->toggleResizeDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;

    iput-object v0, v2, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;->onTaskResizeAnimationListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

    iget-object v2, v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    iput-object v0, v2, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->mOnTaskResizeAnimationListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

    iget-object v1, v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragToDesktopTransitionHandler:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iput-object v0, v1, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->onTaskResizeAnimationListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DeskopModeOnTaskResizeAnimationListener;

    :try_start_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mGestureExclusionListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$1;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {v0, v1, p0}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DesktopModeWindowDecorViewModel"

    const-string v1, "Failed to register window manager callbacks"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 7

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->shouldShowWindowDecor$1(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_0
    return-void

    :cond_1
    if-nez v1, :cond_2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->createWindowDecoration$2(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    :goto_0
    return-void
.end method

.method public final onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZ)V

    return-void
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->removeTaskFromEventReceiver(I)V

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->incrementEventReceiverTasks(I)V

    :cond_1
    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V

    return-void
.end method

.method public final onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->shouldShowWindowDecor$1(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->createWindowDecoration$2(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 9

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DESKTOP_MODE_enabled:[Z

    aget-boolean v1, v2, v1

    if-eqz v1, :cond_1

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    int-to-long v1, v1

    sget-object v3, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v8

    const/16 v6, 0xd

    const-string v7, "Task Vanished: #%d closed=%b"

    const-wide v4, -0x282aafd29b7fcf06L    # -1.3121602317210868E115

    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_2
    return-void
.end method

.method public final removeTaskFromEventReceiver(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->mTasksOnDisplay:I

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mEventReceiversByDisplay:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$EventReceiver;->dispose()V

    :cond_2
    return-void
.end method

.method public final setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    return-void
.end method

.method public final setSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    new-instance v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$2;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$2;-><init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;)V

    invoke-virtual {p1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->registerSplitScreenListener(Lcom/android/wm/shell/splitscreen/SplitScreen$SplitScreenListener;)V

    return-void
.end method

.method public final shouldShowWindowDecor$1(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskRootOrStageRoot(I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mDesktopModeKeyguardChangeListener:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;

    iget-boolean v3, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;->mIsKeyguardVisible:Z

    if-eqz v3, :cond_2

    iget-boolean v0, v0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel$DesktopModeKeyguardChangeListener;->mIsKeyguardOccluded:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingModalsPolicy()Z

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mSysUIPackageName:Ljava/lang/String;

    invoke-static {v0, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    if-eqz v0, :cond_4

    return v1

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    sget-object p0, Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity;->Companion:Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity$Companion;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_5

    sget-object v0, Lcom/android/wm/shell/desktopmode/DesktopWallpaperActivity;->wallpaperActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    :cond_5
    move p0, v1

    :goto_1
    if-nez p0, :cond_6

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    if-ne p0, v2, :cond_6

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isAlwaysOnTop()Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_2

    :cond_6
    move v2, v1

    :goto_2
    return v2
.end method
