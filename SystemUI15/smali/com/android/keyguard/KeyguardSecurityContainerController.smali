.class public Lcom/android/keyguard/KeyguardSecurityContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityView;


# instance fields
.field public final mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

.field public mCancelAction:Ljava/lang/Runnable;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecurityContainerController$5;

.field public mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public mCurrentUser:I

.field public final mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

.field public final mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field final mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

.field public final mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mLastOrientation:I

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mOnKeyListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;

.field public final mPrimaryBouncerInteractor:Ldagger/Lazy;

.field public final mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

.field public final mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mSessionTracker:Lcom/android/systemui/log/SessionTracker;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mTranslationY:I

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$1;

.field public final mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field public mWillRunDismissFromKeyguard:Z


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Ljavax/inject/Provider;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/biometrics/FaceAuthAccessibilityDelegate;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ldagger/Lazy;Ljavax/inject/Provider;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecurityContainer;",
            "Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/keyguard/KeyguardSecurityModel;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardSecurityViewFlipperController;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/statusbar/policy/UserSwitcherController;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/util/settings/GlobalSettings;",
            "Lcom/android/systemui/log/SessionTracker;",
            "Lcom/android/systemui/classifier/FalsingA11yDelegate;",
            "Landroid/telephony/TelephonyManager;",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            "Landroid/media/AudioManager;",
            "Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;",
            "Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;",
            "Ljavax/inject/Provider;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;",
            "Lcom/android/systemui/biometrics/FaceAuthAccessibilityDelegate;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Ldagger/Lazy;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mOnKeyListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/16 v2, -0x2710

    iput v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentUser:I

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainerController$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$1;

    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainerController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    iput-object v2, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainerController$4;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$4;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainerController$5;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$5;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecurityContainerController$5;

    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainerController$6;

    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$6;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object v3, p1

    move-object/from16 v4, p26

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    move-object v3, p3

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v3, p4

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v3, p5

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    move-object v3, p6

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v3, p7

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v3, p9

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    new-instance v3, Lcom/android/keyguard/AdminSecondaryLockScreenController;

    iget-object v4, v1, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v8, v1, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;->mHandler:Landroid/os/Handler;

    move-object p1, v3

    move-object p2, v4

    move-object p3, v7

    move-object p4, v8

    move-object p5, v2

    move-object p6, v1

    move-object/from16 p7, v5

    move/from16 p8, v6

    invoke-direct/range {p1 .. p8}, Lcom/android/keyguard/AdminSecondaryLockScreenController;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/os/Handler;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;I)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    move-object/from16 v1, p10

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    move-object/from16 v1, p11

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v1, p12

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAudioManager:Landroid/media/AudioManager;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mBouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mPrimaryBouncerInteractor:Ldagger/Lazy;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/android/keyguard/KeyguardSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/android/keyguard/KeyguardSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$500(Lcom/android/keyguard/KeyguardSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final appear()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/keyguard/KeyguardSecurityContainerController$7;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$7;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public configureMode()V
    .locals 11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f05000f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    const/4 v2, 0x2

    :goto_2
    move v5, v2

    goto :goto_4

    :cond_2
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityContainerController$8;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3

    move v0, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :goto_3
    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v3

    :goto_4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v4, v0

    check-cast v4, Lcom/android/keyguard/KeyguardSecurityContainer;

    new-instance v9, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;

    invoke-direct {v9, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

    invoke-virtual/range {v4 .. v10}, Lcom/android/keyguard/KeyguardSecurityContainer;->initMode(ILcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;Lcom/android/systemui/classifier/FalsingA11yDelegate;)V

    return-void
.end method

.method public final getBackCallback()Landroid/window/OnBackAnimationCallback;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mBackCallback:Lcom/android/keyguard/KeyguardSecurityContainer$2;

    return-object p0
.end method

.method public final getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->getSecurityView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    return-void
.end method

.method public getSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$3;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    return-object v0
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardInputView;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public final interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x7f

    const/16 v4, 0x7e

    const/16 v5, 0xde

    const/16 v6, 0x82

    const/16 v7, 0x4f

    const/4 v8, 0x1

    if-nez v1, :cond_3

    if-eq v0, v7, :cond_2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_2

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :cond_0
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p0

    if-eqz p0, :cond_1

    return v8

    :cond_1
    return v2

    :cond_2
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v8

    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v8, :cond_5

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_4

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    :cond_4
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    return v8

    :cond_5
    :goto_0
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public final needsInput()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final onBouncerVisibilityChanged()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    return-void
.end method

.method public onInit()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->updateResources$1()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->configureMode()V

    return-void
.end method

.method public final onStartingToHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_0
    return-void
.end method

.method public onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecurityContainerController$5;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$1;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->addUserSwitchCallback(Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserSwitchCallback;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mOnKeyListener:Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    sget p0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    return-void
.end method

.method public onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecurityContainerController$5;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalTouchListener:Lcom/android/systemui/Gefingerpoken;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitchCallback:Lcom/android/keyguard/KeyguardSecurityContainerController$1;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->callbackCompatMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->getMUserSwitcherInteractor()Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor;->removeCallback(Lcom/android/systemui/user/domain/interactor/UserSwitcherInteractor$UserCallback;)V

    :cond_0
    return-void
.end method

.method public final prepareToShow()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    const v0, 0x7f0a057d

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public reinflateViewFlipper(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->clearViews()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v0, v1, p0, p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->asynchronouslyInflateView(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    return-void
.end method

.method public reportFailedUnlockAttempt(II)V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    const-string v0, "reportFailedPatternAttempt: #"

    const-string v1, "KeyguardSecurityContainer"

    invoke-static {v6, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    if-lez v0, :cond_0

    sub-int/2addr v0, v6

    :goto_0
    move v5, v0

    goto :goto_1

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0

    :goto_1
    const/4 v0, 0x5

    if-ge v5, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v0, v0, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    iget v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v1, p0

    move v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showMessageForFailedUnlockAttempt(IILjava/lang/Integer;II)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    if-lez p2, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    :cond_2
    return-void
.end method

.method public final reset$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->reset()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityViewFlipperController:Lcom/android/keyguard/KeyguardSecurityViewFlipperController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipperController;->reset$1()V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method

.method public final setExpansion(F)V
    .locals 3

    invoke-static {p1}, Lcom/android/keyguard/BouncerPanelExpansionCalculator;->showBouncerProgress(F)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mTranslationY:I

    int-to-float p0, p0

    mul-float/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    return-void
.end method

.method public final setInteractable()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_0
    return-void
.end method

.method public showMessageForFailedUnlockAttempt(IILjava/lang/Integer;II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, p1, :cond_1

    sget-object p1, Landroid/app/admin/flags/Flags;->FEATURE_FLAGS:Landroid/app/admin/flags/FeatureFlagsImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eq p2, p1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :cond_1
    const/16 p1, -0x2710

    if-eq p2, p1, :cond_2

    const/4 v0, 0x2

    :cond_2
    :goto_1
    if-lez p4, :cond_3

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p5, p4, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showAlmostAtWipeDialog(III)V

    goto :goto_2

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Too many unlock attempts; user "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " will be wiped!"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardSecurityContainer"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p5, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(II)V

    :goto_2
    return-void
.end method

.method public showNextSecurityScreenOrFinish(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showNextSecurityScreenOrFinish("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecurityContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x0

    if-eq p4, v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p4, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Attempted to invoke showNextSecurityScreenOrFinish with securityMode "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ", but current mode is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    sget-object p4, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->UNKNOWN:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->forceIsDismissibleIsKeepingDeviceUnlocked()Z

    move-result v1

    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x5

    if-eqz v1, :cond_1

    move-object p1, p4

    move v1, v3

    move v8, v7

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_EXTENDED_ACCESS:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    move v1, v3

    move v8, v6

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v1

    const/4 v8, 0x2

    if-eqz v1, :cond_3

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_BIOMETRIC:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    :goto_0
    move v1, v3

    goto/16 :goto_4

    :cond_3
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v10, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    if-ne v1, v9, :cond_5

    invoke-virtual {v10, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    if-ne v1, p1, :cond_4

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_NONE_SECURITY:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    move v8, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_3

    :cond_5
    if-eqz p1, :cond_b

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainerController$8;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget p1, p1, v9

    if-eq p1, v3, :cond_a

    if-eq p1, v8, :cond_a

    if-eq p1, v6, :cond_a

    if-eq p1, v5, :cond_6

    if-eq p1, v7, :cond_6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    goto :goto_3

    :cond_6
    invoke-virtual {v10, p2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object p1

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v9, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v9, v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v8

    if-nez v8, :cond_8

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v8, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v8, p2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isUserSetup(I)Z

    move-result v8

    if-nez v8, :cond_7

    goto :goto_1

    :cond_7
    move v8, v2

    goto :goto_2

    :cond_8
    :goto_1
    move v8, v3

    :goto_2
    if-ne p1, v1, :cond_9

    if-eqz v8, :cond_9

    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_SIM:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    move v1, v3

    move v8, v5

    goto :goto_4

    :cond_9
    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPin:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v8, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SimPuk:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    filled-new-array {v1, v8}, [Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_3

    :cond_a
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;->BOUNCER_DISMISS_PASSWORD:Lcom/android/keyguard/KeyguardSecurityContainer$BouncerUiEvent;

    move v1, v3

    move v8, v1

    goto :goto_4

    :cond_b
    :goto_3
    move-object p1, p4

    move v1, v2

    move v8, v4

    :goto_4
    if-eqz v1, :cond_e

    if-nez p3, :cond_e

    iget-object p3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecondaryLockscreenRequirement:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/content/Intent;

    if-eqz p3, :cond_e

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    if-nez p1, :cond_c

    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mConnection:Lcom/android/keyguard/AdminSecondaryLockScreenController$1;

    invoke-virtual {p1, p3, p2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    :cond_c
    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result p2

    if-nez p2, :cond_d

    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mParent:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p2}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getId()I

    move-result p3

    invoke-virtual {p2, p3, v6, v2, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getId()I

    move-result p3

    const/4 p4, 0x6

    invoke-virtual {p2, p3, p4, v2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getId()I

    move-result p3

    const/4 p4, 0x7

    invoke-virtual {p2, p3, p4, v2, p4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getId()I

    move-result p3

    invoke-virtual {p2, p3, v5, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getId()I

    move-result p3

    invoke-virtual {p2, p3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getId()I

    move-result p1

    invoke-virtual {p2, p1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    invoke-virtual {p2, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_d
    return v2

    :cond_e
    if-eq v8, v4, :cond_f

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v2, 0xc5

    invoke-direct {v0, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    invoke-virtual {v0, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    :cond_f
    if-eq p1, p4, :cond_10

    iget-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    iget-object p4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSessionTracker:Lcom/android/systemui/log/SessionTracker;

    invoke-virtual {p4, v3}, Lcom/android/systemui/log/SessionTracker;->getSessionId(I)Lcom/android/internal/logging/InstanceId;

    move-result-object p4

    invoke-interface {p3, p1, p4}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/internal/logging/InstanceId;)V

    :cond_10
    sget p1, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    if-eqz v1, :cond_11

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {p0, p2}, Lcom/android/keyguard/KeyguardSecurityCallback;->finish(I)V

    :cond_11
    return v1
.end method

.method public final showPrimarySecurityScreen()V
    .locals 3

    const-string v0, "KeyguardSecurityContainer"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mPrimaryBouncerInteractor:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;

    iget-object v1, v1, Lcom/android/systemui/bouncer/domain/interactor/PrimaryBouncerInteractor;->repository:Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepository;

    check-cast v1, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;

    iget-object v1, v1, Lcom/android/systemui/bouncer/data/repository/KeyguardBouncerRepositoryImpl;->_lastShownSecurityMode:Lkotlinx/coroutines/flow/StateFlowImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    return-void
.end method

.method public showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showSecurityScreen("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecurityContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public startAppearAnimation()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v1, v3, v2}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateChildren(FI)V

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->startAppearAnimation(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_0
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    iput-boolean v2, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v3, :cond_0

    iget-object v3, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    move-result-object v3

    instance-of v3, v3, Lcom/android/keyguard/KeyguardPasswordView;

    if-eqz v3, :cond_0

    iget-object v0, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardPasswordView;

    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardPasswordView;->mDisappearAnimationListener:Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    invoke-interface {v1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->startDisappearAnimation(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :goto_0
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_1
    return v2
.end method

.method public final updateKeyguardPosition(F)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->updatePositionByTouchX(F)V

    return-void
.end method

.method public final updateResources$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0b005d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const v1, 0x7f0b005c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    const v2, 0x7f0704ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mTranslationY:I

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    if-eq v2, v1, :cond_1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    if-eq v0, v1, :cond_2

    iput v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLastOrientation:I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->configureMode()V

    :cond_2
    return-void
.end method
