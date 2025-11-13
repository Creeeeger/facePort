.class public final Lcom/android/wm/shell/pip/phone/PipController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wm/shell/pip/PipTransitionController$PipTransitionCallback;
.implements Lcom/android/wm/shell/common/RemoteCallable;
.implements Lcom/android/wm/shell/sysui/ConfigurationChangeListener;
.implements Lcom/android/wm/shell/sysui/KeyguardChangeListener;
.implements Lcom/android/wm/shell/sysui/UserChangeListener;


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final PIP_KEEP_CLEAR_AREAS_DELAY:J


# instance fields
.field public final mAppOpsListener:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

.field public final mConnection:Lcom/android/wm/shell/pip/phone/PipController$6;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field public final mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

.field final mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field public final mEnableTouchCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

.field public final mEnterAnimationDuration:I

.field public final mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

.field public mIsInFixedRotation:Z

.field public mIsKeyguardShowingOrAnimating:Z

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

.field public final mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

.field public final mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

.field public mOnIsInPipStateChangedListener:Ljava/util/function/Consumer;

.field public final mOneHandedController:Ljava/util/Optional;

.field public mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

.field public final mPinnedTaskListener:Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;

.field public final mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

.field public final mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

.field public final mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

.field public final mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

.field public mPipInputConsumer:Lcom/android/wm/shell/pip/phone/PipInputConsumer;

.field public final mPipKeepClearAlgorithm:Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;

.field public final mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

.field public final mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

.field public final mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

.field public final mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

.field public final mRotationController:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellController:Lcom/android/wm/shell/sysui/ShellController;

.field public final mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

.field public final mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

.field public final mTmpInsetBounds:Landroid/graphics/Rect;

.field public final mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

