.class public final Lcom/android/systemui/ScreenDecorations;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBUG_DISABLE_SCREEN_DECORATIONS:Z

.field public static final DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

.field public static final DISPLAY_CUTOUT_IDS:[I

.field public static final sToolkitSetFrameRateReadOnly:Z


# instance fields
.field public blockUpdateStatusIconContainerLayout:Z

.field private mAODStateSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

.field public final mCameraProtectionLoader:Lcom/android/systemui/CameraProtectionLoader;

.field public final mCameraTransitionCallback:Lcom/android/systemui/ScreenDecorations$1;

.field public mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

.field public final mCommandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field public final mContext:Landroid/content/Context;

.field public mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

.field public mDebug:Z

.field public mDebugColor:I

.field public mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

.field protected mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

.field public mDebugRoundedCornerFactory:Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

.field public mDisplayCutout:Landroid/view/DisplayCutout;

.field protected mDisplayInfo:Landroid/view/DisplayInfo;

.field mDisplayListener:Lcom/android/systemui/settings/DisplayTracker$Callback;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mDisplaySize:Landroid/graphics/Point;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field mDisplayUniqueId:Ljava/lang/String;

.field public final mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

.field public final mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field public mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mFacePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

.field public final mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

.field public final mFaceScanningViewId:I

.field private mFillUDCSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mHandler:Landroid/os/Handler;

.field protected mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

.field public final mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

.field public final mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

.field public mIsDotViewVisible:Z

.field protected mIsRegistered:Z

.field public mIsSmartViewFitToActiveDisplay:Z

.field public final mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

.field public final mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

.field public final mMainExecutor:Ljava/util/concurrent/Executor;

.field protected mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

.field public mPendingConfigChange:Z

.field public mPendingManualConfigUpdate:Z

.field mPrivacyDotCreateListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

.field mPrivacyDotShowingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

.field public mProviderRefreshToken:I

.field public mRotation:I

.field protected mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

.field protected mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

.field public final mScreenDecorCommandCallback:Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;

.field mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

.field mScreenDecorHwcWindow:Landroid/view/ViewGroup;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

.field public mTintColor:I

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static $r8$lambda$10EmIRqbpsgIdMPvv4IGdlXb-UQ(Lcom/android/systemui/ScreenDecorations;)V
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "ScreenDecorations#onConfigurationChanged"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isFillUDCDisplayCutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-static {v0, v1}, Lcom/android/systemui/ScreenDecorations;->displaySizeChanged(Landroid/graphics/Point;Landroid/view/DisplayInfo;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mPendingManualConfigUpdate:Z

    goto :goto_1

    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateConfiguration()V

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v0, v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/log/ScreenDecorationsLogger;->logRotationChanged(II)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_1
    return-void
.end method

.method public static $r8$lambda$YaOy0pR3JIHNxlit-O3XM7MZlAs(Lcom/android/systemui/ScreenDecorations;Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "aod_show_state"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProviderFactory;->getHasProviders()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    const v0, 0x7f0a09f8

    invoke-virtual {p1, v0}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isAODShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "debug.disable_screen_decorations"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    const-string v0, "debug.screenshot_rounded_corners"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    invoke-static {}, Landroid/view/flags/Flags;->toolkitSetFrameRateReadOnly()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ScreenDecorations;->sToolkitSetFrameRateReadOnly:Z

    const v0, 0x7f0a039b

    const v1, 0x7f0a0399

    const v2, 0x7f0a0398

    const v3, 0x7f0a039a

    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    sput-object v0, Lcom/android/systemui/ScreenDecorations;->DISPLAY_CUTOUT_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/util/concurrency/ThreadFactory;Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;Lcom/android/systemui/decor/FaceScanningProviderFactory;Lcom/android/systemui/log/ScreenDecorationsLogger;Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;Lcom/android/systemui/util/kotlin/JavaAdapter;Lcom/android/systemui/CameraProtectionLoader;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v2, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    iput-boolean v2, v0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    const/high16 v2, -0x10000

    iput v2, v0, Lcom/android/systemui/ScreenDecorations;->mDebugColor:I

    new-instance v2, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    invoke-direct {v2}, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/systemui/ScreenDecorations;->mProviderRefreshToken:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/high16 v3, -0x1000000

    iput v3, v0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iput-boolean v2, v0, Lcom/android/systemui/ScreenDecorations;->blockUpdateStatusIconContainerLayout:Z

    new-instance v2, Lcom/android/systemui/ScreenDecorations$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$1;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/ScreenDecorations$1;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$2;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mPrivacyDotShowingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$3;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mPrivacyDotCreateListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorCommandCallback:Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda0;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mAODStateSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mFillUDCSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$8;

    invoke-direct {v2, p0}, Lcom/android/systemui/ScreenDecorations$8;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    move-object v2, p2

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object v2, p3

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mCommandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    move-object v2, p4

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object v2, p5

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    move-object v2, p6

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    move-object v2, p7

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mThreadFactory:Lcom/android/systemui/util/concurrency/ThreadFactory;

    move-object v2, p8

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    move-object v2, p9

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    move-object/from16 v2, p13

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mCameraProtectionLoader:Lcom/android/systemui/CameraProtectionLoader;

    const v2, 0x7f0a0438

    iput v2, v0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    move-object v2, p10

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    move-object v2, p11

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mFacePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    move-object/from16 v2, p12

    iput-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    const-string v2, "display"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p18

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    sget-boolean v1, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    if-eqz v1, :cond_0

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/systemui/ScreenDecorations;->mIndicatorGardenPresenter:Lcom/android/systemui/statusbar/phone/IndicatorGardenPresenter;

    :cond_0
    return-void
.end method

.method public static displaySizeChanged(Landroid/graphics/Point;Landroid/view/DisplayInfo;)Z
    .locals 2

    iget v0, p0, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget p0, p0, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p1

    if-eq p0, p1, :cond_0

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

.method public static getBoundPositionFromRotation(II)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    add-int/lit8 p0, p0, 0x4

    :cond_0
    return p0
.end method

.method public static getWindowLayoutBaseParams()Landroid/view/WindowManager$LayoutParams;
    .locals 4

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    const/16 v2, 0x7e8

    const v3, 0x20800138

    invoke-direct {v0, v2, v3, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v2, 0x20000050

    or-int/2addr v2, v1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    sget-boolean v2, Lcom/android/systemui/ScreenDecorations;->DEBUG_SCREENSHOT_ROUNDED_CORNERS:Z

    if-nez v2, :cond_0

    const v2, 0x20100050

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v2, 0x1000000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    return-object v0
.end method

.method public static getWindowTitleByPos(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const-string p0, "ScreenDecorOverlayBottom"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "unknown bound position: "

    invoke-static {p0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p0, "ScreenDecorOverlayRight"

    return-object p0

    :cond_2
    const-string p0, "ScreenDecorOverlay"

    return-object p0

    :cond_3
    const-string p0, "ScreenDecorOverlayLeft"

    return-object p0
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    const-string v0, "ScreenDecorations state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/systemui/util/DumpUtilsKt;->asIndenting(Ljava/io/PrintWriter;)Landroid/util/IndentingPrintWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DEBUG_DISABLE_SCREEN_DECORATIONS:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mDebug:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsPrivacyDotEnabled:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    invoke-virtual {v2}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getHasProviders()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "shouldOptimizeOverlayVisibility:false"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    invoke-virtual {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "supportsShowingFaceScanningAnim:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "canShowFaceScanningAnim:"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    move-result v5

    iget-object v6, v1, Lcom/android/systemui/decor/FaceScanningProviderFactory;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v5, :cond_1

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnabledAndEnrolled()Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "shouldShowFaceScanningAnim (at time dump was taken):"

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnabledAndEnrolled()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v1, v1, Lcom/android/systemui/decor/FaceScanningProviderFactory;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    move v1, v3

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_4
    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/FaceScanningOverlay;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/android/systemui/FaceScanningOverlay;->dump(Ljava/io/PrintWriter;)V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mPendingConfigChange:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "mHwcScreenDecorationSupport:"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "format="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    iget v2, v2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->format:I

    invoke-static {v2}, Landroid/graphics/PixelFormat;->formatToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "alphaInterpretation="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    iget v2, v2, Landroid/hardware/graphics/common/DisplayDecorationSupport;->alphaInterpretation:I

    if-eqz v2, :cond_7

    if-eq v2, v4, :cond_6

    const-string v5, "Unknown: "

    invoke-static {v2, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_6
    const-string v2, "MASK"

    goto :goto_2

    :cond_7
    const-string v2, "COVERAGE"

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_3

    :cond_8
    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const-string v1, "mHwcScreenDecorationSupport: null"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :goto_3
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-eqz v1, :cond_9

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    invoke-virtual {v1, v0}, Lcom/android/systemui/ScreenDecorHwcLayer;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    goto :goto_4

    :cond_9
    const-string v1, "mScreenDecorHwcLayer: null"

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-eqz v1, :cond_10

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mOverlays(left,top,right,bottom)=("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v2, v2, v3

    if-eqz v2, :cond_a

    move v2, v4

    goto :goto_5

    :cond_a
    move v2, v3

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v5, v5, v4

    if-eqz v5, :cond_b

    move v5, v4

    goto :goto_6

    :cond_b
    move v5, v3

    :goto_6
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    if-eqz v5, :cond_c

    move v5, v4

    goto :goto_7

    :cond_c
    move v5, v3

    :goto_7
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    if-eqz v2, :cond_d

    goto :goto_8

    :cond_d
    move v4, v3

    :goto_8
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move v0, v3

    :goto_9
    const/4 v1, 0x4

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v1, v1, v0

    if-eqz v1, :cond_f

    invoke-static {v0}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    rootView="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    move v5, v3

    :goto_a
    if-ge v5, v4, :cond_f

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v1, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    invoke-virtual {v6}, Landroid/view/View;->getId()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    check-cast v7, Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/decor/DecorProvider;

    goto :goto_b

    :cond_e
    const/4 v7, 0x0

    :goto_b
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "    child["

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_10
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getCoverWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 1

    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutBaseParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v0, "ScreenDecorOverlayCover"

    invoke-virtual {p0, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v0, 0x11

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object p0
.end method

.method public final getHwcWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 2

    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutBaseParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const-string v1, "ScreenDecorHwcOverlay"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/ScreenDecorations;->sToolkitSetFrameRateReadOnly:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFrameRateBoostOnTouchEnabled(Z)V

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFrameRatePowerSavingsBalanced(Z)V

    :cond_0
    const v1, 0x800033

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-boolean p0, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-nez p0, :cond_1

    const/4 p0, 0x4

    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setColorMode(I)V

    :cond_1
    return-object v0
.end method

.method public getOverlayView(I)Landroid/view/View;
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p0, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, p1}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    return-object v3

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public getPhysicalPixelDisplaySizeRatio()F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {p0}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result p0

    invoke-static {v1, v0, v2, p0}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    move-result p0

    return p0
.end method

.method public getProviders(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/systemui/decor/DecorProvider;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    invoke-virtual {v1}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    invoke-virtual {v1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getProviders()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFactoryBinary()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mIsSmartViewFitToActiveDisplay:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerFactory:Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

    invoke-virtual {p1}, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->getHasProviders()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerFactory:Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

    invoke-virtual {p1}, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->getProviders()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProviderFactory;->getProviders()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    invoke-virtual {p0}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    invoke-virtual {p0}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->getProviders()Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;
    .locals 6

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->isCoverDisplay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getCoverWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutBaseParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, v1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, -0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eq v1, v5, :cond_2

    if-ne v1, v4, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v2

    :goto_1
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, v1}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v1

    if-eq v1, v5, :cond_3

    if-ne v1, v4, :cond_4

    :cond_3
    move v2, v3

    :cond_4
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {p1}, Lcom/android/systemui/ScreenDecorations;->getWindowTitleByPos(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget p0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {p1, p0}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result p0

    if-eqz p0, :cond_8

    if-eq p0, v5, :cond_7

    const/4 v1, 0x2

    if-eq p0, v1, :cond_6

    if-ne p0, v4, :cond_5

    const/16 v4, 0x50

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unknown bound position: "

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const/4 v4, 0x5

    goto :goto_2

    :cond_7
    const/16 v4, 0x30

    :cond_8
    :goto_2
    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    return-object v0
.end method

.method public hasOverlays()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x4

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    return v1
.end method

.method public final hasRoundedCorners()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    invoke-virtual {v0}, Lcom/android/systemui/decor/DecorProviderFactory;->getHasProviders()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerFactory:Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

    invoke-virtual {p0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->getHasProviders()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method public hasSameProviders(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/decor/DecorProvider;",
            ">;)Z"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    iget-object v4, v4, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    check-cast v4, Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq p0, v2, :cond_2

    return v1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/decor/DecorProvider;

    invoke-virtual {p1}, Lcom/android/systemui/decor/DecorProvider;->getViewId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public hideCameraProtection()V
    .locals 7

    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/FaceScanningOverlay;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0, v0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/FaceScanningOverlay;)V

    iput-object v2, v0, Lcom/android/systemui/FaceScanningOverlay;->hideOverlayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/systemui/FaceScanningOverlay;->enableShowProtection(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/systemui/ScreenDecorations;->DISPLAY_CUTOUT_IDS:[I

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_0
    if-ge v3, v2, :cond_3

    aget v5, v0, v3

    invoke-virtual {p0, v5}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v5

    instance-of v6, v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-nez v6, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v5, v1}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    const-string p0, "ScreenDecorations"

    const-string v0, "CutoutView not initialized hideCameraProtection"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void
.end method

.method public final initOverlay(Lcom/android/systemui/decor/OverlayWindow;Ljava/util/List;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p1, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Ljava/lang/Iterable;

    instance-of v1, v0, Ljava/util/Collection;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/decor/DecorProvider;

    invoke-virtual {v1}, Lcom/android/systemui/decor/DecorProvider;->getViewId()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/decor/OverlayWindow;)V

    invoke-interface {p2, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    :goto_1
    iget-object p0, p1, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final isCoverDisplay()Ljava/lang/Boolean;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplayId()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    sget-boolean p1, Lcom/android/systemui/ScreenDecorations;->DEBUG_DISABLE_SCREEN_DECORATIONS:Z

    if-eqz p1, :cond_0

    const-string p0, "ScreenDecorations"

    const-string p1, "ScreenDecorations is disabled"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFaceSensorLocationChanged(Landroid/graphics/Point;)V
    .locals 4

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/android/systemui/log/ScreenDecorationsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v2, "ScreenDecorationsLog"

    const-string v3, "AuthControllerCallback in ScreenDecorations triggered"

    invoke-virtual {p1, v2, v0, v3, v1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public final removeAllOverlays()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v3, v1, v0

    if-eqz v3, :cond_2

    if-eqz v1, :cond_2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, v3, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    invoke-interface {v1, v3}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aput-object v2, v1, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    return-void
.end method

.method public final removeHwcOverlay()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    return-void
.end method

.method public setDebug(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasTop:Z

    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/util/Size;

    invoke-direct {v2, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v2, p1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    iput-boolean v0, p1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasBottom:Z

    iput-object v1, p1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/util/Size;

    invoke-direct {v1, v0, v0}, Landroid/util/Size;-><init>(II)V

    iput-object v1, p1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ScreenDecorations;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setSize(Landroid/view/View;Landroid/util/Size;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result p2

    iput p2, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final setupCameraListener()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-boolean v0, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionEnabled:Z

    goto :goto_0

    :cond_0
    const v1, 0x7f050014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mCameraTransitionCallback:Lcom/android/systemui/ScreenDecorations$1;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v3, v1, Lcom/android/systemui/CameraAvailabilityListener;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, v1, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStateCallback:Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

    invoke-virtual {v3, v1}, Landroid/hardware/camera2/CameraManager;->unregisterSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;)V

    :cond_1
    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->isCoverDisplay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v8, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "camera"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCameraProtectionLoader:Lcom/android/systemui/CameraProtectionLoader;

    check-cast v1, Lcom/android/systemui/CameraProtectionLoaderImpl;

    invoke-virtual {v1}, Lcom/android/systemui/CameraProtectionLoaderImpl;->loadCameraProtectionInfoList()Ljava/util/List;

    move-result-object v5

    const v1, 0x7f1303da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Lcom/android/systemui/CameraAvailabilityListener;

    move-object v3, v0

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/CameraAvailabilityListener;-><init>(Landroid/hardware/camera2/CameraManager;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v0, v0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraManager:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStateCallback:Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;

    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerSemCameraDeviceStateCallback(Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;Landroid/os/Handler;)V

    :cond_3
    return-void
.end method

.method public final setupDecorations()V
    .locals 15

    const-string v0, "ScreenDecorations#setupDecorations"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDotFactory:Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getHasProviders()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    invoke-virtual {v0}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->removeAllOverlays()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->removeHwcOverlay()V

    goto/16 :goto_13

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getProviders(Z)Ljava/util/List;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-nez v4, :cond_3

    goto :goto_5

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda14;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    array-length v6, v5

    move v7, v3

    :goto_2
    if-ge v7, v6, :cond_8

    aget-object v8, v5, v7

    if-nez v8, :cond_4

    goto :goto_4

    :cond_4
    iget-object v9, v8, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    check-cast v9, Ljava/util/LinkedHashMap;

    invoke-virtual {v9}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-static {v9}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v9

    check-cast v9, Ljava/lang/Iterable;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    if-eqz v4, :cond_6

    invoke-static {v10, v4}, Lkotlin/collections/ArraysKt___ArraysKt;->contains(I[I)Z

    move-result v11

    if-nez v11, :cond_5

    :cond_6
    invoke-virtual {v8, v10}, Lcom/android/systemui/decor/OverlayWindow;->getView(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_5

    iget-object v12, v8, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    invoke-virtual {v12, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v11, v8, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_7
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_8
    :goto_5
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    const/4 v5, 0x0

    if-eqz v4, :cond_d

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isFactoryBinary()Z

    move-result v4

    if-nez v4, :cond_d

    iget-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mIsSmartViewFitToActiveDisplay:Z

    if-nez v4, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v4

    if-eqz v4, :cond_d

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    if-eqz v4, :cond_a

    goto/16 :goto_7

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v6, 0x7f0d0341

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/systemui/ScreenDecorHwcLayer;

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    iget-boolean v8, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    invoke-direct {v4, v6, v7, v8}, Lcom/android/systemui/ScreenDecorHwcLayer;-><init>(Landroid/content/Context;Landroid/hardware/graphics/common/DisplayDecorationSupport;Z)V

    iput-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    const v8, 0x800033

    const/4 v9, -0x1

    invoke-direct {v7, v9, v9, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v6, v4, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getHwcWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerExistAndSize()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerDrawable()V

    iget-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz v4, :cond_c

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-eqz v6, :cond_c

    if-nez v4, :cond_b

    goto :goto_6

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-boolean v4, v4, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionEnabled:Z

    iput-boolean v4, v6, Lcom/android/systemui/DisplayCutoutBaseView;->isCameraProtectionEnabled:Z

    invoke-virtual {v6}, Lcom/android/systemui/DisplayCutoutBaseView;->updateCutout()V

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    iget-object v6, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget v6, v6, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->cameraProtectionStrokeWidth:I

    iput v6, v4, Lcom/android/systemui/DisplayCutoutBaseView;->cameraProtectionStrokeWidth:I

    iget-object v7, v4, Lcom/android/systemui/DisplayCutoutBaseView;->paintForCameraProtection:Landroid/graphics/Paint;

    int-to-float v6, v6

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {v4}, Lcom/android/systemui/DisplayCutoutBaseView;->updateCutout()V

    :cond_c
    :goto_6
    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    new-instance v6, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    iget-object v7, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v4, v6}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_7

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->removeHwcOverlay()V

    :goto_7
    const/4 v4, 0x4

    new-array v6, v4, [Z

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_e

    move-object v7, v5

    goto/16 :goto_c

    :cond_e
    move-object v7, v0

    check-cast v7, Ljava/lang/Iterable;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcom/android/systemui/decor/DecorProvider;

    invoke-virtual {v9}, Lcom/android/systemui/decor/DecorProvider;->getAlignedBounds()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ne v9, v1, :cond_f

    goto :goto_9

    :cond_10
    move-object v8, v5

    :goto_9
    check-cast v8, Lcom/android/systemui/decor/DecorProvider;

    if-eqz v8, :cond_11

    invoke-virtual {v8}, Lcom/android/systemui/decor/DecorProvider;->getAlignedBounds()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    goto :goto_c

    :cond_11
    new-array v7, v4, [I

    aput v3, v7, v3

    aput v3, v7, v1

    const/4 v8, 0x2

    aput v3, v7, v8

    const/4 v9, 0x3

    aput v3, v7, v9

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_12
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/decor/DecorProvider;

    invoke-virtual {v11}, Lcom/android/systemui/decor/DecorProvider;->getAlignedBounds()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    aget v13, v7, v12

    add-int/2addr v13, v1

    aput v13, v7, v12

    goto :goto_a

    :cond_13
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v10, v9, v11, v8}, [Ljava/lang/Integer;

    move-result-object v8

    move v10, v3

    move v11, v10

    move-object v9, v5

    :goto_b
    if-ge v10, v4, :cond_15

    aget-object v12, v8, v10

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget v13, v7, v13

    if-le v13, v11, :cond_14

    move-object v9, v12

    move v11, v13

    :cond_14
    add-int/lit8 v10, v10, 0x1

    goto :goto_b

    :cond_15
    move-object v7, v9

    :goto_c
    iget-object v8, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    if-eqz v7, :cond_23

    check-cast v0, Ljava/lang/Iterable;

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    move-object v12, v11

    check-cast v12, Lcom/android/systemui/decor/DecorProvider;

    invoke-virtual {v12}, Lcom/android/systemui/decor/DecorProvider;->getAlignedBounds()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_16

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_16
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_17
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, v9, v10}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->isCoverDisplay()Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_18

    if-ne v10, v1, :cond_22

    iget-object v10, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    invoke-virtual {v10}, Lcom/android/systemui/decor/DecorProviderFactory;->getHasProviders()Z

    move-result v10

    if-nez v10, :cond_1f

    invoke-virtual {v2}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getHasProviders()Z

    move-result v10

    if-eqz v10, :cond_22

    goto :goto_f

    :cond_18
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasRoundedCorners()Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    if-nez v11, :cond_19

    goto :goto_f

    :cond_19
    iget-object v11, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-nez v11, :cond_1a

    move-object v11, v5

    goto :goto_e

    :cond_1a
    invoke-virtual {v11}, Landroid/view/DisplayCutout;->getBoundingRectsAll()[Landroid/graphics/Rect;

    move-result-object v11

    :goto_e
    iget v12, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-static {v10, v12}, Lcom/android/systemui/ScreenDecorations;->getBoundPositionFromRotation(II)I

    move-result v12

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->shouldDrawCutout()Z

    move-result v13

    if-eqz v13, :cond_1b

    if-eqz v11, :cond_1b

    aget-object v11, v11, v12

    invoke-virtual {v11}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1d

    :cond_1b
    iget-object v11, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-boolean v12, v11, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionVisible:Z

    if-nez v12, :cond_1c

    iget-boolean v11, v11, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    if-eqz v11, :cond_1e

    :cond_1c
    if-ne v10, v1, :cond_1e

    :cond_1d
    iget-object v10, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    if-nez v10, :cond_1e

    goto :goto_f

    :cond_1e
    iget-boolean v10, p0, Lcom/android/systemui/ScreenDecorations;->mIsDotViewVisible:Z

    if-eqz v10, :cond_22

    invoke-virtual {v2}, Lcom/android/systemui/decor/PrivacyDotDecorProviderFactory;->getHasProviders()Z

    move-result v10

    if-eqz v10, :cond_22

    :cond_1f
    :goto_f
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput-boolean v1, v6, v10

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iget-object v10, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-nez v10, :cond_20

    new-array v10, v4, [Lcom/android/systemui/decor/OverlayWindow;

    iput-object v10, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    iget-object v10, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v10, v11}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v10, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v11, v10, Landroid/view/DisplayInfo;->rotation:I

    iput v11, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    iget-object v11, p0, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v10}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v10

    iput v10, v11, Landroid/graphics/Point;->x:I

    iget-object v10, p0, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    iget-object v11, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v11}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v11

    iput v11, v10, Landroid/graphics/Point;->y:I

    iget-object v10, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v10, v10, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v10, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    iget v10, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    invoke-virtual {v8, v10}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNewRotation(I)V

    :cond_20
    iget-object v8, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v10, v8, v7

    if-eqz v10, :cond_21

    invoke-virtual {p0, v10, v0}, Lcom/android/systemui/ScreenDecorations;->initOverlay(Lcom/android/systemui/decor/OverlayWindow;Ljava/util/List;)V

    goto :goto_10

    :cond_21
    new-instance v10, Lcom/android/systemui/decor/OverlayWindow;

    iget-object v11, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/systemui/decor/OverlayWindow;-><init>(Landroid/content/Context;)V

    aput-object v10, v8, v7

    iget-object v8, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v8, v8, v7

    invoke-virtual {p0, v8, v0}, Lcom/android/systemui/ScreenDecorations;->initOverlay(Lcom/android/systemui/decor/OverlayWindow;Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v0, v0, v7

    iget-object v0, v0, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    const/16 v8, 0x100

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setSystemUiVisibility(I)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setForceDarkAllowed(Z)V

    iget-object v8, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0, v7}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v7

    invoke-interface {v8, v0, v7}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-direct {v8, p0, v0}, Lcom/android/systemui/ScreenDecorations$ValidatingPreDrawListener;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_22
    :goto_10
    move-object v0, v9

    goto/16 :goto_8

    :cond_23
    move v0, v3

    :goto_11
    if-ge v0, v4, :cond_26

    aget-boolean v2, v6, v0

    if-nez v2, :cond_25

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-eqz v2, :cond_25

    aget-object v2, v2, v0

    if-nez v2, :cond_24

    goto :goto_12

    :cond_24
    iget-object v7, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, v2, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    invoke-interface {v7, v2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aput-object v5, v2, v0

    :cond_25
    :goto_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_26
    iput-object v5, v8, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->showingListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$ShowingListener;

    const v0, 0x7f0a0930

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_27

    const v2, 0x7f0a0931

    invoke-virtual {p0, v2}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_27

    const v4, 0x7f0a092e

    invoke-virtual {p0, v4}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_27

    const v5, 0x7f0a092f

    invoke-virtual {p0, v5}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_27

    invoke-virtual {v8, v0, v2, v4, v5}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->initialize(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->isCoverDisplay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v14, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "camera"

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mCameraProtectionLoader:Lcom/android/systemui/CameraProtectionLoader;

    check-cast v2, Lcom/android/systemui/CameraProtectionLoaderImpl;

    invoke-virtual {v2}, Lcom/android/systemui/CameraProtectionLoaderImpl;->loadCameraProtectionInfoList()Ljava/util/List;

    move-result-object v11

    const v2, 0x7f1303da

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    new-instance v0, Lcom/android/systemui/CameraAvailabilityListener;

    move-object v9, v0

    invoke-direct/range {v9 .. v14}, Lcom/android/systemui/CameraAvailabilityListener;-><init>(Landroid/hardware/camera2/CameraManager;Ljava/util/List;Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCameraListener:Lcom/android/systemui/CameraAvailabilityListener;

    invoke-virtual {v8, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setCameraListener(Lcom/android/systemui/CameraAvailabilityListener;)V

    :cond_27
    :goto_13
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->hasOverlays()Z

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_28

    goto :goto_14

    :cond_28
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    if-eqz v0, :cond_29

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    :cond_29
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    iput-boolean v3, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    goto :goto_16

    :cond_2a
    :goto_14
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    if-eqz v0, :cond_2b

    goto :goto_16

    :cond_2b
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    if-nez v0, :cond_2c

    new-instance v0, Lcom/android/systemui/ScreenDecorations$6;

    iget-object v8, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v10

    iget-object v7, p0, Lcom/android/systemui/ScreenDecorations;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v9, "accessibility_display_inversion_enabled"

    move-object v5, v0

    move-object v6, p0

    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/ScreenDecorations$6;-><init>(Lcom/android/systemui/ScreenDecorations;Lcom/android/systemui/util/settings/UserSettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    goto :goto_15

    :cond_2c
    iget v0, v0, Lcom/android/systemui/qs/UserSettingObserver;->mUserId:I

    move-object v5, v4

    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v6

    if-eq v0, v6, :cond_2d

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/systemui/qs/UserSettingObserver;->setUserId(I)V

    :cond_2d
    :goto_15
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/UserSettingObserver;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/UserSettingObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mColorInversionSetting:Lcom/android/systemui/ScreenDecorations$6;

    invoke-virtual {v0}, Lcom/android/systemui/qs/UserSettingObserver;->getValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateColorInversion(I)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v4, v2, v0}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iput-boolean v1, p0, Lcom/android/systemui/ScreenDecorations;->mIsRegistered:Z

    :goto_16
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final shouldDrawCutout()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    invoke-virtual {v0}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->getHasProviders()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-boolean p0, p0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->isCameraProtectionEnabled:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    invoke-virtual {p0}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->getHasProviders()Z

    move-result p0

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    invoke-virtual {p0}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->getHasProviders()Z

    move-result p0

    return p0
.end method

.method public showCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .locals 8

    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningFactory:Lcom/android/systemui/decor/FaceScanningProviderFactory;

    invoke-virtual {p1}, Lcom/android/systemui/decor/FaceScanningProviderFactory;->getHasProviders()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/systemui/decor/FaceScanningProviderFactory;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnabledAndEnrolled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/android/systemui/decor/FaceScanningProviderFactory;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {p1}, Lcom/android/systemui/biometrics/AuthController;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mLogger:Lcom/android/systemui/log/ScreenDecorationsLogger;

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-eqz v3, :cond_2

    invoke-virtual {v0, p2}, Lcom/android/systemui/log/ScreenDecorationsLogger;->cameraProtectionBoundsForScanningOverlay(Landroid/graphics/Rect;)V

    invoke-virtual {v3, v2}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    invoke-virtual {v3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-eqz p1, :cond_3

    invoke-virtual {v0, p2}, Lcom/android/systemui/log/ScreenDecorationsLogger;->hwcLayerCameraProtectionBounds(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    invoke-virtual {p0, v2}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    return-void

    :cond_3
    sget-object p1, Lcom/android/systemui/ScreenDecorations;->DISPLAY_CUTOUT_IDS:[I

    array-length v3, p1

    move v4, v1

    :goto_1
    if-ge v1, v3, :cond_5

    aget v5, p1, v1

    invoke-virtual {p0, v5}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v4, 0x1

    check-cast v6, Lcom/android/systemui/ScreenDecorations$DisplayCutoutView;

    invoke-virtual {v0, v5, p2}, Lcom/android/systemui/log/ScreenDecorationsLogger;->dcvCameraBounds(ILandroid/graphics/Rect;)V

    invoke-virtual {v6, v2}, Lcom/android/systemui/DisplayCutoutBaseView;->enableShowProtection(Z)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    if-nez v4, :cond_6

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/android/systemui/log/core/LogLevel;->ERROR:Lcom/android/systemui/log/core/LogLevel;

    const/4 p1, 0x0

    iget-object p2, v0, Lcom/android/systemui/log/ScreenDecorationsLogger;->logBuffer:Lcom/android/systemui/log/LogBuffer;

    const-string v0, "ScreenDecorationsLog"

    const-string v1, "CutoutView not initialized showCameraProtection"

    invoke-virtual {p2, v0, p0, v1, p1}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method public final startOnScreenDecorationsThread()V
    .locals 6

    const-string v0, "ScreenDecorations#startOnScreenDecorationsThread"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v0, Landroid/view/DisplayInfo;->rotation:I

    iput v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    iput v0, v1, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v0, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->isCoverDisplay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/systemui/decor/CoverRoundedCornerResDelegate;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getPhysicalPixelDisplaySizeRatio()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/decor/RoundedCornerResDelegateImpl;->setPhysicalPixelDisplaySizeRatio(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->isCoverDisplay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-direct {v0, v1}, Lcom/android/systemui/decor/CoverRoundedCornerDecorProviderFactory;-><init>(Lcom/android/systemui/decor/RoundedCornerResDelegate;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-direct {v0, v1}, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;-><init>(Lcom/android/systemui/decor/RoundedCornerResDelegate;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerFactory:Lcom/android/systemui/decor/DecorProviderFactory;

    :goto_1
    new-instance v0, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    invoke-direct {v0, v1}, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;-><init>(Lcom/android/systemui/decor/RoundedCornerResDelegate;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerFactory:Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

    new-instance v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;-><init>(Landroid/content/res/Resources;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    if-nez v0, :cond_2

    new-instance v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/decor/CutoutDecorProviderFactory;-><init>(Landroid/content/res/Resources;Landroid/view/Display;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayDecorationSupport()Landroid/hardware/graphics/common/DisplayDecorationSupport;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHwcScreenDecorationSupport:Landroid/hardware/graphics/common/DisplayDecorationSupport;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerDrawable()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupDecorations()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->setupCameraListener()V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    iget-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$addSystemAnimationCallback$1;

    invoke-direct {v2, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController$addSystemAnimationCallback$1;-><init>(Lcom/android/systemui/statusbar/events/PrivacyDotViewController;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mPrivacyDotCreateListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

    iput-object v1, v0, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->createListener:Lcom/android/systemui/statusbar/events/PrivacyDotViewController$CreateListener;

    new-instance v0, Lcom/android/systemui/ScreenDecorations$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/ScreenDecorations$4;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayListener:Lcom/android/systemui/settings/DisplayTracker$Callback;

    new-instance v1, Landroid/os/HandlerExecutor;

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    check-cast v2, Lcom/android/systemui/settings/DisplayTrackerImpl;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/settings/DisplayTrackerImpl;->addDisplayChangeCallback(Lcom/android/systemui/settings/DisplayTracker$Callback;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateConfiguration()V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mFacePropertyRepository:Lcom/android/systemui/biometrics/data/repository/FacePropertyRepository;

    check-cast v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;

    iget-object v0, v0, Lcom/android/systemui/biometrics/data/repository/FacePropertyRepositoryImpl;->sensorLocation:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mJavaAdapter:Lcom/android/systemui/util/kotlin/JavaAdapter;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapter;->alwaysCollectFlow(Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)Lkotlinx/coroutines/Job;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->isCoverDisplay()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/systemui/ScreenDecorations$5;

    invoke-direct {v3, p0}, Lcom/android/systemui/ScreenDecorations$5;-><init>(Lcom/android/systemui/ScreenDecorations;)V

    invoke-virtual {v0, v3}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mAODStateSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v4, v2, [Landroid/net/Uri;

    const-string v5, "aod_show_state"

    invoke-static {v5}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateFillUDCDisplayCutout()V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mFillUDCSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "fill_udc_display_cutout"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final updateColorInversion(I)V
    .locals 9

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x1000000

    :goto_0
    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    iget-boolean p1, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mDebugColor:I

    iput p1, p0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    iget v1, v0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->color:I

    if-ne v1, p1, :cond_1

    goto :goto_1

    :cond_1
    iput p1, v0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->color:I

    iget-object v0, v0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->isCoverDisplay()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    const p1, 0x7f0a09f8

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateOverlayProviderViews([Ljava/lang/Integer;)V

    goto :goto_2

    :cond_3
    iget p1, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const p1, 0x7f0a0398

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const p1, 0x7f0a039a

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const p1, 0x7f0a039b

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const p1, 0x7f0a0399

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const p1, 0x7f0a09f9

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const p1, 0x7f0a09fa

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const p1, 0x7f0a09f6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const p1, 0x7f0a09f7

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/ScreenDecorations;->updateOverlayProviderViews([Ljava/lang/Integer;)V

    :goto_2
    return-void
.end method

.method public updateConfiguration()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "must call on "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", but was "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    iget v1, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setNewRotation(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    iget-boolean v4, v3, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateFillUDCDisplayCutout()V

    :cond_2
    iget-boolean v4, p0, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    if-ne v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    iget-object v5, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-static {v4, v5}, Lcom/android/systemui/ScreenDecorations;->displaySizeChanged(Landroid/graphics/Point;Landroid/view/DisplayInfo;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-static {v1, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    :cond_3
    iput v0, p0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->x:I

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDisplaySize:Landroid/graphics/Point;

    iget-object v4, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v4}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    move-result v4

    iput v4, v0, Landroid/graphics/Point;->y:I

    iput-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getPhysicalPixelDisplaySizeRatio()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {v1, v0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->setPhysicalPixelDisplaySizeRatio(F)V

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    invoke-virtual {v1, v0}, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->setPhysicalPixelDisplaySizeRatio(F)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-eqz v0, :cond_4

    iput-boolean v2, v0, Lcom/android/systemui/DisplayCutoutBaseView;->pendingConfigChange:Z

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/DisplayCutoutBaseView;->updateConfiguration(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerExistAndSize()V

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateHwLayerRoundedCornerDrawable()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateLayoutParams()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->updateOverlayProviderViews([Ljava/lang/Integer;)V

    :cond_5
    iget v0, p0, Lcom/android/systemui/ScreenDecorations;->mFaceScanningViewId:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getOverlayView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/FaceScanningOverlay;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f040802

    invoke-static {v1, v4, v2}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    move-result v1

    iput v1, v0, Lcom/android/systemui/FaceScanningOverlay;->faceScanningAnimColor:I

    :cond_6
    iget-boolean v0, v3, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCModel:Z

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->updateFillUDCDisplayCutout()V

    :cond_7
    return-void
.end method

.method public final updateFillUDCDisplayCutout()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mIndicatorCutoutUtil:Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/IndicatorCutoutUtil;->isUDCMainDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isFillUDCDisplayCutoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-boolean v2, v1, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    if-eq v0, v2, :cond_1

    iput-boolean v0, v1, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ScreenDecorations;ZI)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    sget-boolean v0, Lcom/android/systemui/BasicRune;->STATUS_LAYOUT_SHOW_ICONS_IN_UDC:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->blockUpdateStatusIconContainerLayout:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mCutoutFactory:Lcom/android/systemui/decor/CutoutDecorProviderFactory;

    iget-boolean v0, v0, Lcom/android/systemui/decor/CutoutDecorProviderFactory;->shouldFillUDCDisplayCutout:Z

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mMainExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v0, v3}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ScreenDecorations;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final updateHwLayerRoundedCornerDrawable()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {v0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getTopRoundedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {v1}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getBottomRoundedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerFactory:Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

    invoke-virtual {v2}, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->getHasProviders()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    iget-object v1, v0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, v0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedDrawable:Landroid/graphics/drawable/Drawable;

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :cond_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    iput-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableTop:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerTopSize:I

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerDrawableBottom:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    iget v2, p0, Lcom/android/systemui/ScreenDecorHwcLayer;->roundedCornerBottomSize:I

    invoke-virtual {v0, v1, v1, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public final updateHwLayerRoundedCornerExistAndSize()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebug:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerFactory:Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;

    invoke-virtual {v0}, Lcom/android/systemui/decor/RoundedCornerDecorProviderFactory;->getHasProviders()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    iget-boolean v2, v1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasTop:Z

    iget-boolean v3, v1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->hasBottom:Z

    iget-object v1, v1, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->topRoundedSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mDebugRoundedCornerDelegate:Lcom/android/systemui/decor/DebugRoundedCornerDelegate;

    iget-object p0, p0, Lcom/android/systemui/decor/DebugRoundedCornerDelegate;->bottomRoundedSize:Landroid/util/Size;

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {v0, v1, p0, v2, v3}, Lcom/android/systemui/ScreenDecorHwcLayer;->updateRoundedCornerExistenceAndSize(IIZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcLayer:Lcom/android/systemui/ScreenDecorHwcLayer;

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {v1}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getHasTop()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {v2}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getHasBottom()Z

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {v3}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getTopRoundedSize()Landroid/util/Size;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v3

    iget-object p0, p0, Lcom/android/systemui/ScreenDecorations;->mRoundedCornerResDelegate:Lcom/android/systemui/decor/RoundedCornerResDelegate;

    invoke-interface {p0}, Lcom/android/systemui/decor/RoundedCornerResDelegate;->getBottomRoundedSize()Landroid/util/Size;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result p0

    invoke-virtual {v0, v3, p0, v1, v2}, Lcom/android/systemui/ScreenDecorHwcLayer;->updateRoundedCornerExistenceAndSize(IIZZ)V

    :goto_0
    return-void
.end method

.method public final updateLayoutParams()V
    .locals 4

    const-string v0, "ScreenDecorations#updateLayoutParams"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mScreenDecorHwcWindow:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->getHwcWindowLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    aget-object v1, v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/ScreenDecorations;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, v1, Lcom/android/systemui/decor/OverlayWindow;->rootView:Lcom/android/systemui/RegionInterceptingFrameLayout;

    invoke-virtual {p0, v0}, Lcom/android/systemui/ScreenDecorations;->getWindowLayoutParams(I)Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public updateOverlayProviderViews([Ljava/lang/Integer;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/systemui/ScreenDecorations;->mOverlays:[Lcom/android/systemui/decor/OverlayWindow;

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-boolean v3, v0, Lcom/android/systemui/ScreenDecorations;->mPendingConfigChange:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iget v3, v0, Lcom/android/systemui/ScreenDecorations;->mProviderRefreshToken:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/android/systemui/ScreenDecorations;->mProviderRefreshToken:I

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_7

    aget-object v6, v2, v5

    if-nez v6, :cond_2

    goto/16 :goto_5

    :cond_2
    iget v13, v0, Lcom/android/systemui/ScreenDecorations;->mProviderRefreshToken:I

    iget v14, v0, Lcom/android/systemui/ScreenDecorations;->mRotation:I

    iget v15, v0, Lcom/android/systemui/ScreenDecorations;->mTintColor:I

    iget-object v12, v0, Lcom/android/systemui/ScreenDecorations;->mDisplayUniqueId:Ljava/lang/String;

    if-eqz v1, :cond_5

    array-length v11, v1

    move v10, v4

    :goto_1
    if-ge v10, v11, :cond_4

    aget-object v7, v1, v10

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iget-object v8, v6, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v8, Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/decor/DecorProvider;

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/view/View;

    move-object v7, v8

    move-object v8, v9

    move v9, v13

    move/from16 v16, v10

    move v10, v14

    move/from16 v17, v11

    move v11, v15

    move-object/from16 v18, v12

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/decor/DecorProvider;->onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_2

    :cond_3
    move/from16 v16, v10

    move/from16 v17, v11

    move-object/from16 v18, v12

    :goto_2
    add-int/lit8 v10, v16, 0x1

    move/from16 v11, v17

    move-object/from16 v12, v18

    goto :goto_1

    :cond_4
    move-object/from16 v18, v12

    sget-object v7, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_3

    :cond_5
    move-object/from16 v18, v12

    const/4 v7, 0x0

    :goto_3
    if-nez v7, :cond_6

    iget-object v6, v6, Lcom/android/systemui/decor/OverlayWindow;->viewProviderMap:Ljava/util/Map;

    check-cast v6, Ljava/util/LinkedHashMap;

    invoke-virtual {v6}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v6

    check-cast v6, Ljava/lang/Iterable;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/decor/DecorProvider;

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    move-object v9, v7

    check-cast v9, Landroid/view/View;

    move-object v7, v8

    move-object v8, v9

    move v9, v13

    move v10, v14

    move v11, v15

    move-object/from16 v12, v18

    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/decor/DecorProvider;->onReloadResAndMeasure(Landroid/view/View;IIILjava/lang/String;)V

    goto :goto_4

    :cond_6
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method public updateOverlayWindowVisibilityIfViewExists(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ScreenDecorations;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v1, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ScreenDecorations$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/ScreenDecorations;Landroid/view/View;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
