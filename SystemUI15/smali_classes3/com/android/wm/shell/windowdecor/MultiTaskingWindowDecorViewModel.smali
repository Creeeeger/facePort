.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/WindowDecorViewModel;
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


# instance fields
.field public final mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

.field public final mContext:Landroid/content/Context;

.field public final mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public final mDragStartListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$DragStartListenerImpl;

.field public final mExclusionRegion:Landroid/graphics/Region;

.field public final mFixedRotatingDisplayIds:Landroid/util/ArraySet;

.field public final mGestureExclusionListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;

.field public final mInputManager:Landroid/hardware/input/InputManager;

.field public mIsPinned:Z

.field public mIsTranslucent:Z

.field public mIsUserInteracting:Z

.field public final mKeyguardChangeListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1;

.field public mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

.field public mLastImmersiveTaskId:I

.field public final mMainChoreographer:Landroid/view/Choreographer;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mNSController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

.field public mPinTaskId:I

.field public final mRecentsTransitionHandler:Ljava/util/Optional;

.field public final mRotationController:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda0;

.field public mSettingsObserver:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;

.field public mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

.field public final mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

.field public final mTransitionToTaskInfo:Ljava/util/Map;

.field public final mTransitions:Lcom/android/wm/shell/transition/Transitions;

.field public final mWindowDecorByTaskId:Landroid/util/SparseArray;

