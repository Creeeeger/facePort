.class public final Lcom/android/systemui/blur/SecQpBlurController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shade/ShadeExpansionListener;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;
.implements Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;


# instance fields
.field public final backgroundColorId:I

.field public final bgOverlayColorId:I

.field public mAnimatedFraction:F

.field public final mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

.field public mBlurAnimator:Landroid/animation/ValueAnimator;

.field public final mCaptureInterpolator:Landroid/view/animation/PathInterpolator;

.field public final mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

.field public final mContext:Landroid/content/Context;

.field public final mInterpolator:Landroid/view/animation/PathInterpolator;

.field public mIsBlurReduced:Z

.field public mIsBouncerShowing:Z

.field public mIsMirrorVisible:Z

.field public mIsWakingUp:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

.field public final mLazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

.field public mNeedToUpdateByConfig:Z

.field public final mPanelCollapseConfig:Lcom/android/systemui/util/ConfigurationState;

.field public mPanelExpandedFraction:F

.field public mRoot:Lcom/android/systemui/shade/NotificationShadeWindowView;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mShadeControllerImpl:Lcom/android/systemui/shade/ShadeControllerImpl;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

.field public mWindowBlurRadius:F


# direct methods
.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/systemui/blur/SecQpBlurController;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public static -$$Nest$mhasCustomColorForBackground(Lcom/android/systemui/blur/SecQpBlurController;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->backgroundColorId:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ff000000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/android/systemui/blur/SecQpBlurController;->bgOverlayColorId:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f05008a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    xor-int/2addr v4, v3

    if-nez v1, :cond_3

    if-eqz v4, :cond_2

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move p0, v2

    goto :goto_3

    :cond_3
    :goto_2
    move p0, v3

    :goto_3
    if-eqz v0, :cond_4

    if-nez p0, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/view/Choreographer;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/KeyguardWallpaper;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/shade/ShadeControllerImpl;Ldagger/Lazy;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;",
            "Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;",
            "Lcom/android/systemui/shade/ShadeExpansionStateManager;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Landroid/view/Choreographer;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/KeyguardWallpaper;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/shade/ShadeControllerImpl;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    move-object/from16 v5, p9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/android/systemui/util/ConfigurationState;

    sget-object v7, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->THEME_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v8, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ASSET_SEQ:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    sget-object v9, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->UI_MODE:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v7, v8, v9}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    new-instance v6, Lcom/android/systemui/util/ConfigurationState;

    sget-object v7, Lcom/android/systemui/util/ConfigurationState$ConfigurationField;->ORIENTATION:Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    filled-new-array {v9, v7}, [Lcom/android/systemui/util/ConfigurationState$ConfigurationField;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/android/systemui/util/ConfigurationState;-><init>(Ljava/util/List;)V

    iput-object v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelCollapseConfig:Lcom/android/systemui/util/ConfigurationState;

    const v6, 0x7f060541

    iput v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->backgroundColorId:I

    const v6, 0x7f06066f

    iput v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->bgOverlayColorId:I

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3ed70a3d    # 0.42f

    const v8, 0x3e6147ae    # 0.22f

    const v9, 0x3e3851ec    # 0.18f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    new-instance v6, Landroid/view/animation/PathInterpolator;

    const v7, 0x3e947ae1    # 0.29f

    const v8, 0x3da3d70a    # 0.08f

    const v9, 0x3f30a3d7    # 0.69f

    const v10, 0x3f7ae148    # 0.98f

    invoke-direct {v6, v7, v8, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mCaptureInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v6, 0x0

    iput v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mAnimatedFraction:F

    const/4 v6, 0x0

    iput-boolean v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsMirrorVisible:Z

    iput-boolean v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    iput-boolean v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    iput-boolean v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsWakingUp:Z

    iput-object v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    iput-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mChoreographer:Landroid/view/Choreographer;

    move-object/from16 v7, p7

    iput-object v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object v5, v0, Lcom/android/systemui/blur/SecQpBlurController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance v7, Lcom/android/systemui/blur/QSColorCurve;

    invoke-direct {v7, p1}, Lcom/android/systemui/blur/QSColorCurve;-><init>(Landroid/content/Context;)V

    iput-object v7, v0, Lcom/android/systemui/blur/SecQpBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    new-instance v7, Lcom/android/systemui/blur/SecQpBlurController$2;

    invoke-direct {v7, p0}, Lcom/android/systemui/blur/SecQpBlurController$2;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    new-instance v8, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    invoke-direct {v8, p0}, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    iput-object v8, v0, Lcom/android/systemui/blur/SecQpBlurController;->mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    const/4 v8, 0x3

    new-array v8, v8, [Landroid/net/Uri;

    const-string v9, "accessibility_reduce_transparency"

    invoke-static {v9}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    aput-object v10, v8, v6

    const-string v10, "minimal_battery_use"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v8, v11

    const-string/jumbo v10, "ultra_powersaving_mode"

    invoke-static {v10}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v8, v12

    invoke-virtual {v5, p0, v8}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    move-object/from16 v5, p4

    invoke-virtual {v5, p0}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    invoke-interface {v4, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    move-object/from16 v4, p11

    check-cast v4, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mShadeControllerImpl:Lcom/android/systemui/shade/ShadeControllerImpl;

    sget-object v4, Lcom/android/systemui/logging/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/logging/PanelScreenShotLogger;

    const-string v5, "SecQpBlurController"

    invoke-virtual {v4, v5, p0}, Lcom/android/systemui/logging/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/logging/PanelScreenShotLogger$LogProvider;)V

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/systemui/blur/SecQpBlurController;->mLazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

    new-instance v4, Lcom/android/systemui/blur/SecQpBlurController$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/blur/SecQpBlurController$1;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    move-object/from16 v5, p14

    invoke-virtual {v5, v4}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    move-object/from16 v4, p15

    invoke-virtual {v4, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->addCallback(Lcom/android/systemui/statusbar/LockscreenShadeTransitionController$Callback;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    move v6, v11

    :cond_0
    iput-boolean v6, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    iput-object v2, v0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    iput-object v7, v2, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    iput-object v3, v0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    iput-object v7, v3, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    return-void
.end method


# virtual methods
.method public final doCaptureContainerAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    if-nez p0, :cond_0

    const-string p0, "SecQpBlurController"

    const-string p1, "doCapturedBlur: mCapturedBlurController is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->setAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V

    return-void
.end method

.method public final doFrame$1()V
    .locals 6

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_DEFAULT:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mInterpolator:Landroid/view/animation/PathInterpolator;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCaptureInterpolator:Landroid/view/animation/PathInterpolator;

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsMirrorVisible:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    invoke-virtual {v1, v2}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    move-result v1

    goto :goto_2

    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mAnimatedFraction:F

    :goto_2
    iget-object v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    invoke-virtual {v2, v1}, Lcom/android/systemui/blur/QSColorCurve;->setFraction(F)V

    iget-object v3, p0, Lcom/android/systemui/blur/SecQpBlurController;->mLazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    cmpl-float v1, v1, v4

    if-lez v1, :cond_3

    const-string v1, "SecQpBlurController"

    const-string v2, "ScreenOff animation is running. & fraction: 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v1, v4

    move v3, v1

    goto :goto_3

    :cond_4
    iget v2, v2, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    iget-object v3, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0117

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr v3, v5

    mul-float/2addr v3, v2

    :goto_3
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_6

    cmpl-float v0, v3, v4

    if-nez v0, :cond_8

    :cond_6
    :goto_4
    float-to-int v0, v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/blur/SecQpBlurController;->doWindowBlur(I)V

    goto :goto_5

    :cond_7
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    if-nez v0, :cond_8

    sget-object v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;->QUICK_PANEL:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/blur/SecQpBlurController;->doCaptureContainerAlpha(FLcom/android/systemui/statusbar/phone/CapturedBlurContainerController$BlurType;)V

    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_9

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController;->mLazyUnlockedScreenOffAnimationController:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    move-result v0

    if-nez v0, :cond_9

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    mul-float/2addr v1, v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    return-void
.end method

.method public final doWindowBlur(I)V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mRoot:Lcom/android/systemui/shade/NotificationShadeWindowView;

    const-string v1, "SecQpBlurController"

    if-nez v0, :cond_0

    const-string p0, "doWindowBlur: mRoot is null"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    int-to-float v2, p1

    cmpl-float v0, v0, v2

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mNeedToUpdateByConfig:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    iget v0, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    if-eqz v0, :cond_4

    :cond_3
    move v0, v3

    goto :goto_0

    :cond_4
    move v0, v4

    :goto_0
    new-instance v12, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v12, v4}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    iget-object v5, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    if-eqz v5, :cond_6

    iget-object v5, v5, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lcom/android/systemui/blur/SecQpBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    iget v6, v5, Lcom/android/systemui/blur/QSColorCurve;->saturation:F

    iget v7, v5, Lcom/android/systemui/blur/QSColorCurve;->curve:F

    iget v8, v5, Lcom/android/systemui/blur/QSColorCurve;->minX:F

    iget v9, v5, Lcom/android/systemui/blur/QSColorCurve;->maxX:F

    iget v10, v5, Lcom/android/systemui/blur/QSColorCurve;->minY:F

    iget v11, v5, Lcom/android/systemui/blur/QSColorCurve;->maxY:F

    move-object v5, v12

    invoke-virtual/range {v5 .. v11}, Landroid/view/SemBlurInfo$Builder;->setColorCurve(FFFFFF)Landroid/view/SemBlurInfo$Builder;

    :cond_6
    :goto_1
    if-eqz v0, :cond_7

    move v5, v4

    goto :goto_2

    :cond_7
    move v5, p1

    :goto_2
    invoke-virtual {v12, v5}, Landroid/view/SemBlurInfo$Builder;->setRadius(I)Landroid/view/SemBlurInfo$Builder;

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    :cond_8
    iput v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    iput-boolean v4, p0, Lcom/android/systemui/blur/SecQpBlurController;->mNeedToUpdateByConfig:Z

    iget-object v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    const-string v5, ""

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, " isBackgroundVisible = "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mView:Lcom/android/systemui/statusbar/phone/SecPanelBackground;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    move v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_a
    move-object v2, v5

    :goto_4
    iget-object v3, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " getMaxAlpha = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    iget v4, v4, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b
    const-string v3, "Window Blur: "

    const-string v4, " shouldBlockBlur: "

    const-string v6, " mIsBlurReduced = "

    invoke-static {v3, p1, v4, v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mRoot:Lcom/android/systemui/shade/NotificationShadeWindowView;

    invoke-virtual {v12}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/view/View;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    return-void
.end method

.method public final gatherState()Ljava/util/ArrayList;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "SecQpBlurController =================================================================================== "

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  radius = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    iget v2, v2, Lcom/android/systemui/blur/QSColorCurve;->radius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " custom_blur_level = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " mWindowBlurRadius = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  mIsMirrorVisible = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsMirrorVisible:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsBouncerShowing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBouncerShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " bgColor = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->backgroundColorId:I

    invoke-virtual {v2, p0}, Landroid/content/Context;->getColor(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "======================================================================================================= "

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final makeAnimationAndRun(FFI)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    int-to-long p2, p3

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p2, Lcom/android/systemui/blur/SecQpBlurController$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/blur/SecQpBlurController$3;-><init>(Lcom/android/systemui/blur/SecQpBlurController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBlurAnimator:Landroid/animation/ValueAnimator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    iput-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBlurAnimator:Landroid/animation/ValueAnimator;

    return-void
.end method

.method public final onChanged(Landroid/net/Uri;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "accessibility_reduce_transparency"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "SecQpBlurController"

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onChanged: accessibility_reduce_transparency: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    invoke-static {p1, v0, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    if-eqz p1, :cond_4

    const v0, 0x3e99999a    # 0.3f

    iput v0, p1, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    iget-object v0, p1, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mBlurUtils:Lcom/android/systemui/blur/SecQpBlurController$2;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/android/systemui/blur/SecQpBlurController$2;->this$0:Lcom/android/systemui/blur/SecQpBlurController;

    iget-boolean v1, v0, Lcom/android/systemui/blur/SecQpBlurController;->mIsBlurReduced:Z

    const/high16 v2, 0x3f800000    # 1.0f

    if-eqz v1, :cond_2

    iput v2, p1, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/android/systemui/blur/SecQpBlurController;->-$$Nest$fgetmSettingsHelper(Lcom/android/systemui/blur/SecQpBlurController;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_3

    iput v2, p1, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mMaxAlpha:F

    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    :cond_4
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->updateContainerVisibility()V

    goto :goto_1

    :cond_5
    const-string v0, "minimal_battery_use"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "ultra_powersaving_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_6
    const-string p1, "onChanged: minimal_battery_use || ultra_powersaving_mode"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    :cond_7
    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->updateContainerVisibility()V

    :cond_8
    :goto_1
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mLastConfigurationState:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/android/systemui/blur/SecQpBlurController;->mNeedToUpdateByConfig:Z

    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->updateContainerVisibility()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecQpBlurController;->doFrame$1()V

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelCollapseConfig:Lcom/android/systemui/util/ConfigurationState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->needToUpdate(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mShadeControllerImpl:Lcom/android/systemui/shade/ShadeControllerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->isExpandingOrCollapsing()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p0

    if-ne p0, v2, :cond_3

    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->getNpvc()Lcom/android/systemui/shade/NotificationPanelViewController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/shade/NotificationPanelViewController;->animateCollapseQs(Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/shade/ShadeControllerImpl;->instantCollapseShade()V

    :cond_4
    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/util/ConfigurationState;->update(Landroid/content/res/Configuration;)V

    :cond_5
    return-void
.end method

.method public final onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    iget p1, p1, Lcom/android/systemui/shade/ShadeExpansionChangeEvent;->fraction:F

    cmpl-float v1, v1, p1

    if-eqz v1, :cond_4

    iput p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onPanelExpansionChanged mPanelExpandedFraction: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    const-string v2, "SecQpBlurController"

    invoke-static {p1, v1, v2}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mColorCurve:Lcom/android/systemui/blur/QSColorCurve;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz p1, :cond_1

    const/high16 p1, 0x428c0000    # 70.0f

    goto :goto_0

    :cond_1
    const/high16 p1, 0x437a0000    # 250.0f

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0117

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, p1

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    :cond_2
    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_4

    iget p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mWindowBlurRadius:F

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/blur/SecQpBlurController;->doFrame$1()V

    :cond_4
    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final onStateChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mBackgroundController:Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;

    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mStatusBarState:I

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, v0, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->mStatusBarState:I

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SecPanelBackgroundController;->updatePanel()V

    :cond_1
    :goto_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final setBrightnessMirrorVisible(Z)V
    .locals 2

    const-string v0, "setBrightnessMirrorVisible: "

    const-string v1, "SecQpBlurController"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mIsMirrorVisible:Z

    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_PANEL_BLUR_MASSIVE:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mCapturedBlurController:Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/phone/CapturedBlurContainerController;->mIsMirrorVisible:Z

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_1

    const/16 p1, 0x96

    invoke-virtual {p0, v1, v0, p1}, Lcom/android/systemui/blur/SecQpBlurController;->makeAnimationAndRun(FFI)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xc8

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/blur/SecQpBlurController;->makeAnimationAndRun(FFI)V

    :goto_0
    return-void
.end method

.method public final setTransitionToFullShadeAmount(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "setTransitionToFullShadeAmount mPanelExpandedFraction: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mPanelExpandedFraction:F

    const-string v1, "SecQpBlurController"

    invoke-static {p1, v0, v1}, Landroidx/picker3/widget/SeslColorSpectrumView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/blur/SecQpBlurController;->mChoreographer:Landroid/view/Choreographer;

    iget-object p0, p0, Lcom/android/systemui/blur/SecQpBlurController;->mUpdateBlurCallback:Lcom/android/systemui/blur/SecQpBlurController$$ExternalSyntheticLambda0;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1
    return-void
.end method
