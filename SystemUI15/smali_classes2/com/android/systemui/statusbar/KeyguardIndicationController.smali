.class public Lcom/android/systemui/statusbar/KeyguardIndicationController;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

.field public final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field public final mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mBatteryDefender:Z

.field public final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field public mBatteryLevel:I

.field public mBatteryPresent:Z

.field public mBiometricErrorMessageToShowOnScreenOn:Landroid/util/Pair;

.field public mBiometricMessage:Ljava/lang/CharSequence;

.field public mBiometricMessageFollowUp:Ljava/lang/CharSequence;

.field public final mBiometricMessageInteractor:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;

.field public mBiometricMessageSource:Landroid/hardware/biometrics/BiometricSourceType;

.field public final mBouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mBroadcastReceiver:Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

.field public mChangingType:I

.field public mChargingSpeed:I

.field public mChargingTimeRemaining:J

.field public mChargingWattage:I

.field final mCoExAcquisitionMsgIdsToShowCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public mCoExFaceAcquisitionMsgIdsToShow:Ljava/util/Set;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

.field public final mDeviceEntryFingerprintAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public mDozing:Z

.field public final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

.field public mFaceLockedOutThisAuthSession:Z

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public mForceIsDismissible:Z

.field public final mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

.field public final mHideBiometricMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

.field public final mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

.field public mIncompatibleCharger:Z

.field public mIndicationArea:Landroid/view/ViewGroup;

.field public final mIndicationHelper:Lcom/android/systemui/keyguard/util/IndicationHelper;

.field public mInited:Z

.field public mInitialTextColorState:Landroid/content/res/ColorStateList;

.field public mIsActiveDreamLockscreenHosted:Z

.field final mIsActiveDreamLockscreenHostedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final mIsFingerprintEngagedCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mIsNeededShowChargingType:Z

.field public final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public final mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

.field public final mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public mOrganizationOwnedDevice:Z

.field public mPowerCharged:Z

.field public mPowerPluggedIn:Z

.field public mPowerPluggedInDock:Z

.field public mPowerPluggedInWired:Z

.field public mPowerPluggedInWireless:Z

.field public mProtectedFullyCharged:Z

.field public mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mScreenObserver:Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

.field public mSleepChargingEvent:Ljava/lang/String;

.field public mSleepChargingEventFinishTime:Ljava/lang/String;

.field public mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

.field public mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

.field public mTransientIndication:Ljava/lang/CharSequence;

.field public mTrustAgentErrorMessage:Ljava/lang/CharSequence;

.field public mTrustGrantedIndication:Ljava/lang/CharSequence;

.field public mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mUpdatePosition:Ljava/util/function/Consumer;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public mVisible:Z

.field public final mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/biometrics/AuthController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;Landroid/app/AlarmManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/util/IndicationHelper;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p17

    move-object/from16 v2, p23

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsNeededShowChargingType:Z

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEvent:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mSleepChargingEventFinishTime:Ljava/lang/String;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsActiveDreamLockscreenHostedCallback:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;

    const/4 v4, 0x1

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCoExAcquisitionMsgIdsToShowCallback:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;

    const/4 v4, 0x2

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsFingerprintEngagedCallback:Ljava/util/function/Consumer;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$1;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$5;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    move-object v4, p1

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    move-object v4, p8

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    move-object/from16 v4, p9

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object v4, p4

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object v4, p5

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    move-object v4, p6

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v4, p7

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    new-instance v4, Lcom/android/systemui/util/wakelock/SettableWakeLock;

    const-string v5, "Doze:KeyguardIndication"

    move-object v6, p3

    invoke-virtual {p3, v5}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->setTag(Ljava/lang/String;)Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/util/wakelock/WakeLock$Builder;->build()Lcom/android/systemui/util/wakelock/WakeLock;

    move-result-object v5

    const-string v6, "KeyguardIndication"

    invoke-direct {v4, v5, v6}, Lcom/android/systemui/util/wakelock/SettableWakeLock;-><init>(Lcom/android/systemui/util/wakelock/WakeLock;Ljava/lang/String;)V

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mWakeLock:Lcom/android/systemui/util/wakelock/SettableWakeLock;

    move-object/from16 v4, p10

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v4, p11

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v4, p12

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v4, p13

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v4, p15

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v4, p14

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v4, p18

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v4, p19

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v4, p21

    iput-object v4, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    invoke-virtual {v1, v3}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v1, p25

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBouncerMessageInteractor:Lcom/android/systemui/bouncer/domain/interactor/BouncerMessageInteractor;

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v1, p27

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationHelper:Lcom/android/systemui/keyguard/util/IndicationHelper;

    move-object/from16 v1, p29

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageInteractor:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;

    move-object/from16 v1, p30

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDeviceEntryFingerprintAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-virtual/range {p20 .. p20}, Lcom/android/systemui/biometrics/FaceHelpMessageDeferralFactory;->create()Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFaceAcquiredMessageDeferral:Lcom/android/systemui/biometrics/FaceHelpMessageDeferral;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    move-object v3, p2

    invoke-direct {v1, p0, p2}, Lcom/android/systemui/statusbar/KeyguardIndicationController$2;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;Landroid/os/Looper;)V

    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    new-instance v3, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    invoke-direct {v3, v2, v4, v6, v1}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    new-instance v3, Lcom/android/systemui/util/AlarmTimeout;

    new-instance v4, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;I)V

    invoke-direct {v3, v2, v4, v6, v1}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v3, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideBiometricMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    return-void
