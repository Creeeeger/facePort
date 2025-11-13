.class public final Lcom/android/keyguard/KeyguardSecSecurityContainerController;
.super Lcom/android/keyguard/KeyguardSecurityContainerController;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

.field public final mConfigurationListener:Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

.field public mCurrentRotation:I

.field public final mDisplayLifeCycleObserver:Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mDpm:Landroid/app/admin/DevicePolicyManager;

.field public final mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

.field public mImeBottom:I

.field public final mImm:Landroid/view/inputmethod/InputMethodManager;

.field public mIsDisappearAnimation:Z

.field public mIsImeShown:Z

.field public mIsPassword:Z

.field public mIsResetCredentialShowing:Z

.field public mIsSwipeBouncer:Z

.field public final mKeyguardArrowViewCallback:Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

.field public final mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

.field public final mKeyguardCarrierTextViewController:Lcom/android/keyguard/KeyguardCarrierTextViewController;

.field public final mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

.field public final mKeyguardPunchHoleVIViewController:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field public mNavigationBarHeight:I

.field public mNeedsInput:Z

.field private final mOnChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mPrevCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mRemainingBeforeWipe:I

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static $r8$lambda$5mPUvyQ1u7jyxIoop9We5V-6bYo(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OnChangedCallback() "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsResetCredentialShowing:Z

    const-string v2, "KeyguardSecSecurityContainer"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isResetCredential()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsResetCredentialShowing:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsResetCredentialShowing:Z

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->clearFailedUnlockAttempts(Z)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x24000000

    invoke-static {v5, v0, v3, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v5, :cond_0

    const-string v5, "Alarm manager have ACTION_BIOMETRIC_LOCKOUT_RESET then will be canceled"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-virtual {v3}, Landroid/app/PendingIntent;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "reset_credential_from_previous"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;

    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v2, v4, v1, v0, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;->dismiss(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Landroid/app/AlarmManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/keyguard/DisplayLifecycle;Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/KeyguardCarrierTextViewController;Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;Lcom/android/keyguard/KeyguardArrowViewController$Factory;Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;Lcom/android/systemui/util/SettingsHelper;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Ljavax/inject/Provider;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/biometrics/FaceAuthAccessibilityDelegate;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ldagger/Lazy;Ljavax/inject/Provider;)V
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardSecSecurityContainer;",
            "Landroid/app/AlarmManager;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;",
            "Landroid/view/inputmethod/InputMethodManager;",
            "Lcom/android/keyguard/KeyguardCarrierTextViewController;",
            "Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;",
            "Lcom/android/keyguard/KeyguardArrowViewController$Factory;",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;",
            "Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;",
            "Lcom/android/systemui/util/SettingsHelper;",
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
            "Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;",
            "Ldagger/Lazy;",
            "Ljavax/inject/Provider;",
            ")V"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v14, p5

    move-object/from16 v13, p9

    move-object/from16 v12, p11

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v27, p3

    move-object/from16 v2, p13

    move-object/from16 v3, p14

    move-object/from16 v4, p15

    move-object/from16 v5, p16

    move-object/from16 v6, p17

    move-object/from16 v7, p18

    move-object/from16 v8, p19

    move-object/from16 v9, p20

    move-object/from16 v10, p21

    move-object/from16 v11, p22

    move-object/from16 v12, p23

    move-object/from16 v13, p24

    move-object/from16 v14, p25

    move-object/from16 v15, p26

    move-object/from16 v16, p27

    move-object/from16 v17, p28

    move-object/from16 v18, p29

    move-object/from16 v19, p30

    move-object/from16 v20, p31

    move-object/from16 v21, p32

    move-object/from16 v22, p33

    move-object/from16 v23, p34

    move-object/from16 v24, p35

    move-object/from16 v25, p36

    move-object/from16 v26, p37

    move-object/from16 v28, p38

    move-object/from16 v29, p39

    move-object/from16 v30, p40

    invoke-direct/range {v0 .. v30}, Lcom/android/keyguard/KeyguardSecurityContainerController;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel;Lcom/android/internal/logging/MetricsLogger;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardSecurityViewFlipperController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/log/SessionTracker;Lcom/android/systemui/classifier/FalsingA11yDelegate;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Landroid/media/AudioManager;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Ljavax/inject/Provider;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/biometrics/FaceAuthAccessibilityDelegate;Landroid/app/admin/DevicePolicyManager;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Ldagger/Lazy;Ljavax/inject/Provider;)V

    const/4 v0, 0x0

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImeBottom:I

    const/16 v2, 0x14

    iput v2, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    iput-boolean v0, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsDisappearAnimation:Z

    new-instance v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v2, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mOnChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

    invoke-direct {v2, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v2, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

    iput v0, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mCurrentRotation:I

    new-instance v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    invoke-direct {v2, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v2, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    new-instance v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;

    invoke-direct {v2, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$3;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    new-instance v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;

    invoke-direct {v3, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$4;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-object/from16 v3, p3

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v3, p6

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v3, p2

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v3, p4

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object/from16 v3, p12

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v3, p35

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v3, p7

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardCarrierTextViewController:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    move-object/from16 v3, p8

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPunchHoleVIViewController:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v3, :cond_1

    new-instance v4, Lcom/android/keyguard/KeyguardArrowViewController;

    move-object/from16 v3, p9

    iget-object v5, v3, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v6, v3, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v3, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v3, v3, Lcom/android/keyguard/KeyguardArrowViewController$Factory;->mView:Lcom/android/keyguard/KeyguardArrowView;

    move-object/from16 p12, v4

    move-object/from16 p13, v3

    move-object/from16 p14, v2

    move-object/from16 p15, v6

    move-object/from16 p16, v5

    move-object/from16 p17, v7

    invoke-direct/range {p12 .. p17}, Lcom/android/keyguard/KeyguardArrowViewController;-><init>(Lcom/android/keyguard/KeyguardArrowView;Lcom/android/keyguard/KeyguardArrowViewCallback;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/ViewMediatorCallback;)V

    :cond_1
    iput-object v4, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    move-object/from16 v2, p10

    iput-object v2, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object v2, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v3, Lcom/android/keyguard/KeyguardPluginControllerImpl;

    move-object/from16 v4, p11

    iget-object v5, v4, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mContext:Landroid/content/Context;

    iget-object v6, v4, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v7, v4, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v8, v4, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v9, 0x0

    iget-object v10, v4, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v11, v4, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mDesktopManager:Lcom/android/systemui/util/DesktopManager;

    iget-object v12, v4, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    iget-object v4, v4, Lcom/android/keyguard/KeyguardPluginControllerImpl$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object/from16 p6, v3

    move-object/from16 p7, v5

    move-object/from16 p8, v10

    move-object/from16 p9, v11

    move-object/from16 p10, v12

    move-object/from16 p11, v2

    move-object/from16 p12, v6

    move-object/from16 p13, v7

    move-object/from16 p14, v4

    move-object/from16 p15, v8

    move/from16 p16, v9

    invoke-direct/range {p6 .. p16}, Lcom/android/keyguard/KeyguardPluginControllerImpl;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/systemui/util/DesktopManager;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;I)V

    iput-object v3, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    iget-object v2, v1, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    new-instance v3, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;

    invoke-direct {v3, v1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$OnApplyWindowInsetsListener;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;I)V

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v0, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    move-object/from16 v0, p5

    if-eqz v0, :cond_2

    new-instance v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    iget-object v3, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    new-instance v4, Lcom/android/keyguard/DualDarInnerLockScreenController;

    iget-object v5, v0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v7, v0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    iget-object v8, v0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v9, v0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mParent:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v10, v0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;->mHandler:Landroid/os/Handler;

    move-object/from16 p1, v4

    move-object/from16 p2, v5

    move-object/from16 p3, v9

    move-object/from16 p4, p0

    move-object/from16 p5, v10

    move-object/from16 p6, v3

    move-object/from16 p7, v2

    move-object/from16 p8, v0

    move-object/from16 p9, v6

    move-object/from16 p10, v7

    move-object/from16 p11, v8

    invoke-direct/range {p1 .. p11}, Lcom/android/keyguard/DualDarInnerLockScreenController;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/DualDarKeyguardSecurityCallback;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    iput-object v4, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

    :cond_2
    move-object/from16 v0, p19

    iput-object v0, v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-void
.end method

.method public static synthetic access$000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$1000(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$700(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$800(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public final configureMode()V
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->isArrowViewSupported(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    :goto_0
    move v2, v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUserSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mFalsingA11yDelegate:Lcom/android/systemui/classifier/FalsingA11yDelegate;

    invoke-virtual/range {v1 .. v7}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->initMode(ILcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda3;Lcom/android/systemui/classifier/FalsingA11yDelegate;)V

    return-void
.end method

.method public final getSecurityCallback()Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 1

    new-instance v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$5;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    return-object v0
.end method

.method public final interceptRestKey(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestFocus()Z

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public final isPassword(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getPrevCredentialType()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    if-eqz p1, :cond_4

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, p0, :cond_3

    sget-object p0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1

    :cond_4
    return v2
.end method

.method public final onInit()V
    .locals 6

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onInit()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardCarrierTextViewController:Lcom/android/keyguard/KeyguardCarrierTextViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPunchHoleVIViewController:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIViewController;->setBouncer()V

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v3

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAutoWipe()Z

    move-result v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v0}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v4

    if-lez v4, :cond_3

    move v1, v4

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    const/16 v1, 0x14

    :cond_4
    :goto_0
    const-string v2, "doWipeOutIfMaxFailedAttemptsSinceBoot( failedAttemptsBeforeWipe = "

    const-string v4, " , failedAttempts = "

    const-string v5, " )"

    invoke-static {v1, v3, v2, v4, v5}, Landroidx/compose/foundation/text/HeightInLinesModifierKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "KeyguardSecSecurityContainer"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v1, :cond_6

    if-lt v3, v1, :cond_6

    const-string v1, "doWipeOutIfMaxFailedAttemptsSinceBoot( Too many unlock attempts; device will be wiped! )"

    invoke-static {v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object v1, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    if-nez v1, :cond_5

    new-instance v1, Lcom/android/keyguard/ResetDeviceUtils;

    invoke-direct {v1, p0}, Lcom/android/keyguard/ResetDeviceUtils;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    :cond_5
    sget-object p0, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    const/4 v1, 0x1

    invoke-virtual {p0, v3, v0, v1}, Lcom/android/keyguard/ResetDeviceUtils;->wipeOut(III)V

    :cond_6
    return-void
.end method

.method public final onPause()V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "screen off, instance "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecurityContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mAdminSecondaryLockScreenController:Lcom/android/keyguard/AdminSecondaryLockScreenController;

    invoke-virtual {v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->hide()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->reset()V

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDualDarInnerLockScreenController:Lcom/android/keyguard/DualDarInnerLockScreenController;

    invoke-virtual {v0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->hide()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getMaxFailedUnlockAttempts()I

    move-result v1

    const/16 v2, 0x32

    if-eq v1, v2, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updatePermanentLock(I)Z

    :cond_2
    return-void
.end method

.method public final onResume(I)V
    .locals 3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "screen on, instance "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardSecurityContainer"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->requestFocus()Z

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityContainer$SidedSecurityMode;->isLeftAligned()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    const/16 v0, 0x3f

    invoke-static {v0, p1}, Lcom/android/systemui/shared/system/SysUiStatsLog;->write(II)V

    new-instance p1, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;

    invoke-direct {p1}, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mFaceEnrolledAndEnabled:Z

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_3

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsDisappearAnimation:Z

    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->configureMode()V

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 1

    const/16 v0, 0x28

    if-lt p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ViewFlipper;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public final onViewAttached()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onViewAttached()V

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mCurrentRotation:I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mOnChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "reset_credential_from_previous"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->onViewDetached()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDisplayLifeCycleObserver:Lcom/android/keyguard/KeyguardSecSecurityContainerController$2;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mOnChangedCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mConfigurationListener:Lcom/android/keyguard/KeyguardSecSecurityContainerController$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final reinflateViewFlipper(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->reinflateViewFlipper(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->getCurrentSecurityController(Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;)V

    return-void
.end method

.method public final reportFailedUnlockAttempt(II)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFailedUnlockAttempts(I)I

    move-result v4

    const/4 v5, 0x1

    add-int/2addr v4, v5

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isAutoWipe()Z

    move-result v6

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    invoke-virtual {v7, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v8

    sget-object v9, Lcom/android/keyguard/KeyguardSecSecurityContainerController$6;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v8, v9, v8

    const-string v9, "1"

    const/4 v10, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x2

    if-eq v8, v5, :cond_2

    if-eq v8, v12, :cond_1

    if-eq v8, v11, :cond_0

    move-object v8, v10

    goto :goto_0

    :cond_0
    const-string v8, "2"

    goto :goto_0

    :cond_1
    const-string v8, "3"

    goto :goto_0

    :cond_2
    move-object v8, v9

    :goto_0
    if-eqz v8, :cond_3

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    const-string v14, "102"

    const-string v15, "LSE1200"

    invoke-static {v14, v15, v8, v13}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v10, v1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v8

    if-lez v8, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v6, :cond_5

    const/16 v8, 0x14

    goto :goto_1

    :cond_5
    const/4 v8, 0x0

    :goto_1
    if-lez v8, :cond_6

    sub-int v10, v8, v4

    goto :goto_2

    :cond_6
    const v10, 0x7fffffff

    :goto_2
    iput v10, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFingerprintOptionEnabled()Z

    move-result v10

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v13

    const/4 v14, 0x5

    if-nez v10, :cond_7

    if-eqz v13, :cond_9

    :cond_7
    if-lez v8, :cond_9

    const/16 v10, 0xa

    if-lt v8, v10, :cond_8

    iget v8, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-gt v8, v14, :cond_9

    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v12, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v13, :cond_9

    sget-object v8, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v3, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto :goto_3

    :cond_8
    iget v8, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-gt v8, v12, :cond_9

    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v12, v1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    if-eqz v13, :cond_9

    sget-object v8, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v3, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_9
    :goto_3
    iget v8, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-ge v8, v14, :cond_11

    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v8, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v8

    const/16 v10, -0x2710

    if-ne v8, v1, :cond_a

    if-eqz v8, :cond_b

    move v13, v11

    goto :goto_4

    :cond_a
    if-eq v8, v10, :cond_b

    move v13, v12

    goto :goto_4

    :cond_b
    move v13, v5

    :goto_4
    iget v15, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-lez v15, :cond_c

    if-nez v6, :cond_11

    sget-boolean v8, Lcom/android/systemui/CscRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    if-nez v8, :cond_11

    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget-object v8, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v8, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget v10, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    invoke-virtual {v8, v4, v10, v13}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showAlmostAtWipeDialog(III)V

    goto :goto_6

    :cond_c
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v11, "Too many unlock attempts; user "

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " will be wiped!"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string v11, "KeyguardSecSecurityContainer"

    invoke-static {v11, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v6, :cond_10

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    sget-object v11, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    if-nez v11, :cond_d

    new-instance v11, Lcom/android/keyguard/ResetDeviceUtils;

    invoke-direct {v11, v8}, Lcom/android/keyguard/ResetDeviceUtils;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    :cond_d
    sget-object v8, Lcom/android/keyguard/ResetDeviceUtils;->sResetDeviceUtils:Lcom/android/keyguard/ResetDeviceUtils;

    iget-object v11, v8, Lcom/android/keyguard/ResetDeviceUtils;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v11

    invoke-virtual {v11, v13}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v11

    if-ne v11, v13, :cond_e

    if-eqz v11, :cond_f

    const/4 v11, 0x3

    goto :goto_5

    :cond_e
    if-eq v11, v10, :cond_f

    move v11, v12

    goto :goto_5

    :cond_f
    move v11, v5

    :goto_5
    invoke-virtual {v8, v4, v13, v11}, Lcom/android/keyguard/ResetDeviceUtils;->wipeOut(III)V

    goto :goto_6

    :cond_10
    iget-object v8, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v8, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v8, v4, v13}, Lcom/android/keyguard/KeyguardSecurityContainer;->showWipeDialog(II)V

    :cond_11
    :goto_6
    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    iget-object v8, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v8, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v10, v8, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v10, :cond_12

    invoke-virtual {v10}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForDeviceDisabled()V

    :cond_12
    iget-object v8, v8, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v8, :cond_13

    invoke-virtual {v8}, Lcom/android/systemui/knox/EdmMonitor;->updateFailedUnlockAttemptForProfileDisabled()V

    :cond_13
    sget-boolean v8, Lcom/android/systemui/CscRune;->SECURITY_WARNING_WIPE_OUT_MESSAGE:Z

    iget-object v10, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardPluginController:Lcom/android/keyguard/KeyguardPluginControllerImpl;

    if-eqz v8, :cond_17

    iget v8, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-eq v8, v5, :cond_14

    if-ne v8, v14, :cond_17

    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v6}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v6}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v8

    invoke-virtual {v7, v1}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v7

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v6, v5, :cond_15

    goto :goto_7

    :cond_15
    const-string v9, "none"

    :goto_7
    invoke-virtual {v8, v7}, Lcom/android/keyguard/KeyguardTextBuilder;->updateSecurityMode(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    iget-object v5, v8, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f130893

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v8, Lcom/android/keyguard/KeyguardTextBuilder;->mDeviceType:Ljava/lang/String;

    iget-object v11, v8, Lcom/android/keyguard/KeyguardTextBuilder;->mSecurityType:Ljava/lang/String;

    filled-new-array {v7, v11, v9}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, v8, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    iget-object v9, v8, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "string"

    invoke-virtual {v7, v5, v11, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_16

    iget-object v7, v8, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v7, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8

    :cond_16
    const-string v6, "Can\'t find warning frp string id="

    const-string v7, "KeyguardTextBuilder"

    invoke-static {v5, v6, v7}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    const-string v5, ""

    :goto_8
    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v6, v5}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/android/keyguard/KeyguardPluginControllerImpl;->showWipeWarningDialog(Ljava/lang/String;)V

    goto :goto_9

    :cond_17
    if-eqz v6, :cond_18

    iget v6, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    if-ne v6, v5, :cond_18

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    iget v5, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mRemainingBeforeWipe:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Lcom/android/keyguard/KeyguardTextBuilder;->getWarningAutoWipeMessage(II)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_18

    iget-object v6, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v6, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {v6, v5}, Lcom/android/keyguard/KeyguardSecSecurityContainer;->showDialog(Ljava/lang/String;)V

    invoke-virtual {v10, v5}, Lcom/android/keyguard/KeyguardPluginControllerImpl;->showWipeWarningDialog(Ljava/lang/String;)V

    :cond_18
    :goto_9
    if-lez v2, :cond_19

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportPasswordLockout(II)V

    :cond_19
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getMaxFailedUnlockAttempts()I

    move-result v0

    if-lt v4, v0, :cond_1a

    invoke-interface {v3, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->updatePermanentLock(I)Z

    :cond_1a
    return-void
.end method

.method public final setOnDismissAction(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;)V
    .locals 1

    sget v0, Lcom/android/systemui/scene/shared/flag/SceneContainerFlag;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->sceneContainer()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDismissAction:Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCancelAction:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDismissActionExist(Z)V

    return-void
.end method

.method public final setSecurityContainerVisibility(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public final shouldEnableMenuKey()Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_SIM_PERM_DISABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isSimDisabledPermanently()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f05000d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v0

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/local/enable_menu_key"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz p0, :cond_1

    if-nez v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public final showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showMessage(Ljava/lang/CharSequence;Landroid/content/res/ColorStateList;Z)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object p3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p2, p3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public final showNextSecurityScreenOrFinish(ZIZLcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p4

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "showNextSecurityScreenOrFinish("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardSecSecurityContainer"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v6, 0x0

    if-eq v3, v4, :cond_0

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v3, v4, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Attempted to invoke showNextSecurityScreenOrFinish with securityMode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", but current mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result v4

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const/4 v8, 0x1

    if-eqz v4, :cond_1

    if-nez p3, :cond_1

    move-object v4, v7

    check-cast v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v9, v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mDualDarMonitor:Lcom/android/systemui/knox/DualDarMonitor;

    if-eqz v9, :cond_2

    invoke-static/range {p2 .. p2}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result v9

    const-string v10, "isVirtualUserId - userId : "

    const-string v11, ", ret : "

    const-string v12, "DualDarMonitor"

    invoke-static {v10, v2, v11, v9, v12}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)V

    if-eqz v9, :cond_2

    const-string v9, "Switch targetUserId "

    const-string v10, " to "

    invoke-static {v2, v9, v10}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4, v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getMainUserId(I)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4, v2}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getMainUserId(I)I

    move-result v2

    :cond_1
    move v4, v8

    goto :goto_0

    :cond_2
    move v4, v6

    :goto_0
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "User authentication is blocked by CC mode since it detects the device has been tampered"

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v6

    :cond_3
    sget-boolean v9, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v9, :cond_5

    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v10, v11, :cond_5

    :cond_4
    :goto_1
    :pswitch_0
    move v1, v8

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v10

    const-string v11, "LSE1001"

    const-string v12, "101"

    if-eqz v10, :cond_8

    if-eqz v9, :cond_6

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsSwipeBouncer:Z

    if-eqz v1, :cond_6

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto/16 :goto_7

    :cond_6
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isBiometricsAuthenticatedOnLock()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v5

    if-eqz v5, :cond_7

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;->EXTEND_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetailSkipBouncer(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;)V

    const-string v1, "3"

    invoke-static {v12, v11, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move v1, v6

    goto/16 :goto_8

    :cond_7
    if-eqz v1, :cond_4

    sget-object v1, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;->BIOMETRICS_UNLOCK_LOCK_STAY:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetailSkipBouncer(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$SkipBouncerReason;)V

    const-string v1, "4"

    invoke-static {v12, v11, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    sget-object v10, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    if-ne v10, v13, :cond_b

    invoke-virtual {v14, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    if-eqz v9, :cond_9

    if-ne v10, v1, :cond_9

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsSwipeBouncer:Z

    if-eqz v5, :cond_9

    sget-object v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_3

    :cond_9
    if-ne v10, v1, :cond_a

    const-string v1, "2"

    invoke-static {v12, v11, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move v1, v8

    goto :goto_4

    :cond_a
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :goto_3
    move v1, v6

    :goto_4
    move v15, v8

    move v8, v1

    move v1, v15

    goto/16 :goto_8

    :cond_b
    if-eqz v1, :cond_13

    sget-object v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$6;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v13}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v1, v1, v9

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isForgotPasswordView()Z

    move-result v1

    if-eqz v1, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showPrimarySecurityScreen()V

    goto :goto_7

    :pswitch_1
    invoke-virtual {v14, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v11, v6}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v11

    invoke-virtual {v9, v11}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    check-cast v9, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    invoke-virtual {v9, v2}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isUserSetup(I)Z

    move-result v9

    if-nez v9, :cond_d

    goto :goto_5

    :cond_d
    move v9, v6

    goto :goto_6

    :cond_e
    :goto_5
    move v9, v8

    :goto_6
    check-cast v7, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v7}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isLockScreenDisabledbyKNOX()Z

    move-result v7

    if-eqz v7, :cond_f

    goto/16 :goto_1

    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v11, "showNextSecurityScreenOrFinish mCurrentSecurityMode : "

    invoke-direct {v7, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " -> securityMode : "

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v1, v10, :cond_10

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    goto :goto_7

    :cond_10
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v5

    if-eqz v5, :cond_11

    if-nez v9, :cond_12

    :cond_11
    invoke-interface {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz v9, :cond_4

    :cond_12
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_13
    :goto_7
    move v1, v8

    move v8, v6

    :goto_8
    if-eqz v8, :cond_14

    if-nez v4, :cond_14

    invoke-interface {v3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isDualDarInnerAuthRequired(I)Z

    move-result v3

    if-eqz v3, :cond_14

    new-instance v1, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;

    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/KeyguardSecSecurityContainerController;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    return v6

    :cond_14
    if-eqz v8, :cond_16

    if-nez p3, :cond_16

    if-eqz v1, :cond_15

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setAuthDetail(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    :cond_15
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mKeyguardSecurityCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-interface {v0, v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->finish(I)V

    :cond_16
    return v8

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showSecurityScreen("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") current = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardSecSecurityContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    sget-object v2, Lcom/android/keyguard/KeyguardSecSecurityContainerController$6;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    goto/16 :goto_5

    :cond_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p1, v0, :cond_8

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v2, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v0

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v2, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    iget-object v4, v2, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    if-eqz v4, :cond_7

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v2, Lcom/android/systemui/knox/EdmMonitor;->knoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v4, v4, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "telephony_subscription_service"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, ""

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move-object v4, v7

    :goto_1
    if-eqz v5, :cond_4

    move-object v7, v5

    :cond_4
    filled-new-array {v6, v4, v7}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "isSubIdLockedByAdmin subId=%d, subInfo=%s, iccId=%s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "EdmMonitor"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    iget-object v2, v2, Lcom/android/systemui/knox/EdmMonitor;->mLockedIccIdList:[Ljava/lang/String;

    array-length v4, v2

    move v6, v3

    :goto_2
    if-ge v6, v4, :cond_7

    aget-object v7, v2, v6

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    :goto_3
    const/4 v3, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "reportSecurityMode SimPin -> None simPinSubId = %d, isLockedByMDM=%b"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    :goto_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->dispatchSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->showSecurityScreen(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins()V

    return-void
.end method

.method public final startAppearAnimation()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/KeyguardSecurityContainerController;->startAppearAnimation()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->startLockIconAnimation(Z)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mLeftArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->startArrowViewAnimation(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardArrowViewController;->mRightArrow:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->startArrowViewAnimation(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->isInvalidArrowView()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "lockscreen_pref"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getBouncerOneHandPosition()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const-string v0, "Center"

    goto :goto_0

    :cond_0
    const-string v0, "Right"

    goto :goto_0

    :cond_1
    const-string v0, "Left"

    :goto_0
    const-string v1, "LSS1072"

    invoke-interface {p0, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_2
    return-void
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mBiometricViewController:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->startLockIconAnimation(Z)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowVisibility(Z)V

    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsDisappearAnimation:Z

    :cond_1
    return v0
.end method

.method public final updateLayoutMargins()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutMargins(I)V

    return-void
.end method

.method public final updateLayoutMargins(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->isPassword(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const v2, 0x10502c4

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iput v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const/4 v2, 0x1

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNeedsInput:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v6, :cond_3

    move p1, v3

    move v1, p1

    goto :goto_6

    :cond_3
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_2
    if-eq p1, v2, :cond_6

    if-eq p1, v4, :cond_6

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz p1, :cond_5

    move p1, v3

    goto :goto_3

    :cond_5
    iget p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_3
    move v1, v3

    goto :goto_6

    :cond_6
    if-eqz v0, :cond_7

    move p1, v3

    goto :goto_4

    :cond_7
    move p1, v1

    :goto_4
    if-eqz v0, :cond_8

    move v1, v3

    :cond_8
    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz v0, :cond_9

    goto :goto_5

    :cond_9
    iget v3, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :cond_a
    :goto_5
    move v7, v3

    move v3, p1

    move p1, v7

    :goto_6
    invoke-virtual {p0, v3, v1, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutParams(III)V

    return-void

    :cond_b
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v6, 0x7f07053f

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v1, v0

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v0

    if-nez v0, :cond_c

    move v0, v2

    goto :goto_7

    :cond_c
    move v0, v3

    :goto_7
    if-eq p1, v2, :cond_f

    const/4 v2, 0x2

    if-eq p1, v2, :cond_f

    if-eq p1, v4, :cond_f

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p1, :cond_d

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz p1, :cond_d

    :goto_8
    move v1, v3

    goto :goto_9

    :cond_d
    if-eqz v0, :cond_e

    goto :goto_9

    :cond_e
    iget v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    goto :goto_9

    :cond_f
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz p1, :cond_10

    goto :goto_8

    :cond_10
    iget p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    move v1, p1

    :goto_9
    invoke-virtual {p0, v3, v3, v1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutParams(III)V

    return-void

    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_12

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_12

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNeedsInput:Z

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v1, v0, :cond_12

    move p1, v3

    move v0, p1

    goto :goto_f

    :cond_12
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v1

    if-nez v1, :cond_13

    move v1, v2

    goto :goto_a

    :cond_13
    move v1, v3

    :goto_a
    invoke-interface {v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->isHiddenInputContainer()Z

    move-result v5

    if-eqz v5, :cond_14

    move v5, v3

    goto :goto_b

    :cond_14
    iget v5, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_b
    if-eq p1, v2, :cond_19

    if-eq p1, v4, :cond_17

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result p1

    xor-int/2addr p1, v2

    and-int/2addr p1, v1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    if-eqz v1, :cond_15

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsImeShown:Z

    if-eqz v1, :cond_15

    move v0, v3

    goto :goto_c

    :cond_15
    if-eqz p1, :cond_16

    goto :goto_c

    :cond_16
    iget v0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mNavigationBarHeight:I

    :goto_c
    move p1, v0

    move v0, v3

    goto :goto_f

    :cond_17
    if-eqz v1, :cond_18

    goto :goto_d

    :cond_18
    move v0, v5

    :goto_d
    move p1, v3

    move v3, v0

    move v0, v5

    goto :goto_f

    :cond_19
    if-eqz v1, :cond_1a

    goto :goto_e

    :cond_1a
    move v0, v5

    :goto_e
    move p1, v3

    move v3, v5

    :goto_f
    invoke-virtual {p0, v3, v0, p1}, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->updateLayoutParams(III)V

    return-void
.end method

.method public final updateLayoutParams(III)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/KeyguardSecSecurityContainer;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    if-nez v0, :cond_0

    const-string p0, "KeyguardSecSecurityContainer"

    const-string/jumbo p1, "updateLayoutParams securityViewFlipper is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v8, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v8}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v9, 0x0

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getId()I

    move-result v2

    const v4, 0x7f070597

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v8, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    goto :goto_3

    :cond_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v9

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v4, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->KNOXGUARD:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v2, v4, :cond_3

    move v2, v3

    goto :goto_1

    :cond_3
    move v2, v9

    :goto_1
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getId()I

    move-result v4

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mIsPassword:Z

    invoke-static {v1, v2}, Lcom/android/keyguard/SecurityUtils;->getMainSecurityViewFlipperSize(Landroid/content/Context;Z)I

    move-result v1

    goto :goto_2

    :cond_4
    move v1, v9

    :goto_2
    invoke-virtual {v8, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    goto :goto_3

    :cond_5
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getId()I

    move-result v1

    invoke-virtual {v8, v1, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainWidth(II)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    sget v2, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v1

    if-ne v1, v3, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v9

    :goto_4
    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getId()I

    move-result v3

    if-eqz v1, :cond_7

    move v7, p2

    goto :goto_5

    :cond_7
    move v7, p1

    :goto_5
    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v4, 0x6

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getId()I

    move-result v3

    if-eqz v1, :cond_8

    move v7, p1

    goto :goto_6

    :cond_8
    move v7, p2

    :goto_6
    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v4, 0x7

    move-object v2, v8

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getId()I

    move-result v3

    const/4 v6, 0x4

    const/4 v4, 0x4

    move v7, p3

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getId()I

    move-result v3

    const/4 v6, 0x3

    const/4 v4, 0x3

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIIII)V

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getId()I

    move-result p1

    invoke-virtual {v8, p1, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v8, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_ARROW_VIEW:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainerController;->mKeyguardArrowViewController:Lcom/android/keyguard/KeyguardArrowViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardArrowViewController;->updateArrowView()V

    :cond_9
    return-void
.end method