.field public final mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public static -$$Nest$misCaptionDragEnabled(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    move v0, v3

    goto :goto_1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX_SNAPPING_WINDOW:Z

    if-eqz v2, :cond_2

    iget-object v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v2

    if-eqz v2, :cond_2

    iget p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {p1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    if-eq v1, v3, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_2
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result p0

    if-eqz p0, :cond_3

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public static -$$Nest$mupdateColorThemeState(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wallpapertheme_state"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wallpapertheme_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :cond_1
    sget-boolean v1, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    if-eq v1, v2, :cond_2

    sput-boolean v2, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_ENABLED:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "updateColorThemeState: enabled="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiTaskingWindowDecorViewModel"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v1, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_COLOR:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    sput-object v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->COLOR_THEME_COLOR:Ljava/lang/String;

    new-instance v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    :cond_3
    return-void
.end method

.method public static -$$Nest$mupdateFullscreenHandlerState(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V
    .locals 11

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_window_menu_in_full_screen"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v3, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    if-eq v3, v0, :cond_4

    sput-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateFullscreenHandlerState: enabled="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MultiTaskingWindowDecorViewModel"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v5}, Lcom/android/wm/shell/ShellTaskOrganizer;->getVisibleTaskAppearedInfos()Ljava/util/List;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v7}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v9

    if-ne v9, v1, :cond_1

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {p0, v7, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z

    move-result v9

    if-eqz v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "onFullscreenHandlerEnabled: show, t# "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {p0, v7, v6, v0, v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v6, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateNonFreeformCaptionVisibility()V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_2
    if-ltz v2, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "onFullscreenHandlerDisabled: remove, "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;Lcom/android/wm/shell/sysui/ShellController;Landroid/view/IWindowManager;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellInit;Ljava/util/Optional;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/transition/Transitions;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;",
            "Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Landroid/view/IWindowManager;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/recents/RecentsTransitionHandler;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p5

    move-object v3, p6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTransitionToTaskInfo:Ljava/util/Map;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    iput-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mFixedRotatingDisplayIds:Landroid/util/ArraySet;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsUserInteracting:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsTranslucent:Z

    iput-boolean v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsPinned:Z

    const/4 v5, -0x1

    iput v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mPinTaskId:I

    new-instance v6, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$DragStartListenerImpl;

    invoke-direct {v6, p0, v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$DragStartListenerImpl;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;I)V

    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$DragStartListenerImpl;

    iput v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveTaskId:I

    new-instance v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1;

    invoke-direct {v4, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$1;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V

    invoke-static {}, Landroid/graphics/Region;->obtain()Landroid/graphics/Region;

    move-result-object v5

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    new-instance v5, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V

    iput-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mGestureExclusionListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;

    new-instance v5, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda0;

    invoke-direct {v5, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    move-object v6, p2

    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    move-object v6, p3

    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    move-object v6, p4

    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iput-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    move-object v6, p7

    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    sget-boolean v6, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-nez v6, :cond_0

    new-instance v6, Lcom/android/wm/shell/windowdecor/TaskOperations;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p1, p6}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    :cond_0
    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object/from16 v3, p10

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mNSController:Lcom/android/wm/shell/naturalswitching/NaturalSwitchingDropTargetController;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowManager:Landroid/view/IWindowManager;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/input/InputManager;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mInputManager:Landroid/hardware/input/InputManager;

    new-instance v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;I)V

    move-object/from16 v3, p15

    invoke-virtual {v3, v1, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v1, :cond_1

    invoke-virtual {p5, p0}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    :cond_1
    iget-object v1, v2, Lcom/android/wm/shell/common/DisplayController;->mChangeController:Lcom/android/wm/shell/common/DisplayChangeController;

    iget-object v1, v1, Lcom/android/wm/shell/common/DisplayChangeController;->mDisplayChangeListener:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz v1, :cond_2

    move-object/from16 v1, p12

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/sysui/ShellController;->addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V

    :cond_2
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v1, :cond_3

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mRecentsTransitionHandler:Ljava/util/Optional;

    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SA_LOGGING:Z

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    invoke-direct {v1}, Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;-><init>()V

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mCaptionButtonLogger:Lcom/android/wm/shell/windowdecor/MultitaskingCaptionButtonLogger;

    :cond_4
    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$3;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->registerDexTransientDelayListener(Lcom/samsung/android/multiwindow/IDexTransientCaptionDelayListener;)V

    return-void
.end method

.method public static canUseFullscreenHandler(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 3

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_FOLDING_POLICY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    if-ne p0, v2, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method public static isExitingPipToLastParent(Landroid/app/ActivityManager$RunningTaskInfo;)Z
    .locals 2

    iget v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setupCaptionColor(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V
    .locals 1

    invoke-static {p0}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->setCaptionColor(I)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->setCaptionColor(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v12, p1

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v2, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->close()V

    :cond_0
    new-instance v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainChoreographer:Landroid/view/Choreographer;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v10, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object v1, v13

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v11}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v2, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const-string v14, "MultiTaskingWindowDecorViewModel"

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MultiTaskingWindowDecoration created. taskId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", num_remains="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v14, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v15, 0x0

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mRecentsTransitionHandler:Ljava/util/Optional;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mAnimExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mMainHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDragStartListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$DragStartListenerImpl;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    const/4 v10, 0x0

    move-object v2, v1

    move-object v4, v13

    invoke-direct/range {v2 .. v11}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/windowdecor/DragPositioningCallbackUtility$DragStartListener;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Lcom/android/wm/shell/windowdecor/TaskMotionController;Ljava/util/Optional;)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v2

    if-nez v2, :cond_3

    iget-boolean v2, v12, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    if-eqz v2, :cond_3

    iput-object v1, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    iput-object v1, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZLandroid/graphics/Region;)V

    invoke-static {v12, v13}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->setupCaptionColor(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "createWindowDecoration: forceHidden, t#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v12, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    new-instance v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-direct {v2, v0, v12, v1, v15}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;I)V

    iput-object v2, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iput-object v2, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iput-object v1, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    iput-object v1, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput-object v2, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iget-object v3, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v2, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    iput-object v1, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskDragResizer:Lcom/android/wm/shell/windowdecor/TaskDragResizer;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZLandroid/graphics/Region;)V

    invoke-static {v12, v13}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->setupCaptionColor(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    :goto_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v13, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateDimensions(Landroid/content/res/Resources;)V

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTransitions:Lcom/android/wm/shell/transition/Transitions;

    invoke-direct {v1, v3, v4, v13, v2}, Lcom/android/wm/shell/windowdecor/FluidResizeTaskPositioner;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;Lcom/android/wm/shell/transition/Transitions;Lcom/android/wm/shell/windowdecor/WindowDecoration;Lcom/android/wm/shell/common/DisplayController;)V

    new-instance v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-direct {v2, v0, v12, v1, v15}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;I)V

    iput-object v2, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iput-object v2, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iput-object v1, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    move-object v3, v1

    check-cast v3, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iput-object v3, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput-object v2, v13, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iget-object v3, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, v2, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    iput-object v1, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskDragResizer:Lcom/android/wm/shell/windowdecor/TaskDragResizer;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v13

    move-object/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZLandroid/graphics/Region;)V

    invoke-static {v12, v13}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->setupCaptionColor(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    :cond_5
    :goto_2
    invoke-virtual {v13}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateRoundedCornerForSplit()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v1, :cond_6

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iput-object v0, v13, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    :cond_6
    return-void
.end method

.method public final destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->close()V

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mIsPinned:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mPinTaskId:I

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v2}, Landroid/window/TaskOrganizer;->togglePinTaskState(I)Z

    const/4 v1, 0x0

    iget v2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, v2, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->toggleDisableAllPinButton(IZ)V

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->resetLastImmersiveDecoration()V

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MultiTaskingWindowDecoration destroyed. taskId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", num_remains="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", callers="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p0, 0x3

    invoke-static {p0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MultiTaskingWindowDecorViewModel"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final forAllDecorations(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final getDecoration(I)Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    return-object p0
.end method

.method public final onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 0

    new-instance p2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$$ExternalSyntheticLambda5;-><init>(I)V

    invoke-virtual {p0, p2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->forAllDecorations(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onFixedRotationFinished(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mFixedRotatingDisplayIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onFixedRotationStarted(II)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mFixedRotatingDisplayIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onInit()V
    .locals 3

    const-string v0, "MultiTaskingWindowDecorViewModel"

    const-string v1, "onInit"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSettingsObserver:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSettingsObserver:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$SettingsObserver;

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mGestureExclusionListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$2;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    invoke-interface {v1, v2, p0}, Landroid/view/IWindowManager;->registerSystemGestureExclusionListener(Landroid/view/ISystemGestureExclusionListener;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Failed to register window manager callbacks"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public final onTaskChanging(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZLandroid/graphics/Region;)V

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->removeTaskToMotionInfo(Z)V

    :cond_3
    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPosition:Landroid/graphics/Point;

    iget p2, p1, Landroid/graphics/Point;->x:I

    iget p3, p0, Landroid/graphics/Rect;->left:I

    if-ne p2, p3, :cond_4

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget p2, p0, Landroid/graphics/Rect;->top:I

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 p2, -0x1

    invoke-virtual {p4, p1, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->getStashScaleOffsetX(I)F

    move-result p1

    iget-object p2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget p3, p0, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    add-float/2addr p3, p1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p4, p2, p3, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object p2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v7, p2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    const/4 v5, 0x0

    const/4 v6, 0x0

    move v4, v7

    invoke-virtual/range {v2 .. v7}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;FFFF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPosition:Landroid/graphics/Point;

    iget p3, p0, Landroid/graphics/Rect;->left:I

    float-to-int p1, p1

    add-int/2addr p3, p1

    iget p0, p0, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2, p3, p0}, Landroid/graphics/Point;->set(II)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final onTaskClosing(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .locals 8

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v1, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->onTaskClosing()V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->removeTaskToMotionInfo(Z)V

    :cond_2
    iget-object v7, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mExclusionRegion:Landroid/graphics/Region;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZLandroid/graphics/Region;)V

    return-void
.end method

.method public final onTaskInfoChanged(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->destroyWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;)V

    return-void

    :cond_1
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_MOTION:Z

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateDimensions(Landroid/content/res/Resources;)V

    :cond_2
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v3, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    iget-object v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-virtual {v3, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->resetStashedFreeform(Z)V

    :cond_3
    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isMotionAnimating()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/TaskMotionController;->isBoundsAnimating()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    if-eq v1, v3, :cond_5

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    invoke-direct {v1, p0, p1, v3, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;I)V

    iget-object p0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput-object p0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    :cond_5
    iget-object p0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V

    invoke-static {p1, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->setupCaptionColor(Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    :cond_6
    :goto_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateRoundedCornerForSplit()V

    return-void
.end method

.method public final onTaskOpening(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz p0, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object p1

    if-eqz p1, :cond_1

    iput-boolean p3, p1, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsOpening:Z

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_1
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz p1, :cond_2

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsTaskInBack:Z

    :cond_2
    return p3
.end method

.method public final onTaskToBack(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->onTaskClosing()V

    :cond_0
    return-void
.end method

.method public final onTaskToFront(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz p0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsOpening:Z

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsTaskInBack:Z

    :cond_1
    return-void
.end method

.method public final onTaskVanished(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 0

    return-void
.end method

.method public final onTransitionFinished$1(Landroid/os/IBinder;)V
    .locals 12

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTransitionToTaskInfo:Ljava/util/Map;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTransitionToTaskInfo:Ljava/util/Map;

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v1, v2, :cond_e

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    if-nez v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    iget v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-boolean v6, v5, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsOpening:Z

    if-nez v6, :cond_3

    iget-boolean v6, v5, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsClosing:Z

    if-eqz v6, :cond_4

    :cond_3
    iput-boolean p1, v5, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsOpening:Z

    iput-boolean p1, v5, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsClosing:Z

    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    :cond_4
    iget-object v5, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v5

    const/4 v6, 0x6

    if-eq v5, v6, :cond_5

    if-ne v5, v3, :cond_d

    :cond_5
    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateNonFreeformCaptionVisibility()V

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    if-eqz v6, :cond_d

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget v6, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveTaskId:I

    if-ne v2, v6, :cond_6

    invoke-virtual {p0, v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->updateLastImmersiveDecoration(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    :cond_6
    iget-boolean v2, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v2, :cond_d

    invoke-virtual {v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->isImmersiveMode()Z

    move-result v2

    if-eqz v2, :cond_d

    if-ne v5, v3, :cond_d

    iget-object v2, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v2, :cond_d

    iget-boolean v4, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    if-eqz v4, :cond_d

    iget-object v4, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    if-nez v4, :cond_7

    goto :goto_3

    :cond_7
    iget-object v5, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    if-nez v5, :cond_9

    new-instance v5, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    iget-object v6, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v7, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandler:Landroid/os/Handler;

    iget v8, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionHeight:I

    invoke-direct {v5, v6, v7, v4, v8}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/View;I)V

    iput-object v5, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    iget-boolean v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    if-eqz v2, :cond_8

    invoke-virtual {v5, v3}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    iput-boolean p1, v5, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->hide()V

    goto :goto_3

    :cond_8
    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->pause()V

    goto :goto_3

    :cond_9
    iget-boolean v4, v5, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsShowing:Z

    if-eqz v4, :cond_b

    iget-object v4, v5, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHideRunnable:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior$$ExternalSyntheticLambda0;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v4}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v4

    if-eqz v4, :cond_a

    goto :goto_1

    :cond_a
    move v4, p1

    goto :goto_2

    :cond_b
    :goto_1
    move v4, v3

    :goto_2
    iget-boolean v5, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    if-eq v4, v5, :cond_d

    if-eqz v5, :cond_c

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    invoke-virtual {v2, v3}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    iput-boolean p1, v2, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->hide()V

    goto :goto_3

    :cond_c
    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->pause()V

    :cond_d
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v0, :cond_14

    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v2}, Lcom/android/wm/shell/ShellTaskOrganizer;->getVisibleTaskAppearedInfos()Ljava/util/List;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, p1

    :cond_f
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/TaskAppearedInfo;

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v7

    iget v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    sget-boolean v9, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    const-string v10, "MultiTaskingWindowDecorViewModel"

    if-eqz v9, :cond_12

    invoke-static {v7}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->isExitingPipToLastParent(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v9

    if-eqz v9, :cond_12

    iget v6, v7, Landroid/app/ActivityManager$RunningTaskInfo;->lastParentTaskIdBeforePip:I

    iget-object v9, v2, Lcom/android/wm/shell/ShellTaskOrganizer;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget-object v8, v2, Lcom/android/wm/shell/ShellTaskOrganizer;->mTasks:Landroid/util/SparseArray;

    invoke-virtual {v8, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/window/TaskAppearedInfo;

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v9, :cond_10

    iget v11, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v9, v11}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskRootOrStageRoot(I)Z

    move-result v9

    if-eqz v9, :cond_10

    goto :goto_4

    :cond_10
    if-eqz v8, :cond_f

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_f

    invoke-virtual {p0, v7, v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v8}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "ensureHandlerOnTransitionFinished for PIP parent: show, t# "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v8}, Landroid/window/TaskAppearedInfo;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    invoke-virtual {v8}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v7

    invoke-virtual {p0, v5, v7, v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateNonFreeformCaptionVisibility()V

    :cond_11
    :goto_5
    move v5, v3

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_12
    iget-object v9, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v9, :cond_f

    iget-object v9, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v9, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_f

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {p0, v7, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z

    move-result v9

    if-eqz v9, :cond_f

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v9, "ensureHandlerOnTransitionFinished: show, t# "

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/window/TaskAppearedInfo;->getLeash()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {p0, v7, v5, v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->createWindowDecoration(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v5, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v5, :cond_11

    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateNonFreeformCaptionVisibility()V

    goto :goto_5

    :cond_13
    if-eqz v5, :cond_14

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :cond_14
    return-void
.end method

.method public final onTransitionReady(Landroid/os/IBinder;Landroid/window/TransitionInfo$Change;)V
    .locals 1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTransitionToTaskInfo:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTransitionToTaskInfo:Ljava/util/Map;

    check-cast p0, Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-virtual {p2}, Landroid/window/TransitionInfo$Change;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resetLastImmersiveDecoration()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->setImmersiveMode(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->setNewDexCaptionBackground(Z)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    :cond_1
    return-void
.end method

.method public final setFreeformTaskTransitionStarter(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;)V
    .locals 3

    new-instance v0, Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    invoke-direct {v0, p1, v1, v2}, Lcom/android/wm/shell/windowdecor/TaskOperations;-><init>(Lcom/android/wm/shell/freeform/FreeformTaskTransitionStarter;Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;)V

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz p0, :cond_0

    iput-object p0, v0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    :cond_0
    return-void
.end method

.method public final setSplitScreenController(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mTaskOperations:Lcom/android/wm/shell/windowdecor/TaskOperations;

    if-eqz p0, :cond_0

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/TaskOperations;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    :cond_0
    return-void
.end method

.method public final shouldShowWindowDecor(Landroid/app/ActivityManager$RunningTaskInfo;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v3, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->isTaskRootOrStageRoot(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v3, :cond_c

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_TRANSITION_BUG_FIX:Z

    if-eqz v3, :cond_1

    if-nez p2, :cond_1

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->isExitingPipToLastParent(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p2

    if-eqz p2, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    if-nez p0, :cond_2

    if-nez v0, :cond_2

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_FLEX_PANEL_MODE:Z

    if-eqz p0, :cond_3

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1

    :cond_4
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p2

    const/4 v3, 0x6

    if-ne p2, v3, :cond_5

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    return v2

    :cond_5
    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    const/16 v3, 0xa

    if-ne p2, v3, :cond_6

    return v2

    :cond_6
    iget-boolean p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isTranslucentTask:Z

    if-eqz p2, :cond_7

    return v2

    :cond_7
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p2

    const/4 v3, 0x2

    if-ne p2, v3, :cond_9

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mFixedRotatingDisplayIds:Landroid/util/ArraySet;

    iget p2, p1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->isExitingPipToLastParent(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    :cond_8
    return v2

    :cond_9
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX:Z

    if-eqz p0, :cond_a

    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result p0

    if-eqz p0, :cond_a

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p0

    if-nez p0, :cond_a

    iget-boolean p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    if-eqz p0, :cond_a

    return v2

    :cond_a
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz p0, :cond_b

    invoke-static {p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->canUseFullscreenHandler(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result p0

    if-eqz p0, :cond_b

    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_b
    iget-object p0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Configuration;->isDesktopModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_c

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getActivityType()I

    move-result p0

    if-ne p0, v1, :cond_c

    return v1

    :cond_c
    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    const/4 p1, 0x5

    if-ne p0, p1, :cond_d

    goto :goto_2

    :cond_d
    move v1, v2

    :goto_2
    return v1
.end method

.method public final toggleDisableAllPinButton(IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mWindowDecorByTaskId:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    if-ne v2, p1, :cond_0

    if-eqz p2, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_TASK_PINNING:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v1, :cond_2

    xor-int/lit8 v2, p2, 0x1

    const v3, 0x7f0a08e7

    invoke-virtual {v1, v3, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->updateButtonState(IZ)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateLastImmersiveDecoration(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->resetLastImmersiveDecoration()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    :cond_0
    iget-boolean v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->mLastImmersiveDecoration:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result p0

    if-eq p0, v1, :cond_1

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->setImmersiveMode(Z)V

    if-eqz v0, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->setNewDexCaptionBackground(Z)V

    :cond_2
    return-void
.end method