.end method


# virtual methods
.method public final canUnlockWithFingerprint()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getCurrentUser$1()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Landroid/hardware/biometrics/BiometricSourceType;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    const-string v0, "KeyguardIndicationController:"

    const-string v1, "  mInitialTextColorState: "

    invoke-static {p1, v0, v1}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mPowerPluggedInWired: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    const-string v2, "  mPowerPluggedIn: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    const-string v2, "  mPowerCharged: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    const-string v2, "  mChargingSpeed: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    const-string v2, "  mChargingWattage: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingWattage:I

    const-string v2, "  mMessageToShowOnScreenOn: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricErrorMessageToShowOnScreenOn:Landroid/util/Pair;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mDozing: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    const-string v2, "  mTransientIndication: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mBiometricMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mBiometricMessageFollowUp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  mBatteryLevel: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    const-string v2, "  mBatteryPresent: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryPresent:Z

    const-string v2, "  mIsActiveDreamLockscreenHosted: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsActiveDreamLockscreenHosted:Z

    const-string v2, "  AOD text: "

    invoke-static {v0, v1, p1, v2}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  computePowerIndication(): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryDefender:Z

    const/high16 v2, 0x42c80000    # 100.0f

    if-eqz v1, :cond_1

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f130847

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIncompatibleCharger:Z

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f13084a

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerCharged:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f130823

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_5

    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWired:Z

    const v4, 0x7f130845

    const v5, 0x7f130838

    if-eqz v3, :cond_9

    iget v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingSpeed:I

    if-eqz v3, :cond_7

    const/4 v6, 0x2

    if-eq v3, v6, :cond_5

    if-eqz v1, :cond_e

    :goto_2
    move v4, v5

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    const v3, 0x7f13083a

    :goto_3
    move v4, v3

    goto :goto_4

    :cond_6
    const v3, 0x7f130846

    goto :goto_3

    :cond_7
    if-eqz v1, :cond_8

    const v3, 0x7f13083b

    goto :goto_3

    :cond_8
    const v3, 0x7f130848

    goto :goto_3

    :cond_9
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInWireless:Z

    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    const v3, 0x7f13083c

    goto :goto_3

    :cond_a
    const v3, 0x7f13084b

    goto :goto_3

    :cond_b
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedInDock:Z

    if-eqz v3, :cond_d

    if-eqz v1, :cond_c

    const v3, 0x7f130839

    goto :goto_3

    :cond_c
    const v3, 0x7f130849

    goto :goto_3

    :cond_d
    if-eqz v1, :cond_e

    goto :goto_2

    :cond_e
    :goto_4
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v3

    iget v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBatteryLevel:I

    int-to-float v5, v5

    div-float/2addr v5, v2

    float-to-double v5, v5

    invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    iget-wide v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mChargingTimeRemaining:J

    invoke-static {v1, v5, v6}, Landroid/text/format/Formatter;->formatShortElapsedTimeRoundingUpToMinutes(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_f
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "  trustGrantedIndication: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getTrustGrantedIndication()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "    mCoExFaceHelpMsgIdsToShow="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCoExFaceAcquisitionMsgIdsToShow:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    if-eqz p0, :cond_10

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public final getCurrentUser$1()I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    return p0
.end method

.method public getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$BaseKeyguardCallback;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method public getTrustGrantedIndication()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustGrantedIndication:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v0, 0x7f13083d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final hideBiometricMessage()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageSource:Landroid/hardware/biometrics/BiometricSourceType;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideBiometricMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateBiometricMessage()V

    :cond_1
    return-void
.end method

.method public hideTransientIndication()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->cancel()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateTransient()V

    :cond_0
    return-void
.end method

.method public hideTransientIndicationDelayed(J)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    return-void
.end method

.method public final init()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInited:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInited:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getKeyguardCallback()Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/KeyguardIndicationController$4;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardStateCallback:Lcom/android/systemui/statusbar/KeyguardIndicationController$5;

    invoke-virtual {v2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$4;->onDozingChanged(Z)V

    return-void
.end method

.method public setDozing(Z)V
    .locals 0

    return-void
.end method

.method public setIndicationArea(Landroid/view/ViewGroup;)V
    .locals 6

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    const v0, 0x7f0a059b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v0, 0x7f0a05a5

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    const v0, 0x7f0a059c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/logging/KeyguardLogger;Lcom/android/systemui/flags/FeatureFlags;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    :cond_1
    new-instance p1, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda5;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    invoke-static {p1}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOrganizationOwnedDevice:Z

    if-eqz p1, :cond_2

    new-instance p1, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda6;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastReceiver:Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$3;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastReceiver:Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.android.app.routines.MODE_INFO_FOR_LOCKSCREEN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBroadcastReceiver:Lcom/android/systemui/statusbar/KeyguardIndicationController$3;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    :cond_3
    sget-object p1, Lcom/android/systemui/flags/Flags;->INSTANCE:Lcom/android/systemui/flags/Flags;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageInteractor:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;

    iget-object v0, v0, Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor;->coExFaceAcquisitionMsgIdsToShow:Lcom/android/systemui/deviceentry/domain/interactor/BiometricMessageInteractor$special$$inlined$map$3;

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mCoExAcquisitionMsgIdsToShowCallback:Ljava/util/function/Consumer;

    invoke-static {p1, v0, v1}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDeviceEntryFingerprintAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

    iget-object v0, v0, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isEngaged:Lkotlinx/coroutines/flow/StateFlow;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIsFingerprintEngagedCallback:Ljava/util/function/Consumer;

    invoke-static {p1, v0, p0}, Lcom/android/systemui/util/kotlin/JavaAdapterKt;->collectFlow(Landroid/view/View;Lkotlinx/coroutines/flow/Flow;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public setNowBarExpandMode(Z)V
    .locals 0

    return-void
.end method

.method public setPowerPluggedIn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mPowerPluggedIn:Z

    return-void
.end method

.method public setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "KeyguardIndication"

    const-string/jumbo v0, "setVisible() false in dozing"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mVisible:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mIndicationArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideTransientMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndication()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTopIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_4

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLifeStyleIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;->clearMessages()V

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mOrganizationOwnedDevice:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBackgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mLockScreenIndicationView:Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_8
    return-void
.end method

.method public final showActionToUnlock()V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getCurrentUser$1()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAlternateBouncerInteractor:Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/bouncer/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnabledAndEnrolled()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFaceAuthenticated()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v1, 0x7f13084d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    const v1, 0x7f13015a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {v1, v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->getCurrentUser$1()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f130855

    if-eqz v0, :cond_c

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFaceAuthenticated()Z

    move-result v0

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUdfpsSupported()Z

    move-result v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v5

    const/4 v6, 0x1

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_5
    move v2, v6

    :cond_6
    const v5, 0x7f130856

    const v7, 0x7f13082c

    if-eqz v1, :cond_8

    if-eqz v0, :cond_8

    if-eqz v2, :cond_7

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {p0, v0, v1, v2, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_2

    :cond_9
    if-eqz v1, :cond_b

    if-eqz v2, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_2

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3, v6}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_2

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v3, v3, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    :cond_d
    :goto_2
    return-void
.end method

.method public final showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageSource:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageSource:Landroid/hardware/biometrics/BiometricSourceType;

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p4, v0, :cond_1

    sget-object p4, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p3, p4, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/logging/KeyguardLogger;->logDropFaceMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object p4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageSource:Landroid/hardware/biometrics/BiometricSourceType;

    if-eqz p4, :cond_2

    if-nez p3, :cond_2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    iput-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageSource:Landroid/hardware/biometrics/BiometricSourceType;

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHandler:Lcom/android/systemui/statusbar/KeyguardIndicationController$2;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    const-wide/16 p1, 0x1450

    goto :goto_1

    :cond_3
    const-wide/16 p1, 0x1004

    :goto_1
    iget-object p3, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mHideBiometricMessageHandler:Lcom/android/systemui/util/AlarmTimeout;

    const/4 p4, 0x2

    invoke-virtual {p3, p1, p2, p4}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateBiometricMessage()V

    return-void
.end method

.method public final showErrorMessageNowOrLater(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setKeyguardMessage(Ljava/lang/String;Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v0, v0, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/util/Pair;

    invoke-direct {p2, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricErrorMessageToShowOnScreenOn:Landroid/util/Pair;

    :goto_0
    return-void
.end method

.method public showTransientIndication(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showTransientIndication(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showTransientIndication(Ljava/lang/CharSequence;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    const-wide/16 v0, 0x1004

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->hideTransientIndicationDelayed(J)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->updateTransient()V

    return-void
.end method

.method public final showTrustAgentErrorMessage(Ljava/lang/CharSequence;)V
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustAgentErrorMessage:Ljava/lang/CharSequence;

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDeviceEntryFingerprintAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;

    iget-object v1, v1, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFingerprintAuthInteractor;->isEngaged:Lkotlinx/coroutines/flow/StateFlow;

    invoke-interface {v1}, Lkotlinx/coroutines/flow/StateFlow;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDeviceEntryFaceAuthInteractor:Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;

    invoke-interface {v2}, Lcom/android/systemui/deviceentry/domain/interactor/DeviceEntryFaceAuthInteractor;->isRunning()Z

    move-result v2

    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustAgentErrorMessage:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->showBiometricMessage(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/hardware/biometrics/BiometricSourceType;Z)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardLogger:Lcom/android/keyguard/logging/KeyguardLogger;

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/keyguard/logging/KeyguardLogger;->delayShowingTrustAgentError(Ljava/lang/CharSequence;ZZ)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTrustAgentErrorMessage:Ljava/lang/CharSequence;

    :goto_1
    return-void
.end method

.method public final updateBiometricMessage()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0xa28

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessage:Ljava/lang/CharSequence;

    iput-object v4, v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mMessage:Ljava/lang/CharSequence;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mForceAccessibilityLiveRegionAssertive:Z

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mMinVisibilityMillis:Ljava/lang/Long;

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    iput-object v4, v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    new-instance v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mBiometricMessageFollowUp:Ljava/lang/CharSequence;

    iput-object v4, v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mMinVisibilityMillis:Ljava/lang/Long;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    iput-object p0, v3, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_1
    return-void
.end method

.method public updateLifeStyleInfo(Landroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final updateTransient()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mDozing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mTransientIndication:Ljava/lang/CharSequence;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;

    invoke-direct {v1}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;-><init>()V

    iput-object p0, v1, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mMessage:Ljava/lang/CharSequence;

    const-wide/16 v2, 0xa28

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v1, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mMinVisibilityMillis:Ljava/lang/Long;

    iget-object p0, v0, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->mInitialTextColorState:Landroid/content/res/ColorStateList;

    iput-object p0, v1, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/KeyguardIndication$Builder;->build()Lcom/android/systemui/keyguard/KeyguardIndication;

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mRotateTextViewController:Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/KeyguardIndicationRotateTextViewController;->hideIndication(I)V

    :goto_0
    return-void
.end method
