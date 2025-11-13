.class public Lcom/android/systemui/subscreen/SubScreenQSEventHandler;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;


# static fields
.field private static final CUTOUT_HEIGHT:I = 0x42

.field private static final CUTOUT_WIDTH:I = 0x171

.field private static final DEFAULT_COVER_SCREEN_WIDTH:I = 0x2ec

.field private static final DEFAULT_DRAGGING_AREA_HEIGHT:F = 65.4f

.field private static final DEFAULT_DRAGGING_AREA_HEIGHT_IN_CLOCK_FACE:F = 130.8f


# instance fields
.field private mBlockPolicy:Z

.field private final mCancelAnimator:Ljava/lang/Runnable;

.field private final mCollapsePanelRunnable:Ljava/lang/Runnable;

.field private final mContextSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

.field private mCoverScreenWidth:I

.field private final mCreatePanelHeightAnimatorAndRunConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

.field private final mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

.field private final mDisabledSupplier:Ljava/util/function/BooleanSupplier;

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDraggingAreaHeight:F

.field private mDraggingAreaHeightInClockFace:F

.field private final mExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

.field private mInSleep:Z

.field private mInitialExpandedHeight:D

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInputEventReceiver:Landroid/view/InputEventReceiver;

.field private mInputMonitor:Landroid/view/InputMonitor;

.field private mIsBackCallbackRegistered:Z

.field private mIsBlockedByPalmTouch:Z

.field private mIsFlexMode:Z

.field private mIsGestureMode:Z

.field private mIsHorizontalGesture:Z

.field private mIsInDraggingArea:Z

.field private mIsMultiTouch:Z

.field private mIsNaviBarShowing:Z

.field private mIsRotation0:Z

.field private mIsRotation180:Z

.field private mIsVerticalGesture:Z

.field private final mLayoutParamsSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private final mMaxExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

.field private final mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private final mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private final mOnBackInvokedCallback:Landroid/window/OnBackAnimationCallback;

.field private final mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field private final mPanelFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

.field private final mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

.field private final mScreenRecordingStateProvider:Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;

.field private mShouldBeHandledByInputMonitor:Z

.field private final mSubScreenQsWindowViewSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private final mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

.field private mTouchBlockDistance:F

.field private mTouchSlop:F

.field private mTracking:Z

.field private final mUpdatePanelExpansionConsumer:Ljava/util/function/DoubleConsumer;

