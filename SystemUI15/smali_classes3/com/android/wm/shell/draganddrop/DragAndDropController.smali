.class public final Lcom/android/wm/shell/draganddrop/DragAndDropController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/draganddrop/GlobalDragListener$GlobalDragListenerCallback;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;
.implements Lcom/android/wm/shell/ShellTaskOrganizer$TaskVanishedListener;
.implements Landroid/view/View$OnDragListener;
.implements Landroid/content/ComponentCallbacks2;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDismissReceiver:Lcom/android/wm/shell/draganddrop/DragAndDropController$1;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayDropTargets:Landroid/util/SparseArray;

.field public final mGlobalDragListener:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

.field public mIsUserSetup:Z

.field public final mListeners:Ljava/util/ArrayList;

.field public final mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMultiInstanceHelper:Lcom/android/wm/shell/common/MultiInstanceHelper;

.field public final mProxy:Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTransaction:Landroid/view/SurfaceControl$Transaction;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/internal/logging/UiEventLogger;Lcom/android/launcher3/icons/IconProvider;Lcom/android/wm/shell/draganddrop/GlobalDragListener;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/MultiInstanceHelper;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p8, Ljava/util/ArrayList;

    invoke-direct {p8}, Ljava/util/ArrayList;-><init>()V

    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    new-instance p8, Landroid/util/SparseArray;

    invoke-direct {p8}, Landroid/util/SparseArray;-><init>()V

    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    new-instance p8, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p8}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    new-instance p8, Lcom/android/wm/shell/draganddrop/DragAndDropController$1;

    invoke-direct {p8, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDismissReceiver:Lcom/android/wm/shell/draganddrop/DragAndDropController$1;

    new-instance p8, Landroid/graphics/Rect;

    invoke-direct {p8}, Landroid/graphics/Rect;-><init>()V

    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTmpRect:Landroid/graphics/Rect;

    new-instance p8, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

    invoke-direct {p8, p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController$2;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    iput-object p8, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mProxy:Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    iput-object p4, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    iput-object p5, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object p6, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    invoke-direct {p1, p7}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;-><init>(Lcom/android/internal/logging/UiEventLogger;)V

    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    iput-object p9, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mGlobalDragListener:Lcom/android/wm/shell/draganddrop/GlobalDragListener;

    iput-object p10, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    iput-object p11, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMultiInstanceHelper:Lcom/android/wm/shell/common/MultiInstanceHelper;

    iput-object p12, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance p1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;I)V

    invoke-virtual {p2, p1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static clearState(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "clearState d="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DragAndDropController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    iput v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    if-eqz v2, :cond_0

    iput-object v0, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableApp:Lcom/android/wm/shell/draganddrop/AppInfo;

    iget-object v3, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mExecutableAppMap:Ljava/util/Map;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    iput-object v0, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    iput-boolean v1, v2, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsMimeType:Z

    :cond_0
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    if-eqz v2, :cond_1

    :try_start_0
    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {v2}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onDisconnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "DragAndDropClient"

    const-string v3, "Failed to disconnect."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iput-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    iput-boolean v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    :cond_1
    return-void
.end method

.method public static setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V
    .locals 10

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    iget p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    int-to-long v0, p0

    int-to-long p0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x5

    const-string v6, "Do not update drop target window visibility: displayId=%d visibility=%d"

    const-wide v3, -0x6729b15dbe44c034L

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->windowVisibility:I

    if-ne v0, p1, :cond_3

    sget-object p0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    aget-boolean p0, p0, v1

    if-eqz p0, :cond_2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v5

    const-wide v1, 0x499b8bc2419e34c3L    # 3.9314869126739003E46

    const/4 v3, 0x0

    const-string v4, "Do not update drop target window visibility: window is already set to %s."

    invoke-static/range {v0 .. v5}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    int-to-long v0, v0

    int-to-long v2, p1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-wide v5, 0x22770e8119db36eaL

    const/4 v7, 0x5

    const-string v8, "Set drop target window visibility: displayId=%d visibility=%d"

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_5

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    iget-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hasDrawn:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewRootImpl;->registerRtFrameCallback(Landroid/graphics/HardwareRenderer$FrameDrawingCallback;)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hasDrawn:Z

    :cond_6
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->windowVisibility:I

    return-void
.end method


# virtual methods
.method public addDisplayDropTarget(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;)V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;-><init>(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;)V

    invoke-virtual {p0, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public deviceSupportsSplitScreenMultiWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->deviceSupportsMultiWindow(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual/range {p1 .. p1}, Landroid/view/DragEvent;->getDragSurface()Landroid/view/SurfaceControl;

    iget v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v2, v2, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v2, v5, :cond_0

    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v6, v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    move-object v9, v2

    goto :goto_0

    :cond_0
    move-object v9, v4

    :goto_0
    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-object v2, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    const/4 v14, 0x0

    if-eqz v2, :cond_4

    iget-boolean v2, v2, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isResizable:Z

    if-nez v2, :cond_4

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v6, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->displayId:I

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v6, v14}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v7, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    invoke-virtual {v7}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    :cond_1
    iget-boolean v7, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mWasShownSnackBar:Z

    if-eqz v7, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v7, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_1

    :cond_3
    iget-object v7, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d00eb

    invoke-virtual {v7, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;

    iput-object v4, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda0;

    invoke-direct {v7, v4}, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DnDSnackBarWindow;)V

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v7, 0x7f0a0bb7

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    new-instance v8, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;

    invoke-direct {v8, v4}, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/common/DnDSnackBarWindow;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/16 v17, -0x2

    const/16 v18, 0x7d8

    const/16 v16, -0x2

    const v19, 0x1040100

    const/16 v20, -0x3

    move-object v15, v7

    invoke-direct/range {v15 .. v20}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v7, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x50

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v7, v14}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget-object v7, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "DnDSnackBar"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    const v8, 0x1030004

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v8, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8, v4, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x31

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v4, v14, v14}, Landroid/widget/LinearLayout;->measure(II)V

    iget-object v7, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v8

    sub-int/2addr v6, v8

    iget v8, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mMarginBottom:I

    sub-int/2addr v6, v8

    iput v6, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v6, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mWindowManager:Landroid/view/WindowManager;

    iget-object v7, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v6, v4, v7}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, v2, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    iput-object v2, v4, Lcom/android/wm/shell/common/DnDSnackBarWindow;->mCallbacks:Lcom/android/wm/shell/common/DnDSnackBarController;

    :cond_4
    :goto_1
    iget-object v2, v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    new-instance v4, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda3;

    const/4 v6, 0x2

    invoke-direct {v4, v0, v1, v6}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Ljava/lang/Object;I)V

    check-cast v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iput-boolean v3, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    iget-boolean v0, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsHideDragSourceTask:Z

    if-eqz v0, :cond_6

    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-eqz v0, :cond_5

    iget v0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    if-nez v0, :cond_6

    :cond_5
    move v0, v14

    move v1, v0

    goto :goto_5

    :cond_6
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v0, :cond_7

    iget-boolean v0, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsIntentSenderDropTarget:Z

    if-eqz v0, :cond_7

    move v0, v14

    goto :goto_2

    :cond_7
    iget-object v0, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mDismissView:Lcom/android/wm/shell/common/DismissView;

    iget-boolean v0, v0, Lcom/android/wm/shell/common/DismissView;->mIsEnterDismissButton:Z

    :goto_2
    if-eqz v0, :cond_8

    goto :goto_3

    :cond_8
    move v0, v14

    goto :goto_4

    :cond_9
    :goto_3
    move v0, v3

    :goto_4
    move v1, v3

    :goto_5
    if-eqz v1, :cond_1a

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    if-nez v1, :cond_a

    move/from16 v21, v14

    goto :goto_6

    :cond_a
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display;->getDisplayId()I

    move-result v1

    move/from16 v21, v1

    :goto_6
    iget-object v1, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iget-object v15, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mCurrentTarget:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;

    invoke-static/range {p1 .. p1}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v19

    if-eqz v15, :cond_19

    iget-object v6, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mTargets:Ljava/util/ArrayList;

    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto/16 :goto_11

    :cond_b
    iget-boolean v6, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mIsTopTaskFullscreen:Z

    iget-object v7, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v6, :cond_c

    invoke-virtual {v7}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isSplitScreenVisible()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v15}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isSplit()Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v3

    goto :goto_7

    :cond_c
    move v6, v14

    :goto_7
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->MW_DND_MULTI_SPLIT_DROP_TARGET:Z

    iget v10, v15, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->type:I

    if-eqz v8, :cond_10

    invoke-virtual {v1}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->supportMultiSplitDropTarget()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-virtual {v15}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isSplit()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {v15}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isMultiSplit()Z

    move-result v8

    if-eqz v8, :cond_e

    :cond_d
    iget-object v8, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v7, v5, v8, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;Z)V

    :cond_e
    invoke-virtual {v15}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->isMultiSplit()Z

    move-result v6

    if-eqz v6, :cond_f

    packed-switch v10, :pswitch_data_0

    move v6, v14

    goto :goto_8

    :pswitch_0
    const/16 v6, 0x60

    goto :goto_8

    :pswitch_1
    const/16 v6, 0x30

    goto :goto_8

    :pswitch_2
    const/16 v6, 0x48

    goto :goto_8

    :pswitch_3
    const/16 v6, 0x18

    :goto_8
    new-instance v7, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    invoke-direct {v7, v5, v6, v5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;-><init>(III)V

    move-object v5, v7

    goto :goto_c

    :cond_f
    invoke-static {v15}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getProperLaunchOptions(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    move-result-object v5

    goto :goto_c

    :cond_10
    const/4 v8, 0x2

    if-eq v10, v8, :cond_12

    if-ne v10, v3, :cond_11

    goto :goto_9

    :cond_11
    move v8, v14

    goto :goto_a

    :cond_12
    :goto_9
    move v8, v3

    :goto_a
    if-eqz v10, :cond_13

    if-eqz v7, :cond_13

    xor-int/2addr v8, v3

    iget-object v11, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mLoggerSessionId:Lcom/android/internal/logging/InstanceId;

    invoke-virtual {v7, v8, v11, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->onDroppedToSplit(ILcom/android/internal/logging/InstanceId;Z)V

    goto :goto_b

    :cond_13
    move v8, v5

    :goto_b
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v6, :cond_14

    iget-object v6, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v7, v6, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    if-nez v7, :cond_14

    iget-object v6, v6, Lcom/android/wm/shell/draganddrop/DragSession;->launchableIntent:Landroid/app/PendingIntent;

    if-eqz v6, :cond_14

    invoke-virtual {v6}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_14

    invoke-static {v15}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->getProperLaunchOptions(Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;)Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    move-result-object v5

    goto :goto_c

    :cond_14
    new-instance v6, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;

    invoke-direct {v6, v8, v14, v5}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;-><init>(III)V

    move-object v5, v6

    :goto_c
    const/4 v6, 0x5

    if-ne v10, v6, :cond_15

    iget-object v6, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mFreeformStarter:Lcom/android/wm/shell/draganddrop/FreeformStarter;

    if-eqz v6, :cond_15

    :goto_d
    move-object/from16 v18, v6

    goto :goto_f

    :cond_15
    if-nez v10, :cond_16

    move v6, v3

    goto :goto_e

    :cond_16
    move v6, v14

    :goto_e
    if-eqz v6, :cond_17

    iget-object v6, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mDefaultStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$DefaultStarter;

    if-eqz v6, :cond_17

    goto :goto_d

    :cond_17
    iget-object v6, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mStarter:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;

    goto :goto_d

    :goto_f
    iget-object v7, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v6, v7, Lcom/android/wm/shell/draganddrop/DragSession;->appData:Landroid/content/Intent;

    if-eqz v6, :cond_18

    iget v8, v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->splitPosition:I

    move-object v6, v1

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    move-object v12, v5

    move/from16 v13, v21

    invoke-virtual/range {v6 .. v13}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->launchApp(Lcom/android/wm/shell/draganddrop/DragSession;ILandroid/window/WindowContainerToken;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/view/DragAndDropPermissions;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;I)V

    move-object v8, v15

    goto :goto_10

    :cond_18
    iget v6, v5, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;->splitPosition:I

    move-object v8, v15

    move-object v15, v1

    move-object/from16 v16, v7

    move/from16 v17, v6

    move-object/from16 v20, v5

    invoke-virtual/range {v15 .. v21}, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->launchIntent(Lcom/android/wm/shell/draganddrop/DragSession;ILcom/android/wm/shell/draganddrop/DragAndDropPolicy$Starter;Landroid/view/DragAndDropPermissions;Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$LaunchOptions;I)V

    :goto_10
    iget-boolean v5, v8, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy$Target;->alreadyRun:Z

    if-eqz v5, :cond_1a

    iget-object v5, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f130cd1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v1, v1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mContext:Landroid/content/Context;

    invoke-static {v1, v5, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_11

    :cond_19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1a
    :goto_11
    invoke-virtual {v2, v4, v3}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->hide(Ljava/lang/Runnable;Z)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Drop result is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DropTargetLayout"

    invoke-static {v2, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isUserSetup()Z
    .locals 5

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string/jumbo v3, "user_setup_complete"

    const/4 v4, -0x2

    invoke-static {p0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_1

    move p0, v2

    goto :goto_1

    :cond_1
    move p0, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public final notifyListeners(Ljava/util/function/Function;)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;

    invoke-interface {p1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda3;

    const/4 v2, 0x3

    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Ljava/lang/Object;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 14

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const-string v6, "Display added: %d"

    const-wide v3, 0x1dd67e866ccc3be9L    # 6.103426001009872E-165

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayContext(I)Landroid/content/Context;

    move-result-object v0

    const/16 v4, 0x7e0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Landroid/content/Context;->createWindowContext(ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/view/WindowManager;

    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const v5, 0x1000008

    const/4 v6, -0x3

    move-object v1, v8

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, -0x7fffffb0

    or-int/2addr v1, v2

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v1, 0x3

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v1, "ShellDropTarget"

    invoke-virtual {v8, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v1, v1, 0x200

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v1, v8, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v8, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d011d

    invoke-virtual {v1, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/widget/FrameLayout;

    invoke-virtual {v12, p0}, Landroid/widget/FrameLayout;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    const/4 v1, 0x4

    invoke-virtual {v12, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    new-instance v13, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-object v1, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-direct {v13, v0, v1, v2, v3}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;-><init>(Landroid/content/Context;Lcom/android/wm/shell/splitscreen/SplitScreenController;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v12, v13, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_0
    invoke-interface {v11, v12, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    move-object v8, p0

    move v9, p1

    move-object v10, v0

    invoke-virtual/range {v8 .. v13}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->addDisplayDropTarget(ILandroid/content/Context;Landroid/view/WindowManager;Landroid/widget/FrameLayout;Lcom/android/wm/shell/draganddrop/IDragLayout;)V

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V
    :try_end_0
    .catch Landroid/view/WindowManager$InvalidDisplayException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unable to add view for display id: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DragAndDropController"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 8

    sget-object p2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 v0, 0x1

    aget-boolean p2, p2, v0

    if-eqz p2, :cond_0

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const-string v6, "Display changed: %d"

    const-wide v3, -0x1ae1a6ea0762cc4aL    # -1.2297799143210909E179

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    if-nez p2, :cond_1

    return-void

    :cond_1
    iget-object v0, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestApplyInsets()V

    iget-object v0, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

    if-eqz v0, :cond_3

    iget-object v1, v0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    :cond_3
    iget-object p2, p2, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast p2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-boolean v0, p2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mIsShowing:Z

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object p0

    iget-object p1, p2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mPolicy:Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;

    iget-object p1, p1, Lcom/android/wm/shell/draganddrop/DragAndDropPolicy;->mSession:Lcom/android/wm/shell/draganddrop/DragSession;

    if-eqz p1, :cond_4

    iput-object p0, p1, Lcom/android/wm/shell/draganddrop/DragSession;->displayLayout:Lcom/android/wm/shell/common/DisplayLayout;

    :cond_4
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 8

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v0, p1

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v7

    const/4 v5, 0x1

    const-string v6, "Display removed: %d"

    const-wide v3, 0x5158406548dc3388L    # 7.361362967713055E83

    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    invoke-virtual {v1, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->wm:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->rootView:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object p0, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dndSnackBarController:Lcom/android/wm/shell/common/DnDSnackBarController;

    if-eqz p0, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    :cond_2
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarController;->mView:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    :cond_3
    return-void
.end method

.method public final onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "Failed to disconnect."

    const-string v3, "DragAndDropClient"

    sget-object v4, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 v5, 0x1

    aget-boolean v4, v4, v5

    if-eqz v4, :cond_0

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v4

    invoke-static {v4}, Landroid/view/DragEvent;->actionToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getX()F

    move-result v6

    float-to-double v6, v6

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getY()F

    move-result v8

    float-to-double v8, v8

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getOffsetX()F

    move-result v10

    float-to-double v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getOffsetY()F

    move-result v12

    float-to-double v12, v12

    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    filled-new-array {v4, v6, v7, v8, v9}, [Ljava/lang/Object;

    move-result-object v19

    const/16 v17, 0x2a8

    const-string v18, "Drag event: action=%s x=%f y=%f xOffset=%f yOffset=%f"

    const-wide v15, 0x5580d23864bd3467L    # 7.53502675532649E103

    invoke-static/range {v14 .. v19}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iget-object v6, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayDropTargets:Landroid/util/SparseArray;

    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v7

    const/4 v8, 0x0

    if-nez v6, :cond_1

    return v8

    :cond_1
    iget-object v9, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->context:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v9

    xor-int/2addr v9, v5

    if-nez v9, :cond_2

    return v8

    :cond_2
    iget-object v9, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object v9, v9, Lcom/android/wm/shell/splitscreen/SplitScreenController;->mIsKeyguardOccludedAndShowingSupplier:Ljava/util/function/BooleanSupplier;

    if-eqz v9, :cond_3

    invoke-interface {v9}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v9

    goto :goto_0

    :cond_3
    move v9, v8

    :goto_0
    const-string v10, "DragAndDropController"

    if-eqz v9, :cond_4

    const-string v0, "isKeyguardOccludedAndShowing=true"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v9

    const/4 v11, 0x0

    if-ne v9, v5, :cond_1a

    const-string v9, "ACTION_DRAG_STARTED"

    invoke-static {v10, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    if-nez v9, :cond_5

    const-string v0, "clipdata is null"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_5
    iget-boolean v9, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mIsUserSetup:Z

    if-nez v9, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->isUserSetup()Z

    move-result v9

    iput-boolean v9, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mIsUserSetup:Z

    if-nez v9, :cond_7

    const-string v0, "User setup is not yet completed."

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->deviceSupportsSplitScreenMultiWindow()Z

    move-result v9

    if-nez v9, :cond_7

    const-string v0, "This device does not support multi-windows."

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ClipData;->getItemCount()I

    move-result v9

    if-gtz v9, :cond_9

    :cond_8
    move v9, v8

    goto :goto_2

    :cond_9
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v9

    const-string v12, "application/vnd.android.activity"

    invoke-virtual {v9, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "application/vnd.android.shortcut"

    invoke-virtual {v9, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_b

    const-string v12, "application/vnd.android.task"

    invoke-virtual {v9, v12}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/window/flags/Flags;->delegateUnhandledDrags()Z

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getDragFlags()I

    move-result v12

    invoke-static {v9, v12}, Lcom/android/wm/shell/draganddrop/DragUtils;->getLaunchIntent(Landroid/content/ClipData;I)Landroid/app/PendingIntent;

    move-result-object v9

    if-eqz v9, :cond_8

    :cond_b
    :goto_1
    move v9, v5

    :goto_2
    iput-boolean v9, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    aget-boolean v12, v12, v5

    if-eqz v12, :cond_e

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ClipData;->getItemCount()I

    move-result v12

    int-to-long v12, v12

    const-string v14, ""

    move v15, v8

    :goto_3
    invoke-virtual {v7}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v5

    if-ge v15, v5, :cond_d

    if-lez v15, :cond_c

    const-string v5, ", "

    invoke-static {v14, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    :cond_c
    invoke-static {v14}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v7, v15}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_d
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v17, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    filled-new-array {v7, v9, v5}, [Ljava/lang/Object;

    move-result-object v22

    const/16 v20, 0x7

    const-string v21, "Clip description: handlingDrag=%b itemCount=%d mimeTypes=%s"

    const-wide v18, 0x5814261a5236364eL

    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_e
    iget-boolean v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-eqz v5, :cond_f

    sget-boolean v5, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez v5, :cond_f

    iget-object v5, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/wm/shell/common/MultiWindowOverheatUI;->showIfNeeded(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_f

    return v8

    :cond_f
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_DND_UNHANDLED_DRAG:Z

    if-eqz v5, :cond_10

    iget-boolean v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-eqz v5, :cond_10

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getDragFlags()I

    move-result v5

    and-int/lit16 v5, v5, 0x2000

    if-eqz v5, :cond_10

    iget-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-virtual {v5}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->update()V

    iget-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    new-instance v7, Lcom/android/wm/shell/draganddrop/DefaultAppResult;

    iget-object v9, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    iget-object v12, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    invoke-direct {v7, v12, v9, v11}, Lcom/android/wm/shell/draganddrop/DefaultAppResult;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Ljava/lang/String;)V

    iput-object v7, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    new-instance v5, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-direct {v5, v7, v0, v9}, Lcom/android/wm/shell/draganddrop/IntentSenderDropTargetController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;)V

    iput-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

    goto/16 :goto_8

    :cond_10
    iget-boolean v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-eqz v5, :cond_11

    iget-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-virtual {v5}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->update()V

    iget-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ClipData$Item;->getActivityInfo()Landroid/content/pm/ActivityInfo;

    move-result-object v7

    new-instance v9, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;

    iget-object v12, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceAllowList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;

    iget-object v13, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mMultiInstanceBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;

    invoke-direct {v9, v13, v12, v7, v11}, Lcom/android/wm/shell/draganddrop/MimeTypeAppResult;-><init>(Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceBlockList;Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$MultiInstanceAllowList;Landroid/content/pm/ActivityInfo;Ljava/lang/String;)V

    iput-object v9, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mIsMimeType:Z

    new-instance v5, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v9, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v12, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    invoke-direct {v5, v0, v7, v9, v12}, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;)V

    iput-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

    goto/16 :goto_8

    :cond_11
    if-nez v5, :cond_19

    iget-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->visibleTasks:Lcom/android/wm/shell/draganddrop/VisibleTasks;

    invoke-virtual {v5}, Lcom/android/wm/shell/draganddrop/VisibleTasks;->update()V

    iget-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->executableAppHolder:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    invoke-static/range {p2 .. p2}, Landroid/view/DragAndDropPermissions;->obtain(Landroid/view/DragEvent;)Landroid/view/DragAndDropPermissions;

    move-result-object v9

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_13

    :cond_12
    :goto_4
    move v5, v8

    goto :goto_7

    :cond_13
    invoke-virtual {v7}, Landroid/content/ClipData;->getCallingPackageName()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageName:Ljava/lang/String;

    iget-object v13, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingPackageBlockList:Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;

    iget-object v13, v13, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder$PolicyExceptionList;->mBlockList:Ljava/util/Set;

    invoke-interface {v13, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_14

    goto :goto_4

    :cond_14
    if-eqz v9, :cond_15

    invoke-virtual {v9}, Landroid/view/DragAndDropPermissions;->getFlags()I

    move-result v9

    goto :goto_5

    :cond_15
    move v9, v8

    :goto_5
    invoke-virtual {v7}, Landroid/content/ClipData;->getCallingUserId()I

    move-result v12

    iput v12, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mCallingUserId:I

    iget-object v12, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mAppResultFactory:Lcom/android/wm/shell/draganddrop/AppResultFactory;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;

    invoke-direct {v13}, Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;-><init>()V

    iget-object v12, v12, Lcom/android/wm/shell/draganddrop/AppResultFactory;->mResolvers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_17

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/wm/shell/draganddrop/BaseResolver;

    invoke-virtual {v14, v7, v9, v13}, Lcom/android/wm/shell/draganddrop/BaseResolver;->makeFrom(Landroid/content/ClipData;ILcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;)Ljava/util/Optional;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/Optional;->isPresent()Z

    move-result v15

    if-eqz v15, :cond_16

    invoke-virtual {v14}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/wm/shell/draganddrop/AppResult;

    goto :goto_6

    :cond_17
    iget-boolean v7, v13, Lcom/android/wm/shell/draganddrop/AppResultFactory$ResultExtra;->mNonResizeableAppOnly:Z

    if-eqz v7, :cond_18

    new-instance v7, Lcom/android/wm/shell/draganddrop/NonResizeableAppsResult;

    invoke-direct {v7}, Lcom/android/wm/shell/draganddrop/NonResizeableAppsResult;-><init>()V

    goto :goto_6

    :cond_18
    move-object v7, v11

    :goto_6
    iput-object v7, v5, Lcom/android/wm/shell/draganddrop/ExecutableAppHolder;->mResult:Lcom/android/wm/shell/draganddrop/AppResult;

    if-eqz v7, :cond_12

    const/4 v5, 0x1

    :goto_7
    iget-boolean v7, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    or-int/2addr v7, v5

    iput-boolean v7, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-eqz v5, :cond_19

    new-instance v5, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-direct {v5, v7, v0, v9}, Lcom/android/wm/shell/draganddrop/LaunchableDataDropTargetController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/common/DisplayController;)V

    iput-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

    :cond_19
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->from(Landroid/content/ClipData;I)Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    move-result-object v5

    iput-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    if-eqz v5, :cond_1a

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mProxy:Lcom/android/wm/shell/draganddrop/DragAndDropController$2;

    :try_start_0
    iget-object v9, v5, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-virtual {v7}, Lcom/samsung/android/multiwindow/IDragAndDropControllerProxy$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    iget v5, v5, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mDisplayId:I

    invoke-interface {v9, v7, v5}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->onConnected(Landroid/os/IBinder;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    :catch_0
    const-string v5, "Failed to connect."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    iget-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    iget-object v5, v5, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {v5}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->getInitialDropTargetVisible()Z

    move-result v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move/from16 v16, v5

    const/4 v5, 0x1

    goto :goto_a

    :catch_1
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    const/16 v16, 0x1

    :goto_a
    xor-int/lit8 v7, v16, 0x1

    iput-boolean v7, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->hideRequested:Z

    iget-object v5, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->mHiddenDropTargetArea:Landroid/graphics/Rect;

    iget-object v7, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragAndDropClientRecord:Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_2
    iget-object v7, v7, Lcom/android/wm/shell/draganddrop/DragAndDropClientRecord;->mClient:Lcom/samsung/android/multiwindow/IDragAndDropClient;

    invoke-interface {v7}, Lcom/samsung/android/multiwindow/IDragAndDropClient;->getHiddenDropTargetArea()Landroid/graphics/Rect;

    move-result-object v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_b

    :catch_2
    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    :goto_b
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_1a
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mSplitScreen:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->dismissAddToAppPairDialog()V

    iget-object v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dropTargetUiController:Lcom/android/wm/shell/draganddrop/IDropTargetUiController;

    if-eqz v2, :cond_1d

    invoke-interface {v2, v1, v4, v6}, Lcom/android/wm/shell/draganddrop/IDropTargetUiController;->onDrag(Landroid/view/DragEvent;ILcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1b

    invoke-static {v6}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->clearState(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    goto :goto_c

    :cond_1b
    if-nez v0, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1c

    invoke-static {v6, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    invoke-static {v6}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->clearState(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)V

    :cond_1c
    :goto_c
    return v0

    :cond_1d
    iget-boolean v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->isHandlingDrag:Z

    if-nez v2, :cond_1e

    return v8

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getAction()I

    move-result v2

    const/4 v3, -0x1

    packed-switch v2, :pswitch_data_0

    :goto_d
    const/4 v0, 0x1

    goto/16 :goto_10

    :pswitch_0
    iget-object v0, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    invoke-interface {v0, v1, v11}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    goto :goto_d

    :pswitch_1
    iget-object v0, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->show()V

    goto :goto_d

    :pswitch_2
    iget-object v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    iget-boolean v2, v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->mHasDropped:Z

    if-eqz v2, :cond_1f

    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_DROPPED:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Landroid/content/pm/ActivityInfo;)V

    goto :goto_f

    :cond_1f
    iget-object v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v2, v2, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    if-eq v2, v3, :cond_21

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 v4, 0x1

    aget-boolean v3, v3, v4

    if-eqz v3, :cond_20

    int-to-long v2, v2

    sget-object v7, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v12

    const/4 v10, 0x1

    const-string v11, "Re-showing task surface: taskId=%d"

    const-wide v8, -0xeebae0c205cc3a0L    # -5.168720368136379E236

    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_20
    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v3, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v3, v3, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/android/wm/shell/ShellTaskOrganizer;->setTaskSurfaceVisibility(IZ)V

    goto :goto_e

    :cond_21
    const/4 v4, 0x1

    :goto_e
    iget v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    sub-int/2addr v2, v4

    iput v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    new-instance v3, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda3;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v6, v4}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda3;-><init>(Lcom/android/wm/shell/draganddrop/DragAndDropController;Ljava/lang/Object;I)V

    invoke-interface {v2, v1, v3}, Lcom/android/wm/shell/draganddrop/IDragLayout;->hide(Landroid/view/DragEvent;Ljava/lang/Runnable;)V

    :goto_f
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;->GLOBAL_APP_DRAG_END:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger$DragAndDropUiEventEnum;

    iget-object v3, v1, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->mActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v1, v2, v3}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Landroid/content/pm/ActivityInfo;)V

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyListeners(Ljava/util/function/Function;)Z

    goto :goto_d

    :pswitch_3
    iget-object v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v2, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v2, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    invoke-virtual {v0, v1, v6}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->handleDrop(Landroid/view/DragEvent;Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;)Z

    move-result v0

    return v0

    :pswitch_4
    iget-object v0, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    check-cast v0, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->update(Landroid/view/DragEvent;)V

    goto/16 :goto_d

    :pswitch_5
    iget v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    if-eqz v2, :cond_22

    const-string v0, "Unexpected drag start during an active drag"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_22
    new-instance v2, Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v5

    iget-object v7, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v7, v4}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Landroid/view/DragEvent;->getDragFlags()I

    move-result v1

    invoke-direct {v2, v5, v4, v7, v1}, Lcom/android/wm/shell/draganddrop/DragSession;-><init>(Landroid/app/ActivityTaskManager;Lcom/android/wm/shell/common/DisplayLayout;Landroid/content/ClipData;I)V

    iput-object v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    invoke-virtual {v2}, Lcom/android/wm/shell/draganddrop/DragSession;->update()V

    iget v1, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->activeDragCount:I

    iget-object v1, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragLayout:Lcom/android/wm/shell/draganddrop/IDragLayout;

    iget-object v10, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget-object v2, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mLogger:Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;

    invoke-virtual {v2, v10}, Lcom/android/wm/shell/draganddrop/DragAndDropEventLogger;->logStart(Lcom/android/wm/shell/draganddrop/DragSession;)Lcom/android/internal/logging/InstanceId;

    move-result-object v11

    move-object v9, v1

    check-cast v9, Lcom/android/wm/shell/draganddrop/DropTargetLayout;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/wm/shell/draganddrop/DropTargetLayout;->prepare(Lcom/android/wm/shell/draganddrop/DragSession;Lcom/android/internal/logging/InstanceId;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Z)V

    iget-object v1, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v1, v1, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    if-eq v1, v3, :cond_24

    sget-object v2, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_DRAG_AND_DROP_enabled:[Z

    const/4 v3, 0x1

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_23

    int-to-long v1, v1

    sget-object v9, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DRAG_AND_DROP:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v14

    const/4 v12, 0x1

    const-string v13, "Hiding task surface: taskId=%d"

    const-wide v10, -0x28907dc6d9a9cfb8L    # -1.5155095011334413E113

    invoke-static/range {v9 .. v14}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_23
    iget-object v1, v0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mShellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v2, v6, Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;->dragSession:Lcom/android/wm/shell/draganddrop/DragSession;

    iget v2, v2, Lcom/android/wm/shell/draganddrop/DragSession;->hideDragSourceTaskId:I

    invoke-virtual {v1, v2, v8}, Lcom/android/wm/shell/ShellTaskOrganizer;->setTaskSurfaceVisibility(IZ)V

    :cond_24
    invoke-static {v6, v8}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->setDropTargetWindowVisibility(Lcom/android/wm/shell/draganddrop/DragAndDropController$PerDisplay;I)V

    new-instance v1, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda2;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/wm/shell/draganddrop/DragAndDropController$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/draganddrop/DragAndDropController;->notifyListeners(Ljava/util/function/Function;)Z

    goto/16 :goto_d

    :goto_10
    return v0

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

.method public final onLowMemory()V
    .locals 0

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 0

    return-void
.end method

.method public supportsMultiWindow()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/DragAndDropController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