.field public final mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "persist.wm.debug.pip_keep_clear_areas_delay"

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/DisplayController;Lcom/android/wm/shell/pip/PipAnimationController;Lcom/android/wm/shell/common/pip/PipAppOpsListener;Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;Lcom/android/wm/shell/common/pip/PipBoundsState;Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;Lcom/android/wm/shell/pip/phone/PipMotionHelper;Lcom/android/wm/shell/common/pip/PipMediaController;Lcom/android/wm/shell/pip/phone/PhonePipMenuController;Lcom/android/wm/shell/pip/PipTaskOrganizer;Lcom/android/wm/shell/pip/PipTransitionState;Lcom/android/wm/shell/pip/phone/PipTouchHandler;Lcom/android/wm/shell/pip/PipTransitionController;Lcom/android/wm/shell/WindowManagerShellWrapper;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/pip/PipParamsChangedForwarder;Lcom/android/wm/shell/common/DisplayInsetsController;Lcom/android/wm/shell/common/TabletopModeController;Ljava/util/Optional;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/wm/shell/sysui/ShellInit;",
            "Lcom/android/wm/shell/sysui/ShellCommandHandler;",
            "Lcom/android/wm/shell/sysui/ShellController;",
            "Lcom/android/wm/shell/common/DisplayController;",
            "Lcom/android/wm/shell/pip/PipAnimationController;",
            "Lcom/android/wm/shell/common/pip/PipAppOpsListener;",
            "Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;",
            "Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;",
            "Lcom/android/wm/shell/common/pip/PipBoundsState;",
            "Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;",
            "Lcom/android/wm/shell/pip/phone/PipMotionHelper;",
            "Lcom/android/wm/shell/common/pip/PipMediaController;",
            "Lcom/android/wm/shell/pip/phone/PhonePipMenuController;",
            "Lcom/android/wm/shell/pip/PipTaskOrganizer;",
            "Lcom/android/wm/shell/pip/PipTransitionState;",
            "Lcom/android/wm/shell/pip/phone/PipTouchHandler;",
            "Lcom/android/wm/shell/pip/PipTransitionController;",
            "Lcom/android/wm/shell/WindowManagerShellWrapper;",
            "Lcom/android/wm/shell/common/TaskStackListenerImpl;",
            "Lcom/android/wm/shell/pip/PipParamsChangedForwarder;",
            "Lcom/android/wm/shell/common/DisplayInsetsController;",
            "Lcom/android/wm/shell/common/TabletopModeController;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHandedController;",
            ">;",
            "Lcom/android/wm/shell/common/ShellExecutor;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    const/4 v3, 0x4

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    iput-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mEnableTouchCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;-><init>(Lcom/android/wm/shell/pip/phone/PipController;I)V

    iput-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedTaskListener:Lcom/android/wm/shell/pip/phone/PipController$PipControllerPinnedTaskListener;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iput-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mRotationController:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda4;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$1;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/PipController$1;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iput-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$6;

    invoke-direct {v2, p0}, Lcom/android/wm/shell/pip/phone/PipController$6;-><init>(Lcom/android/wm/shell/pip/phone/PipController;)V

    iput-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    move-object v4, p3

    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    move-object v4, p4

    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipController;->mShellController:Lcom/android/wm/shell/sysui/ShellController;

    new-instance v4, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    invoke-direct {v4, p0, v3}, Lcom/android/wm/shell/pip/phone/PipController$PipImpl;-><init>(Lcom/android/wm/shell/pip/phone/PipController;I)V

    iput-object v4, v0, Lcom/android/wm/shell/pip/phone/PipController;->mImpl:Lcom/android/wm/shell/pip/phone/PipController$PipImpl;

    move-object/from16 v3, p19

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mWindowManagerShellWrapper:Lcom/android/wm/shell/WindowManagerShellWrapper;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    move-object v3, p8

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    move-object v3, p9

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;

    move-object v3, p10

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    move-object/from16 v3, p11

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    move-object/from16 v3, p15

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    move-object/from16 v3, p16

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    move-object/from16 v3, p25

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    move-object/from16 v3, p13

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

    move-object/from16 v3, p14

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    move-object/from16 v3, p17

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    move-object v3, p7

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mAppOpsListener:Lcom/android/wm/shell/common/pip/PipAppOpsListener;

    move-object/from16 v3, p24

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mOneHandedController:Ljava/util/Optional;

    move-object/from16 v3, p18

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    move-object/from16 v3, p20

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTaskStackListener:Lcom/android/wm/shell/common/TaskStackListenerImpl;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mEnterAnimationDuration:I

    move-object/from16 v3, p21

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipParamsChangedForwarder:Lcom/android/wm/shell/pip/PipParamsChangedForwarder;

    move-object/from16 v3, p22

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mDisplayInsetsController:Lcom/android/wm/shell/common/DisplayInsetsController;

    move-object/from16 v3, p23

    iput-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTabletopModeController:Lcom/android/wm/shell/common/TabletopModeController;

    invoke-static {}, Lcom/android/wm/shell/common/pip/PipUtils;->isPip2ExperimentEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    move-object v4, p2

    invoke-virtual {p2, v3, p0}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Runnable;Ljava/lang/Object;)V

    :cond_0
    new-instance v3, Landroid/content/Intent;

    const-class v4, Lcom/android/wm/shell/pip/PipMenuControlService;

    invoke-direct {v3, p1, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v4, 0x1

    invoke-virtual {p1, v3, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Lcom/android/wm/shell/pip/phone/PipController$SettingsObserver;-><init>(Lcom/android/wm/shell/pip/phone/PipController;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public final getRemoteCallExecutor()Lcom/android/wm/shell/common/ShellExecutor;
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    return-object p0
.end method

.method public hasPinnedStackAnimationListener()Z
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->reloadResources(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->reloadResources()V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cd3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mBottomOffsetBufferPx:I

    const v2, 0x7f070cdb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeOffset:I

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070cf6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070cf5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipEdgeMargin:I

    iget-object v2, v1, Lcom/android/wm/shell/common/pip/PipBoundsState;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    check-cast v2, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->reloadResources()V

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->reloadResources()V

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->adjustPipBoundsForEdge(Landroid/graphics/Rect;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;Z)V

    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    iget v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mLastDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v1, p1, :cond_2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mLastLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    :cond_3
    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->setSplitMenuEnabled(Z)V

    :cond_4
    return-void
.end method

.method public final onDensityOrFontScaleChanged$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mSurfaceTransactionHelper:Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;

    invoke-virtual {v1, v0}, Lcom/android/wm/shell/pip/PipSurfaceTransactionHelper;->onDensityOrFontScaleChanged(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070cd4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v2, 0x7f070cf4

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-interface {v0, v1, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onPipResourceDimensionsChanged(II)V

    :cond_0
    return-void
.end method

.method public final onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "PipController"

    const-string p1, "onDisplayChanged - layout is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v0}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v0

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    iget-object v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    if-ne v1, v2, :cond_1

    iget v1, v0, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    iget-object v1, p1, Lcom/android/wm/shell/common/DisplayLayout;->mCutout:Landroid/view/DisplayCutout;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_4

    iget-boolean v0, v3, Lcom/android/wm/shell/pip/PipTransitionController;->mDeferBoundsTransaction:Z

    if-eqz v0, :cond_4

    :cond_1
    iget-boolean v0, v3, Lcom/android/wm/shell/pip/PipTransitionController;->mDeferBoundsTransaction:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/android/wm/shell/pip/PipTransitionController;->mDeferBoundsTransaction:Z

    :cond_2
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v0, v0, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChangedUncheck(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    :cond_4
    return-void
.end method

.method public final onDisplayChangedUncheck(Lcom/android/wm/shell/common/DisplayLayout;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget-boolean v2, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v2, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v1}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p2, :cond_2

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {v4}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->attachPipMenuView()V

    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    iget-object v6, v5, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    new-instance v14, Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v15}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-direct {v14, v7}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    const/4 v7, 0x1

    invoke-virtual {v5, v14, v7}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v7

    iget v8, v15, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    invoke-virtual {v6, v8, v14, v7}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v9

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->run()V

    iget-object v2, v15, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v6, v15, Lcom/android/wm/shell/common/pip/PipBoundsState;->mBoundsScale:F

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v6, v15, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMaxSize:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    iget v7, v15, Lcom/android/wm/shell/common/pip/PipBoundsState;->mBoundsScale:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    const/4 v13, 0x0

    invoke-virtual {v14, v13, v13, v2, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {v5, v14, v13}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v8

    iget v10, v15, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashedState:I

    iget v11, v15, Lcom/android/wm/shell/common/pip/PipBoundsState;->mStashOffset:I

    iget-object v2, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v12

    invoke-virtual {v15}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getStashInsets()Landroid/graphics/Rect;

    move-result-object v5

    move-object v7, v14

    move v6, v13

    move-object v13, v5

    invoke-static/range {v7 .. v13}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;FIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    invoke-virtual {v15}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setHasUserResizedPip()V

    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v5, v5, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v5, v14}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v5

    iget v5, v5, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    if-eqz v5, :cond_1

    invoke-virtual {v2}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v2

    iget v2, v2, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    iget v1, v1, Lcom/android/wm/shell/common/DisplayLayout;->mDensityDpi:I

    if-eq v2, v1, :cond_1

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    invoke-virtual {v3, v0, v6, v14}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(IILandroid/graphics/Rect;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3, v14, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleFinishResizePip(Landroid/graphics/Rect;Ljava/util/function/Consumer;)V

    :goto_0
    invoke-virtual {v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->shouldShowSplitMenu()Z

    move-result v0

    invoke-virtual {v4, v0}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->setSplitMenuEnabled(Z)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda0;->run()V

    :goto_1
    return-void
.end method

.method public final onKeyguardDismissAnimationFinished()V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result v1

    const-string v2, "PipController"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iput-boolean v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    iget-boolean p0, v0, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz p0, :cond_0

    const-string p0, "mWaitForFixedRotation skip setPipVisibility"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setPipVisibility(Z)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onKeyguardDismissAnimationFinished: release keyguard state, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final onKeyguardVisibilityChanged(ZZZ)V
    .locals 2

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget p2, p2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMenuController:Lcom/android/wm/shell/pip/phone/PhonePipMenuController;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->isMenuVisible()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p1, p1, Lcom/android/wm/shell/pip/phone/PhonePipMenuController;->mPipMenuView:Lcom/android/wm/shell/pip/phone/PipMenuView;

    invoke-virtual {p1}, Lcom/android/wm/shell/pip/phone/PipMenuView;->hideMenu$1()V

    :cond_0
    invoke-virtual {p2, v1}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setPipVisibility(Z)V

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->isInPip()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p2, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mIsInSecureFolder:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {p0, v1, v1}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->expandLeavePip$1(ZZ)V

    goto :goto_0

    :cond_1
    if-nez p3, :cond_2

    iput-boolean v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->setPipVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final onPipTransitionCanceled(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->onPipTransitionFinishedOrCanceled(I)V

    return-void
.end method

.method public final onPipTransitionFinished(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/phone/PipController;->onPipTransitionFinishedOrCanceled(I)V

    return-void
.end method

.method public final onPipTransitionFinishedOrCanceled(I)V
    .locals 4

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnableTouchCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v2, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    invoke-virtual {v2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->synchronizePinnedStackBounds()V

    invoke-virtual {v1}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    iget-object v3, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object v1, v1, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v1}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    :cond_0
    if-ne p1, v2, :cond_1

    new-instance p1, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :cond_1
    return-void
.end method

.method public final onPipTransitionStarted(ILandroid/graphics/Rect;)V
    .locals 4

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v1, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mLeash:Landroid/view/SurfaceControl;

    const/16 v2, 0x23

    invoke-static {v2, v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->withSurface(ILandroid/content/Context;Landroid/view/SurfaceControl;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    packed-switch p1, :pswitch_data_0

    const-string v1, "TRANSITION_LEAVE_UNKNOWN"

    goto :goto_0

    :pswitch_0
    const-string v1, "TRANSITION_EXPAND_OR_UNEXPAND"

    goto :goto_0

    :pswitch_1
    const-string v1, "TRANSITION_USER_RESIZE"

    goto :goto_0

    :pswitch_2
    const-string v1, "TRANSITION_SNAP_AFTER_RESIZE"

    goto :goto_0

    :pswitch_3
    const-string v1, "TRANSITION_REMOVE_STACK"

    goto :goto_0

    :pswitch_4
    const-string v1, "TRANSITION_LEAVE_PIP_TO_SPLIT_SCREEN"

    goto :goto_0

    :pswitch_5
    const-string v1, "TRANSITION_LEAVE_PIP"

    goto :goto_0

    :pswitch_6
    const-string v1, "TRANSITION_TO_PIP"

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTag(Ljava/lang/String;)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;->setTimeout(J)Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;

    move-result-object v0

    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Lcom/android/internal/jank/InteractionJankMonitor$Configuration$Builder;)Z

    invoke-static {p1}, Lcom/android/wm/shell/pip/PipAnimationController;->isOutPipDirection(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    const/4 v2, 0x1

    invoke-virtual {v0, p2, v2}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v2

    iget-object v0, v0, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    new-instance v0, Lcom/android/wm/shell/common/pip/PipBoundsState$PipReentryState;

    iget-object v2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget v3, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mBoundsScale:F

    invoke-direct {v0, v3, p2}, Lcom/android/wm/shell/common/pip/PipBoundsState$PipReentryState;-><init>(FF)V

    iput-object v0, v2, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipReentryState:Lcom/android/wm/shell/common/pip/PipBoundsState$PipReentryState;

    :cond_0
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p2, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnableTouchCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    invoke-virtual {p2, v0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object p2, p2, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    iput-boolean v1, p2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mAllowTouches:Z

    iget-boolean v0, p2, Lcom/android/wm/shell/pip/phone/PipTouchState;->mIsUserInteracting:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    :cond_1
    iget-object p2, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onPipAnimationStarted()V

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    invoke-interface {p0}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onExpandPip()V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onThemeChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipDismissTargetHandler:Lcom/android/wm/shell/pip/phone/PipDismissTargetHandler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/wm/shell/common/DisplayLayout;

    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/common/DisplayLayout;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/wm/shell/pip/phone/PipController;->onDisplayChanged(Lcom/android/wm/shell/common/DisplayLayout;Z)V

    return-void
.end method

.method public final onUserChanged$1(I)V
    .locals 3

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMediaController:Lcom/android/wm/shell/common/pip/PipMediaController;

    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mSessionsChangedListener:Lcom/android/wm/shell/common/pip/PipMediaController$mSessionsChangedListener$1;

    invoke-virtual {p1, v0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    iget-object p1, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    iget-object p0, p0, Lcom/android/wm/shell/common/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v1, p0, v0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    return-void
.end method

.method public final setLauncherKeepClearAreaHeight(IZ)V
    .locals 10

    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_0

    int-to-long v2, p1

    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v9

    const/4 v7, 0x7

    const-string/jumbo v8, "setLauncherKeepClearAreaHeight: visible=%b, height=%d"

    const-wide v5, -0x28df3e7eb7afc868L    # -5.037042587108944E111

    invoke-static/range {v4 .. v9}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    const-string v2, "hotseat"

    if-eqz p2, :cond_1

    new-instance p2, Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v3}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, p1

    iget-object p1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {p2, v1, v3, v4, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object p1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNamedUnrestrictedKeepClearAreas:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/wm/shell/pip/phone/PipController;->updatePipPositionForKeepClearAreas()V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNamedUnrestrictedKeepClearAreas:Ljava/util/Map;

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    check-cast p1, Lcom/android/wm/shell/common/HandlerExecutor;

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mMovePipInResponseToKeepClearAreasChangeCallback:Lcom/android/wm/shell/pip/phone/PipController$$ExternalSyntheticLambda5;

    invoke-virtual {p1, p0}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-wide v0, Lcom/android/wm/shell/pip/phone/PipController;->PIP_KEEP_CLEAR_AREAS_DELAY:J

    invoke-virtual {p1, p0, v0, v1}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method

.method public setPinnedStackAnimationListener(Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;)V
    .locals 2

    iput-object p1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPinnedStackAnimationRecentsCallback:Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070cd4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f070cf4

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    invoke-interface {p1, v0, p0}, Lcom/android/wm/shell/pip/phone/PipController$PipAnimationListener;->onPipResourceDimensionsChanged(II)V

    :cond_0
    return-void
.end method

.method public final updateMovementBounds(Landroid/graphics/Rect;ZZZLandroid/window/WindowContainerTransaction;)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    iget-object v2, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v2, v2, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v3, 0x2

    if-eqz p4, :cond_1

    if-eq v2, v3, :cond_0

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    move-object/from16 v4, p1

    invoke-direct {v2, v4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v4, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayLayout()Lcom/android/wm/shell/common/DisplayLayout;

    move-result-object v4

    iget v4, v4, Lcom/android/wm/shell/common/DisplayLayout;->mRotation:I

    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v6, v5}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v5

    iget-object v7, v6, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget v7, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mAspectRatio:F

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v5, v6, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMinAspectRatio:F

    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    const/4 v9, 0x0

    if-gtz v5, :cond_2

    iget v5, v6, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mMaxAspectRatio:F

    invoke-static {v7, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-gtz v5, :cond_2

    invoke-virtual {v6, v7, v8, v9, v9}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->transformBoundsToAspectRatio(FLandroid/graphics/Rect;ZZ)V

    :cond_2
    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v7, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getDefaultBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_3
    iget-boolean v6, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    iget-object v7, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    const/4 v8, 0x1

    if-eqz v6, :cond_4

    iget v10, v7, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v11, 0x4

    if-eq v10, v11, :cond_4

    move v10, v8

    goto :goto_0

    :cond_4
    move v10, v9

    :goto_0
    iget-boolean v11, v7, Lcom/android/wm/shell/pip/PipTransitionState;->mInSwipePipToHomeTransition:Z

    if-nez v11, :cond_5

    if-eqz v10, :cond_6

    :cond_5
    if-eqz p2, :cond_6

    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_1819881549$Cache;->WM_SHELL_PICTURE_IN_PICTURE_enabled:[Z

    aget-boolean v3, v3, v9

    if-eqz v3, :cond_11

    iget v3, v7, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    int-to-long v7, v3

    sget-object v12, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_PICTURE_IN_PICTURE:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "PipTaskOrganizer"

    filled-new-array {v8, v3, v6, v7}, [Ljava/lang/Object;

    move-result-object v17

    const-string v16, "%s: Skip onMovementBoundsChanged on rotation change InSwipePipToHomeTransition=%b mWaitForFixedRotation=%b getTransitionState=%d"

    const-wide v13, 0x1b251b51fd383d74L    # 6.510784428184377E-178

    const/16 v15, 0x7c

    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_1819881549;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_6
    iget-object v6, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipAnimationController:Lcom/android/wm/shell/pip/PipAnimationController;

    iget-object v6, v6, Lcom/android/wm/shell/pip/PipAnimationController;->mCurrentAnimator:Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;

    iget-object v10, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    if-eqz v6, :cond_a

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v11

    if-eq v11, v3, :cond_7

    goto :goto_1

    :cond_7
    iget-object v3, v6, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p3, :cond_8

    if-nez p4, :cond_8

    iget-object v6, v10, Lcom/android/wm/shell/common/pip/PipBoundsState;->mPipDisplayLayoutState:Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipDisplayLayoutState;->getDisplayBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_8

    goto/16 :goto_4

    :cond_8
    iget-object v6, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v1, v6}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->updateAnimatorBounds(Landroid/graphics/Rect;)V

    invoke-virtual {v2, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto/16 :goto_4

    :cond_a
    :goto_1
    iget v3, v7, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    invoke-static {v3}, Lcom/android/wm/shell/pip/PipTransitionState;->isInPip(I)Z

    move-result v3

    if-eqz v3, :cond_b

    if-eqz p2, :cond_b

    goto :goto_2

    :cond_b
    move v8, v9

    :goto_2
    if-eqz v8, :cond_c

    sget-boolean v3, Lcom/android/wm/shell/transition/Transitions;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz v3, :cond_c

    invoke-virtual {v10, v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_c
    if-eqz v8, :cond_d

    iget-boolean v3, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mWaitForFixedRotation:Z

    if-eqz v3, :cond_d

    iget-boolean v3, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mHasFadeOut:Z

    if-eqz v3, :cond_d

    invoke-virtual {v10, v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_d
    if-eqz v8, :cond_f

    invoke-virtual {v10, v2}, Lcom/android/wm/shell/common/pip/PipBoundsState;->setBounds(Landroid/graphics/Rect;)V

    if-eqz v6, :cond_e

    invoke-virtual {v6}, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->getTransitionDirection()I

    move-result v3

    invoke-static {v6}, Lcom/android/wm/shell/pip/PipAnimationController;->quietCancel(Landroid/animation/ValueAnimator;)V

    iget-object v6, v1, Lcom/android/wm/shell/pip/PipTaskOrganizer;->mPipTransitionController:Lcom/android/wm/shell/pip/PipTransitionController;

    invoke-virtual {v6, v3}, Lcom/android/wm/shell/pip/PipTransitionController;->sendOnPipTransitionCancelled$1(I)V

    invoke-virtual {v1, v3}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->sendOnPipTransitionFinished(I)V

    goto :goto_3

    :cond_e
    move v3, v9

    :goto_3
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->createFinishResizeSurfaceTransaction(Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v6

    move-object/from16 v7, p5

    invoke-virtual {v1, v2, v3, v6, v7}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->prepareFinishResizeTransaction(Landroid/graphics/Rect;ILandroid/view/SurfaceControl$Transaction;Landroid/window/WindowContainerTransaction;)V

    goto :goto_4

    :cond_f
    if-eqz v6, :cond_10

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v6, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    iget-object v3, v6, Lcom/android/wm/shell/pip/PipAnimationController$PipTransitionAnimator;->mDestinationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_4

    :cond_10
    invoke-virtual {v10}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_11

    invoke-virtual {v10}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_11
    :goto_4
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->finishResizeForMenu(Landroid/graphics/Rect;)V

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTmpInsetBounds:Landroid/graphics/Rect;

    iget-object v3, v5, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    iget-object v0, v0, Lcom/android/wm/shell/pip/phone/PipController;->mTouchHandler:Lcom/android/wm/shell/pip/phone/PipTouchHandler;

    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    iget-object v5, v5, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->mUserResizeBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_12

    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipResizeGestureHandler:Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    invoke-virtual {v5, v3}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->setUserResizeBounds(Landroid/graphics/Rect;)V

    :cond_12
    iget-boolean v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v5, :cond_13

    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeHeight:I

    goto :goto_5

    :cond_13
    move v5, v9

    :goto_5
    iget v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDisplayRotation:I

    if-eq v6, v4, :cond_14

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mTouchState:Lcom/android/wm/shell/pip/phone/PipTouchState;

    invoke-virtual {v6}, Lcom/android/wm/shell/pip/phone/PipTouchState;->reset()V

    :cond_14
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3, v1, v6, v5}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    iget-object v7, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    iget-object v8, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_15

    iget-object v8, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    invoke-static {v2, v1, v8, v9}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    :cond_15
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v2, v8

    iget-object v8, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSizeSpecSource:Lcom/android/wm/shell/common/pip/SizeSpecSource;

    check-cast v8, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;

    invoke-virtual {v8, v2}, Lcom/android/wm/shell/common/pip/PhoneSizeSpecSource;->getDefaultSize(F)Landroid/util/Size;

    move-result-object v8

    new-instance v10, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/util/Size;->getWidth()I

    move-result v11

    invoke-virtual {v8}, Landroid/util/Size;->getHeight()I

    move-result v8

    invoke-direct {v10, v9, v9, v11, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v8, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-static {v10, v1, v8, v5}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    invoke-virtual {v0, v3, v2}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updatePipSizeConstraints(Landroid/graphics/Rect;F)V

    iget-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsImeShowing:Z

    if-eqz v2, :cond_16

    iget v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mImeOffset:I

    goto :goto_6

    :cond_16
    move v5, v9

    :goto_6
    if-nez v2, :cond_17

    iget-boolean v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mIsShelfShowing:Z

    if-eqz v2, :cond_17

    iget v9, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mShelfHeight:I

    :cond_17
    invoke-static {v5, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget-object v5, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v5, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput v4, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDisplayRotation:I

    iget-object v5, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mInsetBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {v0}, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->updateMovementBounds()V

    iput v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMovementBoundsExtraOffsets:I

    iget-object v1, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mExpandedBounds:Landroid/graphics/Rect;

    iget-object v2, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v5, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mExpandedMovementBounds:Landroid/graphics/Rect;

    iget-object v6, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mConnection:Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;

    iget-object v8, v6, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v8, v6, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mNormalMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v1, v6, Lcom/android/wm/shell/pip/phone/PipAccessibilityInteractionConnection;->mExpandedMovementBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    if-ne v1, v4, :cond_18

    iget-object v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mMotionHelper:Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    iget v2, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    iget-object v4, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalMovementBounds:Landroid/graphics/Rect;

    iget-object v5, v7, Lcom/android/wm/shell/common/pip/PipBoundsState;->mMovementBounds:Landroid/graphics/Rect;

    const/4 v6, 0x1

    move-object/from16 p0, v1

    move-object/from16 p1, v3

    move/from16 p2, v2

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    invoke-virtual/range {p0 .. p5}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;Z)V

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mSavedSnapFraction:F

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/wm/shell/pip/phone/PipTouchHandler;->mDeferResizeToNormalBoundsUntilRotation:I

    :cond_18
    return-void
.end method

.method public final updatePipPositionForKeepClearAreas()V
    .locals 13

    iget-boolean v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mIsKeyguardShowingOrAnimating:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTransitionState:Lcom/android/wm/shell/pip/PipTransitionState;

    iget v1, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_11

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    goto/16 :goto_7

    :cond_1
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipKeepClearAlgorithm:Lcom/android/wm/shell/common/pip/PipKeepClearAlgorithmInterface;

    check-cast v1, Lcom/android/wm/shell/common/pip/PhonePipKeepClearAlgorithm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsState:Lcom/android/wm/shell/common/pip/PipBoundsState;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    iget-object v6, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipBoundsAlgorithm:Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;

    if-eqz v5, :cond_2

    invoke-virtual {v6}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getEntryDestinationBoundsIgnoringKeepClearAreas()Landroid/graphics/Rect;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    :goto_0
    iget-boolean v7, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mIsImeShowing:Z

    if-nez v7, :cond_4

    iget-object v7, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mRestoreBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    iget-object v7, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mRestoreBounds:Landroid/graphics/Rect;

    iget-boolean v8, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mHasUserResizedPip:Z

    if-nez v8, :cond_3

    iget-boolean v8, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mHasUserMovedPip:Z

    if-nez v8, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-le v8, v9, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v8, v9, :cond_3

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v9

    iget v10, v7, Landroid/graphics/Rect;->right:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v10, v8

    sub-int v9, v7, v9

    invoke-virtual {v5, v8, v9, v10, v7}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v5, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :goto_1
    iget-object v7, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mRestoreBounds:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->setEmpty()V

    goto :goto_2

    :cond_4
    iget-object v7, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mNormalBounds:Landroid/graphics/Rect;

    iget-boolean v8, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mHasUserResizedPip:Z

    if-nez v8, :cond_5

    iget-boolean v8, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mHasUserMovedPip:Z

    if-nez v8, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v9

    if-eq v8, v9, :cond_5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-eq v8, v9, :cond_5

    iget v8, v5, Landroid/graphics/Rect;->right:I

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v10

    sub-int v10, v8, v10

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    sub-int v7, v9, v7

    invoke-virtual {v5, v10, v7, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :cond_5
    :goto_2
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6, v7}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getInsetBounds(Landroid/graphics/Rect;)V

    iget-boolean v8, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mIsImeShowing:Z

    if-eqz v8, :cond_6

    iget v8, v7, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mImeHeight:I

    iget v10, v1, Lcom/android/wm/shell/common/pip/PhonePipKeepClearAlgorithm;->mImeOffset:I

    add-int/2addr v9, v10

    sub-int/2addr v8, v9

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    :cond_6
    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->isStashed()Z

    move-result v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v8, :cond_8

    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    if-gt v1, v3, :cond_7

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_e

    :cond_7
    sub-int/2addr v3, v1

    invoke-virtual {v5, v10, v3}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_5

    :cond_8
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v11

    xor-int/2addr v11, v9

    iget-boolean v12, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mHasUserMovedPip:Z

    if-nez v12, :cond_9

    iget-boolean v12, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mHasUserResizedPip:Z

    if-nez v12, :cond_9

    move v11, v9

    :cond_9
    iget-boolean v12, v1, Lcom/android/wm/shell/common/pip/PhonePipKeepClearAlgorithm;->mKeepClearAreaGravityEnabled:Z

    if-nez v12, :cond_a

    if-eqz v11, :cond_d

    :cond_a
    invoke-virtual {v6, v5, v9}, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->getMovementBounds(Landroid/graphics/Rect;Z)Landroid/graphics/Rect;

    move-result-object v11

    iget-object v6, v6, Lcom/android/wm/shell/common/pip/PipBoundsAlgorithm;->mSnapAlgorithm:Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;

    invoke-virtual {v6, v10, v5, v11}, Lcom/android/wm/shell/common/pip/PipSnapAlgorithm;->getSnapFraction(ILandroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v5

    const/high16 v6, 0x3f000000    # 0.5f

    cmpl-float v6, v5, v6

    if-ltz v6, :cond_b

    const/high16 v6, 0x40200000    # 2.5f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_b

    move v5, v3

    goto :goto_3

    :cond_b
    move v5, v2

    :goto_3
    iget v6, v8, Landroid/graphics/Rect;->left:I

    iget v11, v7, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v8, v6, v11}, Landroid/graphics/Rect;->offsetTo(II)V

    if-ne v5, v3, :cond_c

    iget v3, v7, Landroid/graphics/Rect;->right:I

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v5

    sub-int/2addr v3, v5

    iget v5, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v3, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_4

    :cond_c
    iget v3, v7, Landroid/graphics/Rect;->left:I

    iget v5, v8, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v3, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    :cond_d
    :goto_4
    iget-object v3, v4, Lcom/android/wm/shell/common/pip/PipBoundsState;->mRestrictedKeepClearAreas:Ljava/util/Set;

    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getUnrestrictedKeepClearAreas()Ljava/util/Set;

    move-result-object v5

    invoke-virtual {v1, v8, v3, v5, v7}, Lcom/android/wm/shell/common/pip/PhonePipKeepClearAlgorithm;->findUnoccludedPosition(Landroid/graphics/Rect;Ljava/util/Set;Ljava/util/Set;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    :cond_e
    :goto_5
    invoke-virtual {v4}, Lcom/android/wm/shell/common/pip/PipBoundsState;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    iget v0, v0, Lcom/android/wm/shell/pip/PipTransitionState;->mState:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    goto :goto_6

    :cond_f
    move v9, v10

    :goto_6
    iget-object v1, p0, Lcom/android/wm/shell/pip/phone/PipController;->mPipTaskOrganizer:Lcom/android/wm/shell/pip/PipTaskOrganizer;

    if-eqz v9, :cond_10

    iget p0, p0, Lcom/android/wm/shell/pip/phone/PipController;->mEnterAnimationDuration:I

    invoke-virtual {v1, p0, v10, v5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->scheduleAnimateResizePip(IILandroid/graphics/Rect;)V

    goto :goto_7

    :cond_10
    if-ne v0, v2, :cond_11

    invoke-virtual {v1, v5}, Lcom/android/wm/shell/pip/PipTaskOrganizer;->updateAnimatorBounds(Landroid/graphics/Rect;)V

    :cond_11
    :goto_7
    return-void
.end method