.field private final mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWindowManagerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$x_LNxZ88W9FUKlkg9dhMWy4UeSQ(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->onPocketModeChanged()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCollapsePanelRunnable(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCollapsePanelRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContextSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mContextSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsRotation0(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsRotation180(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPanelExpandedSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/BooleanSupplier;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSubScreenQsWindowViewSupplier(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)Ljava/util/function/Supplier;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmInSleep(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInSleep:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsFlexMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsFlexMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsGestureMode(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsNaviBarShowing(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsNaviBarShowing:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsRotation0(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsRotation180(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/function/BooleanSupplier;Landroid/hardware/display/DisplayManager;Ljava/util/function/DoubleSupplier;Ljava/util/function/Supplier;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/function/DoubleSupplier;Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/util/function/BooleanSupplier;Ljava/util/function/BooleanSupplier;Lcom/android/systemui/qs/SecQSPanelResourcePicker;Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;Ljava/util/function/Supplier;Lcom/android/systemui/model/SysUiState;Ljava/util/function/DoubleConsumer;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/function/Supplier;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/lang/Runnable;",
            "Ljava/util/function/Supplier<",
            "Landroid/content/Context;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/Float;",
            "Ljava/lang/Boolean;",
            ">;",
            "Landroid/hardware/devicestate/DeviceStateManager;",
            "Ljava/util/function/BooleanSupplier;",
            "Landroid/hardware/display/DisplayManager;",
            "Ljava/util/function/DoubleSupplier;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager$LayoutParams;",
            ">;",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            "Ljava/util/function/DoubleSupplier;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Ljava/util/function/BooleanSupplier;",
            "Ljava/util/function/BooleanSupplier;",
            "Lcom/android/systemui/qs/SecQSPanelResourcePicker;",
            "Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;",
            "Ljava/util/function/Supplier<",
            "Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;",
            ">;",
            "Lcom/android/systemui/model/SysUiState;",
            "Ljava/util/function/DoubleConsumer;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ljava/util/function/Supplier<",
            "Landroid/view/WindowManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move-object/from16 v2, p9

    move-object/from16 v3, p17

    move-object/from16 v4, p21

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsHorizontalGesture:Z

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsInDraggingArea:Z

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mBlockPolicy:Z

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mShouldBeHandledByInputMonitor:Z

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBackCallbackRegistered:Z

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsFlexMode:Z

    new-instance v7, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;

    invoke-direct {v7, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$1;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    iput-boolean v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    new-instance v6, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$2;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    iput-object v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    new-instance v6, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;

    invoke-direct {v6, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$3;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    iput-object v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsNaviBarShowing:Z

    new-instance v6, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$4;

    invoke-direct {v6, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$4;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    iput-object v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    iput-boolean v5, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInSleep:Z

    new-instance v6, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;

    invoke-direct {v6, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$5;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    iput-object v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    new-instance v6, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;

    invoke-direct {v6, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$6;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    iput-object v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mOnBackInvokedCallback:Landroid/window/OnBackAnimationCallback;

    move-object v6, p1

    iput-object v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCancelAnimator:Ljava/lang/Runnable;

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCollapsePanelRunnable:Ljava/lang/Runnable;

    move-object v6, p3

    iput-object v6, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mContextSupplier:Ljava/util/function/Supplier;

    move-object v7, p4

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCreatePanelHeightAnimatorAndRunConsumer:Ljava/util/function/BiConsumer;

    move-object v7, p5

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    move-object v7, p6

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisabledSupplier:Ljava/util/function/BooleanSupplier;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v7, p8

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mLayoutParamsSupplier:Ljava/util/function/Supplier;

    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v7, p11

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mMaxExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    move-object/from16 v7, p12

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    move-object/from16 v7, p13

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    move-object/from16 v7, p15

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mScreenRecordingStateProvider:Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;

    iput-object v3, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    move-object/from16 v7, p18

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    move-object/from16 v7, p19

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mUpdatePanelExpansionConsumer:Ljava/util/function/DoubleConsumer;

    move-object/from16 v7, p20

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object v4, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWindowManagerSupplier:Ljava/util/function/Supplier;

    new-instance v7, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    new-instance v8, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;)V

    invoke-direct {v7, v8, p2}, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    iput-object v7, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    new-instance v1, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V

    iput-object v1, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "cover_screen_timeout"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentObserver:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

    invoke-virtual {v0, v2, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object v0, v1, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v1}, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->readScreenTimeOut()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "init: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubScreenTimeOutHelper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, v1, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    return-void
.end method

.method private calculateDraggingHeight(ZZ)F
    .locals 1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mScreenRecordingStateProvider:Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;

    iget-object p1, p1, Lcom/android/systemui/subscreen/ScreenRecordingStateProvider;->mTileState:Lcom/android/systemui/plugins/qs/QSTile$State;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p2, :cond_3

    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    const/high16 p1, 0x42840000    # 66.0f

    add-float/2addr p0, p1

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeightInClockFace:F

    goto :goto_3

    :cond_4
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    :goto_3
    return p0
.end method

.method private calculateIsInDraggingArea(ZF)Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchY:F

    cmpg-float p2, v0, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-gez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsNaviBarShowing:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    if-nez p1, :cond_2

    if-eqz p2, :cond_1

    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchX:F

    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverScreenWidth:I

    add-int/lit16 p0, p0, -0x171

    int-to-float p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    move v0, v1

    :cond_1
    move p2, v0

    :cond_2
    return p2
.end method

.method private disposeInputEvent()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/InputEventReceiver;->dispose()V

    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/InputMonitor;->dispose()V

    iput-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    :cond_1
    return-void
.end method

.method private handleDownEvent(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    iget-boolean v0, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mClockFaceShowing:Z

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCancelAnimator:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchX:F

    iput p2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchY:F

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {p1}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialExpandedHeight:D

    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsFlexMode:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation180:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->calculateDraggingHeight(ZZ)F

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->calculateIsInDraggingArea(ZF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsInDraggingArea:Z

    return-void
.end method

.method private handleMoveEvent(FZ)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCancelAnimator:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mUpdatePanelExpansionConsumer:Ljava/util/function/DoubleConsumer;

    iget-wide v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialExpandedHeight:D

    float-to-double v4, p1

    add-double/2addr v2, v4

    invoke-interface {v1, v2, v3}, Ljava/util/function/DoubleConsumer;->accept(D)V

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/InputMonitor;->pilferPointers()V

    :cond_0
    return v0
.end method

.method private handleUpEvent(ZZ)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    if-nez v0, :cond_3

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p2, p1, p2

    const/4 v0, 0x1

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {p2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v2

    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mMaxExpandedHeightSupplier:Ljava/util/function/DoubleSupplier;

    invoke-interface {p2}, Ljava/util/function/DoubleSupplier;->getAsDouble()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    cmpl-double p2, v2, v4

    if-lez p2, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-lez p2, :cond_1

    :goto_0
    iget-object p2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCreatePanelHeightAnimatorAndRunConsumer:Ljava/util/function/BiConsumer;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsHorizontalGesture:Z

    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsInDraggingArea:Z

    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    iput-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    return-void
.end method

.method private needToBlockTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisabledSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v0}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v0

    invoke-static {}, Landroid/os/FactoryTest;->isRunningFactoryApp()Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPalm()F

    move-result p1

    const/4 v2, 0x0

    cmpl-float p1, p1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez p1, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget-boolean v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInSleep:Z

    if-nez v0, :cond_2

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v3

    :goto_2
    iget-boolean v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mBlockPolicy:Z

    if-eq v1, v0, :cond_6

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCancelAnimator:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iput-boolean v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsVerticalGesture:Z

    :cond_4
    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    iput-boolean v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    :cond_5
    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mBlockPolicy:Z

    :cond_6
    return v0
.end method

.method private onCommonTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->needToBlockTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_5

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    goto :goto_1

    :cond_1
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchX:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchY:F

    sub-float/2addr v2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    iget-boolean v4, v4, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchBlockDistance:F

    goto :goto_0

    :cond_2
    iget v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchSlop:F

    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    if-nez v5, :cond_3

    if-eqz v3, :cond_6

    cmpl-float v3, v0, v4

    if-lez v3, :cond_6

    cmpl-float p1, v0, p1

    if-lez p1, :cond_6

    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    if-nez p1, :cond_6

    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleMoveEvent(FZ)Z

    move-result p0

    return p0

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleUpEvent(ZZ)V

    goto :goto_1

    :cond_5
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleDownEvent(FF)V

    :cond_6
    :goto_1
    return v1
.end method

.method private onPocketModeChanged()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mLayoutParamsSupplier:Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWindowManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    iget-boolean v3, v3, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    if-eqz v3, :cond_1

    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_1
    iget v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v4, v4, -0x9

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x1388

    goto :goto_1

    :cond_2
    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getScreenTimeOutWhenPocketModeChanged: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SubScreenTimeOutHelper"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v3, p0

    invoke-virtual {v1, v3, v4}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    invoke-interface {v2, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private receiveInputEvent(Landroid/content/Context;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFactoryBinary()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v0

    const-string/jumbo v1, "quickpanel"

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    new-instance p1, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputMonitor:Landroid/view/InputMonitor;

    invoke-virtual {v0}, Landroid/view/InputMonitor;->getInputChannel()Landroid/view/InputChannel;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v2

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler$7;-><init>(Lcom/android/systemui/subscreen/SubScreenQSEventHandler;Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    iput-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInputEventReceiver:Landroid/view/InputEventReceiver;

    return-void
.end method

.method private registerBackInvokedCallback(Landroid/view/View;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBackCallbackRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mOnBackInvokedCallback:Landroid/window/OnBackAnimationCallback;

    invoke-virtual {p1, v0, v1}, Landroid/window/WindowOnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBackCallbackRegistered:Z

    return-void
.end method

.method private registerEvents()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    iget-object v1, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v2, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    iget-object v1, v0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/devicestate/DeviceStateManager;->registerCallback(Ljava/util/concurrent/Executor;Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsGestureMode:Z

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    return-void
.end method

.method private unregisterBackInvokedCallback(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBackCallbackRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewRootImpl;->getOnBackInvokedDispatcher()Landroid/window/WindowOnBackInvokedDispatcher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mOnBackInvokedCallback:Landroid/window/OnBackAnimationCallback;

    invoke-virtual {p1, v0}, Landroid/window/WindowOnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBackCallbackRegistered:Z

    return-void
.end method

.method private unregisterEvents()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSysUiStateCallback:Lcom/android/systemui/model/SysUiState$SysUiStateCallback;

    iget-object v0, v0, Lcom/android/systemui/model/SysUiState;->mCallbacks:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mModeChangedListener:Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateManager:Landroid/hardware/devicestate/DeviceStateManager;

    iget-object v1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDeviceStateCallback:Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;

    invoke-virtual {v0, v1}, Landroid/hardware/devicestate/DeviceStateManager;->unregisterCallback(Landroid/hardware/devicestate/DeviceStateManager$DeviceStateCallback;)V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    iget-object v0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    return-void
.end method

.method private updateResources(Landroid/content/Context;)V
    .locals 2

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchSlop:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070f74

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchBlockDistance:F

    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3dcccccd    # 0.1f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeightInClockFace:F

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelResourcePicker:Lcom/android/systemui/qs/SecQSPanelResourcePicker;

    iget-object v0, v0, Lcom/android/systemui/qs/SecQSPanelResourcePicker;->resourcePickHelper:Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;

    invoke-virtual {v0}, Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePickHelper;->getTargetPicker()Lcom/android/systemui/qs/panelresource/SecQSPanelResourcePhonePicker;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->getScreenWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverScreenWidth:I

    goto :goto_0

    :cond_0
    const p1, 0x4282cccd    # 65.4f

    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    const p1, 0x4302cccd    # 130.8f

    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeightInClockFace:F

    const/16 p1, 0x2ec

    iput p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverScreenWidth:I

    :goto_0
    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    if-eqz v2, :cond_1

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCollapsePanelRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return v1
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SubScreenQSTouchHandler ============================================= "

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mDraggingAreaHeight = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mDraggingAreaHeight:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    mIsRotation0 = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getScreenTimeOut()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    iget p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->screenTimeOut:I

    return p0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->needToBlockTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {v3}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v4, 0x1

    if-eqz p1, :cond_c

    if-eq p1, v4, :cond_a

    const/4 v5, 0x2

    if-eq p1, v5, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_a

    const/16 v0, 0x105

    if-eq p1, v0, :cond_1

    const/16 v0, 0x106

    if-eq p1, v0, :cond_1

    const/16 v0, 0x205

    if-eq p1, v0, :cond_1

    const/16 v0, 0x206

    if-eq p1, v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    goto/16 :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mShouldBeHandledByInputMonitor:Z

    if-nez p1, :cond_3

    return v1

    :cond_3
    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchX:F

    sub-float/2addr v0, p1

    iget p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mInitialTouchY:F

    sub-float/2addr v2, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v5, v0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    iget v5, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchSlop:F

    cmpl-float v5, p1, v5

    if-lez v5, :cond_4

    iput-boolean v4, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsHorizontalGesture:Z

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mCoverPanelIntentReceiver:Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;

    iget-boolean v5, v5, Lcom/android/systemui/subscreen/CoverPanelIntentReceiver;->mIsInPocket:Z

    if-eqz v5, :cond_5

    iget v5, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchBlockDistance:F

    goto :goto_0

    :cond_5
    iget v5, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTouchSlop:F

    :goto_0
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mTracking:Z

    if-nez v6, :cond_9

    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsMultiTouch:Z

    if-nez v6, :cond_e

    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsRotation0:Z

    if-nez v6, :cond_6

    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsFlexMode:Z

    if-eqz v6, :cond_e

    :cond_6
    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsHorizontalGesture:Z

    if-nez v6, :cond_e

    if-nez v3, :cond_7

    iget-boolean v6, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsInDraggingArea:Z

    if-eqz v6, :cond_e

    :cond_7
    if-eqz v3, :cond_8

    move v3, v0

    goto :goto_1

    :cond_8
    move v3, v2

    :goto_1
    cmpl-float v3, v3, v5

    if-lez v3, :cond_e

    cmpl-float p1, v0, p1

    if-lez p1, :cond_e

    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mIsBlockedByPalmTouch:Z

    if-nez p1, :cond_e

    :cond_9
    invoke-direct {p0, v2, v4}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleMoveEvent(FZ)Z

    move-result p0

    return p0

    :cond_a
    iget-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mShouldBeHandledByInputMonitor:Z

    if-nez p1, :cond_b

    return v1

    :cond_b
    iget-object p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mPanelFullyExpandedSupplier:Ljava/util/function/BooleanSupplier;

    invoke-interface {p1}, Ljava/util/function/BooleanSupplier;->getAsBoolean()Z

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleUpEvent(ZZ)V

    goto :goto_2

    :cond_c
    xor-int/lit8 p1, v3, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mShouldBeHandledByInputMonitor:Z

    if-nez p1, :cond_d

    return v1

    :cond_d
    invoke-direct {p0, v0, v2}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->handleDownEvent(FF)V

    :cond_e
    :goto_2
    return v1
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mContextSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->updateResources(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->registerEvents()V

    invoke-direct {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->receiveInputEvent(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->disposeInputEvent()V

    invoke-direct {p0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->unregisterEvents()V

    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenTimeOutHelper:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentResolver:Landroid/content/ContentResolver;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/subscreen/SubScreenTimeOutHelper;->contentObserver:Lcom/android/systemui/subscreen/SubScreenTimeOutHelper$contentObserver$1;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->onCommonTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->onCommonTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onWindowVisibilityChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->mSubScreenQsWindowViewSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/subscreen/SubScreenQuickPanelWindowView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->registerBackInvokedCallback(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/subscreen/SubScreenQSEventHandler;->unregisterBackInvokedCallback(Landroid/view/View;)V

    :goto_0
    return-void
.end method
