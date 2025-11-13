.class public final Lcom/android/wm/shell/desktopmode/DesktopTasksController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/transition/Transitions$TransitionHandler;
.implements Lcom/android/wm/shell/draganddrop/DragAndDropController$DragAndDropListener;


# static fields
.field public static final DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F


# instance fields
.field public final context:Landroid/content/Context;

.field public final desktopMode:Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

.field public final desktopModeShellCommandHandler:Lcom/android/wm/shell/desktopmode/DesktopModeShellCommandHandler;

.field public final desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

.field public final desktopTasksLimiter:Ljava/util/Optional;

.field public final displayController:Lcom/android/wm/shell/common/DisplayController;

.field public final dragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

.field public final dragToDesktopStateListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;

.field public final dragToDesktopTransitionHandler:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

.field public final enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

.field public final exitDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

.field public final launchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

.field public mIsDesktopModeActive:Z

.field public final mOnAnimationFinishedCallback:Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

.field public final mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final multiInstanceHelper:Lcom/android/wm/shell/common/MultiInstanceHelper;

.field public final recentTasksController:Lcom/android/wm/shell/recents/RecentTasksController;

.field public recentsAnimationRunning:Z

.field public final recentsTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

.field public final rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

.field public final shellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final shellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final sysUIPackageName:Ljava/lang/String;

.field public final taskVisibilityListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$taskVisibilityListener$1;

.field public final toggleResizeDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;

.field public final transitions:Lcom/android/wm/shell/transition/Transitions;

