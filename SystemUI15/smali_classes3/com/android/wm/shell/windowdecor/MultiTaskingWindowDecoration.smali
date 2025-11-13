.class public final Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;
.super Lcom/android/wm/shell/windowdecor/WindowDecoration;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;


# instance fields
.field public mCaptionColor:I

.field public mCaptionType:I

.field public final mChoreographer:Landroid/view/Choreographer;

.field public mDestroyed:Z

.field public final mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

.field public mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

.field public final mDisplayIdForInsets:I

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field public mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

.field public mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

.field public mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

.field public mDragShadowAnimator:Landroid/animation/ObjectAnimator;

.field public mElevationAnimationShow:Z

.field public final mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

.field public mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

.field public mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

.field public final mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

.field public mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

.field public final mHandler:Landroid/os/Handler;

.field public final mInsetsState:Landroid/view/InsetsState;

.field public mIsDexDockingEnabled:Z

.field public mIsFullScreenCaptionState:Z

.field public mIsKeepScreenOn:Z

.field public mIsKeyguardShowing:Z

.field public mIsNightMode:Z

.field public mIsPopupWindowPinned:Z

.field public mIsSplitImmersiveEnabled:Z

.field public mIsTaskInBack:Z

.field public mLastDockingState:I

.field public final mLastStableBounds:Landroid/graphics/Rect;

.field public final mMultiTaskingHelpController:Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

.field public mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

.field public final mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

.field public final mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

.field public mShadowAnimator:Landroid/animation/ObjectAnimator;

.field public final mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

.field public final mTaskPosition:Landroid/graphics/Point;

.field public mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

.field public final mTmpRect:Landroid/graphics/Rect;

.field public mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

.field public mWindowElevation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;)V
    .locals 16

    new-instance v11, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x0

    invoke-direct {v11, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v12, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler$$ExternalSyntheticLambda0;

    invoke-direct {v12}, Ljava/lang/Object;-><init>()V

    new-instance v13, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {v13, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v14, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;

    const/4 v0, 0x2

    invoke-direct {v14, v0}, Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration$$ExternalSyntheticLambda0;-><init>(I)V

    new-instance v15, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$1;

    invoke-direct {v15}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$1;-><init>()V

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

    invoke-direct/range {v0 .. v15}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Landroid/os/Handler;Landroid/view/Choreographer;Lcom/android/wm/shell/common/SyncTransactionQueue;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/ShellTaskOrganizer;",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            "Landroid/view/SurfaceControl;",
            "Landroid/os/Handler;",
            "Landroid/view/Choreographer;",
            "Lcom/android/wm/shell/common/SyncTransactionQueue;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Builder;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl$Transaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/window/WindowContainerTransaction;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/SurfaceControl;",
            ">;",
            "Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;",
            ")V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p4

    move-object/from16 v13, p9

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p11

    move-object/from16 v7, p12

    move-object/from16 v8, p13

    move-object/from16 v9, p14

    move-object/from16 v10, p15

    invoke-direct/range {v0 .. v10}, Lcom/android/wm/shell/windowdecor/WindowDecoration;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;-><init>()V

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    new-instance v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    invoke-direct {v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;-><init>()V

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    const/4 v0, -0x1

    iput v0, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDisplayIdForInsets:I

    new-instance v1, Landroid/view/InsetsState;

    invoke-direct {v1}, Landroid/view/InsetsState;-><init>()V

    iput-object v1, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTmpRect:Landroid/graphics/Rect;

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPosition:Landroid/graphics/Point;

    iput v0, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    new-instance v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-direct {v2}, Lcom/android/wm/shell/windowdecor/FreeformStashState;-><init>()V

    iput-object v2, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    const/4 v3, 0x0

    iput-boolean v3, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeyguardShowing:Z

    iput-boolean v3, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsTaskInBack:Z

    move-object/from16 v4, p6

    iput-object v4, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    move-object/from16 v4, p7

    iput-object v4, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    move-object/from16 v4, p8

    iput-object v4, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v4, :cond_0

    iget-object v4, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual/range {p4 .. p4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v4

    iput-object v4, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_BUG_FIX:Z

    if-eqz v4, :cond_0

    iget-object v4, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/Display;->getDisplayId()I

    move-result v4

    iget-object v5, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplayId()I

    move-result v5

    if-eq v4, v5, :cond_0

    iget-object v4, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget-object v5, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->updateDisplay(I)V

    :cond_0
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0, v12}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateDexStates(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_1
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_INSETS:Z

    if-eqz v4, :cond_3

    iput-object v13, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget v4, v12, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    iput v4, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDisplayIdForInsets:I

    move-object/from16 v5, p2

    invoke-virtual {v5, v4}, Lcom/android/wm/shell/common/DisplayController;->getInsetsState(I)Landroid/view/InsetsState;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v4}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    :cond_2
    iget v1, v12, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v13, v1, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->addInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    :cond_3
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    const/4 v4, 0x1

    if-eqz v1, :cond_5

    iget-boolean v1, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v1, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    iget-object v1, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v12}, Lcom/android/wm/shell/ShellTaskOrganizer;->getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v1

    :goto_0
    iput v1, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v5, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsNightMode:Z

    if-eqz v5, :cond_6

    const v5, 0x106032f

    goto :goto_1

    :cond_6
    const v5, 0x1060330

    :goto_1
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionColor:I

    iget-boolean v1, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez v1, :cond_7

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result v1

    iput v0, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    iput-boolean v3, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    invoke-virtual {v2, v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setStashed(I)V

    iput v1, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mFreeformThickness:I

    :cond_7
    move-object/from16 v0, p10

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexCompatRestartDialogUtils:Lcom/android/wm/shell/shortcut/DexCompatRestartDialogUtils;

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    iput-boolean v0, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    if-eqz v0, :cond_8

    iget-boolean v0, v12, Landroid/app/ActivityManager$RunningTaskInfo;->isKeepScreenOn:Z

    iput-boolean v0, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeepScreenOn:Z

    :cond_8
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP_HELP:Z

    if-eqz v0, :cond_9

    new-instance v0, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

    iget-object v1, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v2, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;-><init>(Landroid/content/Context;I)V

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mMultiTaskingHelpController:Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

    :cond_9
    new-instance v0, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    iget-object v1, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v2, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v5, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v6, v11, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    move-object/from16 p5, v0

    move-object/from16 p6, p0

    move-object/from16 p7, v1

    move-object/from16 p8, v2

    move-object/from16 p9, v5

    move-object/from16 p10, v6

    invoke-direct/range {p5 .. p10}, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;Lcom/android/wm/shell/common/DisplayController;Landroid/content/Context;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/view/SurfaceControl;)V

    iput-object v0, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_SHADOW_ANIM:Z

    if-eqz v0, :cond_a

    iput-boolean v4, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mElevationAnimationShow:Z

    :cond_a
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz v0, :cond_c

    iget-boolean v0, v12, Landroid/app/ActivityManager$RunningTaskInfo;->isFullScreenCaptionState:Z

    if-eqz v0, :cond_b

    sget-boolean v0, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    if-eqz v0, :cond_b

    goto :goto_2

    :cond_b
    move v4, v3

    :goto_2
    iput-boolean v4, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsFullScreenCaptionState:Z

    :cond_c
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v0, :cond_d

    iput-boolean v3, v11, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsPopupWindowPinned:Z

    :cond_d
    return-void
.end method


# virtual methods
.method public final addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIIIFZLandroid/view/View;)Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;
    .locals 11

    move-object v0, p0

    move-object v1, p2

    move-object v2, p4

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/SurfaceControl$Builder;

    const-string v4, " of Task="

    invoke-static {p2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->setContainerLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v3, v4}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    move-result-object v3

    new-instance v10, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, -0x2

    move-object v4, v10

    move/from16 v5, p7

    move/from16 v6, p8

    move/from16 v7, p9

    move/from16 v8, p10

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Additional window of Task="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v10}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    if-eqz p12, :cond_0

    const/4 v1, 0x2

    iput v1, v10, Landroid/view/WindowManager$LayoutParams;->multiWindowFlags:I

    :cond_0
    const/4 v1, 0x0

    if-eqz p12, :cond_1

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v4, Landroid/app/ActivityManager$RunningTaskInfo;->token:Landroid/window/WindowContainerToken;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    new-instance v5, Landroid/view/WindowlessWindowManager;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-direct {v5, v6, v3, v1, v4}, Landroid/view/WindowlessWindowManager;-><init>(Landroid/content/res/Configuration;Landroid/view/SurfaceControl;Landroid/window/InputTransferToken;Landroid/window/WindowContainerToken;)V

    new-instance v4, Landroid/view/ContextThemeWrapper;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    const v7, 0x10302e3

    invoke-direct {v4, v6, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlViewHostFactory:Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v7, v5}, Lcom/android/wm/shell/windowdecor/WindowDecoration$SurfaceControlViewHostFactory;->create(Landroid/content/Context;Landroid/view/Display;Landroid/view/WindowlessWindowManager;)Landroid/view/SurfaceControlViewHost;

    move-result-object v5

    if-eqz p13, :cond_2

    move/from16 v4, p11

    move-object/from16 v1, p13

    goto :goto_1

    :cond_2
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    move v6, p1

    invoke-virtual {v4, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    move/from16 v4, p11

    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setElevation(F)V

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {v10, v1, v4, v6}, Landroid/view/WindowManager$LayoutParams;->setSurfaceInsets(Landroid/view/View;ZZ)V

    iget-object v4, v10, Landroid/view/WindowManager$LayoutParams;->surfaceInsets:Landroid/graphics/Rect;

    iget v6, v4, Landroid/graphics/Rect;->left:I

    sub-int v6, p5, v6

    int-to-float v6, v6

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int v4, p6, v4

    int-to-float v4, v4

    move-object v7, p3

    invoke-virtual {p3, v3, v6, v4}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    if-nez v2, :cond_3

    invoke-virtual {v5, v1, v10}, Landroid/view/SurfaceControlViewHost;->setView(Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v5}, Landroid/view/SurfaceControlViewHost;->getSurfacePackage()Landroid/view/SurfaceControlViewHost$SurfacePackage;

    move-result-object v4

    new-instance v6, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$$ExternalSyntheticLambda1;

    invoke-direct {v6, v5, v1, v10}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$$ExternalSyntheticLambda1;-><init>(Landroid/view/SurfaceControlViewHost;Landroid/view/View;Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {p4, v4, v6}, Landroid/window/SurfaceSyncGroup;->add(Landroid/view/SurfaceControlViewHost$SurfacePackage;Ljava/lang/Runnable;)Z

    :goto_2
    new-instance v1, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    invoke-direct {v1, v3, v5, v0}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;-><init>(Landroid/view/SurfaceControl;Landroid/view/SurfaceControlViewHost;Ljava/util/function/Supplier;)V

    return-object v1
.end method

.method public final adjustHandleToDisplay(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsRemoving:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleViewWidth()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-le v2, v0, :cond_2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v0

    div-int/lit8 v3, v1, 0x2

    if-eqz p3, :cond_3

    iget p2, p2, Landroid/graphics/Rect;->left:I

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    add-int/2addr v3, p2

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int v3, p2, v0

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    int-to-float p3, v3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    int-to-float v0, v0

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-boolean p2, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mViewHost:Landroid/view/SurfaceControlViewHost;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/view/SurfaceControlViewHost;->getRootSurfaceControl()Landroid/view/AttachedSurfaceControl;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/view/AttachedSurfaceControl;->applyTransactionOnDraw(Landroid/view/SurfaceControl$Transaction;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public final asMultitaskingWindowDecoration()Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;
    .locals 0

    return-object p0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :goto_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v0, :cond_2

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    if-eqz v2, :cond_1

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleHideAnimator:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->removeAutoHideInputChannel()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDestroyed:Z

    :cond_2
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_INSETS:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    iget v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDisplayIdForInsets:I

    invoke-virtual {v0, v2, p0}, Lcom/android/wm/shell/common/DisplayInsetsController;->removeInsetsChangedListener(ILcom/android/wm/shell/common/DisplayInsetsController$OnInsetsChangedListener;)V

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->close()V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    :goto_1
    invoke-super {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->close()V

    return-void
.end method

.method public final getCaptionViewId()I
    .locals 0

    const p0, 0x7f0a024a

    return p0
.end method

.method public final getCaptionVisibleHeight$1()I
    .locals 1

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10503ab

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    return p0
.end method

.method public final getFreeformThickness$3()I
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10503b0

    invoke-static {p0, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result p0

    rem-int/lit8 v0, p0, 0x2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    :goto_0
    return p0
.end method

.method public final getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    return-object p0
.end method

.method public final getHandleViewWidth()I
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070fa0

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result p0

    if-nez p0, :cond_1

    const p0, 0x7f070f9b

    invoke-static {v1, p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v0

    :cond_1
    mul-int/lit8 v0, v0, 0x2

    sub-int v0, v2, v0

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    :cond_3
    :goto_0
    return v0
.end method

.method public final getResizeEdgeHandleSize(Landroid/content/res/Resources;)I
    .locals 2

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast p1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz p0, :cond_0

    const/16 p0, 0xa

    invoke-static {p0, p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x30

    :goto_0
    return p0

    :cond_1
    invoke-static {}, Lcom/android/window/flags/Flags;->enableWindowingEdgeDragResize()Z

    const p0, 0x7f07041a

    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "MultiTaskingWindowDecoration"

    return-object p0
.end method

.method public final getVisibleTaskBounds()Landroid/graphics/Rect;
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz v0, :cond_0

    iget v2, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    :cond_0
    return-object v1
.end method

.method public final insetsChanged(Landroid/view/InsetsState;)V
    .locals 7

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_HANDLE_VIEW:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/InsetsState;->sourceSize()I

    move-result v2

    move v3, v1

    :goto_2
    if-ge v3, v2, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/InsetsState;->sourceAt(I)Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/InsetsSource;->getType()I

    move-result v5

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v6

    if-ne v5, v6, :cond_2

    invoke-virtual {v4}, Landroid/view/InsetsSource;->isVisible()Z

    move-result v2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_3
    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v0, p1}, Landroid/view/InsetsState;->set(Landroid/view/InsetsState;)V

    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    sget-boolean v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-ne p1, v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V

    :cond_6
    return-void
.end method

.method public final insetsControlChanged(Landroid/view/InsetsState;[Landroid/view/InsetsSourceControl;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->insetsChanged(Landroid/view/InsetsState;)V

    return-void
.end method

.method public final isHandleMenuActive()Z
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mIsHandleMenuShowing:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isImmersiveMode()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final needAdjustHandleLocation()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getVisibleTaskBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070fa0

    invoke-static {v2, v3}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    if-ge v4, v1, :cond_2

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-ge v0, v2, :cond_1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result p0

    invoke-virtual {v0, v3, v1, v3, p0}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v3
.end method

.method public final onTaskClosing()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/widget/OutlineView;->mIsClosing:Z

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_DND_FREEFORM_DISMISS_VIEW:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->isFreeformDragInNonDex()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mDragPositioningListener:Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;

    iget-object v0, v0, Lcom/android/wm/shell/common/FreeformDragPositioningController$FreeformDragListener;->mDismissViewManager:Lcom/android/wm/shell/common/DismissViewManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/common/DismissViewManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/DismissViewManager;)V

    iget-object v0, v0, Lcom/android/wm/shell/common/DismissViewManager;->mView:Lcom/android/wm/shell/common/DismissView;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DismissView;->hide(Ljava/lang/Runnable;)V

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsTaskInBack:Z

    :cond_2
    return-void
.end method

.method public final playShadowAnimation(Landroid/graphics/Rect;Z)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_0
    iget-boolean v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mElevationAnimationShow:Z

    if-eq p2, v3, :cond_5

    iget-object v3, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object v3

    if-nez v3, :cond_2

    return-void

    :cond_2
    const-string v4, "elevation"

    if-eqz p2, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getElevation()F

    move-result v5

    iget v6, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowElevation:F

    new-array v2, v2, [F

    aput v5, v2, v1

    aput v6, v2, v0

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    if-eqz p1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/view/ViewRootImpl;->updateLightCenter(Landroid/graphics/Rect;)V

    goto :goto_0

    :cond_3
    invoke-virtual {v3}, Landroid/view/View;->getElevation()F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowElevation:F

    const/high16 v5, 0x40400000    # 3.0f

    div-float v5, p1, v5

    new-array v2, v2, [F

    aput p1, v2, v1

    aput v5, v2, v0

    invoke-static {v3, v4, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mShadowAnimator:Landroid/animation/ObjectAnimator;

    new-instance v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$3;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$3;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-boolean p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mElevationAnimationShow:Z

    :cond_5
    :goto_1
    return-void
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V
    .locals 7

    new-instance v3, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v3}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskDragResizer:Lcom/android/wm/shell/windowdecor/TaskDragResizer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/wm/shell/windowdecor/TaskDragResizer;->isResizingOrAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, v3

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZLandroid/graphics/Region;)V

    return-void
.end method

.method public final relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;ZZLandroid/graphics/Region;)V
    .locals 39

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x1

    const/4 v14, 0x5

    if-ne v11, v14, :cond_0

    move v15, v13

    goto :goto_0

    :cond_0
    move v15, v12

    :goto_0
    if-eqz v15, :cond_1

    iget-boolean v1, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isResizeable:Z

    if-eqz v1, :cond_1

    move v1, v13

    goto :goto_1

    :cond_1
    move v1, v12

    :goto_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_SIZE_COMPAT_POLICY_DRAG:Z

    if-eqz v2, :cond_2

    if-eqz v15, :cond_2

    iget-object v2, v9, Landroid/app/ActivityManager$RunningTaskInfo;->sizeCompatInfo:Lcom/samsung/android/core/SizeCompatInfo;

    invoke-static {v2}, Lcom/samsung/android/core/SizeCompatInfo;->isDragResizable(Lcom/samsung/android/core/SizeCompatInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    move/from16 v16, v13

    goto :goto_2

    :cond_2
    move/from16 v16, v1

    :goto_2
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    move-object v8, v1

    check-cast v8, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    new-instance v6, Landroid/window/WindowContainerTransaction;

    invoke-direct {v6}, Landroid/window/WindowContainerTransaction;-><init>()V

    sget-boolean v17, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-nez v17, :cond_3

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX:Z

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateDexStates(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_4
    sget-boolean v18, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v18, :cond_6

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v1, :cond_5

    move v1, v13

    goto :goto_3

    :cond_5
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v1, v9}, Lcom/android/wm/shell/ShellTaskOrganizer;->getFreeformCaptionType(Landroid/app/ActivityManager$RunningTaskInfo;)I

    move-result v1

    :goto_3
    iput v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    :cond_6
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 p4, v6

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->updateRelayoutParams(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/app/ActivityManager$RunningTaskInfo;ZZLandroid/graphics/Region;)V

    if-ne v11, v14, :cond_7

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInsetSourceFlags:I

    or-int/lit8 v2, v2, 0x14

    iput v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInsetSourceFlags:I

    :cond_7
    sget-boolean v19, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    const/4 v6, 0x4

    if-eqz v19, :cond_c

    invoke-static/range {p1 .. p1}, Lcom/android/wm/shell/windowdecor/extension/TaskInfoKt;->isTransparentCaptionBarAppearance(Landroid/app/TaskInfo;)Z

    move-result v1

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    if-eq v2, v1, :cond_8

    const-string v2, "MultiTaskingWindowDecoration"

    const-string/jumbo v3, "updateCaptionTransparent: "

    const-string v4, ", "

    invoke-static {v3, v4, v1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-static {v4, v2, v3}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    :cond_8
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iput-boolean v1, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mAllowCaptionInputFallthrough:Z

    new-instance v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;

    invoke-direct {v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;-><init>()V

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result v2

    const v3, 0x1050422

    if-eqz v2, :cond_9

    const v2, 0x1050424

    goto :goto_4

    :cond_9
    move v2, v3

    :goto_4
    iput v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mWidthResId:I

    sget-object v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;->START:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mAlignment:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;

    invoke-direct {v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;-><init>()V

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v2}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result v2

    if-eqz v2, :cond_a

    const v3, 0x1050423

    :cond_a
    iput v3, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mWidthResId:I

    sget-object v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;->END:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mAlignment:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mAllowCaptionInputFallthrough:Z

    if-eqz v2, :cond_b

    iget v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    or-int/2addr v2, v6

    iput v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    goto :goto_5

    :cond_b
    iget v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    and-int/lit8 v2, v2, -0x5

    iput v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    :cond_c
    :goto_5
    sget-boolean v20, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const/4 v5, 0x2

    if-eqz v20, :cond_28

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    sget-boolean v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    if-eq v1, v2, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "relayout: need recreate, reason=split_immersive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MultiTaskingWindowDecoration"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v13

    goto :goto_6

    :cond_d
    move v1, v12

    :goto_6
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsNightMode:Z

    invoke-static/range {p1 .. p1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result v14

    if-eq v2, v14, :cond_e

    move v1, v13

    :cond_e
    if-eqz v18, :cond_10

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v14, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    iget v3, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionType:I

    if-eq v3, v14, :cond_f

    iput v14, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionType:I

    move v2, v13

    goto :goto_7

    :cond_f
    move v2, v12

    :goto_7
    or-int/2addr v1, v2

    :cond_10
    move v14, v1

    if-eqz v14, :cond_11

    sget-boolean v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_SPLIT_IMMERSIVE_MODE_ENABLED:Z

    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    :cond_11
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    if-eqz v17, :cond_12

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v2, :cond_12

    const/16 v18, 0x8

    goto/16 :goto_13

    :cond_12
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz v2, :cond_14

    iget-boolean v3, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isFullScreenCaptionState:Z

    iget-boolean v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsFullScreenCaptionState:Z

    if-eq v3, v4, :cond_14

    if-eqz v3, :cond_13

    sget-boolean v3, Lcom/android/wm/shell/windowdecor/CaptionGlobalState;->FULLSCREEN_HANDLER_ENABLED:Z

    if-eqz v3, :cond_13

    move v3, v13

    goto :goto_8

    :cond_13
    move v3, v12

    :goto_8
    iput-boolean v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsFullScreenCaptionState:Z

    :cond_14
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget v6, v9, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v4, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v4, v12}, Lcom/android/wm/shell/common/DisplayLayout;->stableInsets(Z)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_HANDLE_VIEW:Z

    if-eqz v6, :cond_1e

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v6

    if-eqz v6, :cond_1e

    iget-boolean v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez v6, :cond_1e

    iget-object v2, v9, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    if-eqz v4, :cond_15

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v4

    if-eqz v4, :cond_15

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v4, :cond_15

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget v6, v9, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    if-eq v4, v6, :cond_16

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v6, v9, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-ne v4, v6, :cond_15

    goto :goto_9

    :cond_15
    const/4 v4, -0x1

    goto :goto_c

    :cond_16
    :goto_9
    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v4

    if-eq v4, v13, :cond_19

    if-eq v4, v5, :cond_18

    const/4 v6, 0x4

    if-eq v4, v6, :cond_17

    const/4 v4, -0x1

    const/4 v6, -0x1

    goto :goto_b

    :cond_17
    move v6, v5

    :goto_a
    const/4 v4, -0x1

    goto :goto_b

    :cond_18
    move v6, v13

    goto :goto_a

    :cond_19
    move v6, v12

    goto :goto_a

    :goto_b
    if-eq v6, v4, :cond_1a

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v2, v6}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    move-result-object v2

    :cond_1a
    :goto_c
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    iget-boolean v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsSplitImmersiveEnabled:Z

    if-nez v4, :cond_1b

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v4

    or-int/2addr v6, v4

    :cond_1b
    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v4, v2, v6, v13}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    iget v4, v2, Landroid/graphics/Insets;->top:I

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v6

    const/16 v18, 0x8

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_1c

    iget v6, v2, Landroid/graphics/Insets;->left:I

    goto :goto_d

    :cond_1c
    move v6, v12

    :goto_d
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v21

    and-int/lit8 v21, v21, 0x20

    if-eqz v21, :cond_1d

    iget v2, v2, Landroid/graphics/Insets;->right:I

    goto :goto_e

    :cond_1d
    move v2, v12

    :goto_e
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    sub-int/2addr v6, v2

    div-int/2addr v6, v5

    iput v6, v12, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mHorizontalInset:I

    goto :goto_10

    :cond_1e
    const/4 v6, -0x1

    const/16 v18, 0x8

    if-eqz v2, :cond_20

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsFullScreenCaptionState:Z

    if-eqz v2, :cond_20

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v2

    if-ne v2, v13, :cond_20

    iget-object v2, v9, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v6

    const/4 v5, 0x0

    invoke-virtual {v12, v2, v6, v5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->top:I

    if-nez v2, :cond_20

    :goto_f
    const/4 v4, 0x0

    goto :goto_10

    :cond_1f
    const/16 v18, 0x8

    goto :goto_f

    :cond_20
    :goto_10
    if-ne v11, v13, :cond_21

    goto :goto_11

    :cond_21
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v2

    if-eqz v2, :cond_22

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-nez v2, :cond_22

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getStagePosition()I

    move-result v2

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_23

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070f95

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_12

    :cond_22
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MT_NEW_DEX_PIP:Z

    if-eqz v2, :cond_24

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v2, :cond_24

    const/4 v2, 0x2

    if-ne v11, v2, :cond_24

    :cond_23
    :goto_11
    move v2, v4

    goto :goto_12

    :cond_24
    const/4 v2, 0x0

    :goto_12
    move v12, v2

    :goto_13
    iput v12, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez v1, :cond_27

    iget-object v1, v9, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    iget v2, v2, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v4, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result v4

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mStashDimOverlay:Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;

    if-eqz v3, :cond_26

    iget-object v5, v3, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->isLeashValidLocked()Z

    move-result v6

    if-eqz v6, :cond_25

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v12, v3, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    neg-int v13, v4

    int-to-float v13, v13

    invoke-virtual {v6, v12, v13, v13}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object v6, v3, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v12

    const/4 v13, 0x2

    mul-int/2addr v4, v13

    add-int/2addr v12, v4

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    add-int/2addr v1, v4

    const/4 v4, 0x0

    invoke-virtual {v6, v4, v4, v12, v1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, v3, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mTransaction:Landroid/view/SurfaceControl$Transaction;

    iget-object v4, v3, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mLeash:Landroid/view/SurfaceControl;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/FreeformColorOverlay;->mCropRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v4, v3}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    goto :goto_14

    :catchall_0
    move-exception v0

    goto :goto_15

    :cond_25
    const/4 v13, 0x2

    :goto_14
    monitor-exit v5

    goto :goto_16

    :goto_15
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_26
    const/4 v13, 0x2

    :goto_16
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iput v2, v1, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mScale:F

    goto :goto_17

    :cond_27
    const/4 v13, 0x2

    :goto_17
    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    move-object/from16 v1, p0

    move-object v2, v12

    move/from16 v5, v18

    move-object/from16 v3, p2

    const/4 v13, -0x1

    move-object/from16 v4, p3

    const/4 v13, 0x2

    move-object/from16 v5, p4

    move-object/from16 p3, v6

    move-object v6, v8

    move-object/from16 v24, v7

    move-object/from16 v7, p3

    move-object/from16 p5, v8

    move v8, v14

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateViewsAndSurfaces(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/View;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;Z)V

    move-object/from16 v1, p3

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-eqz v2, :cond_29

    invoke-virtual {v0, v10, v12, v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateViewHost(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    goto :goto_18

    :cond_28
    move v13, v5

    move-object/from16 v24, v7

    move-object/from16 p5, v8

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    const/4 v8, 0x0

    move-object/from16 v1, p0

    move-object v2, v12

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object v7, v14

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateViewsAndSurfaces(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;Landroid/view/View;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;Z)V

    iget-object v1, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_29

    invoke-virtual {v0, v10, v12, v14}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateViewHost(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    :cond_29
    :goto_18
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object/from16 v2, p4

    invoke-virtual {v1, v2}, Landroid/window/TaskOrganizer;->applyTransaction(Landroid/window/WindowContainerTransaction;)V

    const v2, 0x7f0a013e

    const v3, 0x7f0a0918

    const v4, 0x7f0a024a

    if-eqz v20, :cond_50

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningTaskInfo;->displayId:I

    invoke-virtual {v5, v6}, Lcom/android/wm/shell/common/DisplayController;->getDisplayLayout(I)Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    if-eqz v5, :cond_2a

    iget-boolean v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez v6, :cond_2a

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/android/wm/shell/common/DisplayLayout;->getStableBounds(Landroid/graphics/Rect;Z)V

    iget-object v6, v5, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz v6, :cond_2a

    invoke-virtual {v6}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v6

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastStableBounds:Landroid/graphics/Rect;

    iget v8, v7, Landroid/graphics/Rect;->left:I

    iget v12, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v12

    iget v12, v7, Landroid/graphics/Rect;->top:I

    iget v14, v7, Landroid/graphics/Rect;->right:I

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v14, v6

    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7, v8, v12, v14, v6}, Landroid/graphics/Rect;->set(IIII)V

    :cond_2a
    if-eqz v5, :cond_4a

    iget-boolean v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-eqz v6, :cond_4a

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v6, v6, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-eqz v6, :cond_4a

    invoke-virtual/range {p1 .. p1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget-object v6, v6, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result v6

    invoke-static {v6}, Landroid/app/WindowConfiguration;->isDexTaskDocking(I)Z

    move-result v7

    iget-boolean v8, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsDexDockingEnabled:Z

    if-eq v8, v7, :cond_2b

    iput-boolean v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsDexDockingEnabled:Z

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "updateDexDockingEnabled: "

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "MultiTaskingWindowDecoration"

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz v7, :cond_2b

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->updateOutlineView(Z)V

    :cond_2b
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v7, v7, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v7, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v7, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iget-object v5, v5, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    if-eqz v7, :cond_4a

    if-eqz v5, :cond_4a

    invoke-virtual {v5}, Landroid/view/DisplayCutout;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2c

    goto/16 :goto_23

    :cond_2c
    invoke-virtual {v5}, Landroid/view/DisplayCutout;->getBoundingRectTop()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v8}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget-object v8, v8, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v8}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v12}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    iget v14, v8, Landroid/graphics/Rect;->left:I

    iget v8, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12}, Landroid/graphics/Rect;->height()I

    move-result v17

    sub-int v8, v8, v17

    invoke-virtual {v12, v14, v8}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v7}, Landroid/view/View;->isLayoutRtl()Z

    move-result v7

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-nez v8, :cond_2e

    :cond_2d
    const/4 v14, 0x0

    goto :goto_1d

    :cond_2e
    iget-object v14, v8, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    if-eqz v14, :cond_2f

    invoke-virtual {v14}, Landroid/view/ViewGroup;->getWidth()I

    move-result v14

    goto :goto_19

    :cond_2f
    const/4 v14, 0x0

    :goto_19
    iget-object v8, v8, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    if-eqz v8, :cond_30

    invoke-virtual {v8}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    add-int/2addr v8, v14

    move v14, v8

    :cond_30
    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object v8, v8, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v8, :cond_31

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getWidth()I

    move-result v8

    const/4 v1, 0x1

    goto :goto_1a

    :cond_31
    const/4 v1, 0x1

    const/4 v8, 0x0

    :goto_1a
    if-ne v6, v1, :cond_32

    const/4 v1, 0x1

    goto :goto_1b

    :cond_32
    const/4 v1, 0x0

    :goto_1b
    if-ne v6, v13, :cond_33

    const/16 v17, 0x1

    goto :goto_1c

    :cond_33
    const/16 v17, 0x0

    :goto_1c
    if-eqz v7, :cond_34

    if-nez v17, :cond_38

    :cond_34
    if-nez v7, :cond_35

    if-eqz v1, :cond_35

    goto :goto_1d

    :cond_35
    if-eqz v7, :cond_36

    if-nez v1, :cond_37

    :cond_36
    if-nez v7, :cond_2d

    if-eqz v17, :cond_2d

    :cond_37
    move v14, v8

    :cond_38
    :goto_1d
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_41

    if-nez v14, :cond_39

    goto :goto_20

    :cond_39
    const/4 v8, 0x1

    if-ne v6, v8, :cond_3a

    const/4 v8, 0x1

    goto :goto_1e

    :cond_3a
    const/4 v8, 0x0

    :goto_1e
    if-ne v6, v13, :cond_3b

    const/16 v17, 0x1

    goto :goto_1f

    :cond_3b
    const/16 v17, 0x0

    :goto_1f
    if-eqz v7, :cond_3c

    if-nez v17, :cond_3d

    :cond_3c
    if-nez v7, :cond_3e

    if-eqz v8, :cond_3e

    :cond_3d
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_21

    :cond_3e
    if-eqz v7, :cond_3f

    if-nez v8, :cond_40

    :cond_3f
    if-nez v7, :cond_41

    if-eqz v17, :cond_41

    :cond_40
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    goto :goto_21

    :cond_41
    :goto_20
    const/4 v1, 0x0

    :goto_21
    if-nez v1, :cond_42

    goto/16 :goto_23

    :cond_42
    const/4 v7, 0x1

    if-ne v6, v7, :cond_45

    iget v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastDockingState:I

    if-ne v7, v13, :cond_43

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->resetDockingMargins()V

    :cond_43
    new-instance v7, Landroid/graphics/Rect;

    iget v8, v12, Landroid/graphics/Rect;->right:I

    sub-int v14, v8, v14

    iget v2, v12, Landroid/graphics/Rect;->top:I

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v7, v14, v2, v8, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v12, v7, Landroid/graphics/Rect;->right:I

    if-ge v8, v12, :cond_44

    iget v7, v7, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v7, v5, :cond_44

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    sub-int/2addr v12, v8

    if-eq v5, v12, :cond_49

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v5, v7, v12, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :cond_44
    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eqz v5, :cond_49

    iget v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v8, 0x0

    invoke-virtual {v2, v8, v5, v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :cond_45
    if-ne v6, v13, :cond_48

    iget v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastDockingState:I

    const/4 v7, 0x1

    if-ne v2, v7, :cond_46

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->resetDockingMargins()V

    :cond_46
    new-instance v2, Landroid/graphics/Rect;

    iget v7, v12, Landroid/graphics/Rect;->left:I

    iget v8, v12, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v7

    iget v12, v12, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v2, v7, v8, v14, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v8, v5, Landroid/graphics/Rect;->left:I

    iget v12, v2, Landroid/graphics/Rect;->right:I

    if-ge v8, v12, :cond_47

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v2, v5, :cond_47

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v5, v2

    if-eq v8, v5, :cond_49

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v7, v5, v2, v8, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :cond_47
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-eqz v2, :cond_49

    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v5, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    const/4 v8, 0x0

    invoke-virtual {v7, v8, v2, v8, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v1, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_22

    :cond_48
    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->resetDockingMargins()V

    :cond_49
    :goto_22
    iput v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastDockingState:I

    :cond_4a
    :goto_23
    if-eqz v15, :cond_4b

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-nez v1, :cond_4b

    new-instance v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    :cond_4b
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result v1

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsNightMode:Z

    if-eq v2, v1, :cond_4d

    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsNightMode:Z

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsNightMode:Z

    if-eqz v2, :cond_4c

    const v2, 0x106032f

    goto :goto_24

    :cond_4c
    const v2, 0x1060330

    :goto_24
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionColor:I

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz v1, :cond_4d

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->updateOutlineView(Z)V

    :cond_4d
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getOutlineView()Lcom/android/wm/shell/windowdecor/widget/OutlineView;

    move-result-object v2

    if-eqz v2, :cond_4e

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getFreeformOutlineFrame()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    iput v6, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    const/4 v5, 0x1

    invoke-virtual {v1, v2, v5}, Landroid/view/SurfaceControlViewHost;->relayout(Landroid/view/WindowManager$LayoutParams;Z)V

    :cond_4e
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP:Z

    if-eqz v1, :cond_50

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    if-eqz v1, :cond_50

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_4f

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_4f

    const/4 v1, 0x0

    const/4 v2, 0x1

    goto :goto_25

    :cond_4f
    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    :goto_25
    if-eqz v1, :cond_50

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->closeHandleMenu(Z)V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    :cond_50
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v1, :cond_51

    return-void

    :cond_51
    move-object/from16 v5, p5

    if-eq v5, v1, :cond_6d

    if-eqz v20, :cond_6c

    new-instance v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    iget v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    iget-object v14, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorWindowContext:Landroid/content/Context;

    iget-object v15, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    move-object/from16 v25, v1

    move-object/from16 v26, v5

    move/from16 v27, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v12

    move-object/from16 v31, v14

    move-object/from16 v32, v15

    move-object/from16 v33, v2

    invoke-direct/range {v25 .. v33}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;-><init>(Landroid/view/View;ILandroid/os/Handler;Landroid/app/ActivityManager$RunningTaskInfo;Lcom/android/wm/shell/ShellTaskOrganizer;Landroid/content/Context;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;)V

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_52

    const/16 v6, 0x8

    goto/16 :goto_2c

    :cond_52
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_IMMERSIVE_MODE:Z

    iget-boolean v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsDexEnabled:Z

    if-eqz v5, :cond_53

    if-eqz v6, :cond_53

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    :cond_53
    iget v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionType:I

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result v8

    iget-object v12, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    if-eqz v8, :cond_66

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    const v3, 0x7f0a0ad1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setupCommonCaptionButtonSet(Landroid/view/ViewGroup;)V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setupCommonCaptionButtonSet(Landroid/view/ViewGroup;)V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    const v7, 0x7f0a024d

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz v3, :cond_54

    const-string v7, "mw_popup_option_btn_header_handle.json"

    invoke-virtual {v3, v7}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->createLottieTask(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    invoke-virtual {v3, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    iget-boolean v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    invoke-virtual {v3, v7}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->updateNightMode(Z)V

    new-instance v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;)V

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinAnimRunnable:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda0;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    iget-boolean v7, v3, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsTaskFocused:Z

    const/4 v8, 0x1

    if-eq v7, v8, :cond_54

    iput-boolean v8, v3, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->mIsTaskFocused:Z

    invoke-virtual {v3}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;->applyIconColor()V

    :cond_54
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    const v7, 0x7f0a073c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v3, :cond_57

    if-eqz v6, :cond_55

    invoke-virtual {v3, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_26

    :cond_55
    new-instance v7, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {v7, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;)V

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :goto_26
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->setTaskFocusState(Z)V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v6, :cond_56

    const/16 v7, 0x8

    goto :goto_27

    :cond_56
    const/4 v7, 0x0

    :goto_27
    invoke-virtual {v3, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v7}, Landroid/widget/ImageButton;->getId()I

    move-result v7

    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v3, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_57
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    const v7, 0x7f0a039c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/windowdecor/widget/WindowMenuDivider;

    if-eqz v3, :cond_59

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    iget-boolean v8, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    const/4 v14, 0x0

    invoke-static {v7, v8, v14}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->getButtonTintColor(Landroid/content/Context;ZZ)Landroid/content/res/ColorStateList;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNightMode:Z

    if-eqz v7, :cond_58

    const v7, 0x3df5c28f    # 0.12f

    goto :goto_28

    :cond_58
    const v7, 0x3e4ccccd    # 0.2f

    :goto_28
    invoke-virtual {v3, v7}, Landroid/view/View;->setAlpha(F)V

    :cond_59
    const v3, 0x7f0a08e7

    if-nez v6, :cond_5a

    const/4 v4, 0x0

    const/4 v6, 0x1

    goto :goto_29

    :cond_5a
    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    const v7, 0x7f0a013e

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    iput-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v6, :cond_5b

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->setTaskFocusState(Z)V

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v6, v12}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v6, v4}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I

    move-result v6

    iget-object v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mBackButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_5b
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_5c

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->updateButtonState(IZ)V

    goto :goto_29

    :cond_5c
    const/4 v4, 0x0

    :goto_29
    iput-boolean v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mShowPrimaryButtonSet:Z

    iget-object v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mMoreButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v6, :cond_5d

    iput-boolean v4, v6, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mShowIconBackground:Z

    :cond_5d
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mUnpinButton:Lcom/android/wm/shell/windowdecor/widget/WindowMenuAnimationView;

    if-eqz v4, :cond_5e

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    :cond_5e
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v4

    if-nez v4, :cond_61

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    const v6, 0x7f0a0226

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_5f

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_5f
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    if-eqz v4, :cond_60

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_60
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mSecondaryButtonSet:Landroid/view/ViewGroup;

    if-eqz v4, :cond_61

    const/16 v6, 0x8

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_2a

    :cond_61
    const/16 v6, 0x8

    :goto_2a
    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mPrimaryButtonSet:Landroid/view/ViewGroup;

    if-eqz v4, :cond_62

    const-wide/16 v7, 0x15e

    sget-object v12, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    const/4 v14, 0x1

    invoke-static {v4, v14, v7, v8, v12}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils;->createViewAlphaAnimator(Landroid/view/View;ZJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    :cond_62
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->getAppName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v2, v13}, Landroid/view/View;->setImportantForAccessibility(I)V

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsDexMode:Z

    if-eqz v2, :cond_67

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_PINNING:Z

    if-eqz v2, :cond_64

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getFreeformTaskPinningState()I

    move-result v2

    if-ne v2, v13, :cond_63

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->showPinButtonIconBackground(Z)V

    goto :goto_2b

    :cond_63
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    invoke-virtual {v4, v2}, Landroid/window/TaskOrganizer;->isPinStateChangeable(I)Z

    move-result v2

    if-nez v2, :cond_64

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->updateButtonState(IZ)V

    :cond_64
    :goto_2b
    if-eqz v5, :cond_65

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v2

    if-nez v2, :cond_65

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    iget v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionBackgroundColor:I

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_65
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v2, :cond_67

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mDexCaptionWidth:I

    if-eq v2, v3, :cond_67

    iput v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mDexCaptionWidth:I

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->adjustOverflowButton(I)V

    goto :goto_2c

    :cond_66
    const/16 v6, 0x8

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_HANDLE_VIEW:Z

    if-eqz v2, :cond_67

    invoke-static {v7}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v2

    if-eqz v2, :cond_67

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    const v3, 0x7f0a024b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_67

    move-object v3, v2

    check-cast v3, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v5}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->hasBarFocus(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/wm/shell/windowdecor/TaskFocusStateConsumer;->setTaskFocusState(Z)V

    invoke-virtual {v2, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v2, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->getAppName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    const v4, 0x7f131092

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_67
    :goto_2c
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_69

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    if-eqz v1, :cond_69

    new-instance v2, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v2}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-nez v3, :cond_68

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->getFreeformOutlineFrame()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v32

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v33

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->calculateElevation()F

    move-result v36

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget v7, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mLayoutId:I

    iget-object v8, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mNamePrefix:Ljava/lang/String;

    const/16 v34, 0x7f6

    const/16 v38, 0x0

    const/16 v29, 0x0

    const/16 v35, 0x18

    const/16 v37, 0x0

    move-object/from16 v25, v3

    move/from16 v26, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v2

    move/from16 v30, v4

    move/from16 v31, v5

    invoke-virtual/range {v25 .. v38}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIIIFZLandroid/view/View;)Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    move-result-object v3

    iput-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    :cond_68
    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowSurface:Landroid/view/SurfaceControl;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->this$0:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    iget-object v5, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v7, -0x1

    invoke-virtual {v2, v3, v5, v7}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    iget-object v3, v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mSyncQueue:Lcom/android/wm/shell/common/SyncTransactionQueue;

    new-instance v4, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper$$ExternalSyntheticLambda0;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v3, v4}, Lcom/android/wm/shell/common/SyncTransactionQueue;->runInSync(Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->updateOutlineView(Z)V

    goto :goto_2d

    :cond_69
    const/4 v5, 0x0

    :goto_2d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP_HELP:Z

    if-eqz v1, :cond_6e

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mMultiTaskingHelpController:Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

    if-eqz v1, :cond_6e

    iget v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mWindowingMode:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6a

    sget-boolean v1, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    goto :goto_2e

    :cond_6a
    const/4 v2, 0x5

    if-ne v1, v2, :cond_6b

    sget-boolean v1, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    goto :goto_2e

    :cond_6b
    move v1, v5

    :goto_2e
    if-eqz v1, :cond_6e

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v1

    if-eqz v1, :cond_6e

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6e

    new-instance v2, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$2;

    invoke-direct {v2, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$2;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    goto :goto_2f

    :cond_6c
    const/4 v5, 0x0

    const/16 v6, 0x8

    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f0a02a7

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a013b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a0717

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0a06b4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2f

    :cond_6d
    const/4 v5, 0x0

    const/16 v6, 0x8

    :cond_6e
    :goto_2f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MD_DEX_COMPAT_CAPTION_SHELL:Z

    if-eqz v1, :cond_70

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v1, :cond_70

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    const v3, 0x7f0a09f2

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v2, :cond_70

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isRotationButtonVisible:Z

    if-eqz v1, :cond_6f

    move v3, v5

    goto :goto_30

    :cond_6f
    move v3, v6

    :goto_30
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_70
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v1, :cond_71

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setTaskInfo(Landroid/app/ActivityManager$RunningTaskInfo;)V

    :cond_71
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    if-eqz v1, :cond_75

    const/4 v1, 0x5

    if-eq v11, v1, :cond_72

    iget v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v1

    if-eqz v1, :cond_72

    iget-boolean v1, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isKeepScreenOn:Z

    if-eqz v1, :cond_72

    const/4 v1, 0x1

    goto :goto_31

    :cond_72
    move v1, v5

    :goto_31
    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeepScreenOn:Z

    if-eq v1, v2, :cond_75

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getHandleView()Lcom/android/wm/shell/windowdecor/widget/HandleView;

    move-result-object v2

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v3, :cond_75

    if-eqz v2, :cond_75

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_73

    goto :goto_33

    :cond_73
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v1, :cond_74

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v4}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v4

    if-nez v4, :cond_74

    const/4 v4, 0x1

    goto :goto_32

    :cond_74
    move v4, v5

    :goto_32
    invoke-virtual {v2, v4}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setHandleAutoHideEnabled(Z)Z

    move-result v2

    if-eqz v2, :cond_76

    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeepScreenOn:Z

    goto :goto_33

    :cond_75
    const/4 v3, 0x4

    :cond_76
    :goto_33
    if-eqz v19, :cond_79

    iget v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result v1

    if-eqz v1, :cond_79

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsCaptionTransparent:Z

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    if-eqz v4, :cond_79

    iget-boolean v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsNewDexMode:Z

    if-eqz v6, :cond_77

    iget-boolean v6, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    if-nez v6, :cond_79

    :cond_77
    if-eqz v2, :cond_78

    const/4 v1, 0x0

    goto :goto_34

    :cond_78
    iget v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionBackgroundColor:I

    :goto_34
    invoke-virtual {v4, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_79
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v1, :cond_7c

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    if-eqz v1, :cond_7a

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v2, :cond_7a

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsPopupShowing:Z

    if-eqz v2, :cond_7a

    const/4 v2, 0x1

    goto :goto_35

    :cond_7a
    move v2, v5

    :goto_35
    if-eqz v2, :cond_7c

    if-eqz v1, :cond_7c

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v2, :cond_7b

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsPopupShowing:Z

    if-eqz v2, :cond_7b

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mHideAnimation:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    :cond_7b
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    :cond_7c
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v1

    if-eqz v1, :cond_81

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    move-object/from16 v2, v24

    if-ne v2, v1, :cond_7d

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-nez v1, :cond_82

    :cond_7d
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-nez v1, :cond_7e

    goto :goto_36

    :cond_7e
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    :goto_36
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_80

    new-instance v1, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8}, Landroid/view/Display;->getDisplayId()I

    move-result v26

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget v12, v9, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/16 v30, 0x0

    move-object/from16 v22, v1

    move-object/from16 v23, v4

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move-object/from16 v27, v8

    move-object/from16 v28, v11

    move/from16 v29, v12

    invoke-direct/range {v22 .. v30}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;ILandroid/view/InputChannel;)V

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1, v4, v6, v7}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->createStashDimOverlay(Landroid/view/SurfaceControl;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;)V

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result v4

    if-eqz v4, :cond_7f

    const v4, 0x3ecccccd    # 0.4f

    goto :goto_37

    :cond_7f
    const v4, 0x3e4ccccd    # 0.2f

    :goto_37
    invoke-virtual {v1, v4}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->setDimOverlayAlpha(F)V

    goto :goto_38

    :cond_80
    const-string v1, "MultiTaskingWindowDecoration"

    const-string v4, "mDragResizeInputSurface has already been removed."

    invoke-static {v1, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38

    :cond_81
    move-object/from16 v2, v24

    :cond_82
    :goto_38
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-eqz v1, :cond_83

    iget-boolean v4, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isForceHidden:Z

    const/4 v6, 0x1

    xor-int/2addr v4, v6

    invoke-virtual {v1, v4}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->updateTouchableState(Z)V

    :cond_83
    if-eqz v16, :cond_92

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v1

    if-eqz v1, :cond_84

    goto/16 :goto_44

    :cond_84
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    if-nez v1, :cond_85

    goto :goto_39

    :cond_85
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashDimInputListener:Lcom/android/wm/shell/windowdecor/FreeformDimInputListener;

    :goto_39
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    if-ne v2, v1, :cond_86

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v1, :cond_89

    :cond_86
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v1, :cond_87

    goto :goto_3a

    :cond_87
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :goto_3a
    new-instance v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mChoreographer:Landroid/view/Choreographer;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplay:Landroid/view/Display;

    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v26

    if-eqz v20, :cond_88

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    :goto_3b
    move-object/from16 v27, v7

    goto :goto_3c

    :cond_88
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    goto :goto_3b

    :goto_3c
    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragPositioningCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlBuilderSupplier:Ljava/util/function/Supplier;

    iget-object v11, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSurfaceControlTransactionSupplier:Ljava/util/function/Supplier;

    iget-object v12, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    iget-object v13, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskOrganizer:Lcom/android/wm/shell/ShellTaskOrganizer;

    move-object/from16 v22, v1

    move-object/from16 v23, v2

    move-object/from16 v24, v4

    move-object/from16 v25, v6

    move-object/from16 v28, v7

    move-object/from16 v29, v8

    move-object/from16 v30, v11

    move-object/from16 v31, v12

    move-object/from16 v32, v13

    invoke-direct/range {v22 .. v32}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/view/Choreographer;ILandroid/view/SurfaceControl;Lcom/android/wm/shell/windowdecor/DragPositioningCallback;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/ShellTaskOrganizer;)V

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FREEFORM_RESIZE_VIEW:Z

    :cond_89
    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez v1, :cond_8d

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->needAdjustHandleLocation()Z

    move-result v2

    if-eqz v2, :cond_8c

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    iget v4, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimType:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_8a

    iget-boolean v2, v2, Lcom/android/wm/shell/windowdecor/FreeformStashState;->mAnimating:Z

    if-eqz v2, :cond_8a

    const/4 v2, 0x1

    goto :goto_3d

    :cond_8a
    move v2, v5

    :goto_3d
    if-nez v2, :cond_8c

    invoke-virtual/range {p0 .. p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getVisibleTaskBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    if-le v2, v4, :cond_8b

    const/4 v2, 0x1

    goto :goto_3e

    :cond_8b
    move v2, v5

    :goto_3e
    invoke-virtual {v0, v10, v1, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->adjustHandleToDisplay(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;Z)V

    goto :goto_3f

    :cond_8c
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v1, :cond_8d

    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->resetHandleViewPadding()V

    :cond_8d
    :goto_3f
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v1, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    if-eqz v20, :cond_8e

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    if-nez v2, :cond_8e

    goto :goto_40

    :cond_8e
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    iput v1, v2, Lcom/android/wm/shell/windowdecor/DragDetector;->mTouchSlop:I

    :goto_40
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v2, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v2, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_FREEFORM_RESIZE_TOUCHABLE_REGION:Z

    const v6, 0x7f0702f9

    const v7, 0x7f070419

    if-eqz v4, :cond_91

    iget v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v4}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result v4

    if-eqz v4, :cond_8f

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v4, v4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    move/from16 v16, v4

    goto :goto_41

    :cond_8f
    move/from16 v16, v5

    :goto_41
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget-boolean v8, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v8, :cond_90

    invoke-static {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v12

    move/from16 v17, v12

    goto :goto_42

    :cond_90
    move/from16 v17, v5

    :goto_42
    const/16 v3, 0xa

    invoke-static {v3, v4}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v18

    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    new-instance v4, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v11, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    new-instance v12, Landroid/util/Size;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v8, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-direct {v12, v8, v5}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getResizeEdgeHandleSize(Landroid/content/res/Resources;)I

    move-result v13

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v14

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    move-object v10, v4

    invoke-direct/range {v10 .. v18}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;-><init>(ILandroid/util/Size;IIIIII)V

    iget-boolean v0, v9, Landroid/app/ActivityManager$RunningTaskInfo;->isForceHidden:Z

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    invoke-virtual {v3, v4, v1, v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->setGeometry(Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;IZ)Z

    goto :goto_43

    :cond_91
    iget-object v3, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    new-instance v4, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    iget v5, v5, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCornerRadius:I

    new-instance v8, Landroid/util/Size;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget v10, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    iget v9, v9, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    invoke-direct {v8, v10, v9}, Landroid/util/Size;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getResizeEdgeHandleSize(Landroid/content/res/Resources;)I

    move-result v0

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    move-object/from16 p0, v4

    move/from16 p1, v5

    move-object/from16 p2, v8

    move/from16 p3, v0

    move/from16 p4, v7

    move/from16 p5, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;-><init>(ILandroid/util/Size;III)V

    const/4 v0, 0x1

    invoke-virtual {v3, v4, v1, v0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->setGeometry(Lcom/android/wm/shell/windowdecor/DragResizeWindowGeometry;IZ)Z

    :goto_43
    return-void

    :cond_92
    :goto_44
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    if-nez v1, :cond_93

    goto :goto_45

    :cond_93
    invoke-virtual {v1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->close()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDragResizeListener:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    :goto_45
    return-void
.end method

.method public final releaseViews(Landroid/window/WindowContainerTransaction;)V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->releaseView()V

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;->mFreeformOutline:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    :cond_0
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformOutlineWrapper:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$FreeformOutlineWrapper;

    :cond_1
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->closeHandleMenu(Z)V

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v0, :cond_4

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setHandleAutoHideEnabled(Z)Z

    :cond_3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    iput-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    :cond_4
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_OVERFLOW_MENU:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mMorePopup:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    if-eqz v2, :cond_5

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mIsPopupShowing:Z

    if-eqz v2, :cond_5

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DexMorePopup;->mHideAnimation:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_5
    iput-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDexMorePopup:Lcom/android/wm/shell/windowdecor/DexMorePopup;

    :cond_6
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->destroyStashDimOverlay()V

    invoke-super {p0, p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->releaseViews(Landroid/window/WindowContainerTransaction;)V

    return-void
.end method

.method public final resetDockingMargins()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mLastDockingState:I

    invoke-static {p0}, Landroid/app/WindowConfiguration;->isDexTaskDocking(I)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const p0, 0x7f0a0918

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v2, v1, v3, v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    const p0, 0x7f0a013e

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final setCaptionColor(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v1, :cond_1

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isNightMode(Landroid/app/TaskInfo;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setCaptionColor(Z)V

    goto :goto_1

    :cond_1
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const p0, 0x7f0a024a

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {p1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Color;->luminance()F

    move-result p1

    float-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, v0, v2

    if-gez p1, :cond_2

    const p1, 0x7f0600f1

    goto :goto_0

    :cond_2
    const p1, 0x7f0600f0

    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p1

    const v0, 0x7f0a013b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f0a0717

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f0a06b4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    const v0, 0x7f0a02a7

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/VectorDrawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/VectorDrawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final setImmersiveMode(Z)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mDestroyed:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    iget-boolean v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    if-ne v2, p1, :cond_2

    if-eqz v2, :cond_8

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    if-eqz v2, :cond_2

    goto/16 :goto_1

    :cond_2
    iput-boolean p1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    iput v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionHeight:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "setImmersiveMode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MultiTaskingWindowDecorationViewHolder"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo p0, "setImmersiveMode: pending, reason=not_attached_yet"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    if-nez v2, :cond_4

    new-instance v2, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    iget-object v3, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandler:Landroid/os/Handler;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    invoke-direct {v2, v3, v4, v5, v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;-><init>(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/os/Handler;Landroid/view/View;I)V

    iput-object v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    :cond_4
    iget-boolean v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mIsImmersiveMode:Z

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->setShownState(Z)V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->mIsPaused:Z

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->hide()V

    goto :goto_0

    :cond_5
    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mImmersiveCaptionBehavior:Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;

    invoke-virtual {v0}, Lcom/android/wm/shell/windowdecor/ImmersiveCaptionBehavior;->pause()V

    :goto_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionInsetsRect:Landroid/graphics/Rect;

    if-eqz p1, :cond_6

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V

    goto :goto_1

    :cond_6
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p1, v0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->relayout(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Region;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public final setNewDexCaptionBackground(Z)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz p0, :cond_4

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1060447

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionBackgroundColor:I

    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mRootView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mCaptionButtonColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mContext:Landroid/content/Context;

    const v0, 0x7f060645

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mButtons:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v1, :cond_3

    invoke-virtual {v1, p1}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v1}, Landroid/widget/ImageButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_3

    const v2, 0x3ecccccd    # 0.4f

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setAlpha(F)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method public final showHandleMenu()V
    .locals 26

    move-object/from16 v0, p0

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-object v5, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {v5}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX:Z

    if-eqz v5, :cond_1

    iget-boolean v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v6}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    if-nez v6, :cond_2

    new-instance v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    iget-object v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionButtonClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iget-object v8, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mOnCaptionTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iget-object v9, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    invoke-direct {v6, v0, v7, v8, v9}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;-><init>(Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;)V

    iput-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    :cond_2
    iget-object v6, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    iget-boolean v7, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeepScreenOn:Z

    iput-boolean v7, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mIsKeepScreenOn:Z

    new-instance v7, Landroid/window/SurfaceSyncGroup;

    const-string v8, "HandleMenuPopup"

    invoke-direct {v7, v8}, Landroid/window/SurfaceSyncGroup;-><init>(Ljava/lang/String;)V

    new-instance v15, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v15}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v8, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    const/4 v14, 0x5

    if-nez v8, :cond_29

    iget-object v8, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v9}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v12

    iget-boolean v9, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mIsNewDexMode:Z

    if-eqz v5, :cond_3

    if-eqz v9, :cond_3

    const v5, 0x7f0d03cc

    goto :goto_0

    :cond_3
    if-ne v12, v14, :cond_4

    const v5, 0x7f0d0368

    goto :goto_0

    :cond_4
    if-ne v12, v3, :cond_5

    const v5, 0x7f0d036a

    goto :goto_0

    :cond_5
    const v5, 0x7f0d036b

    :goto_0
    const v11, 0x7f070f7c

    invoke-static {v8, v11}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v16

    const v10, 0x7f070f77

    invoke-static {v8, v10}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v10

    if-ne v12, v14, :cond_6

    const v11, 0x7f070f92

    invoke-static {v8, v11}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v11

    goto :goto_1

    :cond_6
    const/4 v11, 0x0

    :goto_1
    if-eqz v9, :cond_7

    move v13, v4

    goto :goto_2

    :cond_7
    iget-object v13, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mCaptionButtonPolicy:Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;

    invoke-interface {v13}, Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;->getVisibleButtonCount()I

    move-result v13

    :goto_2
    mul-int v13, v13, v16

    mul-int/2addr v10, v4

    add-int/2addr v10, v13

    add-int/2addr v10, v11

    iput v10, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mPopupWidth:I

    iget-object v10, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v10, v10, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v10}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v10

    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_SHELL_TRANSITION:Z

    const/4 v13, 0x4

    const/4 v2, -0x1

    iget-object v14, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    if-eqz v11, :cond_c

    iget-object v11, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->isSplitScreen()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    if-eqz v11, :cond_c

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->minWidth:I

    if-eq v11, v1, :cond_8

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v1

    iget-object v11, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget v11, v11, Landroid/app/ActivityManager$RunningTaskInfo;->minHeight:I

    if-ne v1, v11, :cond_c

    :cond_8
    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getStageType()I

    move-result v1

    if-eq v1, v3, :cond_b

    if-eq v1, v4, :cond_a

    if-eq v1, v13, :cond_9

    move v1, v2

    goto :goto_3

    :cond_9
    move v1, v4

    goto :goto_3

    :cond_a
    move v1, v3

    goto :goto_3

    :cond_b
    const/4 v1, 0x0

    :goto_3
    if-eq v1, v2, :cond_c

    iget-object v10, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mSplitScreenController:Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {v10, v1}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->getStageBounds(I)Landroid/graphics/Rect;

    move-result-object v10

    :cond_c
    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    if-eqz v9, :cond_f

    iget-object v2, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v11, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v11}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    move-result-object v11

    const/16 v20, 0x3

    mul-int/lit8 v21, v16, 0x3

    iget v13, v2, Landroid/graphics/Rect;->right:I

    sub-int v3, v13, v21

    iget v4, v11, Landroid/graphics/Rect;->right:I

    if-le v3, v4, :cond_d

    sub-int v21, v13, v4

    goto :goto_4

    :cond_d
    iget v3, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mPopupWidth:I

    sub-int/2addr v13, v3

    sub-int v13, v13, v21

    iget v3, v11, Landroid/graphics/Rect;->left:I

    if-ge v13, v3, :cond_e

    iget v2, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v2

    goto :goto_5

    :cond_e
    :goto_4
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mPopupWidth:I

    sub-int/2addr v2, v3

    sub-int v3, v2, v21

    :goto_5
    move v13, v3

    move/from16 v23, v12

    goto :goto_7

    :cond_f
    iget v3, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mPopupWidth:I

    iget-object v4, v14, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v11

    sub-int/2addr v11, v3

    const/4 v13, 0x2

    div-int/2addr v11, v13

    iget-object v13, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v13}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v13

    const/4 v2, 0x5

    if-ne v13, v2, :cond_11

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v13

    iget-object v2, v14, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    move/from16 v23, v12

    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v12

    const/4 v0, 0x0

    invoke-virtual {v2, v12, v13, v0}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v2

    iget v0, v10, Landroid/graphics/Rect;->left:I

    add-int v12, v0, v11

    iget v13, v2, Landroid/graphics/Insets;->left:I

    if-ge v12, v13, :cond_10

    const/4 v12, -0x1

    mul-int/2addr v0, v12

    add-int v11, v0, v13

    goto :goto_6

    :cond_10
    iget v12, v10, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v11

    iget v2, v2, Landroid/graphics/Insets;->right:I

    sub-int/2addr v4, v2

    if-le v12, v4, :cond_12

    sub-int/2addr v4, v0

    sub-int v11, v4, v3

    goto :goto_6

    :cond_11
    move/from16 v23, v12

    iget-object v0, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mHorizontalInset:I

    add-int/2addr v11, v0

    :cond_12
    :goto_6
    move v13, v11

    :goto_7
    if-eqz v9, :cond_13

    iget v0, v1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    invoke-virtual {v14}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getCaptionVisibleHeight$1()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v0, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070faa

    invoke-static {v0, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_9

    :cond_13
    iget-object v0, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result v2

    iget v3, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mCaptionTop:I

    if-eqz v2, :cond_15

    const v2, 0x7f070f98

    invoke-static {v1, v2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getStage()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_14

    move v3, v1

    goto :goto_8

    :cond_14
    add-int/2addr v3, v1

    goto :goto_8

    :cond_15
    const v0, 0x10503b1

    invoke-static {v1, v0}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v0

    sub-int v0, v16, v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    sub-int v0, v3, v0

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v1

    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    or-int/2addr v1, v2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v14, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v2}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v9, 0x0

    invoke-virtual {v2, v4, v1, v9}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v1

    iget v2, v10, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iget v1, v1, Landroid/graphics/Insets;->top:I

    if-ge v2, v1, :cond_16

    goto :goto_8

    :cond_16
    move v3, v0

    :goto_8
    move v0, v3

    :goto_9
    const v1, 0x7f070f97

    invoke-static {v8, v1}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->loadDimensionPixelSize(Landroid/content/res/Resources;I)I

    move-result v1

    iget v2, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mPopupWidth:I

    int-to-float v1, v1

    const/4 v3, 0x2

    const v4, 0x40008

    iget-object v8, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mParentDecor:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;

    const-string v10, "Caption Menu"

    const/16 v21, 0x1

    const/16 v24, 0x0

    move v9, v5

    const v5, 0x7f070f7c

    move-object v11, v15

    move/from16 v5, v23

    move-object v12, v7

    move-object/from16 v25, v14

    move v14, v0

    move-object v0, v15

    move v15, v2

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v1

    move/from16 v20, v21

    move-object/from16 v21, v24

    invoke-virtual/range {v8 .. v21}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->addWindow(ILjava/lang/String;Landroid/view/SurfaceControl$Transaction;Landroid/window/SurfaceSyncGroup;IIIIIIFZLandroid/view/View;)Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    move-result-object v1

    iput-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    const/4 v2, 0x5

    if-ne v5, v2, :cond_17

    move-object/from16 v3, v25

    iget-object v3, v3, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDragResizeInputSurface:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_17

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowSurface:Landroid/view/SurfaceControl;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setRelativeLayer(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    :cond_17
    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mRootPopupView:Landroid/view/View;

    if-eqz v1, :cond_1c

    new-instance v3, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$$ExternalSyntheticLambda0;

    invoke-direct {v3, v6}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/HandleMenuPopup;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getInstance()Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/multiwindow/MultiWindowManager;->getMultiSplitFlags()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->isSplitEnabled(I)Z

    move-result v1

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    if-eqz v3, :cond_18

    if-eqz v1, :cond_18

    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->supportsMultiWindow:Z

    :cond_18
    move v13, v1

    iget-object v9, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mRootPopupView:Landroid/view/View;

    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    iget-object v3, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v3}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->getButtonTintColor(Landroid/content/Context;ZZ)Landroid/content/res/ColorStateList;

    move-result-object v12

    iget-object v8, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mCaptionButtonPolicy:Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;

    iget-object v10, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mOnTouchListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    iget-object v11, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mOnClickListener:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;

    invoke-interface/range {v8 .. v13}, Lcom/android/wm/shell/windowdecor/CaptionButtonPolicy;->setupButtons(Landroid/view/View;Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel$CaptionTouchEventListener;Landroid/view/View$OnClickListener;Landroid/content/res/ColorStateList;Z)V

    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mRootPopupView:Landroid/view/View;

    if-eqz v1, :cond_1c

    iget-object v3, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v3}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v3

    if-eqz v3, :cond_19

    const v3, 0x7f0a0144

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    goto :goto_a

    :cond_19
    const v3, 0x7f0a0226

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    :goto_a
    if-nez v3, :cond_1a

    goto :goto_c

    :cond_1a
    iget-object v4, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v5}, Landroid/content/res/Configuration;->isNightModeActive()Z

    move-result v5

    if-eqz v5, :cond_1b

    const v5, 0x106032f

    goto :goto_b

    :cond_1b
    const v5, 0x1060330

    :goto_b
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    const/16 v8, 0xcc

    invoke-static {v8, v1, v5, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    iget-object v4, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070f96

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    new-instance v5, Landroid/view/SemBlurInfo$Builder;

    const/4 v8, 0x0

    invoke-direct {v5, v8}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v8, 0x7d

    invoke-virtual {v5, v8}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    int-to-float v4, v4

    invoke-virtual {v1, v4}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {v3, v1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    :cond_1c
    :goto_c
    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v3

    if-eqz v3, :cond_1e

    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mPopupWidth:I

    sub-int/2addr v3, v4

    const/4 v4, 0x2

    div-int/2addr v3, v4

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    if-gez v4, :cond_1d

    const/4 v1, 0x1

    goto :goto_d

    :cond_1d
    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    iget-object v3, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v1, v3, :cond_1e

    const/4 v1, 0x2

    goto :goto_d

    :cond_1e
    const/4 v1, 0x0

    :goto_d
    iget-object v3, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    iget-object v4, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v4, v4, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v4}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v4

    iget v5, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mPopupWidth:I

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x0

    const/4 v10, 0x2

    new-array v11, v10, [F

    fill-array-data v11, :array_0

    invoke-static {v4, v8, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    sget-object v12, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v13, v10, [F

    fill-array-data v13, :array_1

    invoke-static {v4, v12, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    sget-object v14, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v15, v10, [F

    fill-array-data v15, :array_2

    invoke-static {v4, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v4}, Landroid/view/View;->resetPivot()V

    const/16 v16, 0x0

    const v17, 0x3dcccccd    # 0.1f

    iget v15, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mWindowingMode:I

    if-ne v15, v2, :cond_21

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1f

    sget-object v3, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v5, v5

    mul-float v5, v5, v17

    neg-float v5, v5

    move-object/from16 v19, v0

    const/4 v2, 0x2

    new-array v0, v2, [F

    const/16 v20, 0x0

    aput v5, v0, v20

    const/16 v21, 0x1

    aput v9, v0, v21

    invoke-static {v4, v3, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move v3, v2

    move-object v2, v0

    :goto_e
    move/from16 v0, v21

    goto :goto_f

    :cond_1f
    move-object/from16 v19, v0

    move/from16 v21, v2

    const/4 v2, 0x2

    const/16 v20, 0x0

    if-ne v1, v2, :cond_20

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v3, v5

    mul-float v3, v3, v17

    new-array v5, v2, [F

    aput v3, v5, v20

    aput v9, v5, v21

    invoke-static {v4, v0, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    move-object v2, v0

    const/4 v0, 0x1

    const/4 v3, 0x2

    const/16 v20, 0x0

    goto :goto_f

    :cond_20
    move v3, v2

    move-object/from16 v2, v16

    goto :goto_e

    :cond_21
    move-object/from16 v19, v0

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070f7c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    int-to-float v0, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v3

    neg-float v0, v0

    const/4 v3, 0x2

    new-array v5, v3, [F

    const/16 v20, 0x0

    aput v0, v5, v20

    const/4 v0, 0x1

    aput v9, v5, v0

    invoke-static {v4, v2, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    :goto_f
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v2, :cond_22

    const/4 v9, 0x4

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v11, v3, v20

    aput-object v13, v3, v0

    const/16 v22, 0x2

    aput-object v10, v3, v22

    const/4 v9, 0x3

    aput-object v2, v3, v9

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_10
    move v3, v1

    goto :goto_11

    :cond_22
    move/from16 v22, v3

    const/4 v9, 0x3

    new-array v3, v9, [Landroid/animation/Animator;

    aput-object v11, v3, v20

    aput-object v13, v3, v0

    aput-object v10, v3, v22

    invoke-virtual {v5, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_10

    :goto_11
    const-wide/16 v0, 0xfa

    invoke-virtual {v13, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v10, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    const-wide/16 v9, 0x64

    invoke-virtual {v11, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz v2, :cond_23

    invoke-virtual {v2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_23
    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->ONE_EASING:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;

    invoke-direct {v0, v4}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v11, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v5, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mContext:Landroid/content/Context;

    iget-object v1, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHandleMenu:Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowViewHost:Landroid/view/SurfaceControlViewHost;

    invoke-virtual {v1}, Landroid/view/SurfaceControlViewHost;->getView()Landroid/view/View;

    move-result-object v1

    iget v2, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mPopupWidth:I

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_3

    invoke-static {v1, v8, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v8, v4, [F

    fill-array-data v8, :array_4

    invoke-static {v1, v12, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    new-array v11, v4, [F

    fill-array-data v11, :array_5

    invoke-static {v1, v14, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    invoke-virtual {v1}, Landroid/view/View;->resetPivot()V

    const/4 v12, 0x5

    if-ne v15, v12, :cond_26

    const/4 v12, 0x1

    if-ne v3, v12, :cond_25

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v2, v2

    mul-float v2, v2, v17

    neg-float v2, v2

    new-array v3, v4, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v13, v3, v14

    aput v2, v3, v12

    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    :cond_24
    move v3, v4

    move v13, v14

    :goto_12
    move-object/from16 v0, v16

    goto :goto_13

    :cond_25
    const/4 v13, 0x0

    const/4 v14, 0x0

    if-ne v3, v4, :cond_24

    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    int-to-float v2, v2

    mul-float v2, v2, v17

    new-array v3, v4, [F

    aput v13, v3, v14

    aput v2, v3, v12

    invoke-static {v1, v0, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    move-object/from16 v0, v16

    const/4 v3, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    goto :goto_13

    :cond_26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070f7c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    int-to-float v0, v0

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v3

    neg-float v0, v0

    const/4 v3, 0x2

    new-array v4, v3, [F

    const/4 v12, 0x0

    const/4 v13, 0x0

    aput v12, v4, v13

    const/4 v12, 0x1

    aput v0, v4, v12

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v16

    goto :goto_12

    :goto_13
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz v0, :cond_27

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v5, v4, v13

    aput-object v8, v4, v12

    aput-object v11, v4, v3

    const/4 v14, 0x3

    aput-object v0, v4, v14

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_14

    :cond_27
    const/4 v14, 0x3

    new-array v4, v14, [Landroid/animation/Animator;

    aput-object v5, v4, v13

    aput-object v8, v4, v12

    aput-object v11, v4, v3

    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    :goto_14
    const-wide/16 v3, 0x15e

    invoke-virtual {v8, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v11, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_28

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    :cond_28
    sget-object v0, Lcom/samsung/android/util/InterpolatorUtils;->SINE_OUT_60:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v0, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$2;

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/windowdecor/animation/CaptionAnimationUtils$2;-><init>(Landroid/view/View;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v5, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v2, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$1;

    invoke-direct {v1, v6}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$1;-><init>(Lcom/android/wm/shell/windowdecor/HandleMenuPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mHideAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$2;

    invoke-direct {v1, v6}, Lcom/android/wm/shell/windowdecor/HandleMenuPopup$2;-><init>(Lcom/android/wm/shell/windowdecor/HandleMenuPopup;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_15

    :cond_29
    move-object/from16 v19, v15

    iget-object v0, v8, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->transactionSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, v8, Lcom/android/wm/shell/windowdecor/additionalviewcontainer/AdditionalViewHostViewContainer;->windowSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->apply()V

    :goto_15
    iget-object v0, v6, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mShowAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_2a
    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Landroid/window/SurfaceSyncGroup;->addTransaction(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v7}, Landroid/window/SurfaceSyncGroup;->markSyncReady()V

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeepScreenOn:Z

    if-eqz v1, :cond_2c

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v1, :cond_2c

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleHideAnimator:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;

    if-eqz v1, :cond_2c

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mShow:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mShow:Landroid/animation/Animator;

    invoke-virtual {v2}, Landroid/animation/Animator;->cancel()V

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_16

    :cond_2b
    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_16
    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHideRunnable:Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator$$ExternalSyntheticLambda0;

    iget-object v5, v1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, v1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/animation/HandleHideAnimator;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2c
    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->isInputMethodShown()Z

    move-result v2

    if-nez v2, :cond_2d

    goto :goto_17

    :cond_2d
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration$$ExternalSyntheticLambda0;-><init>(Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2e
    :goto_17
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX_CAPTION_TYPE:Z

    if-eqz v1, :cond_2f

    iget-boolean v1, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mHandleMenuPopup:Lcom/android/wm/shell/windowdecor/HandleMenuPopup;

    iget-boolean v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsPopupWindowPinned:Z

    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/HandleMenuPopup;->mRootPopupView:Landroid/view/View;

    const v3, 0x7f0a08e7

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;

    if-eqz v1, :cond_2f

    iget-boolean v3, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mShowIconBackground:Z

    if-eq v3, v2, :cond_2f

    iput-boolean v2, v1, Lcom/android/wm/shell/windowdecor/widget/WindowMenuItemView;->mShowIconBackground:Z

    invoke-virtual {v1}, Landroid/widget/ImageButton;->invalidate()V

    :cond_2f
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_POPUP_HELP:Z

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mMultiTaskingHelpController:Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;

    if-eqz v1, :cond_34

    iget v2, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mWindowingMode:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_30

    sget-boolean v2, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    goto :goto_18

    :cond_30
    const/4 v4, 0x5

    if-ne v2, v4, :cond_31

    sget-boolean v2, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    goto :goto_18

    :cond_31
    const/4 v2, 0x0

    :goto_18
    if-eqz v2, :cond_34

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v0}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    if-ne v0, v3, :cond_32

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "multi_split_quick_options_help_count"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->SPLIT_HANDLER_HELP_POPUP_ENABLED:Z

    goto :goto_19

    :cond_32
    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_33

    iget-object v0, v1, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "freeform_handler_help_popup_count"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sput-boolean v3, Lcom/android/wm/shell/windowdecor/MultiTaskingHelpController;->FREEFORM_HANDLER_HELP_POPUP_ENABLED:Z

    goto :goto_19

    :cond_33
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_34
    :goto_19
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MultitaskingWindowDecoration{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " id="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateCaptionContainerSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateCaptionContainerSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    iget-object p3, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    iget v0, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionX:I

    int-to-float v0, v0

    iget p2, p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionY:I

    int-to-float p2, p2

    invoke-virtual {p1, p3, v0, p2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    const/16 p3, 0x1e

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p3, v0}, Landroid/view/SurfaceControl$Transaction;->setMetadata(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    const/4 p3, -0x1

    invoke-virtual {p1, p2, p3, p3}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mCaptionContainerSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method

.method public final updateDecorationContainerSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/wm/shell/windowdecor/WindowDecoration;->updateDecorationContainerSurface(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mDecorationContainerSurface:Landroid/view/SurfaceControl;

    const/4 p2, -0x1

    invoke-virtual {p1, p0, p2, p2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    :cond_0
    return-void
.end method

.method public final updateDexStates(Landroid/app/ActivityManager$RunningTaskInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Configuration;->isDexMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->isNewDexMode()Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexEnabled:Z

    return-void
.end method

.method public final updateDimensions(Landroid/content/res/Resources;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPositioner:Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingTaskPositioner;->mTaskMotionController:Lcom/android/wm/shell/windowdecor/TaskMotionController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x41500000    # 13.0f

    const/4 v2, 0x1

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScreenEdgeInset:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x42000000    # 32.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mMinVisibleWidth:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/high16 v1, 0x435c0000    # 220.0f

    invoke-static {v2, v1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mScaledFreeformHeight:I

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v2, v0, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    float-to-int p1, p1

    iput p1, p0, Lcom/android/wm/shell/windowdecor/TaskMotionController;->mStashMoveThreshold:I

    return-void
.end method

.method public final updateNonFreeformCaptionVisibility()V
    .locals 5

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mWindowDecorViewHolder:Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v2, :cond_1

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->isCaptionHandlerHidden:Z

    if-eqz v1, :cond_0

    move v1, v3

    :goto_0
    iget-boolean p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mIsKeepScreenOn:Z

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_FULL_SCREEN:Z

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v2

    if-ne v2, v3, :cond_3

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v2}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorViewModel;->canUseFullscreenHandler(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v2

    if-nez v2, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    xor-int/2addr v1, v3

    :goto_1
    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/16 v4, 0x8

    :goto_2
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mHandleView:Lcom/android/wm/shell/windowdecor/widget/HandleView;

    iget-object v4, v0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-static {v4}, Lcom/android/wm/shell/windowdecor/CaptionShellUtils;->hasBarFocus(Landroid/app/ActivityManager$RunningTaskInfo;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/wm/shell/windowdecor/widget/HandleView;->setTaskFocusState(Z)V

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_KEEP_SCREEN_ON:Z

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    if-eqz p0, :cond_5

    invoke-virtual {v0, v3}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecorationViewHolder;->setHandleAutoHideEnabled(Z)Z

    :cond_5
    :goto_3
    return-void
.end method

.method public updateRelayoutParams(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/app/ActivityManager$RunningTaskInfo;ZZLandroid/graphics/Region;)V
    .locals 5

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->reset()V

    iput-object p2, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mRunningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MD_DEX_COMPAT_CAPTION_SHELL:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {v2}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->dexCompatUiMode:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    move v3, v1

    :cond_1
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_DEX:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    const v0, 0x7f0d0362

    goto :goto_1

    :cond_2
    const v0, 0x7f0d0363

    :goto_1
    iput v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    goto :goto_5

    :cond_3
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_NEW_DEX:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    if-eqz v0, :cond_4

    const v0, 0x7f0d0364

    goto :goto_2

    :cond_4
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_5

    const v0, 0x7f0d0365

    goto :goto_2

    :cond_5
    const v0, 0x7f0d0366

    :goto_2
    iput v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    goto :goto_5

    :cond_6
    iget-object v2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SHELL_FREEFORM_CAPTION_TYPE:Z

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {v0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeBar(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f0d0361

    goto :goto_3

    :cond_7
    const v0, 0x7f0d0367

    :goto_3
    iput v0, v2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->IS_TABLET_DEVICE:Z

    if-eqz v2, :cond_8

    const v2, 0x7f070fa1

    goto :goto_4

    :cond_8
    const v2, 0x7f070fa0

    :goto_4
    iput v2, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionWidthId:I

    goto :goto_5

    :cond_9
    const v0, 0x7f0d007c

    iput v0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLayoutResId:I

    :goto_5
    invoke-virtual {p2}, Landroid/app/ActivityManager$RunningTaskInfo;->getWindowingMode()I

    move-result v0

    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL:Z

    if-eqz v2, :cond_10

    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    const/4 v3, 0x5

    if-eqz v2, :cond_b

    if-ne v0, v3, :cond_a

    const p0, 0x7f070f82

    goto :goto_7

    :cond_a
    const p0, 0x7f070f83

    goto :goto_7

    :cond_b
    iget-boolean v2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsNewDexMode:Z

    const v4, 0x10503ae

    if-eqz v2, :cond_d

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mRelayoutParams:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;

    if-ne v0, v3, :cond_c

    const v0, 0x10503af

    goto :goto_6

    :cond_c
    move v0, v4

    :goto_6
    iput v0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    move p0, v0

    goto :goto_7

    :cond_d
    iget p0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mCaptionType:I

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowManager;->isCaptionTypeHandle(I)Z

    move-result p0

    if-eqz p0, :cond_e

    const p0, 0x10503b1

    goto :goto_7

    :cond_e
    if-ne v0, v3, :cond_f

    const p0, 0x10503aa

    goto :goto_7

    :cond_f
    move p0, v4

    goto :goto_7

    :cond_10
    const p0, 0x7f070414

    :goto_7
    iput p0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mCaptionHeightId:I

    iget-boolean p0, p2, Landroid/app/ActivityManager$RunningTaskInfo;->isFocused:Z

    if-eqz p0, :cond_11

    const p0, 0x7f070415

    goto :goto_8

    :cond_11
    const p0, 0x7f070416

    :goto_8
    iput p0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mShadowRadiusId:I

    iput-boolean p3, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mApplyStartTransactionOnDraw:Z

    iput-boolean p4, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mSetTaskPositionAndCrop:Z

    iget-object p0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mDisplayExclusionRegion:Landroid/graphics/Region;

    invoke-virtual {p0, p5}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_CAPTION_SHELL_CUSTOMIZABLE_WINDOW_HEADERS:Z

    if-eqz p0, :cond_12

    iput-boolean v1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mLimitTouchRegionToSystemAreas:Z

    goto :goto_9

    :cond_12
    iget p0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mInputFeatures:I

    :goto_9
    new-instance p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;-><init>()V

    const p2, 0x7f0701a4

    iput p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mWidthResId:I

    sget-object p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;->START:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mAlignment:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iget-object p2, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;

    invoke-direct {p0}, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;-><init>()V

    const p2, 0x7f0701a5

    iput p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mWidthResId:I

    sget-object p2, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;->END:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement;->mAlignment:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams$OccludingCaptionElement$Alignment;

    iget-object p1, p1, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;->mOccludingCaptionElements:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final updateRoundedCornerForSplit()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mResult:Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;

    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast v0, Lcom/android/wm/shell/windowdecor/WindowDecorLinearLayout;

    const v1, 0x7f0a024a

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mIsDexMode:Z

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p0}, Landroid/app/ActivityManager$RunningTaskInfo;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isSplitScreen()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerRadius(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColor(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, p0}, Landroid/view/View;->semSetRoundedCorners(II)V

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->semSetRoundedCornerColor(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateTaskSurface(Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutParams;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;)V
    .locals 2

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-virtual {p1}, Landroid/app/ActivityManager$RunningTaskInfo;->isFreeform()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformStashState:Lcom/android/wm/shell/windowdecor/FreeformStashState;

    invoke-virtual {p1}, Lcom/android/wm/shell/windowdecor/FreeformStashState;->isStashed()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    move-result-object p1

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p1, p2}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getDexTaskDockingState()I

    move-result p1

    invoke-static {p1}, Landroid/app/WindowConfiguration;->isDexTaskDocking(I)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/graphics/Rect;

    iget p2, p4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mCaptionHeight:I

    neg-int p2, p2

    iget v0, p4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mWidth:I

    invoke-virtual {p0}, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->getFreeformThickness$3()I

    move-result v1

    add-int/2addr v1, v0

    iget p4, p4, Lcom/android/wm/shell/windowdecor/WindowDecoration$RelayoutResult;->mHeight:I

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, v1, p4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p1, p1, Landroid/app/ActivityManager$RunningTaskInfo;->positionInParent:Landroid/graphics/Point;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPosition:Landroid/graphics/Point;

    invoke-virtual {p2, p1}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    iget-object p4, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mFreeformAdjustImeController:Lcom/android/wm/shell/freeform/FreeformAdjustImeController;

    iget-boolean p4, p4, Lcom/android/wm/shell/freeform/FreeformAdjustImeController;->mAnimating:Z

    if-nez p4, :cond_3

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    iget p4, p1, Landroid/graphics/Point;->x:I

    int-to-float p4, p4

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p3, p2, p4, v1}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    iget-object p2, p0, Lcom/android/wm/shell/windowdecor/MultiTaskingWindowDecoration;->mTaskPosition:Landroid/graphics/Point;

    invoke-virtual {p2, p1}, Landroid/graphics/Point;->set(Landroid/graphics/Point;)V

    :cond_3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/WindowDecoration;->mTaskSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p3, p0, v0, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    return-void
.end method