.field public visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v0, "persist.wm.debug.desktop_mode_initial_bounds_scale"

    const/16 v1, 0x4b

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;Lcom/android/wm/shell/draganddrop/DragAndDropController;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;Lcom/android/wm/shell/common/LaunchAdjacentController;Lcom/android/wm/shell/recents/RecentsTransitionHandler;Lcom/android/wm/shell/common/MultiInstanceHelper;Landroid/os/Handler;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/Optional;Lcom/android/wm/shell/recents/RecentTasksController;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;",
            "Lcom/android/wm/shell/draganddrop/DragAndDropController;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;",
            "Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;",
            "Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;",
            "Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;",
            "Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;",
            "Lcom/android/wm/shell/desktopmode/DesktopModeLoggerTransitionObserver;",
            "Lcom/android/wm/shell/common/LaunchAdjacentController;",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            "Lcom/android/wm/shell/common/MultiInstanceHelper;",
            "Landroid/os/Handler;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;",
            ">;",
            "Lcom/android/wm/shell/recents/RecentTasksController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    move-object v3, p3

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellController:Lcom/android/wm/shell/sysui/ShellController;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object v3, p7

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v3, p8

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    move-object v3, p9

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragAndDropController:Lcom/android/wm/shell/draganddrop/DragAndDropController;

    move-object v3, p10

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    move-object/from16 v3, p12

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->exitDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->toggleResizeDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragToDesktopTransitionHandler:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->launchAdjacentController:Lcom/android/wm/shell/common/LaunchAdjacentController;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->recentsTransitionHandler:Lcom/android/wm/shell/recents/RecentsTransitionHandler;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->multiInstanceHelper:Lcom/android/wm/shell/common/MultiInstanceHelper;

    move-object/from16 v3, p21

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v3, p22

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopTasksLimiter:Ljava/util/Optional;

    move-object/from16 v3, p23

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->recentTasksController:Lcom/android/wm/shell/recents/RecentTasksController;

    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopModeShellCommandHandler;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeShellCommandHandler;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeShellCommandHandler:Lcom/android/wm/shell/desktopmode/DesktopModeShellCommandHandler;

    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopTasksController$taskVisibilityListener$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$taskVisibilityListener$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->taskVisibilityListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$taskVisibilityListener$1;

    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragToDesktopStateListener:Lcom/android/wm/shell/desktopmode/DesktopTasksController$dragToDesktopStateListener$1;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x104003a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->sysUIPackageName:Ljava/lang/String;

    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    iput-object v3, v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopMode:Lcom/android/wm/shell/desktopmode/DesktopTasksController$DesktopModeImpl;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MD_DEX_STANDALONE_LAUNCH_POLICY:Z

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;

    move-object/from16 v4, p20

    invoke-direct {v3, p0, p1, v4}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$SettingsObserver;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v3, Lcom/android/wm/shell/desktopmode/DesktopTasksController$1;

    invoke-direct {v3, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    invoke-virtual {p2, v3, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    invoke-static {p1}, Lcom/android/wm/shell/shared/DesktopModeStatus;->canEnterDesktopMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$2;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$2;-><init>(Lcom/android/wm/shell/desktopmode/DesktopTasksController;)V

    invoke-virtual {p2, v1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static getDefaultDesktopTaskBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;
    .locals 4

    iget v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    int-to-float v1, v0

    sget v2, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->DESKTOP_MODE_INITIAL_BOUNDS_SCALE:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    int-to-float v3, p0

    mul-float/2addr v3, v2

    float-to-int v2, v3

    sub-int/2addr p0, v2

    div-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    new-instance v3, Landroid/graphics/Rect;

    add-int/2addr v1, v0

    add-int/2addr v2, p0

    invoke-direct {v3, v0, p0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public static isActive(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "new_dex"

    const/4 v2, -0x2

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to read NEW_DEX setting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v3, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p0, v3}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0
.end method

.method public static synthetic moveToDesktop$default(Lcom/android/wm/shell/desktopmode/DesktopTasksController;ILcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V
    .locals 1

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToDesktop(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    return-void
.end method


# virtual methods
.method public final addAndGetMinimizeChangesIfNeeded(ILandroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopTasksLimiter:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopTasksLimiter:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    iget v3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopTasksLimiter: addMinimizeBackTaskChangesIfNeeded, newFrontTask=%d"

    invoke-static {v2, v0, v3}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->taskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getActiveNonMinimizedTasksOrderedFrontToBack(I)Ljava/util/List;

    move-result-object p1

    iget p3, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p3, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->createOrderedTaskListWithGivenTaskInFront(ILjava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->getTaskToMinimizeIfNeeded(Ljava/util/List;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p1, p0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-object v1, p0

    :cond_1
    return-object v1
.end method

.method public final addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->getDisplayAreaInfo(I)Landroid/window/DisplayAreaInfo;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    const/4 v0, 0x0

    :cond_1
    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingDynamicInitialBounds()Z

    iget-object p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    invoke-static {}, Lcom/android/wm/shell/shared/DesktopModeStatus;->useDesktopOverrideDensity()Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    sget p2, Lcom/android/wm/shell/shared/DesktopModeStatus;->DESKTOP_DENSITY_OVERRIDE:I

    invoke-virtual {p1, p0, p2}, Landroid/window/WindowContainerTransaction;->setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_2
    return-void
.end method

.method public final addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 2

    iget v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->getDisplayAreaInfo(I)Landroid/window/DisplayAreaInfo;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, v0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    invoke-static {}, Lcom/android/wm/shell/shared/DesktopModeStatus;->useDesktopOverrideDensity()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p1, p2, p0}, Landroid/window/WindowContainerTransaction;->setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_1
    return-void
.end method

.method public final addPendingMinimizeTransition(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopTasksLimiter:Ljava/util/Optional;

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopTasksController$addPendingMinimizeTransition$1;

    invoke-direct {v0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$addPendingMinimizeTransition$1;-><init>(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;Ljava/lang/Integer;)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 6

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    if-nez p3, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    move-object v2, p3

    :goto_0
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopTasksController: bringDesktopAppsToFront, newTaskIdInFront=%s"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingWallpaperActivity()Z

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getActiveNonMinimizedTasksOrderedFrontToBack(I)Ljava/util/List;

    move-result-object p1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopTasksLimiter:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopTasksLimiter:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->createOrderedTaskListWithGivenTaskInFront(ILjava/util/List;)Ljava/util/List;

    move-result-object p3

    invoke-virtual {v0, p3}, Lcom/android/wm/shell/desktopmode/DesktopTasksLimiter;->getTaskToMinimizeIfNeeded(Ljava/util/List;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p3

    goto :goto_1

    :cond_1
    const/4 p3, 0x0

    :goto_1
    check-cast p1, Ljava/lang/Iterable;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-eqz p3, :cond_3

    iget v5, p3, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v3, v5, :cond_3

    move v4, v2

    :cond_3
    xor-int/2addr v2, v4

    if-eqz v2, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->reversed(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p2, p1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_4

    :cond_7
    return-object p3
.end method

.method public final exitSplitIfApplicable(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    :cond_0
    iget v2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskInSplitScreen$1(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez v0, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    move-object v2, v0

    :goto_0
    if-nez v0, :cond_2

    move-object v0, v1

    :cond_2
    iget p2, p2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageOfTask(I)I

    move-result p2

    const/16 v0, 0xc

    invoke-virtual {v2, p2, v0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->prepareExitSplitScreen(IILandroid/window/WindowContainerTransaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    move-object v1, p0

    :goto_1
    invoke-virtual {v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getTransitionHandler()Lcom/android/wm/shell/splitscreen/StageCoordinator;

    move-result-object p0

    if-eqz p0, :cond_4

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->setSplitsVisible(Z)V

    :cond_4
    return-void
.end method

.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public final getFocusedFreeformTask(I)Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 2

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/app/ActivityManager$RunningTaskInfo;

    return-object p1
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public final getVisualIndicator()Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    return-object p0
.end method

.method public final handleRequest(Landroid/os/IBinder;Landroid/window/TransitionRequestInfo;)Landroid/window/WindowContainerTransaction;
    .locals 7

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopTasksController: handleRequest request=%s"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getTriggerTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->recentsAnimationRunning:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    const-string/jumbo v2, "recents animation is running"

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingWallpaperActivity()Z

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v2

    const-string v5, ")"

    if-eq v2, v3, :cond_1

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_1

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result v2

    const-string/jumbo v6, "transition type not handled ("

    invoke-static {v2, v6, v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    const-string/jumbo v2, "triggerTask is null"

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    if-eq v2, v3, :cond_3

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v2

    const-string v6, "activityType not handled ("

    invoke-static {v2, v6, v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    if-eq v2, v3, :cond_4

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const/4 v6, 0x5

    if-eq v2, v6, :cond_4

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    const-string/jumbo v6, "windowingMode not handled ("

    invoke-static {v2, v6, v5}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    const-string v2, ""

    move v5, v3

    :goto_1
    const/4 v6, 0x0

    if-nez v5, :cond_5

    const-string p0, "DesktopTasksController: skipping handleRequest reason=%s"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p0, p1}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6

    :cond_5
    if-eqz v0, :cond_f

    invoke-virtual {p2}, Landroid/window/TransitionRequestInfo;->getType()I

    move-result p2

    const/4 v2, 0x4

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    if-ne p2, v2, :cond_6

    iget p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isOnlyActiveTask(I)Z

    goto/16 :goto_4

    :cond_6
    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingModalsPolicy()Z

    iget-object p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_2

    :cond_7
    move-object p2, v6

    :goto_2
    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->sysUIPackageName:Ljava/lang/String;

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-virtual {v0}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result p1

    if-ne p1, v3, :cond_8

    goto/16 :goto_4

    :cond_8
    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, v6, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v0}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result p2

    if-ne p2, v3, :cond_a

    new-array p2, v4, [Ljava/lang/Object;

    const-string v2, "DesktopTasksController: handleFullscreenTaskLaunch"

    invoke-static {v1, v2, p2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v5, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    move-result p2

    if-lez p2, :cond_f

    iget p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    const-string v2, "DesktopTasksController: switch fullscreen task to freeform on transition taskId=%d"

    invoke-static {v1, v2, p2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, v6, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p0, p2, v6, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addAndGetMinimizeChangesIfNeeded(ILandroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addPendingMinimizeTransition(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p2

    if-eqz p2, :cond_f

    new-array p2, v4, [Ljava/lang/Object;

    const-string v2, "DesktopTasksController: handleFreeformTaskLaunch"

    invoke-static {v1, v2, p2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v5, p2}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->getVisibleTaskCount(I)I

    move-result p2

    if-lez p2, :cond_e

    new-instance p2, Landroid/window/WindowContainerTransaction;

    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-static {}, Lcom/android/wm/shell/shared/DesktopModeStatus;->useDesktopOverrideDensity()Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    sget v3, Lcom/android/wm/shell/shared/DesktopModeStatus;->DESKTOP_DENSITY_OVERRIDE:I

    invoke-virtual {p2, v2, v3}, Landroid/window/WindowContainerTransaction;->setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    :cond_b
    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p0, v2, p2, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addAndGetMinimizeChangesIfNeeded(ILandroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addPendingMinimizeTransition(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_3

    :cond_c
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_4

    :cond_d
    :goto_3
    move-object v6, p2

    goto :goto_4

    :cond_e
    iget p1, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "DesktopTasksController: switch freeform task to fullscreen oon transition taskId=%d"

    invoke-static {v1, p2, p1}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Landroid/window/WindowContainerTransaction;

    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget p2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, p2, p1, v2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;Ljava/lang/Integer;)Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p1, p0, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    move-object v6, p1

    :cond_f
    :goto_4
    if-nez v6, :cond_10

    const-string p0, "null"

    goto :goto_5

    :cond_10
    move-object p0, v6

    :goto_5
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "DesktopTasksController: handleRequest result=%s"

    invoke-static {v1, p1, p0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v6
.end method

.method public final moveHomeTaskToFront(Landroid/window/WindowContainerTransaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTasks(I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getToken()Landroid/window/WindowContainerToken;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p1, p0, v0}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    :cond_2
    return-void
.end method

.method public final moveTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 4

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopTasksController: moveTaskToFront taskId=%d"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addAndGetMinimizeChangesIfNeeded(ILandroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p1

    sget-boolean v1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addPendingMinimizeTransition(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_0
    return-void
.end method

.method public final moveToDesktop(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/ShellTaskOrganizer;->getRunningTaskInfo(I)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->moveToDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V

    goto :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->recentTasksController:Lcom/android/wm/shell/recents/RecentTasksController;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/android/wm/shell/recents/RecentTasksController;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    const v2, 0x7fffffff

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/ActivityTaskManager;->getRecentTasks(III)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RecentTaskInfo;

    iget-boolean v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->isVisible:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    iget v4, v3, Landroid/app/ActivityManager$RecentTaskInfo;->taskId:I

    if-ne p1, v4, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_4

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopTasksController: moveToDesktopFromNonRunningTask taskId=%d"

    invoke-static {v2, v0, v3}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, p2, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;Ljava/lang/Integer;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p2, p1, v1}, Landroid/window/WindowContainerTransaction;->startTask(ILandroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->moveToDesktop(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addPendingMinimizeTransition(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_4
    :goto_3
    return-void
.end method

.method public final moveToDesktop(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V
    .locals 3

    invoke-static {}, Lcom/android/window/flags/Flags;->enableDesktopWindowingModalsPolicy()Z

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->sysUIPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "DesktopTasksController: Cannot enter desktop, systemUI top activity found."

    invoke-static {p1, p0, p2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopTasksController: moveToDesktop taskId=%d"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->exitSplitIfApplicable(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->bringDesktopAppsToFront(ILandroid/window/WindowContainerTransaction;Ljava/lang/Integer;)Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    invoke-virtual {p0, p2, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToDesktopChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->enterDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    invoke-virtual {p1, p2, p3}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->moveToDesktop(Landroid/window/WindowContainerTransaction;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addPendingMinimizeTransition(Landroid/os/IBinder;Landroid/app/ActivityManager$RunningTaskInfo;)V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_1
    return-void
.end method

.method public final moveToFullscreenWithAnimation(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Lcom/android/wm/shell/common/desktopmode/DesktopModeTransitionSource;)V
    .locals 3

    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "DesktopTasksController: moveToFullscreen with animation taskId=%d"

    invoke-static {v1, v0, v2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->addMoveToFullscreenChanges(Landroid/window/WindowContainerTransaction;Landroid/app/ActivityManager$RunningTaskInfo;)V

    sget-boolean p1, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->exitDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;

    iput-object p2, p1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPosition:Landroid/graphics/Point;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mOnAnimationFinishedCallback:Lcom/android/wm/shell/desktopmode/DesktopTasksController$mOnAnimationFinishedCallback$1;

    iput-object p0, p1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mOnAnimationFinishedCallback:Ljava/util/function/Consumer;

    sget p0, Lcom/android/wm/shell/desktopmode/DesktopModeTransitionTypes;->$r8$clinit:I

    sget-object p0, Lcom/android/wm/shell/desktopmode/DesktopModeTransitionTypes$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p0, p0, p2

    const/4 p2, 0x1

    if-eq p0, p2, :cond_2

    const/4 p2, 0x3

    if-eq p0, p2, :cond_1

    const/4 p2, 0x4

    if-eq p0, p2, :cond_0

    const/16 p0, 0x454

    goto :goto_0

    :cond_0
    const/16 p0, 0x451

    goto :goto_0

    :cond_1
    const/16 p0, 0x453

    goto :goto_0

    :cond_2
    const/16 p0, 0x452

    :goto_0
    iget-object p2, p1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p2, p0, v0, p1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    move-result-object p0

    iget-object p1, p1, Lcom/android/wm/shell/desktopmode/ExitDesktopTaskTransitionHandler;->mPendingTransitionTokens:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p1, v0}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    :goto_1
    return-void
.end method

.method public final onUnhandledDrag(Landroid/app/PendingIntent;Landroid/view/SurfaceControl;Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;Landroid/view/DragEvent;)Z
    .locals 4

    iget-object p4, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->displayData:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$displayData$1;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository$DisplayData;->activeTasks:Landroid/util/ArraySet;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->isVisibleTask(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p4, Lcom/android/wm/shell/common/MultiInstanceHelper;->Companion:Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/wm/shell/common/MultiInstanceHelper$Companion;->getComponent(Landroid/app/PendingIntent;)Landroid/content/ComponentName;

    move-result-object p4

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->multiInstanceHelper:Lcom/android/wm/shell/common/MultiInstanceHelper;

    invoke-virtual {v0, p4}, Lcom/android/wm/shell/common/MultiInstanceHelper;->supportsMultiInstanceSplit(Landroid/content/ComponentName;)Z

    move-result p4

    if-nez p4, :cond_3

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    new-array p2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Dropped intent does not support multi-instance"

    invoke-static {p1, p0, p2}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_3
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object p4

    const/4 v0, 0x5

    invoke-virtual {p4, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    const/high16 v0, 0x18000000

    invoke-virtual {p4, v0}, Landroid/app/ActivityOptions;->setPendingIntentLaunchFlags(I)V

    const/4 v0, 0x2

    invoke-virtual {p4, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityStartMode(I)Landroid/app/ActivityOptions;

    const/4 v0, 0x1

    invoke-virtual {p4, v0}, Landroid/app/ActivityOptions;->setPendingIntentBackgroundActivityLaunchAllowedByPermission(Z)V

    new-instance v1, Landroid/window/WindowContainerTransaction;

    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    invoke-virtual {p4}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p4

    invoke-virtual {v1, p1, v3, p4}, Landroid/window/WindowContainerTransaction;->sendPendingIntent(Landroid/app/PendingIntent;Landroid/content/Intent;Landroid/os/Bundle;)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-virtual {p0, v0, v1, v3}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p3, p0}, Lcom/android/wm/shell/draganddrop/GlobalDragListener$onUnhandledDrop$1;->accept(Ljava/lang/Object;)V

    new-instance p0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {p0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    invoke-virtual {p0, p2}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return v0

    :cond_4
    :goto_1
    return v2
.end method

.method public final releaseVisualIndicator()V
    .locals 2

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->releaseVisualIndicator(Landroid/view/SurfaceControl$Transaction;)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    new-instance v1, Lcom/android/wm/shell/desktopmode/DesktopTasksController$releaseVisualIndicator$1;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController$releaseVisualIndicator$1;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    return-void
.end method

.method public final requestSplit(Landroid/app/ActivityManager$RunningTaskInfo;Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->dragToDesktopTransitionHandler:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;

    iget-object v1, v0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->transitionState:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$TransitionState;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/app/TaskInfo;->getWindowingMode()I

    move-result v3

    if-ne v3, v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_6

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->releaseVisualIndicator()V

    if-eqz p2, :cond_3

    sget-object p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_LEFT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    goto :goto_2

    :cond_3
    sget-object p0, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;->CANCEL_SPLIT_RIGHT:Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;

    :goto_2
    invoke-virtual {v0, p0}, Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler;->cancelDragToDesktopTransition(Lcom/android/wm/shell/desktopmode/DragToDesktopTransitionHandler$CancelState;)V

    goto :goto_3

    :cond_4
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-object v3, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v1, v3}, Landroid/window/WindowContainerTransaction;->setDensityDpi(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->splitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-nez p0, :cond_5

    const/4 p0, 0x0

    :cond_5
    xor-int/2addr p2, v2

    iget-object v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->requestEnterSplitSelect(ILandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;Landroid/window/WindowContainerTransaction;)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final setDisplayAreaWindowingMode(IILandroid/window/WindowContainerTransaction;)V
    .locals 7

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;->getDisplayAreaInfo(I)Landroid/window/DisplayAreaInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    sget-object p0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object p2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string/jumbo p3, "unable to update windowing mode for display "

    const-string v1, " display not found"

    invoke-static {p1, p3, v1}, Landroidx/compose/foundation/lazy/LazyListMeasuredItem$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p3, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2, p1, p3}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    sget-object v1, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    iget-object v3, p0, Landroid/window/DisplayAreaInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v3

    const-string/jumbo v4, "setWindowingMode: displayId="

    const-string v5, " current wmMode="

    const-string v6, " new wmMode="

    invoke-static {p1, v3, v4, v5, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2, p1, v0}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Landroid/window/DisplayAreaInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {p3, p0, p2}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    return-void
.end method

.method public final snapToHalfScreen(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/desktopmode/DesktopTasksController$SnapPosition;)V
    .locals 4

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    sget-object v3, Lcom/android/wm/shell/desktopmode/DesktopTasksController$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v3, p2

    const/4 v3, 0x1

    if-eq p2, v3, :cond_2

    if-ne p2, v2, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int v0, v2, v0

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v0, v3, v2, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_2
    new-instance p2, Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    :goto_0
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, p2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    move-result-object p1

    sget-boolean p2, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->toggleResizeDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;

    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v0, 0x3f6

    invoke-virtual {p2, v0, p1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_1
    return-void
.end method

.method public final startAnimation(Landroid/os/IBinder;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toggleDesktopTaskSize(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 6

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iget-object v1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->desktopModeTaskRepository:Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;

    if-eqz v3, :cond_2

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v3, v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->boundsBeforeMaximizeByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    if-eqz v1, :cond_1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingDynamicInitialBounds()Z

    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->getDefaultDesktopTaskBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, v4, Lcom/android/wm/shell/desktopmode/DesktopModeTaskRepository;->boundsBeforeMaximizeByTaskId:Landroid/util/SparseArray;

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v0}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_0
    new-instance v0, Landroid/window/WindowContainerTransaction;

    invoke-direct {v0}, Landroid/window/WindowContainerTransaction;-><init>()V

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v0, p1, v2}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    move-result-object p1

    sget-boolean v0, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->toggleResizeDesktopTaskTransitionHandler:Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/ToggleResizeDesktopTaskTransitionHandler;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/16 v1, 0x3f6

    invoke-virtual {v0, v1, p1, p0}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->shellTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {p0, p1}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    :goto_1
    return-void
.end method

.method public final updateDesktopModeActive(Z)V
    .locals 9

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MD_DEX_STANDALONE_LAUNCH_POLICY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mIsDesktopModeActive:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/wm/shell/util/KtProtoLog;->Companion:Lcom/android/wm/shell/util/KtProtoLog$Companion;

    sget-object v1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_DESKTOP_MODE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    const-string/jumbo v2, "updateDesktopModeActive: active="

    invoke-static {v2, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger$allowFingerprintOnCurrentOccludingActivityChanged$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1, v2, v4}, Lcom/android/wm/shell/util/KtProtoLog$Companion;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityTaskManager;->getInstance()Landroid/app/ActivityTaskManager;

    move-result-object v1

    const v2, 0x7fffffff

    invoke-virtual {v1, v2, v3, v3, v3}, Landroid/app/ActivityTaskManager;->getTasks(IZZI)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/window/WindowContainerTransaction;

    invoke-direct {v2}, Landroid/window/WindowContainerTransaction;-><init>()V

    const/4 v4, 0x1

    const/4 v5, 0x5

    if-eqz p1, :cond_1

    invoke-virtual {p0, v0, v5, v2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->setDisplayAreaWindowingMode(IILandroid/window/WindowContainerTransaction;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v4, v2}, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->setDisplayAreaWindowingMode(IILandroid/window/WindowContainerTransaction;)V

    :goto_0
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result v7

    const/4 v8, 0x2

    if-eq v7, v8, :cond_2

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v7

    if-eq v7, v4, :cond_6

    if-eq v7, v5, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v7, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v6, v3}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_4
    iget-boolean v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    if-eqz v7, :cond_5

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v7, v5}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v6, v4}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_5
    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v7, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v7, v3}, Landroid/window/WindowContainerTransaction;->setAlwaysOnTop(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v7, v3}, Landroid/window/WindowContainerTransaction;->reorder(Landroid/window/WindowContainerToken;Z)Landroid/window/WindowContainerTransaction;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v3, v3, v3, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v6, v7}, Landroid/window/WindowContainerTransaction;->setBounds(Landroid/window/WindowContainerToken;Landroid/graphics/Rect;)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    iget-object v7, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    iget-boolean v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->isVisible:Z

    invoke-virtual {v2, v7, v6}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_7
    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    invoke-virtual {v2, v6, v3}, Landroid/window/WindowContainerTransaction;->setWindowingMode(Landroid/window/WindowContainerToken;I)Landroid/window/WindowContainerTransaction;

    goto :goto_1

    :cond_8
    const/4 v1, 0x4

    invoke-virtual {v2, v1}, Landroid/window/WindowContainerTransaction;->setTransactionType(I)V

    if-eqz p1, :cond_9

    const-string v1, "on"

    goto :goto_2

    :cond_9
    const-string v1, "off"

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "new_dex("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/window/WindowContainerTransaction;->setDisplayIdForChangeTransition(ILjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->mIsDesktopModeActive:Z

    const/4 p1, 0x0

    iget-object p0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->transitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v0, 0x6

    invoke-virtual {p0, v0, v2, p1}, Lcom/android/wm/shell/transition/Transitions;->startTransition(ILandroid/window/WindowContainerTransaction;Lcom/android/wm/shell/transition/Transitions$TransitionHandler;)Landroid/os/IBinder;

    return-void
.end method

.method public final updateVisualIndicator(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;FF)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    iget-object v5, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->context:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->rootTaskDisplayAreaOrganizer:Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;

    iget-object v2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->syncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v4, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->displayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v1, v0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;-><init>(Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;Landroid/view/SurfaceControl;Lcom/android/wm/shell/RootTaskDisplayAreaOrganizer;)V

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    if-nez p2, :cond_1

    iput-object v0, p0, Lcom/android/wm/shell/desktopmode/DesktopTasksController;->visualIndicator:Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;

    :cond_1
    new-instance p0, Landroid/graphics/PointF;

    invoke-direct {p0, p3, p4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator;->updateIndicatorType(Landroid/graphics/PointF;I)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$IndicatorType;

    move-result-object p0

    return-object p0
.end method
