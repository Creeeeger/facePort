.class public final Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;
.super Lcom/android/keyguard/KeyguardUpdateMonitor;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;


# instance fields
.field public final RemoteLockString:[Ljava/lang/String;

.field public mActiveRemoteLockIndex:I

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public mAuthHandler:Landroid/os/Handler;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

.field public final mBiometricFailedAttempts:Landroid/util/SparseIntArray;

.field public mBiometricId:I

.field public final mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

.field public final mBiometricType:Landroid/util/SparseIntArray;

.field public final mBiometricUnlockControllerLazy:Ldagger/Lazy;

.field public final mBiometricsFace:Landroid/util/SparseBooleanArray;

.field public final mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

.field public final mBroadcastReceiver:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;

.field public mCarrierLock:Z

.field public mCocktailBarWindowType:I

.field public final mContext:Landroid/content/Context;

.field public mCoverState:Lcom/samsung/android/cover/CoverState;

.field public mCredentialType:I

.field public mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

.field public final mDesktopManagerLazy:Ldagger/Lazy;

.field public mDeviceOwnerInfoText:Ljava/lang/String;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mDisableCamera:Z

.field public mDisabledBiometricBySecurityDialog:Z

.field public final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field public final mDisplayListener:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;

.field public final mESimRemoved:[Z

.field public mFMMLock:Z

.field public final mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mFaceMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

.field public final mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

.field public final mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

.field public final mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

.field public mFingerprintAuthenticationSequence:I

.field public mFocusWindow:I

.field public mForceStartFinger:Z

.field public mFpInDisplayState:I

.field public mFpMaskToken:Landroid/os/IBinder;

.field public final mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final mFpMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

.field public final mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field public mHasFocus:Z

.field public mHasLoggedOnceAuditlog:Z

.field public mHasRedactedNotifications:Z

.field public mIsDismissActionExist:Z

.field public mIsDispatching:Z

.field public mIsDreamingForBiometrics:Z

.field public mIsDualDarInnerAuthRequired:Z

.field public mIsDualDarInnerAuthShowing:Z

.field public mIsDynamicLockViewMode:Z

.field public mIsEarlyWakeUp:Z

.field public mIsFODStrictMode:Z

.field public mIsFPCanceledByForegroundApp:Z

.field public mIsFPCanceledByProximity:Z

.field public mIsFaceReady:Z

.field public mIsFaceWidgetFullScreenMode:Z

.field public mIsFpLeave:Z

.field public mIsKidsModeRunning:Z

.field public mIsNotiStarShown:Z

.field public mIsNowBarExpandMode:Z

.field public mIsOutOfService:Z

.field public mIsOwnerInfoEnabled:Z

.field public mIsPanelExpandingStarted:Z

.field public mIsQsFullyExpanded:Z

.field public mIsRunningBlackMemo:Z

.field public mIsScreenSaverRunning:Z

.field public mIsShortcutLaunchInProgress:Z

.field public mIsSkipFPResponse:Z

.field public mIsStartFacePossible:Z

.field public mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

.field public mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

.field public final mKeyguardEditModeControllerLazy:Ldagger/Lazy;

.field public mKeyguardUnlocking:Z

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

.field public mLockoutAttemptDeadline:J

.field public mLockoutAttemptTimeout:J

.field public mLockoutBiometricAttemptDeadline:J

.field public mLockoutBiometricAttemptTimeout:J

.field public mLockscreenDisabled:Z

.field public final mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

.field public mMaximumFailedPasswordsForWipe:I

.field public mNeedSubBioAuth:Z

.field public mNeedSubWofFpAuth:Z

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field private final mOneHandModeSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field public mOwnerInfoText:Ljava/lang/String;

.field public mPermanentLock:Z

.field public final mPluginAODManagerLazy:Ldagger/Lazy;

.field public final mPluginFaceWidgetManagerLazy:Ldagger/Lazy;

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mRemoteLockInfo:Ljava/util/ArrayList;

.field public mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

.field public mSIPShown:Z

.field public mScreenOrientationNoSensorValue:Z

.field public final mSecureLockChangedCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;

.field public mSemFaceCancelSignal:Landroid/os/CancellationSignal;

.field public final mServiceStatesBySlotId:Ljava/util/HashMap;

.field private final mSettingsCallbackForUPSM:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field public final mSettingsValueListForPSM:[Landroid/net/Uri;

.field public mSimDisabledPermanently:Z

.field public final mSimPinPassed:[Z

.field public mSystemReady:Z

.field public final mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public mUdfpsFingerDown:Z

.field public final mViewMediatorCallbackLazy:Ldagger/Lazy;

.field public final mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

.field public final mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method public static synthetic $r8$lambda$5lhNrxzXYmtVuTwfeiQe_uCItoQ(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;Z)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showFingerprintBlockPopup onCheckedChanged :  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/SettingsHelper;->setFingerprintSensorPopupDoNotShowAgain(Z)V

    return-void
.end method

.method public static $r8$lambda$kJTDZ_s3Y5_-kkqejQUfg2hm3D0(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addMaskViewForOpticalFpSensor()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmSettingsHelper(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/internal/app/IBatteryStats;Landroid/app/NotificationManager;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;Lcom/android/systemui/util/SettingsHelper;Landroid/app/AlarmManager;Landroid/os/PowerManager;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Landroid/view/IWindowManager;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/systemui/keyguard/DisplayLifecycle;Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/ActiveUnlockConfig;Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;Lcom/android/internal/logging/UiEventLogger;Ljavax/inject/Provider;Landroid/app/trust/TrustManager;Landroid/telephony/SubscriptionManager;Landroid/os/UserManager;Landroid/service/dreams/IDreamManager;Landroid/app/admin/DevicePolicyManager;Landroid/hardware/SensorPrivacyManager;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Landroid/hardware/face/FaceManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/BiometricManager;Lcom/android/systemui/deviceentry/data/repository/FaceWakeUpTriggersConfig;Landroid/telephony/CarrierConfigManager;Lcom/android/systemui/statusbar/policy/DevicePostureController;Ljava/util/Optional;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Landroid/app/IActivityTaskManager;)V
    .locals 37
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/app/IBatteryStats;",
            "Landroid/app/NotificationManager;",
            "Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;",
            "Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;",
            "Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Landroid/app/AlarmManager;",
            "Landroid/os/PowerManager;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Landroid/view/IWindowManager;",
            "Ldagger/Lazy;",
            "Ldagger/Lazy;",
            "Lcom/android/systemui/keyguard/DisplayLifecycle;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/settings/UserTracker;",
            "Landroid/os/Looper;",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/dump/DumpManager;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/internal/widget/LockPatternUtils;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/telephony/TelephonyListenerManager;",
            "Lcom/android/internal/jank/InteractionJankMonitor;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Lcom/android/keyguard/ActiveUnlockConfig;",
            "Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Ljavax/inject/Provider;",
            "Landroid/app/trust/TrustManager;",
            "Landroid/telephony/SubscriptionManager;",
            "Landroid/os/UserManager;",
            "Landroid/service/dreams/IDreamManager;",
            "Landroid/app/admin/DevicePolicyManager;",
            "Landroid/hardware/SensorPrivacyManager;",
            "Landroid/telephony/TelephonyManager;",
            "Landroid/content/pm/PackageManager;",
            "Landroid/hardware/face/FaceManager;",
            "Landroid/hardware/fingerprint/FingerprintManager;",
            "Landroid/hardware/biometrics/BiometricManager;",
            "Lcom/android/systemui/deviceentry/data/repository/FaceWakeUpTriggersConfig;",
            "Landroid/telephony/CarrierConfigManager;",
            "Lcom/android/systemui/statusbar/policy/DevicePostureController;",
            "Ljava/util/Optional<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/android/systemui/shared/system/TaskStackChangeListeners;",
            "Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;",
            "Landroid/app/IActivityTaskManager;",
            ")V"
        }
    .end annotation

    move-object/from16 v2, p0

    move-object/from16 v0, p17

    move-object/from16 v15, p20

    move-object/from16 v1, p0

    move-object/from16 v3, p17

    move-object/from16 v4, p18

    move-object/from16 v5, p19

    move-object/from16 v6, p20

    move-object/from16 v7, p22

    move-object/from16 v8, p23

    move-object/from16 v9, p24

    move-object/from16 v10, p25

    move-object/from16 v11, p26

    move-object/from16 v12, p27

    move-object/from16 v13, p28

    move-object/from16 v14, p29

    move-object/from16 v15, p30

    move-object/from16 v16, p31

    move-object/from16 v17, p32

    move-object/from16 v18, p33

    move-object/from16 v19, p34

    move-object/from16 v20, p35

    move-object/from16 v21, p36

    move-object/from16 v22, p37

    move-object/from16 v23, p38

    move-object/from16 v24, p39

    move-object/from16 v25, p40

    move-object/from16 v26, p41

    move-object/from16 v27, p42

    move-object/from16 v2, p43

    move-object/from16 v28, p44

    move-object/from16 v29, p45

    move-object/from16 v30, p46

    move-object/from16 v31, p47

    move-object/from16 v32, p48

    move-object/from16 v33, p49

    move-object/from16 v34, p50

    move-object/from16 v35, p51

    move-object/from16 v36, p52

    invoke-direct/range {v1 .. v36}, Lcom/android/keyguard/KeyguardUpdateMonitor;-><init>(Landroid/hardware/face/FaceManager;Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/internal/jank/InteractionJankMonitor;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/ActiveUnlockConfig;Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;Lcom/android/internal/logging/UiEventLogger;Ljavax/inject/Provider;Landroid/app/trust/TrustManager;Landroid/telephony/SubscriptionManager;Landroid/os/UserManager;Landroid/service/dreams/IDreamManager;Landroid/app/admin/DevicePolicyManager;Landroid/hardware/SensorPrivacyManager;Landroid/telephony/TelephonyManager;Landroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/hardware/biometrics/BiometricManager;Lcom/android/systemui/deviceentry/data/repository/FaceWakeUpTriggersConfig;Landroid/telephony/CarrierConfigManager;Lcom/android/systemui/statusbar/policy/DevicePostureController;Ljava/util/Optional;Lcom/android/systemui/shared/system/TaskStackChangeListeners;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Landroid/app/IActivityTaskManager;)V

    const/4 v1, 0x0

    move-object/from16 v2, p0

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    const/4 v3, 0x2

    new-array v4, v3, [Z

    iput-object v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimPinPassed:[Z

    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDismissActionExist:Z

    sget-object v5, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_DEFAULT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    iput-object v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    const/4 v5, -0x1

    iput v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    const/4 v5, 0x1

    iput-boolean v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    const/4 v6, 0x3

    iput v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mUdfpsFingerDown:Z

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisabledBiometricBySecurityDialog:Z

    iput v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    invoke-direct {v6, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    const-wide/16 v6, 0x0

    iput-wide v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    iput-wide v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    iput-wide v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    iput-wide v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;

    invoke-direct {v6, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSecureLockChangedCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;

    new-instance v6, Landroid/util/SparseIntArray;

    invoke-direct {v6}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricType:Landroid/util/SparseIntArray;

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsCallbackForUPSM:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v6, v3, [Landroid/net/Uri;

    const-string/jumbo v7, "ultra_powersaving_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v4

    const-string v7, "emergency_mode"

    invoke-static {v7}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v5

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsValueListForPSM:[Landroid/net/Uri;

    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;

    invoke-direct {v6, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v6, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayListener:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;

    new-array v3, v3, [Z

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mESimRemoved:[Z

    iput v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpInDisplayState:I

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    iput v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCocktailBarWindowType:I

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda12;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOneHandModeSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNowBarExpandMode:Z

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mServiceStatesBySlotId:Ljava/util/HashMap;

    iput-boolean v5, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

    invoke-direct {v3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricLockoutResetRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$5;

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    const/4 v5, 0x1

    invoke-direct {v3, v2, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    iput-boolean v4, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z

    const-string v3, "FMM"

    const-string v4, "CARRIERLOCK"

    const-string v5, "RMM"

    const-string v6, "KNOXGUARD"

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->RemoteLockString:[Ljava/lang/String;

    move-object/from16 v3, p3

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    iput-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    move-object/from16 v3, p39

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v3, p26

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v3, p44

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    move-object/from16 v3, p43

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    move-object/from16 v3, p23

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v3, p10

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    move-object/from16 v3, p5

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLooperSlowLogController:Lcom/android/systemui/uithreadmonitor/LooperSlowLogController;

    move-object/from16 v3, p6

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v3, p7

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v3, p8

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v3, p1

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    move-object/from16 v3, p2

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNotificationManager:Landroid/app/NotificationManager;

    move-object/from16 v3, p12

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginFaceWidgetManagerLazy:Ldagger/Lazy;

    move-object/from16 v3, p16

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    move-object/from16 v3, p15

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    const-class v3, Landroid/app/trust/TrustManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/trust/TrustManager;

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    new-instance v3, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x64

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 p21, v3

    move/from16 p22, v6

    move/from16 p23, v7

    move/from16 p24, v8

    move/from16 p25, v9

    move/from16 p26, v4

    move/from16 p27, v5

    move/from16 p28, v10

    move/from16 p29, v11

    invoke-direct/range {p21 .. p29}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;-><init>(IIIIIIZZ)V

    iput-object v3, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v4, "package"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    move-object/from16 v4, p20

    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.samsung.intent.action.USB_RESTRICTION_STATE"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    const-string v8, "android.permission.MANAGE_USB"

    move-object/from16 p1, p20

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    invoke-virtual/range {p1 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.sec.android.intent.action.BLACK_MEMO"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v5, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-virtual {v3, v5}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v4, v3, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    invoke-static/range {p17 .. p17}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/SemCocktailBarManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda17;

    invoke-direct {v3, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda17;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/cocktailbar/SemCocktailBarManager;->registerStateListener(Lcom/samsung/android/cocktailbar/SemCocktailBarManager$CocktailBarStateChangedListener;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    :cond_1
    const-string v0, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "com.samsung.kidshome.broadcast.DEFAULT_HOME_CHANGE_PERMISSION"

    move-object/from16 p1, p20

    move-object/from16 p2, v1

    move-object/from16 p3, v0

    move-object/from16 p4, v3

    move-object/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 p7, v7

    invoke-virtual/range {p1 .. p7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "com.samsung.intent.action.SET_SCREEN_RATIO_VALUE"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDualDARInnerLockscreenRequirement(I)V

    move-object/from16 v0, p9

    iput-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    iget-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v0, :cond_2

    const-string v0, "lock_settings"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0

    iput-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_2
    iget-object v0, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :try_start_0
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$7;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$7;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    invoke-interface {v0, v1}, Lcom/android/internal/widget/ILockSettings;->setShellCommandCallback(Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "setShellCommandCallback RemoteException! "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v0, "com.samsung.intent.action.BCS_REQUEST"

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    move-object/from16 v1, p11

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    const-string v0, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    const-string v1, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v0

    iget-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBroadcastReceiver:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$4;

    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_3

    move-object/from16 v1, p13

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWindowManagerService:Landroid/view/IWindowManager;

    :cond_3
    move-object/from16 v1, p14

    iput-object v1, v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardEditModeControllerLazy:Ldagger/Lazy;

    return-void
.end method

.method public static addAdditionalLog(Ljava/lang/String;)V
    .locals 1

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {v0, p0}, Lcom/android/systemui/keyguard/SecurityLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static containsFlag(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public final addFailedFMMUnlockAttempt(I)V
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->addFailedFMMUnlockAttempt(I)J

    :cond_0
    return-void
.end method

.method public final addMaskViewForOpticalFpSensor()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "KeyguardFingerprint"

    const-string v1, "semAddMaskView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semAddMaskView()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    const/4 v0, 0x1

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFocusForBiometrics(IZ)V

    :cond_0
    return-void
.end method

.method public final checkValidPrevCredentialType()Z
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v0, -0x26ab

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public final clearESimRemoved()V
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mESimRemoved:[Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput-boolean v1, p0, v0

    aput-boolean v1, p0, v1

    return-void
.end method

.method public final clearFailedUnlockAttempts(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->delete(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFodStrictMode(Z)V

    :cond_1
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/UiOffloadThread;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/UiOffloadThread;

    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda30;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;ZI)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final clearFingerBadQualityCounts()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->delete(I)V

    return-void
.end method

.method public final createChannels()V
    .locals 4

    new-instance v0, Landroid/app/NotificationChannel;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1308c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const-string v3, "fbe_channel_id"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public final dispatchCallback(Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda9;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public final dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    sget v4, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->MODE_FLAG_ENABLED:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isMode(I)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->DEBUG:Z

    if-eqz v3, :cond_2

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda36;

    invoke-direct {v3, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda36;-><init>(Ljava/util/function/Consumer;Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "dispatchCallback "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move-object v5, p2

    goto :goto_1

    :cond_1
    const-string v5, ""

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " / "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x5

    const-string v5, "BioUnlock"

    invoke-static {v3, v4, v5, v1, v2}, Lcom/android/systemui/util/LogUtil;->execTime(Ljava/lang/Runnable;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    return-void
.end method

.method public final dispatchCoverState(Lcom/samsung/android/cover/CoverState;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x5dd

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final dispatchDlsBiometricMode(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x57a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchDlsViewMode(I)V
    .locals 2

    const-string v0, "dispatchDlsViewMode(), mode="

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x57b

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchDreamingStarted()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStarted()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final dispatchDreamingStopped()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchDreamingStopped()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final dispatchDualDarInnerLockScreenState(IZ)V
    .locals 2

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthShowing:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x462

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchForceStartFingerprint()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "dispatchForceStartFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "did not start force start fingerprint"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x459

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchLockModeChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x44f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public final dispatchNotiStarState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x404

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchSecureState(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x44e

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, p1, :cond_0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x450

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public final dispatchStartSubscreenBiometric(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "dispatchStartSubscreenBiometric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_0

    const-string p0, "did not start subscreen biometric in non interactive state."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "did not start subscreen biometric in not unlocking allowed state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    const-string v0, "authSinceBoot"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    return-void

    :cond_2
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFingerprint(Z)Z

    move-result v0

    const-string v1, "finger"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "face"

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFace()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 p1, 0x461

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchStartSubscreenFingerprint()V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "dispatchStartSubscreenFingerprint"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWofOnFold()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "did not start subscreen fingerprint in wof off."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v2

    if-nez v2, :cond_1

    const-string p0, "did not start subscreen biometric in not unlocking allowed state."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x460

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchStartedEarlyWakingUp(I)V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x3ea

    invoke-virtual {p0, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final dispatchStartedWakingUp(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStartedWakingUp(I)V

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    const/16 v1, 0x68

    if-eq v1, p1, :cond_0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final dispatchStatusBarState(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x455

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchStopSubscreenBiometric()V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "dispatchStopSubscreenBiometric"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getWofType()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    const-string p0, "did not stop subscreen biometric because already mNeedSubBioAuth is false and subscreen wof is on. wofType = "

    invoke-static {v1, p0, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x461

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final dispatchSubScreenBouncerStateChanged(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "dispatchSubScreenBouncerStateChanged mKeyguardShowing = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mKeyguardOccluded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mBouncerFullyShown = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    const-string v2, " isBouncerShowing = "

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    const/4 v3, 0x0

    if-nez v2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    invoke-virtual {p0, v0, v1, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sendKeyguardStateUpdated(ZZZZ)V

    return-void
.end method

.method public final dumpAllUsers(Ljava/io/PrintWriter;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "  Current user id="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintSupported()Z

    move-result v4

    const-string v6, "KeyguardFingerprintListen"

    const-string v7, "    enabledByUser="

    const-string v8, "    trustManaged="

    const-string v9, "    strongAuthFlags="

    const-string v10, "    listening: actual="

    const-string v11, "    possible="

    const-string v12, "    disabled(DPM)="

    const-string v13, "    authSinceBoot="

    const-string v14, "    auth\'d="

    const-string v15, "    allowed="

    const-string v5, "  Fingerprint state (user="

    move-object/from16 v16, v2

    const-string v2, ")"

    move-object/from16 v17, v6

    if-eqz v4, :cond_4

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v4

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    move-object/from16 v18, v7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "    isFingerprintClass3="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintClass3()Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "    areAllFpAuthenticatorsRegistered="

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iget-boolean v7, v7, Lcom/android/systemui/biometrics/AuthController;->mAllFingerprintAuthenticatorsRegistered:Z

    invoke-static {v5, v7, v1, v15}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v6, :cond_0

    iget-boolean v7, v6, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mIsStrongBiometric:Z

    invoke-virtual {v0, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x1

    goto :goto_1

    :cond_0
    const/4 v7, 0x0

    :goto_1
    invoke-static {v5, v7, v1, v14}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v6, :cond_1

    iget-boolean v6, v6, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    goto :goto_2

    :cond_1
    const/4 v6, 0x0

    :goto_2
    invoke-static {v5, v6, v1, v13}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintDisabled(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " expected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFingerprint(Z)Z

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v9}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    mFingerprintLockedOut="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOut:Z

    const-string v6, "    mFingerprintLockedOutPermanent="

    invoke-static {v4, v5, v1, v6}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    move-object/from16 v6, v18

    invoke-static {v4, v5, v1, v6}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    mKeyguardOccluded="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    const-string v7, "    mIsDreaming="

    invoke-static {v4, v5, v1, v7}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-static {v4, v5, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v4, v4, Lcom/android/systemui/biometrics/AuthController;->mSidefpsProps:Ljava/util/List;

    if-eqz v4, :cond_3

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "        sfpsEnrolled="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v18, v6

    const/4 v6, 0x0

    invoke-virtual {v7, v6}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v7

    iget-object v6, v5, Lcom/android/systemui/biometrics/AuthController;->mSidefpsProps:Ljava/util/List;

    if-nez v6, :cond_2

    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    iget-object v5, v5, Lcom/android/systemui/biometrics/AuthController;->mSfpsEnrolledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v7}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    :goto_3
    const-string v6, "        shouldListenForSfps="

    invoke-static {v4, v5, v1, v6}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFingerprint(Z)Z

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    move-object/from16 v18, v6

    :goto_4
    new-instance v4, Lcom/android/systemui/dump/DumpsysTableLogger;

    sget-object v5, Lcom/android/keyguard/KeyguardFingerprintListenModel;->TABLE_HEADERS:Ljava/util/List;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintListenBuffer:Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;->toList()Ljava/util/List;

    move-result-object v6

    move-object/from16 v7, v17

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    goto :goto_5

    :cond_4
    move-object/from16 v18, v7

    move-object/from16 v7, v17

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_5

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintSensorProperties:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    mFingerprintSensorProperties.isEmpty="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintSensorProperties:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "    mFpm.isHardwareDetected="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Lcom/android/systemui/dump/DumpsysTableLogger;

    sget-object v5, Lcom/android/keyguard/KeyguardFingerprintListenModel;->TABLE_HEADERS:Ljava/util/List;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintListenBuffer:Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;

    invoke-virtual {v6}, Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;->toList()Ljava/util/List;

    move-result-object v6

    invoke-direct {v4, v7, v5, v6}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v4, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    :cond_5
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceSupported()Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v4

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "  Face authentication state (user="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "    isFaceClass3="

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceClass3()Z

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v5, :cond_6

    iget-boolean v6, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mIsStrongBiometric:Z

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    :goto_6
    invoke-static {v2, v6, v1, v14}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz v5, :cond_7

    iget-boolean v5, v5, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    if-eqz v5, :cond_7

    const/4 v5, 0x1

    goto :goto_7

    :cond_7
    const/4 v5, 0x0

    :goto_7
    invoke-static {v2, v5, v1, v13}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " expected=("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFace()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    isNonStrongBiometricAllowedAfterIdleTimeout="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isNonStrongBiometricAllowedAfterIdleTimeout(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserTrustIsManaged(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    mFaceLockedOutPermanent="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

    move-object/from16 v5, v18

    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBiometricEnabledForUser:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    mSecureCameraLaunched="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    const-string v5, "    mPrimaryBouncerFullyShown="

    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    const-string v5, "    mNeedsSlowUnlockTransition="

    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    invoke-static {v2, v4, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    goto :goto_8

    :cond_8
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v4, :cond_9

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "  Face state (user="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    mFaceSensorProperties.isEmpty="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceSensorProperties:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    mFaceManager.isHardwareDetected="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v4, :cond_8a

    invoke-virtual {v4}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isHardwareDetected()Z

    move-result v4

    goto :goto_face_detection

    :cond_8a
    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v4, :cond_8b

    invoke-virtual {v4}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v4

    goto :goto_face_detection

    :cond_8b
    const/4 v4, 0x0

    :goto_face_detection
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/dump/DumpsysTableLogger;

    sget-object v4, Lcom/android/keyguard/KeyguardFingerprintListenModel;->TABLE_HEADERS:Ljava/util/List;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintListenBuffer:Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardFingerprintListenModel$Buffer;->toList()Ljava/util/List;

    move-result-object v5

    const-string v6, "KeyguardFaceListen"

    invoke-direct {v2, v6, v4, v5}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    :cond_9
    :goto_8
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "ActiveUnlockRunning="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/app/trust/TrustManager;->isActiveUnlockRunning(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Lcom/android/systemui/dump/DumpsysTableLogger;

    sget-object v4, Lcom/android/keyguard/KeyguardActiveUnlockModel;->TABLE_HEADERS:Ljava/util/List;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveUnlockTriggerBuffer:Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer;

    new-instance v7, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    iget-object v5, v5, Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer;->buffer:Lcom/android/systemui/common/buffer/RingBuffer;

    invoke-direct {v7, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    sget-object v5, Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer$toList$1;->INSTANCE:Lcom/android/keyguard/KeyguardActiveUnlockModel$Buffer$toList$1;

    new-instance v8, Lkotlin/sequences/TransformingSequence;

    invoke-direct {v8, v7, v5}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v8}, Lkotlin/sequences/SequencesKt___SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object v5

    const-string v7, "KeyguardActiveUnlockTriggers"

    invoke-direct {v2, v7, v4, v5}, Lcom/android/systemui/dump/DumpsysTableLogger;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v2, v1}, Lcom/android/systemui/dump/DumpsysTableLogger;->printTableData(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "  Security state (user="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") - cached state"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    getBiometricType="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricType:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "    isFingerprintOptionEnabled="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v5

    if-ne v5, v7, :cond_a

    const/4 v5, 0x1

    goto :goto_9

    :cond_a
    move v5, v6

    :goto_9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "    isFaceOptionEnabled="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v7, 0x100

    invoke-virtual {v5, v7, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_b

    move v5, v7

    goto :goto_a

    :cond_b
    move v5, v6

    :goto_a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "    getFailedUnlockAttempt="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "    mCredentialType="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    const-string v6, "    mPrevCredentialType="

    invoke-static {v2, v5, v1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v6, -0x26ab

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "    isSecure="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "    isAutoPinConfirmEnabled="

    invoke-static {v1, v2, v5}, Lcom/android/keyguard/CarrierTextController$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->isAutoPinConfirmEnabled(I)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v5, "    mDisableCamera="

    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    const-string v5, "    mMaximumFailedPasswordsForWipe="

    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    const-string v5, "    getUserCanSkipBouncer="

    invoke-static {v2, v4, v1, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getUserCanSkipBouncer(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    getUserHasTrust="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    isUserUnlocked="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v3, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "    hasSeparateChallenge="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v4, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v2, v16

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public final enableSecurityDebug()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enableSecurityDebug by "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setSecurityDebugLevel(I)V

    return-void
.end method

.method public final getBiometricType()I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricType:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public final getBiometricType(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricType:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public final getCoverState()Lcom/samsung/android/cover/CoverState;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final getCredentialTypeForUser(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    if-ne p1, v0, :cond_0

    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p0

    return p0
.end method

.method public final getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    return-object p0
.end method

.method public final getDeviceOwnerInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    return-object p0
.end method

.method public final getDismissActionType()Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-object p0
.end method

.method public final getFaceAuthenticated(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFaceStrongBiometric()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mIsStrongBiometric:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFailedBiometricUnlockAttempts()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {p0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final getFailedBiometricUnlockAttempts(I)I
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public final getFailedFMMUnlockAttempt(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getFailedFMMUnlockAttempt(I)J

    move-result-wide p0

    long-to-int p0, p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getFailedUnlockAttempts(I)I
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result p0

    return p0
.end method

.method public final getFastBioUnlockController()Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    return-object p0
.end method

.method public final getFingerprintAuthenticated()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFingerprintAuthenticated(I)Z

    move-result p0

    return p0
.end method

.method public final getFingerprintAuthenticated(I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getFingerprintStrongBiometric()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mIsStrongBiometric:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final getKeyguardBatteryMessage(Landroid/content/Intent;)Landroid/os/Message;
    .locals 16

    move-object/from16 v0, p1

    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v1, "plugged"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v1, "level"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v1, "android.os.extra.CHARGING_STATUS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string v1, "max_charging_current"

    const/4 v8, -0x1

    invoke-virtual {v0, v1, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v9, "charge_type"

    invoke-virtual {v0, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const-string v9, "max_charging_voltage"

    invoke-virtual {v0, v9, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string v10, "online"

    invoke-virtual {v0, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string v11, "hv_charger"

    invoke-virtual {v0, v11, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    const-string v12, "current_event"

    invoke-virtual {v0, v12, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string v13, "charger_type"

    invoke-virtual {v0, v13, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v13

    const-string v15, "misc_event"

    invoke-virtual {v0, v15, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/high16 v15, 0x1000000

    and-int/2addr v0, v15

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-gtz v9, :cond_1

    const v9, 0x4c4b40

    :cond_1
    if-lez v1, :cond_2

    div-int/lit16 v1, v1, 0x3e8

    div-int/lit16 v9, v9, 0x3e8

    mul-int/2addr v9, v1

    move-object/from16 v0, p0

    move v8, v9

    goto :goto_1

    :cond_2
    move-object/from16 v0, p0

    :goto_1
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    new-instance v1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    move-object v3, v1

    move v9, v10

    move v10, v11

    move v11, v12

    move v12, v13

    move v13, v2

    invoke-direct/range {v3 .. v14}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;-><init>(IIIIIIZIIZI)V

    const/16 v2, 0x12e

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    return-object v0
.end method

.method public final getKeyguardBatteryStatus()Lcom/android/systemui/statusbar/KeyguardBatteryStatus;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    return-object p0
.end method

.method public final getLockoutAttemptDeadline()J
    .locals 8

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    return-wide v0

    :cond_1
    return-wide v2
.end method

.method public final getLockoutBiometricAttemptDeadline()J
    .locals 14

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    cmp-long v0, v5, v3

    if-gez v0, :cond_1

    iget-wide v7, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    cmp-long v0, v7, v1

    if-nez v0, :cond_2

    :cond_1
    iget-wide v7, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    add-long/2addr v3, v7

    cmp-long v0, v5, v3

    if-lez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide v5

    :cond_3
    const-string v0, "Incorrect biometric authentication attempts ("

    cmp-long v1, v5, v1

    if-lez v1, :cond_4

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v13

    invoke-virtual {p0, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    const-class v4, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    const-string v11, "KeyguardSecUpdateMonitorImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") limit reached"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v9, 0x1

    const/4 v7, 0x5

    const/4 v8, 0x1

    invoke-static/range {v7 .. v13}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_4
    if-gtz v1, :cond_5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasLoggedOnceAuditlog:Z

    :cond_5
    :goto_0
    return-wide v5
.end method

.method public final getMaxFailedUnlockAttempts()I
    .locals 1

    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    const/16 v0, 0x32

    if-nez p0, :cond_1

    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const-string p0, "persist.lock.max_attempts"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getOwnerInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    return-object p0
.end method

.method public final getPrevCredentialType()I
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v0, -0x26ab

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p0

    return p0
.end method

.method public final getRemainingAttempt(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAutoWipe()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getRemainingAttemptsBeforeWipe()I

    move-result p0

    const-string v1, "getRemainingAttempt type : "

    const-string v2, ", failedAttempts : "

    const-string v3, ", remainingAttempts : "

    invoke-static {p1, v0, v1, v2, v3}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {p0, v2, v1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    const/16 v1, 0xa

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    if-lt v0, p1, :cond_3

    const/16 p1, 0x9

    if-gt v0, p1, :cond_3

    return p0

    :cond_1
    if-ge p0, v1, :cond_3

    return p0

    :cond_2
    if-gt p0, v1, :cond_3

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getRemainingAttemptsBeforePermanentLock()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getMaxFailedUnlockAttempts()I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public final getRemainingAttemptsBeforeWipe()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAutoWipe()Z

    move-result v1

    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/16 p0, 0x14

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    if-lez p0, :cond_2

    sub-int/2addr p0, v0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    return p0
.end method

.method public final getRemoteLockInfo()Lcom/android/internal/widget/RemoteLockInfo;
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/RemoteLockInfo;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRemoteLockType()I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    if-ltz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/RemoteLockInfo;

    iget p0, p0, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public final getUserCanSkipBouncer(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_1
    sget-object p1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object p1, p1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    iget p1, p1, Lcom/android/systemui/knox/CustomSdkMonitor;->mKnoxCustomLockScreenOverrideMode:I

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->forceIsDismissibleIsKeepingDeviceUnlocked()Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    :goto_0
    move v1, v2

    :cond_4
    return v1
.end method

.method public final getUserUnlockedWithBiometricAndIsBypassing(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final handleBatteryUpdate(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V
    .locals 10

    instance-of v0, p1, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleBatteryUpdate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v2

    if-nez v2, :cond_0

    iget v2, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->plugged:I

    if-eq v2, v1, :cond_0

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBatteryInfo:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v2}, Lcom/android/internal/app/IBatteryStats;->computeChargeTimeRemaining()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->isPluggedIn()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    iget v6, v2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    iget v7, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->status:I

    if-eq v6, v7, :cond_2

    move v6, v1

    goto :goto_0

    :cond_2
    move v6, v5

    :goto_0
    if-ne v4, v3, :cond_d

    if-eqz v6, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v4, v2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    iget v6, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->level:I

    if-eq v4, v6, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_5

    iget-boolean v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    iget-boolean v6, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->highVoltage:Z

    if-eq v4, v6, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_6

    iget v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    iget v6, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->online:I

    if-eq v4, v6, :cond_6

    goto :goto_1

    :cond_6
    if-eqz v3, :cond_7

    iget v4, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    if-lez v4, :cond_7

    iget v6, v2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->swellingMode:I

    if-eq v6, v4, :cond_7

    goto :goto_1

    :cond_7
    if-eqz v3, :cond_8

    iget v4, v2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    iget v6, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->chargingStatus:I

    if-eq v4, v6, :cond_8

    goto :goto_1

    :cond_8
    if-eqz v3, :cond_9

    iget-wide v6, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_9

    iget-wide v8, v2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    cmp-long v4, v8, v6

    if-eqz v4, :cond_9

    goto :goto_1

    :cond_9
    if-eqz v3, :cond_a

    iget v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    iget v6, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSuperFastCharger:I

    if-eq v4, v6, :cond_a

    goto :goto_1

    :cond_a
    if-eqz v3, :cond_b

    iget v4, v2, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSlowCharger:I

    iget v6, v0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->mSlowCharger:I

    if-eq v4, v6, :cond_b

    goto :goto_1

    :cond_b
    if-eqz v3, :cond_c

    iget v3, v0, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    iget v2, v2, Lcom/android/settingslib/fuelgauge/BatteryStatus;->maxChargingWattage:I

    if-eq v3, v2, :cond_c

    goto :goto_1

    :cond_c
    move v1, v5

    :cond_d
    :goto_1
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    if-eqz v1, :cond_f

    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;

    const/4 v1, 0x2

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;-><init>(Ljava/lang/Object;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto :goto_2

    :cond_e
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleBatteryUpdate(Lcom/android/settingslib/fuelgauge/BatteryStatus;)V

    :cond_f
    :goto_2
    return-void
.end method

.method public final handleDevicePolicyManagerStateChanged(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleDevicePolicyManagerStateChanged(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDualDARInnerLockscreenRequirement(I)V

    return-void
.end method

.method public final handleDreamingStateChanged(I)V
    .locals 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eq v1, p1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleDreamingStateChanged() dreaming : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    const-string v3, " -> "

    const-string v4, "KeyguardUpdateMonitor"

    invoke-static {v1, v2, v3, p1, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setScreenSaverRunningState()V

    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    if-eqz v1, :cond_1

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_DREAM_STARTED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsStartFacePossible:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_DREAM_STARTED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final handleFaceAuthFailed()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->reportFailedBiometricUnlockAttempt(I)V

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_FAILED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public final handleFaceAuthenticated(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    :cond_1
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-string v0, "KeyguardFingerprint"

    const-string v1, "Face onAuthenticationSucceeded. FP will be stop!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    :cond_2
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2, p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;-><init>(IZLjava/lang/Object;)V

    const-string v1, "onBiometricAuthenticated"

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz p1, :cond_3

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    :cond_3
    return-void
.end method

.method public final handleFaceError(ILjava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    const-string v1, "KeyguardFace"

    if-nez v0, :cond_0

    const-string p0, "onAuthenticationError(), Face is not running"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    const-string p0, "onAuthenticationError(), FACE_ERROR_CANCELED ignore"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v0, 0x2713

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    if-eqz v0, :cond_2

    const-string p0, "onAuthenticationError(), FACE_ERROR_CAMERA_FAILURE ignore"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "onAuthenticationError(), errorCode="

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", errString="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1308ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1308a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    const-string p2, ""

    :cond_3
    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_FACE_ERROR:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    const v1, 0x186a1

    if-ne p1, v1, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07148f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    const/16 v3, 0x31

    invoke-virtual {v1, v3, v0, v2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_4
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(ILjava/lang/String;I)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public final handleFingerprintAcquired(I)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleFingerprintAcquired( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "  )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2712

    if-eq p1, v3, :cond_1

    const/16 v4, 0x2714

    if-eq p1, v4, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFpLeave:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFpLeave:Z

    :goto_0
    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    if-eqz v4, :cond_2

    if-ne p1, v3, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v4, "FP Capture started. Therefore, the FP response will be skipped."

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/16 v1, 0x3ec

    if-eq p1, v1, :cond_3

    move v0, v2

    :cond_3
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/4 v4, 0x1

    invoke-direct {v1, p0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-static {v1, v0}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisabledBiometricBySecurityDialog:Z

    if-nez v0, :cond_4

    if-ne p1, v3, :cond_6

    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;

    const/4 v2, 0x1

    invoke-direct {v0, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    return-void

    :cond_5
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;

    const/4 v2, 0x2

    invoke-direct {v0, p1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public final handleFingerprintAuthFailed()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    const-string v2, "KeyguardFingerprint"

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    const-string p0, "handleFingerprintAuthFailed( skipped FP response )"

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "handleFingerprintAuthFailed( unlock is not allowed. )"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->reportFailedBiometricUnlockAttempt(I)V

    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const v1, 0x7f1308dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintHelp(ILjava/lang/String;)V

    return-void
.end method

.method public final handleFingerprintAuthenticated(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    const-string p1, "KeyguardFingerprint"

    const-string p2, "handleFingerprintAuthenticated( skipped FP response )"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFingerprintStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "KeyguardUpdateMonitor"

    const-string v2, "handleFingerprintAuthenticated : failedattempts.delete"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->delete(I)V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_4

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    :cond_4
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintAuthenticated(IZ)V

    return-void
.end method

.method public final handleFingerprintError(ILjava/lang/String;)V
    .locals 6

    const-string v0, "handleFingerprintError( "

    const-string v1, " )"

    const-string v2, "KeyguardFingerprint"

    invoke-static {p1, v0, v1, v2}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x1388

    const/4 v1, 0x0

    if-ne v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "handleFingerprintError( restart FingerPrint by FINGERPRINT_ERROR_NEED_TO_RETRY !! )"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->startListeningForFingerprint(Z)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x3ec

    if-ne v0, p1, :cond_2

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1308cc

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/16 v0, 0x3ea

    if-eq v0, p1, :cond_6

    const/16 v0, 0x3eb

    if-ne v0, p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e9

    if-ne v0, p1, :cond_5

    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1308ce

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1308d1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_5
    const/16 v0, 0x3ed

    if-ne v0, p1, :cond_7

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1308cf

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_6
    :goto_0
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const v0, 0x7f1308cd

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    invoke-virtual {v0, v3, v4, v5, v1}, Landroid/os/PowerManager;->userActivity(JII)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x5

    if-ne p1, v0, :cond_8

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_8

    const-string v0, "mIsFPCanceledByForegroundApp true"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByForegroundApp:Z

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    :cond_8
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFingerprintError(ILjava/lang/String;)V

    return-void
.end method

.method public final handleFingerprintHelp(ILjava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    const/4 v4, 0x0

    const-string v5, "KeyguardFingerprint"

    if-eqz v3, :cond_0

    iput-boolean v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    const-string v0, "handleFingerprintHelp( skipped FP response )"

    invoke-static {v5, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v3, -0x1

    const/4 v6, 0x1

    if-eq v1, v3, :cond_1

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v1, "handleFingerprintHelp( unlock is not allowed. )"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    return-void

    :cond_1
    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    const/4 v8, 0x0

    const/16 v9, 0x3ec

    const/4 v10, 0x2

    const-wide/16 v11, 0x0

    if-eqz v7, :cond_2

    iget-boolean v7, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    if-nez v7, :cond_2

    if-eq v1, v9, :cond_f

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6, v10, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    goto/16 :goto_6

    :cond_2
    if-eq v1, v9, :cond_11

    const/16 v7, 0x3ed

    if-ne v1, v7, :cond_3

    goto/16 :goto_8

    :cond_3
    if-eq v1, v3, :cond_8

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    add-int/2addr v1, v6

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3, v1}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleFingerprintHelp( Update Bad Quality Count = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-static {v2, v3, v5}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v2, 0x32

    if-lt v1, v2, :cond_5

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isFingerprintSensorPopupShowAgain()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const v5, 0x7f140613

    invoke-direct {v2, v3, v5}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    const v3, 0x7f1308dc

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const v3, 0x7f1308db

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda60;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    const v5, 0x7f13090f

    invoke-virtual {v2, v5, v3}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v14, Landroid/widget/CheckBox;

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const v6, 0x7f140603

    invoke-direct {v3, v5, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v14, v3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1308da

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    const v3, 0x7f07053c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v14, v3, v4, v4, v4}, Landroid/widget/CheckBox;->setPadding(IIII)V

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda61;

    invoke-direct {v3, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda61;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;)V

    invoke-virtual {v14, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v3, 0x7f0701c9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v15

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    const/16 v18, 0x0

    const/16 v16, 0x0

    move-object v13, v2

    invoke-virtual/range {v13 .. v18}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    :cond_4
    const-string v1, "Skip to show fingerprint sensor block popup"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {v0, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFodStrictMode(Z)V

    goto :goto_1

    :cond_5
    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFodStrictMode(Z)V

    :cond_6
    :goto_1
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_7

    invoke-interface {v0, v11, v12}, Lcom/android/systemui/plugins/aod/PluginAOD;->hideChargingInfoByFinger(J)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    move-result v3

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v7

    const-string v9, "handleFingerprintHelp( Failed count when screen off = "

    const-string v13, " ) - "

    invoke-static {v3, v9, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, ", t = "

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    move-result v5

    const/4 v9, 0x3

    if-ne v5, v9, :cond_9

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    :cond_9
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_4

    :cond_a
    rem-int/lit8 v2, v2, 0x5

    if-nez v2, :cond_e

    new-instance v2, Lcom/samsung/android/aod/AODToast$Builder;

    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardTextBuilder;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardTextBuilder;

    move-result-object v5

    iget-object v9, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v15}, [Ljava/lang/Object;

    move-result-object v15

    const v11, 0x7f110008

    invoke-virtual {v14, v11, v3, v15}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v11, " "

    invoke-static {v13, v3, v11}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v7, :cond_b

    sget-object v6, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    invoke-static {v3}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f130a0a

    invoke-static {v5, v6, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_b
    sget-object v7, Lcom/android/keyguard/KeyguardTextBuilder$2;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v7, v7, v9

    if-eq v7, v6, :cond_d

    if-eq v7, v10, :cond_c

    iget-object v5, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f130a08

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_c
    iget-object v5, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f130a07

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_d
    iget-object v5, v5, Lcom/android/keyguard/KeyguardTextBuilder;->mContext:Landroid/content/Context;

    const v6, 0x7f130a09

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-static {v3, v5}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-direct {v2, v3}, Lcom/samsung/android/aod/AODToast$Builder;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_e
    :goto_4
    move-object v2, v8

    :goto_5
    if-eqz v2, :cond_f

    const-wide/16 v11, 0x2710

    invoke-virtual {v2, v11, v12}, Lcom/samsung/android/aod/AODToast$Builder;->setDurationInMillis(J)Lcom/samsung/android/aod/AODToast$Builder;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/aod/AODManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/aod/AODManager;

    move-result-object v3

    invoke-virtual {v2}, Lcom/samsung/android/aod/AODToast$Builder;->build()Lcom/samsung/android/aod/AODToast;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/samsung/android/aod/AODManager;->requestAODToast(Lcom/samsung/android/aod/AODToast;)V

    goto :goto_7

    :cond_f
    :goto_6
    const-wide/16 v11, 0x0

    :goto_7
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;

    move-object/from16 v3, p2

    invoke-direct {v2, v1, v3, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda8;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v2, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/PluginAODManager;

    iget-object v0, v0, Lcom/android/systemui/doze/PluginAODManager;->mAODPlugin:Lcom/android/systemui/plugins/aod/PluginAOD;

    if-eqz v0, :cond_10

    invoke-interface {v0, v11, v12}, Lcom/android/systemui/plugins/aod/PluginAOD;->hideChargingInfoByFinger(J)V

    :cond_10
    return-void

    :cond_11
    :goto_8
    const-string v0, "handleFingerprintHelp( skip TSP block/unblock )"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final handleFinishedGoingToSleep(I)V
    .locals 3

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFinishedGoingToSleep(I)V

    return-void
.end method

.method public final handleKeyguardReset()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleKeyguardReset()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_RESET:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_0
    return-void
.end method

.method public final handlePhoneStateChanged(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handlePhoneStateChanged(Ljava/lang/String;)V

    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    :cond_0
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    return-void
.end method

.method public final handlePrimaryBouncerChanged(II)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    move p1, v3

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    if-ne p2, v3, :cond_1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handlePrimaryBouncerChanged primaryBouncerIsOrWillBeShowing="

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " primaryBouncerFullyShown="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {p1, p2, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v3, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p2, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceAuthenticated(I)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    :cond_2
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq p2, v3, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFingerprintAuthenticated(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFingerprintAuthenticated(Z)V

    :cond_3
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    if-eqz p1, :cond_4

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_5

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_5
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz p1, :cond_5a

    invoke-virtual {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->resetAuthenticationTimeout()Z

    goto :cond_6

    :cond_5a
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/hardware/face/FaceManager;->semResetAuthenticationTimeout()Z

    :cond_6
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-eqz p1, :cond_7

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    goto :goto_2

    :cond_7
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCredentialAttempted:Z

    :goto_2
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    const/4 v3, 0x0

    if-eq v0, p1, :cond_8

    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    invoke-virtual {p0, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_8
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-eq v1, p1, :cond_a

    if-eqz p1, :cond_9

    sget-object p1, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->UNLOCK_INTENT:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v0, "bouncerFullyShown"

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    :cond_9
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    const/4 v0, 0x6

    invoke-direct {p1, p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    invoke-virtual {p0, p1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_a
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_b

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->semShowBouncerScreen(I)I

    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez p1, :cond_c

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setUnlockingKeyguard(Z)V

    :cond_c
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setShortcutLaunchInProgress(Z)V

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_PRIMARY_BOUNCER_SHOWN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, p2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LSE1001"

    const-string v0, "1"

    invoke-static {p1, p2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    return-void
.end method

.method public final handleSecMessage(Landroid/os/Message;)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0x8

    const/16 v3, 0xa

    const/4 v4, 0x6

    const/4 v5, -0x1

    const/4 v6, 0x5

    const/16 v7, 0xb

    const/4 v8, 0x3

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x1

    iget v13, v1, Landroid/os/Message;->what:I

    const/16 v14, 0x404

    if-eq v13, v14, :cond_5e

    const/16 v14, 0x5dd

    const/4 v15, 0x0

    if-eq v13, v14, :cond_5b

    packed-switch v13, :pswitch_data_0

    packed-switch v13, :pswitch_data_1

    packed-switch v13, :pswitch_data_2

    packed-switch v13, :pswitch_data_3

    packed-switch v13, :pswitch_data_4

    packed-switch v13, :pswitch_data_5

    packed-switch v13, :pswitch_data_6

    goto/16 :goto_17

    :pswitch_0
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleDlsViewMode(), mode="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;-><init>(II)V

    invoke-virtual {v0, v2, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_1
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "handleDlsBiometricMode(), enabled="

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v2, v3, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDynamicLockViewMode:Z

    if-eq v2, v1, :cond_61

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDynamicLockViewMode:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_61

    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_DYNAMIC_LOCK:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v0, v10, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto/16 :goto_17

    :pswitch_2
    const-string v1, "handleLocaleChanged()"

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->createChannels()V

    :cond_1
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    const-string/jumbo v1, "updateCarrierTextInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v2, 0x451

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_17

    :pswitch_3
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(ZI)V

    invoke-virtual {v0, v2, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_4
    sget-boolean v1, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v1, :cond_3

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_61

    :cond_3
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginFaceWidgetManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    iget-object v0, v3, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    invoke-interface {v0, v3}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "PluginFaceWidgetManager"

    const-string v1, "Do not  initPluginModule in safe mode"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :cond_4
    iget-object v1, v3, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->mPluginManager:Lcom/android/systemui/plugins/PluginManager;

    const-class v4, Lcom/android/systemui/plugins/keyguardstatusview/PluginKeyguardStatusView;

    const-string v2, "com.samsung.systemui.action.PLUGIN_FACE_WIDGET"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Ljava/lang/String;Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;ZZI)V

    goto/16 :goto_17

    :pswitch_5
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;

    invoke-direct {v2, v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;-><init>(II)V

    invoke-virtual {v0, v2, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_6
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "com.android.settings"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->readSettingsDB()V

    :cond_5
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda43;

    invoke-direct {v2, v1, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda43;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_7
    iget-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v12, :cond_6

    move v9, v12

    :cond_6
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;

    invoke-direct {v1, v12, v9, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda29;-><init>(IZLjava/lang/Object;)V

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_8
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda43;

    invoke-direct {v2, v1, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda43;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_9
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda43;

    invoke-direct {v2, v1, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda43;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v2, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_a
    iget v1, v1, Landroid/os/Message;->arg1:I

    if-ne v1, v12, :cond_7

    move v9, v12

    :cond_7
    const-string v1, "handlePrimaryBouncerVisibilityChanged "

    const-string v2, "KeyguardUpdateMonitor"

    invoke-static {v1, v2, v9}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v9, :cond_8

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_8
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    invoke-direct {v1, v9, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(ZI)V

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_b
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v3, v1, Landroid/os/Message;->arg2:I

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    const-string v4, "handleServiceStateChange(subId="

    const-string v5, ", slotId="

    const-string v7, ", serviceState="

    invoke-static {v2, v3, v4, v5, v7}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardUpdateMonitor"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v4, Lcom/android/systemui/CscRune;->SECURITY_DISABLE_EMERGENCY_CALL_WHEN_OFFLINE:Z

    if-eqz v4, :cond_d

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mServiceStatesBySlotId:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mServiceStatesBySlotId:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/ServiceState;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    if-eq v7, v12, :cond_a

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    if-ne v7, v8, :cond_c

    :cond_a
    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v7

    if-ne v7, v12, :cond_9

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    if-eqz v4, :cond_9

    goto :goto_0

    :cond_b
    move v9, v12

    :cond_c
    :goto_0
    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    if-eq v3, v9, :cond_d

    iput-boolean v9, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "updateOfflineState isOutOfService : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    invoke-direct {v3, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {v0, v3, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_d
    invoke-super {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleServiceStateChange(ILandroid/telephony/ServiceState;)V

    goto/16 :goto_17

    :pswitch_c
    iget v2, v1, Landroid/os/Message;->arg1:I

    iget v1, v1, Landroid/os/Message;->arg2:I

    if-ne v1, v12, :cond_e

    move v9, v12

    :cond_e
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda45;

    invoke-direct {v1, v2, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda45;-><init>(IZ)V

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_d
    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SUB_SCREEN:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v0, v10, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto/16 :goto_17

    :pswitch_e
    invoke-virtual {v0, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    goto/16 :goto_17

    :pswitch_f
    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1}, Landroid/hardware/display/DisplayManager;->semIsFitToActiveDisplay()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFitToActiveDisplay:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateSmartViewFitToActiveDisplay : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFitToActiveDisplay:Z

    const-string v2, "DisplayLifecycle"

    invoke-static {v1, v0, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto/16 :goto_17

    :pswitch_10
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleFailToUnlockSimulation unlockType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "onAuthenticationFailed()"

    const-string v3, "finger"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string v3, "face"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :cond_f
    const-string v1, "KeyguardFace"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceAuthFailed()V

    goto/16 :goto_17

    :cond_10
    const-string v1, "KeyguardFingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAuthFailed()V

    goto/16 :goto_17

    :pswitch_11
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_SHELL:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    invoke-static {v2}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    const-string v2, "finger"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    const-string v2, "face"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    :cond_11
    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->setEnabled()V

    :cond_12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "onAuthenticationSucceeded()"

    const-string v3, "finger"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string v3, "face"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(I)V

    goto/16 :goto_17

    :cond_13
    const-string v1, "KeyguardFace"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    invoke-virtual {v0, v9, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceAuthenticated(IZ)V

    goto/16 :goto_17

    :cond_14
    const-string v1, "KeyguardFingerprint"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v9, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAuthenticated(IZ)V

    goto/16 :goto_17

    :pswitch_12
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v2, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "KeyguardUpdateMonitor"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "knoxguard"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1

    :cond_15
    move v5, v11

    goto :goto_1

    :sswitch_1
    const-string v4, "license"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_1

    :cond_16
    move v5, v8

    goto :goto_1

    :sswitch_2
    const-string v4, "clear"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_1

    :cond_17
    move v5, v10

    goto :goto_1

    :sswitch_3
    const-string v4, "admin"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_1

    :cond_18
    move v5, v12

    goto :goto_1

    :sswitch_4
    const-string v4, "rmm"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_1

    :cond_19
    move v5, v9

    :goto_1
    packed-switch v5, :pswitch_data_7

    goto/16 :goto_17

    :pswitch_13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "customer_package_name"

    const-string v4, "com.samsung.android.calendar"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string v2, "customer_app_name"

    const-string v4, "Samsung Calendar"

    invoke-virtual {v1, v2, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    new-instance v2, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v2, v8, v12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    const-string v4, "KnoxGuard Lockscreen"

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setBundle(Landroid/os/Bundle;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    const-string v2, "010-000-0000"

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    const-string v2, "This is Knoxguard Lock Test Message.\n\n\n\n\nKG LOCK\n\n\n\n\nKnoxGuard Lockscreen"

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setSkipSupportContainer(Z)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v4, v5}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setLockTimeOut(J)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setAllowFailCount(I)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    :try_start_0
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_17

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed setRemoteLock(KNOXGUARD)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :pswitch_14
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_61

    invoke-virtual {v0, v9, v12}, Lcom/android/systemui/knox/EdmMonitor;->setAdminLock(ZZ)V

    goto/16 :goto_17

    :pswitch_15
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v1, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v1, :cond_1a

    invoke-virtual {v1, v9, v9}, Lcom/android/systemui/knox/EdmMonitor;->setAdminLock(ZZ)V

    :cond_1a
    :try_start_1
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    if-eqz v1, :cond_61

    iput-boolean v9, v1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    invoke-interface {v1, v2, v4}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V

    iput-object v15, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_17

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed setRemoteLock"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :pswitch_16
    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_61

    invoke-virtual {v0, v12, v9}, Lcom/android/systemui/knox/EdmMonitor;->setAdminLock(ZZ)V

    goto/16 :goto_17

    :pswitch_17
    new-instance v1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    invoke-direct {v1, v10, v12}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    const-string v2, "Samsung Lockscreen"

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setClientName(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    const-string v2, "000-000-0000"

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    const-string v2, "This is RMM Lock Test Message."

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    :try_start_2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockSimulationInfo:Lcom/android/internal/widget/RemoteLockInfo;

    invoke-interface {v1, v2, v0}, Lcom/android/internal/widget/ILockSettings;->setRemoteLock(ILcom/android/internal/widget/RemoteLockInfo;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_17

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed setRemoteLock(RMM)"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :pswitch_18
    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "forceStartFingerprintAuthentication"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v12, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    invoke-virtual {v0, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    goto/16 :goto_17

    :pswitch_19
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    invoke-direct {v2, v1, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(ZI)V

    invoke-virtual {v0, v2, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_1a
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/keyguard/SecFaceMsg;

    invoke-static {v5}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v2

    move v4, v9

    :goto_2
    iget-object v5, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/keyguard/SecFaceMsg;

    const-string v6, "KeyguardFace"

    if-eqz v5, :cond_2d

    if-ne v5, v1, :cond_1b

    const-string v13, "handleFaceAuth faceMsg index = "

    const-string v14, " / type = "

    invoke-static {v4, v13, v14}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget v14, v1, Lcom/android/keyguard/SecFaceMsg;->type:I

    invoke-static {v14, v6, v13}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_1b
    iget v13, v5, Lcom/android/keyguard/SecFaceMsg;->type:I

    if-eqz v13, :cond_2b

    if-eq v13, v12, :cond_29

    if-eq v13, v10, :cond_25

    if-eq v13, v8, :cond_20

    if-eq v13, v11, :cond_1c

    goto :goto_2

    :cond_1c
    iget v5, v5, Lcom/android/keyguard/SecFaceMsg;->arg:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v13

    if-nez v13, :cond_1d

    const-string v5, "onAuthenticationAcquired(), Face is not running"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_1d
    iget-boolean v13, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceReady:Z

    if-nez v13, :cond_1e

    iput-boolean v12, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceReady:Z

    :cond_1e
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "onAuthenticationAcquired(), acquireInfo="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceAcquired(I)V

    iget-object v6, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveUnlockConfig:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object v6, v6, Lcom/android/keyguard/ActiveUnlockConfig;->faceAcquireInfoToTriggerBiometricFailOn:Ljava/util/Set;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1f

    sget-object v6, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "faceAcquireInfo-"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    :cond_1f
    :goto_3
    add-int/2addr v4, v12

    goto :goto_2

    :cond_20
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v5

    if-nez v5, :cond_21

    const-string v5, "onAuthenticationFailed(), Face is not running"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_21
    const-string v5, "onAuthenticationFailed()"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result v5

    if-eqz v5, :cond_22

    const-string v5, "bypass"

    goto :goto_4

    :cond_22
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mAlternateBouncerShowing:Z

    if-eqz v5, :cond_23

    const-string v5, "alternateBouncer"

    goto :goto_4

    :cond_23
    iget-boolean v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-eqz v5, :cond_24

    const-string v5, "bouncer"

    goto :goto_4

    :cond_24
    const-string/jumbo v5, "udfpsFpDown"

    :goto_4
    sget-object v6, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v13, "faceFailure-"

    invoke-virtual {v13, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceAuthFailed()V

    goto :goto_3

    :cond_25
    iget-object v5, v5, Lcom/android/keyguard/SecFaceMsg;->result:Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v13

    if-nez v13, :cond_26

    const-string v5, "onAuthenticationSucceeded(), Face is not running"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_26
    iget-boolean v13, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz v13, :cond_27

    const-string v5, "onAuthenticationSucceeded() - return, goingAway is true"

    invoke-static {v6, v5}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_27
    iget-object v13, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricUnlockControllerLazy:Ldagger/Lazy;

    invoke-interface {v13}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iget-object v13, v13, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getLockStayEnabled()Z

    move-result v13

    xor-int/2addr v13, v12

    iget-object v14, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-static {v14}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    invoke-direct {v8, v14, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-static {v8, v13}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    const-string v8, "onAuthenticationSucceeded()"

    invoke-static {v6, v8}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    invoke-virtual {v5}, Lcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationResult;->isStrongBiometric()Z

    move-result v5

    invoke-virtual {v0, v9, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceAuthenticated(IZ)V

    new-instance v5, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    invoke-direct {v5, v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-static {v5, v12}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    :cond_28
    :goto_5
    add-int/2addr v4, v12

    const/4 v8, 0x3

    goto/16 :goto_2

    :cond_29
    iget v8, v5, Lcom/android/keyguard/SecFaceMsg;->arg:I

    iget-object v5, v5, Lcom/android/keyguard/SecFaceMsg;->msgString:Ljava/lang/CharSequence;

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v13

    if-nez v13, :cond_2a

    const-string v5, "onAuthenticationHelp(), Face is not running"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_2a
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "onAuthenticationHelp(), helpCode="

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", helpString="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v8, v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleFaceHelp(ILjava/lang/String;)V

    goto :goto_5

    :cond_2b
    iget v6, v5, Lcom/android/keyguard/SecFaceMsg;->arg:I

    iget-object v5, v5, Lcom/android/keyguard/SecFaceMsg;->msgString:Ljava/lang/CharSequence;

    if-nez v5, :cond_2c

    move-object v5, v15

    goto :goto_6

    :cond_2c
    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v0, v6, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFaceError(ILjava/lang/String;)V

    iget-object v5, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mActiveUnlockConfig:Lcom/android/keyguard/ActiveUnlockConfig;

    iget-object v5, v5, Lcom/android/keyguard/ActiveUnlockConfig;->faceErrorsToTriggerBiometricFailOn:Ljava/util/Set;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v5, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_28

    sget-object v5, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v13, "faceError-"

    invoke-direct {v8, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    goto :goto_5

    :cond_2d
    const-string v0, "handleFaceAuth dispatchCount = "

    invoke-static {v4, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v2, v6, v0, v1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_1b
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/keyguard/SecFpMsg;

    invoke-static {v5}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v2

    move v5, v9

    :goto_7
    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/keyguard/SecFpMsg;

    const-string v8, "KeyguardFingerprint"

    if-eqz v6, :cond_3b

    if-ne v6, v1, :cond_2e

    const-string v10, "handleFingerprintAuth fpMsg index = "

    const-string v11, " / type = "

    invoke-static {v5, v10, v11}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, v1, Lcom/android/keyguard/SecFpMsg;->type:I

    invoke-static {v11, v8, v10}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_2e
    iget v10, v6, Lcom/android/keyguard/SecFpMsg;->type:I

    const-string v11, ")"

    const-string v13, "/"

    packed-switch v10, :pswitch_data_8

    goto :goto_7

    :pswitch_1c
    iput-boolean v9, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mUdfpsFingerDown:Z

    iget v6, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget v10, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    if-eq v10, v6, :cond_2f

    const-string v10, "onUdfpsFingerUp() - return, sequence error ("

    invoke-static {v6, v10, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    invoke-static {v6, v10, v11, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_2f
    const-string v6, "onUdfpsFingerUp()"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/16 v8, 0xc

    invoke-direct {v6, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {v0, v6, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :goto_8
    add-int/2addr v5, v12

    goto :goto_7

    :pswitch_1d
    iput-boolean v12, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mUdfpsFingerDown:Z

    iget v6, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget v10, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    if-eq v10, v6, :cond_30

    const-string v10, "onUdfpsFingerDown() - return, sequence error ("

    invoke-static {v6, v10, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    invoke-static {v6, v10, v11, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_30
    const-string v6, "onUdfpsFingerDown()"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    invoke-direct {v6, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {v0, v6, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto :goto_8

    :pswitch_1e
    iget v10, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget v6, v6, Lcom/android/keyguard/SecFpMsg;->arg:I

    iget v14, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    if-eq v14, v10, :cond_31

    const-string v6, "onAuthenticationAcquired() - return, sequence error ("

    invoke-static {v10, v6, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    invoke-static {v6, v10, v11, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_31
    const-string v10, "onAuthenticationAcquired( "

    const-string v11, "  )"

    invoke-static {v6, v10, v11, v8}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAcquired(I)V

    goto :goto_8

    :pswitch_1f
    iget v6, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget v10, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    if-eq v10, v6, :cond_32

    const-string v10, "onAuthenticationFailed() - return, sequence error ("

    invoke-static {v6, v10, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    invoke-static {v6, v10, v11, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isTimerRunning()Z

    move-result v6

    if-eqz v6, :cond_33

    const-string v6, "onAuthenticationFailed() - return, isTimerRunning is true"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_33
    const-string v6, "onAuthenticationFailed()"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;->BIOMETRIC_FAIL:Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;

    const-string v8, "fingerprintFailure"

    invoke-virtual {v0, v6, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestActiveUnlock(Lcom/android/keyguard/ActiveUnlockConfig$ActiveUnlockRequestOrigin;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAuthFailed()V

    goto :goto_8

    :pswitch_20
    iget v10, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget-object v6, v6, Lcom/android/keyguard/SecFpMsg;->result:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;

    iget v14, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    if-eq v14, v10, :cond_34

    const-string v6, "onAuthenticationSucceeded() - return, sequence error ("

    invoke-static {v10, v6, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v10, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    invoke-static {v6, v10, v11, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isTimerRunning()Z

    move-result v10

    if-eqz v10, :cond_35

    const-string v6, "onAuthenticationSucceeded() - return, isTimerRunning is true"

    invoke-static {v8, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_35
    iget-boolean v10, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-eqz v10, :cond_36

    const-string v6, "onAuthenticationSucceeded() - return, goingAway is true"

    invoke-static {v8, v6}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_8

    :cond_36
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->isStrongBiometric()Z

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v10

    iget-object v11, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFastUnlockController:Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v13, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    invoke-direct {v13, v11, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-static {v13, v10}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    const-string v10, "KeyguardUpdateMonitor#onAuthenticationSucceeded"

    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string v10, "onAuthenticationSucceeded()"

    invoke-static {v8, v10}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getFingerprint()Landroid/hardware/fingerprint/Fingerprint;

    move-result-object v10

    invoke-virtual {v10}, Landroid/hardware/fingerprint/Fingerprint;->getBiometricId()I

    move-result v10

    iput v10, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricId:I

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v13, "Fingerprint id : "

    invoke-direct {v11, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->getUserId()I

    move-result v8

    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;->isStrongBiometric()Z

    move-result v6

    invoke-virtual {v0, v8, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintAuthenticated(IZ)V

    new-instance v6, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    invoke-direct {v6, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-static {v6, v12}, Lcom/android/systemui/Rune;->runIf(Ljava/lang/Runnable;Z)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_8

    :pswitch_21
    iget v10, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget v14, v6, Lcom/android/keyguard/SecFpMsg;->arg:I

    iget-object v6, v6, Lcom/android/keyguard/SecFpMsg;->msgString:Ljava/lang/CharSequence;

    iget v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    if-eq v3, v10, :cond_37

    const-string v3, "onAuthenticationHelp() - return, sequence error ("

    invoke-static {v10, v3, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    invoke-static {v3, v6, v11, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_37
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isTimerRunning()Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "onAuthenticationHelp() - return, isTimerRunning is true"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_38
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v10, "onAuthenticationHelp( helpMsgId = "

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " , helpString = "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " )"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintHelp(ILjava/lang/String;)V

    :goto_9
    add-int/2addr v5, v12

    const/16 v3, 0xa

    goto/16 :goto_7

    :pswitch_22
    iget v3, v6, Lcom/android/keyguard/SecFpMsg;->sequence:I

    iget v10, v6, Lcom/android/keyguard/SecFpMsg;->arg:I

    iget-object v6, v6, Lcom/android/keyguard/SecFpMsg;->msgString:Ljava/lang/CharSequence;

    iget v14, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    if-eq v14, v3, :cond_39

    const-string v6, "onAuthenticationError() - return, sequence error ("

    invoke-static {v3, v6, v13}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    invoke-static {v3, v6, v11, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isTimerRunning()Z

    move-result v3

    if-eqz v3, :cond_3a

    const-string v3, "onAuthenticationError() - return, isTimerRunning is true"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_3a
    const-string v3, "onAuthenticationError()"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v10, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleFingerprintError(ILjava/lang/String;)V

    goto :goto_9

    :cond_3b
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v1

    if-lez v1, :cond_3c

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v3, 0x456

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "remained message size : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMessages:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3c
    const-string v0, "handleFingerprintAuth dispatchCount = "

    invoke-static {v5, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v9, [Ljava/lang/Object;

    invoke-static {v2, v8, v0, v1}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_17

    :pswitch_23
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    if-eq v2, v1, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleStatusBarState( prev:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "-> next:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    move-result v1

    if-nez v1, :cond_3d

    goto/16 :goto_17

    :cond_3d
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_3e

    invoke-virtual {v0, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_3e
    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_QS_FULLY_EXPANDED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v0, v10, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto/16 :goto_17

    :pswitch_24
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_USER_INPUT_ON_BOUNCER:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_3f
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_25
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_26
    invoke-virtual {v0, v15}, Lcom/android/keyguard/KeyguardUpdateMonitor;->callbacksRefreshCarrierInfo(Landroid/content/Intent;)V

    goto/16 :goto_17

    :pswitch_27
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleSecurityViewChanged: securityMode "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    move-result v2

    if-eqz v2, :cond_40

    sget-object v2, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_PREV_CREDENTIAL_VIEW:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v0, v12, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_40
    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;

    invoke-direct {v2, v1, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v2, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_28
    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    invoke-direct {v1, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {v0, v1, v15}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_29
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    const/16 v4, 0x200

    invoke-static {v1, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v4

    if-eqz v4, :cond_41

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateLockscreenDisabled(I)Z

    move-result v4

    goto :goto_a

    :cond_41
    move v4, v9

    :goto_a
    invoke-static {v1, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCredentialType(I)Z

    move-result v5

    goto :goto_b

    :cond_42
    move v5, v9

    :goto_b
    invoke-static {v1, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v6

    if-eqz v6, :cond_43

    invoke-virtual {v0, v3, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_43
    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v6

    if-eqz v6, :cond_44

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCarrierLock(I)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_44
    const/16 v6, 0x10

    invoke-static {v1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricsOptionState(I)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_45
    const/16 v6, 0x20

    invoke-static {v1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateSecureLockTimeout(I)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_46
    const/16 v6, 0x40

    invoke-static {v1, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v6

    if-eqz v6, :cond_47

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricLockTimeout(I)Z

    move-result v6

    or-int/2addr v5, v6

    :cond_47
    invoke-static {v1, v12}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v6

    if-eqz v6, :cond_54

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCredentialType(I)Z

    move-result v6

    invoke-virtual {v0, v3, v9}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCarrierLock(I)Z

    move-result v7

    or-int/2addr v6, v7

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updatePermanentLock(I)Z

    move-result v7

    or-int/2addr v6, v7

    or-int/2addr v5, v6

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricsOptionState(I)Z

    move-result v6

    or-int/2addr v5, v6

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.keyguard.CLEAR_LOCK"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v7

    iget-object v8, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mReceivers:Ljava/util/HashMap;

    monitor-enter v8

    :try_start_3
    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v13

    iget-object v14, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mAppContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-virtual {v6, v14}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v23

    invoke-virtual {v6}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v24

    invoke-virtual {v6}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v25

    invoke-virtual {v6}, Landroid/content/Intent;->getFlags()I

    move-result v16

    and-int/lit8 v2, v16, 0x8

    if-eqz v2, :cond_48

    move v2, v12

    goto :goto_c

    :cond_48
    move v2, v9

    :goto_c
    if-eqz v2, :cond_49

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_d

    :catchall_0
    move-exception v0

    goto/16 :goto_11

    :cond_49
    :goto_d
    iget-object v10, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mActions:Ljava/util/HashMap;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/ArrayList;

    if-eqz v10, :cond_53

    if-eqz v2, :cond_4a

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    :cond_4a
    move v11, v9

    const/4 v15, 0x0

    :goto_e
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v11, v9, :cond_50

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    if-eqz v2, :cond_4b

    iget-object v12, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    invoke-static {v12}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :cond_4b
    iget-boolean v12, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    if-eqz v12, :cond_4d

    :cond_4c
    const/4 v12, 0x1

    goto :goto_f

    :cond_4d
    iget-object v12, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->filter:Landroid/content/IntentFilter;

    const-string v22, "LocalBroadcastManager"

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    move-object/from16 v18, v14

    move-object/from16 v19, v24

    move-object/from16 v20, v23

    move-object/from16 v21, v25

    invoke-virtual/range {v16 .. v22}, Landroid/content/IntentFilter;->match(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/Set;Ljava/lang/String;)I

    move-result v12

    if-ltz v12, :cond_4c

    if-eqz v2, :cond_4e

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    :cond_4e
    if-nez v15, :cond_4f

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_4f
    invoke-virtual {v15, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v12, 0x1

    iput-boolean v12, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    :goto_f
    add-int/2addr v11, v12

    goto :goto_e

    :cond_50
    if-eqz v15, :cond_53

    const/4 v2, 0x0

    :goto_10
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_51

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;

    const/4 v10, 0x0

    iput-boolean v10, v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$ReceiverRecord;->broadcasting:Z

    const/4 v9, 0x1

    add-int/2addr v2, v9

    goto :goto_10

    :cond_51
    iget-object v2, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mPendingBroadcasts:Ljava/util/ArrayList;

    new-instance v9, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;

    invoke-direct {v9, v6, v15}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager$BroadcastRecord;-><init>(Landroid/content/Intent;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v2, v7, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->mHandler:Landroidx/localbroadcastmanager/content/LocalBroadcastManager$1;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_52
    monitor-exit v8

    goto :goto_12

    :cond_53
    monitor-exit v8

    goto :goto_12

    :goto_11
    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_54
    :goto_12
    const/16 v2, 0x80

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v2

    if-eqz v2, :cond_55

    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateOwnerInfo(I)Z

    move-result v9

    goto :goto_13

    :cond_55
    const/4 v9, 0x0

    :goto_13
    const/16 v2, 0x100

    invoke-static {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->containsFlag(II)Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDeviceOwnerInfo()Z

    move-result v2

    or-int/2addr v9, v2

    :cond_56
    const-string v2, "KeyguardUpdateMonitor"

    const-string v3, "handleSecureStateChanged secureState : "

    const-string v6, " isSecureStateUpdated : "

    const-string v7, ", isOwnerInfoStateUpdated : "

    invoke-static {v3, v1, v6, v5, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v1, v9, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v5, :cond_57

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_SECURE_STATE_UNLOCK_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto :goto_14

    :cond_57
    const/4 v2, 0x0

    const/4 v3, 0x2

    :goto_14
    if-eqz v4, :cond_58

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    invoke-direct {v1, v0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_58
    if-eqz v9, :cond_61

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    goto/16 :goto_17

    :pswitch_2a
    const-string v1, "handleUpdateLockModeCallback, userID = "

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const-string v3, "Process.myUserHandle().getIdentifier() = "

    const-string v4, "KeyguardUpdateMonitor"

    invoke-static {v2, v3, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_61

    :try_start_4
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    if-nez v3, :cond_59

    const-string v3, "lock_settings"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    iput-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    :cond_59
    iget-object v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockSettingsService:Lcom/android/internal/widget/ILockSettings;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSecureLockChangedCallback:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$2;

    invoke-interface {v3, v0}, Lcom/android/internal/widget/ILockSettings;->setLockModeChangedCallback(Landroid/os/IRemoteCallback;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_17

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "RemoteException! "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    :pswitch_2b
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_5a

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/util/DesktopManager;->notifyKeyguardLockout(Z)V

    goto/16 :goto_17

    :cond_5a
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v1, v5

    cmp-long v3, v1, v3

    if-lez v3, :cond_61

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v3, 0x3eb

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_17

    :pswitch_2c
    iget v1, v1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->handleStartedEarlyWakingUp(I)V

    goto/16 :goto_17

    :pswitch_2d
    move v2, v9

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setIsRunningBlackMemo(Z)V

    goto/16 :goto_17

    :cond_5b
    move v2, v9

    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/cover/CoverState;

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;

    invoke-direct {v3, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda51;-><init>(Ljava/lang/Object;I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v3, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCoverClosed()Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFaceAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_5d

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    goto :goto_15

    :cond_5c
    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    if-nez v1, :cond_5d

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-nez v1, :cond_5d

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "handleUpdateCoverState did not call updateBiometricListeningState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_5d
    :goto_15
    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_COVER_STATE_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto :goto_17

    :cond_5e
    iget-object v1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-boolean v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    if-eq v2, v1, :cond_61

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleNotiStarState( prev:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "-> next:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " )"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v1

    if-nez v1, :cond_61

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    move-result v1

    if-nez v1, :cond_5f

    goto :goto_17

    :cond_5f
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v1, :cond_60

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    goto :goto_16

    :cond_60
    const/4 v1, 0x2

    :goto_16
    sget-object v2, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_NOTI_STAR_STATE_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_61
    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x44d
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x454
        :pswitch_24
        :pswitch_23
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x45c
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x515
        :pswitch_9
        :pswitch_8
        :pswitch_7
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x519
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x579
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1b992 -> :sswitch_4
        0x586034f -> :sswitch_3
        0x5a5b64d -> :sswitch_2
        0x9f08441 -> :sswitch_1
        0x5dd70799 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
    .end packed-switch
.end method

.method public final handleStartedEarlyWakingUp(I)V
    .locals 4

    const-string v0, "KeyguardUpdateMonitor#handleStartedEarlyWakingUp"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleStartedEarlyWakingUp start "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/16 v2, 0xf

    if-eq p1, v2, :cond_1

    const/16 v2, 0x6a

    if-eq p1, v2, :cond_1

    const/4 v2, 0x6

    if-eq p1, v2, :cond_1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_1

    const/16 v2, 0xb

    if-eq p1, v2, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_1

    const/16 v2, 0x66

    if-eq p1, v2, :cond_1

    const/16 v2, 0x67

    if-eq p1, v2, :cond_1

    const/16 v2, 0x70

    if-eq p1, v2, :cond_1

    const/16 v2, 0x71

    if-eq p1, v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsStartFacePossible:Z

    if-eqz v0, :cond_2

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_STARTED_WAKING_UP:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v1, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/systemui/LsRune;->AOD_DISABLE_CLOCK_TRANSITION:Z

    if-nez p1, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->semSetScreenStatus(I)V

    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public final handleStartedGoingToSleep(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByForegroundApp:Z

    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsStartFacePossible:Z

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFingerprintAuthenticated(Z)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_ESIM:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->clearESimRemoved()V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setUnlockingKeyguard(Z)V

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedGoingToSleep(I)V

    return-void
.end method

.method public final handleStartedWakingUp(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPhoneState:I

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    :cond_1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleStartedWakingUp(I)V

    return-void
.end method

.method public final handleUserSwitchComplete(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->onUserSwitched()V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCredentialType(I)Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCarrierLock(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updatePermanentLock(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateSecureLockTimeout(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricLockTimeout(I)Z

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricsOptionState(I)Z

    move-result v1

    or-int/2addr v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/4 v2, 0x4

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateLockscreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    const/4 v2, 0x2

    invoke-direct {v0, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateOwnerInfo(I)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDeviceOwnerInfo()Z

    move-result v2

    or-int/2addr v0, v2

    if-eqz v0, :cond_2

    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/4 v2, 0x1

    invoke-direct {v0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_2
    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_USER_SWITCHING:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    :cond_3
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleUserSwitchComplete(I)V

    return-void
.end method

.method public final handleUserUnlocked(I)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleUserUnlocked("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->resolveNeedsSlowUnlockTransition()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateUserUnlockNotification(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDualDARInnerLockscreenRequirement(I)V

    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/4 v0, 0x6

    invoke-direct {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public final hasRedactedNotifications()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasRedactedNotifications:Z

    return p0
.end method

.method public final is2StepVerification()Z
    .locals 1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isMultifactorAuthEnforced()Z

    move-result p0

    return p0
.end method

.method public final isActiveDismissAction()Z
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    sget-object v0, Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;->KEYGUARD_DISMISS_ACTION_DEFAULT:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isAllEnabledSlotOutOfService()Z
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Active subscriptionInfo count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", All serviceStates count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x1

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/ServiceState;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "    subId["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] serviceState = "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v4

    if-nez v4, :cond_2

    move v2, v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method public final isAllSimState()Z
    .locals 2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    return v1
.end method

.method public final isAnimationDisabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAnimationDisabled()Z

    move-result p0

    return p0
.end method

.method public final isAuthenticatedWithBiometric(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFingerprintAuthenticated(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceAuthenticated(I)Z

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

.method public final isAutoWipe()Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    if-gtz v0, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isAutoWipeEnable()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final isBiometricErrorLockoutPermanent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintLockedOutPermanent:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceLockedOutPermanent:Z

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

.method public final isBiometricsAuthenticatedOnLock()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getIsFaceAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v2}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFingerprintStayOnLock()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {p0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz p0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    return v1
.end method

.method public final isBouncerFullyShown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    return p0
.end method

.method public final isCameraDisabledByPolicy()Z
    .locals 2

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mEdmMonitor:Lcom/android/systemui/knox/EdmMonitor;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/systemui/knox/EdmMonitor;->mIsCameraDisabledByMdm:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/knox/EdmMonitor;->mIsFaceRecognitionAllowedEvenCameraBlocked:Z

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    return p0
.end method

.method public final isCarrierLock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    return p0
.end method

.method public final isCoverClosed()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCoverState:Lcom/samsung/android/cover/CoverState;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/samsung/android/cover/CoverState;->attached:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/cover/CoverState;->getSwitchState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v1

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final isDeviceOwnerInfoEnabled()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isDismissActionExist()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDismissActionExist:Z

    return p0
.end method

.method public final isDualDarInnerAuthRequired(I)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthRequired:Z

    return p0
.end method

.method public final isDualDarInnerAuthShowing()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthShowing:Z

    return p0
.end method

.method public final isDualDisplayPolicyAllowed()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isESimEmbedded()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final isESimRemoveButtonClicked()Z
    .locals 4

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mESimRemoved:[Z

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final isEarlyWakeUp()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    return p0
.end method

.method public final isEmergencyCallOnly()Z
    .locals 11

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Active subscriptionInfo count = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", All serviceStates count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    move v3, v1

    move v5, v3

    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_4

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mServiceStates:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/ServiceState;

    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "    subId["

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] serviceState = "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    if-nez v6, :cond_2

    move v5, v4

    :cond_2
    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v6

    if-ne v6, v4, :cond_3

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v6

    if-eqz v6, :cond_3

    move v2, v4

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    if-nez v5, :cond_5

    move v1, v4

    :cond_5
    return v1
.end method

.method public final isEnabledWof()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWofOnFold()Z

    move-result p0

    return p0
.end method

.method public final isEnabledWofOnFold()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEnabledWof()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getWofType()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    return p0

    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p0, p0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    xor-int/2addr p0, v2

    return p0
.end method

.method public final isFMMLock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    return p0
.end method

.method public final isFaceEnabledAndEnrolled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isFaceOptionEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final isFingerprintDisabled(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p1

    and-int/lit8 p1, p1, 0x20

    if-nez p1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFingerprintDisabledWithBadQuality()Z
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    const/16 v0, 0x32

    if-lt p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final isFingerprintLeave()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFpLeave:Z

    return p0
.end method

.method public final isFingerprintOptionEnabled()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SafeUIState;->isSysUiSafeModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final isForcedLock()Z
    .locals 2

    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfDisabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p0, "KeyguardUpdateMonitor"

    const-string v0, "Prevent the Biometric from unlocking because CC mode is disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isRemoteLock()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method public final isForgotPasswordView()Z
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v0, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->ForgotPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isFullscreenBouncer()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    invoke-static {p0}, Lcom/android/keyguard/SecurityUtils;->checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result p0

    return p0
.end method

.method public final isHiddenInputContainer()Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    move-result p0

    if-nez p0, :cond_0

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

.method public final isIccBlockedPermanently()Z
    .locals 3

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfoForSubId(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimDisabledPermanently:Z

    return v2
.end method

.method public final isInDisplayFingerprintMarginAccepted()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v2}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget-object v2, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Swipe:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v2, :cond_1

    invoke-static {v0}, Lcom/android/keyguard/SecurityUtils;->checkFullscreenBouncer(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSmartViewDisplayWithFitToAspectRatio(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final isKeyguardUnlocking()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

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

.method public final isKidsModeRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsKidsModeRunning:Z

    return p0
.end method

.method public final isLockScreenRotationAllowed$1()Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isLockScreenRotationAllowed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsEmergencyMode:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/wallpaper/WallpaperUtils;->mIsUltraPowerSavingMode:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mScreenOrientationNoSensorValue:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method public final isLockscreenDisabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockscreenDisabled:Z

    return p0
.end method

.method public final isMaxFailedBiometricUnlockAttempts(I)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    move-result p0

    const/16 p1, 0x14

    if-lt p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isMaxFailedBiometricUnlockAttemptsShort()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    rem-int/lit8 p0, p0, 0x5

    if-nez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final isNowBarExpandMode()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNowBarExpandMode:Z

    return p0
.end method

.method public final isOutOfService()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOutOfService:Z

    return p0
.end method

.method public final isOwnerInfoEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    return p0
.end method

.method public final isPerformingWipeOut()Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAutoWipe()Z

    move-result v1

    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    const/4 v2, 0x0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    const/16 p0, 0x14

    goto :goto_0

    :cond_1
    move p0, v2

    :goto_0
    if-eqz v0, :cond_3

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    if-ne v0, p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    :goto_1
    return v2
.end method

.method public final isPermanentLock()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    return p0
.end method

.method public final isReadyBackgroundAuthentication()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByForegroundApp:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRemoteLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isRemoteLockEnabled()Z

    move-result p0

    if-nez p0, :cond_1

    sget-object p0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast p0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {p0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isAdminLockEnabled()Z

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

.method public final isRemoteLockEnabled()Z
    .locals 0

    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isRemoteLockMode()Z
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCurrentSecurityMode:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    sget v0, Lcom/android/keyguard/SecurityUtils;->sPINContainerBottomMargin:I

    sget-object v0, Lcom/android/keyguard/SecurityUtils$1;->$SwitchMap$com$android$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final isScreenOffMemoRunning()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    return p0
.end method

.method public final isScreenOn()Z
    .locals 0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mViewMediatorCallbackLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {p0}, Lcom/android/keyguard/ViewMediatorCallback;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method public final isSecure()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure(I)Z

    move-result p0

    return p0
.end method

.method public final isSecure(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getCredentialTypeForUser(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isRemoteLock()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isRemoteLock()Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :cond_4
    :goto_1
    return v1
.end method

.method public final isShortcutLaunchInProgress()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    return p0
.end method

.method public final isShowEditModeRequest()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardEditModeControllerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->isShowEditorRequested:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDismissActionExist:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isActiveDismissAction()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isSimDisabledPermanently()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimDisabledPermanently:Z

    return p0
.end method

.method public final isSimPinPassed(II)Z
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc

    if-eq p2, v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_2

    const/4 p2, 0x1

    if-le p1, p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimPinPassed:[Z

    aget-boolean p0, p0, p1

    return p0

    :cond_2
    :goto_0
    const-string p0, "isSimPinPassed  Slot Boundary Exception SlotNum: "

    const-string p2, "KeyguardUpdateMonitor"

    invoke-static {p1, p0, p2}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method public final isSimState(I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSubscriptionInfo(Z)Ljava/util/List;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSimState(I)I

    move-result v2

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public final isTimerRunning()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    add-long/2addr v2, v0

    const-wide/16 v0, 0x0

    cmp-long p0, v2, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUdfpsEnrolled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isUdfpsFingerDown()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mUdfpsFingerDown:Z

    return p0
.end method

.method public final isUdfpsSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isUnlockCompleted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    move-result p0

    return p0
.end method

.method public final isUnlockingWithBiometricAllowed(Z)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v1}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->isBiometricAllowedForUser(ZI)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisabledBiometricBySecurityDialog:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gtz p1, :cond_1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingModeLegacy()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUpdateSecurityMessage()Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isKeyguardUnlocking()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isUserUnlocked$1()Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, v0}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    const-string v2, "isUserUnlocked userId:%s, unlocked:%s"

    invoke-static {v1, v2, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public final notifyFailedUnlockAttemptChanged()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public final notifyStrongAuthAllowedChanged(I)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserInLockdown(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setKeyguardGoingAway(Z)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->notifyStrongAuthAllowedChanged(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceStrongBiometric()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFingerprintStrongBiometric()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFingerprintAuthenticated(Z)V

    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFingerprintStrongBiometric()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFodStrictMode(Z)V

    :cond_3
    return-void
.end method

.method public final onFingerprintAuthenticated(IZ)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFingerprintAuthenticated(Z)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v2, :cond_0

    sget-object v3, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/KeyguardUpdateMonitor;ZI)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    const-string p2, "onFingerprintAuthenticated ( stop fingerprint )"

    invoke-virtual {p1, p2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->d(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_2
    return-void
.end method

.method public final onLockIconPressed()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_LOCK_ICON_PRESSED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->onStrongAuthRequiredChanged(I)V

    return-void
.end method

.method public final registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "do not add or remove a listener on dispatching: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final registerPreCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    new-instance p0, Ljava/lang/Exception;

    const-string p1, "Called by"

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string p1, "KeyguardUpdateMonitor"

    const-string v0, "Object tried to add another callback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->sendUpdates(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public final removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDispatching:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "do not add or remove a listener on dispatching: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeESim(I)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getSlotId(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mESimRemoved:[Z

    aput-boolean v1, v2, v0

    :cond_1
    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->handleSimStateChange(III)V

    return-void
.end method

.method public final removeMaskViewForOpticalFpSensor()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string v0, "KeyguardFingerprint"

    const-string v1, "semRemoveMaskView()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->semRemoveMaskView(Landroid/os/IBinder;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method public final reportFailedBiometricUnlockAttempt(I)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFailedBiometricUnlockAttempts(I)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    const-string v2, "reportFailedBiometricUnlockAttempt ( failedBiometricUnlockAttempts = "

    const-string v3, " )"

    const-string v4, "KeyguardUpdateMonitor"

    invoke-static {v0, v2, v3, v4}, Landroidx/core/app/NotificationManagerCompat$SideChannelManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricFailedAttempts:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    const/16 v2, 0x14

    const/4 v3, 0x2

    if-lt v0, v2, :cond_0

    const-string v1, "reportFailedBiometricUnlockAttempt ( too many failed. )"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_3

    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x7530

    invoke-virtual {v2, p1, v5}, Lcom/android/internal/widget/LockPatternUtils;->setBiometricAttemptDeadline(II)J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    const-wide/16 v7, 0x7530

    add-long/2addr v5, v7

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateSecureLockTimeout(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricLockTimeout(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchLockModeChanged()V

    :cond_2
    sget-object v2, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_BIOMETRIC_LOCKOUT_DEADLINE:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    const/high16 v8, 0x14000000

    invoke-static {v2, v7, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    const-string v2, "KeyguardFingerprint"

    const-string v7, "setting Biometric lockout alarm !!"

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v2, v3, v5, v6, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/samsung/android/security/mdf/MdfUtils;->isMdfEnforced()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xa

    if-lt v0, v1, :cond_4

    const-string v0, "MDF : reportFailedBiometricUnlockAttempt ( too many failures. )"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v3, p1}, Lcom/android/internal/widget/LockPatternUtils;->requireStrongAuth(II)V

    :cond_4
    return-void
.end method

.method public final requestSessionClose()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "requestSessionClose() - isFingerprintDetectionRunning : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFingerprintDetectionRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v1, Lcom/android/systemui/UiOffloadThread;

    invoke-virtual {v0, v1}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final resetSimPinPassed(I)V
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimPinPassed:[Z

    aget-boolean v0, p0, p1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aput-boolean v0, p0, p1

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "resetSimPinPassed  Slot Boundary Exception SlotNum: "

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final runSystemUserOnly(Ljava/lang/Runnable;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->runSystemUserOnly(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final runSystemUserOnly(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final semSetScreenStatus(I)V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string v0, "semSetScreenStatus : "

    const-string v1, "KeyguardFingerprint"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semSetScreenStatus(I)I

    :cond_0
    return-void
.end method

.method public final sendBiometricUnlockState(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$8;->$SwitchMap$android$hardware$biometrics$BiometricSourceType:[I

    invoke-virtual {p1}, Landroid/hardware/biometrics/BiometricSourceType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "com.samsung.keyguard.FACE_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v1, "com.samsung.keyguard.FINGERPRINT_UNLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "biometricId"

    iget v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :goto_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda24;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda24;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;Landroid/hardware/biometrics/BiometricSourceType;Landroid/content/Intent;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return-void
.end method

.method public final sendKeyguardStateUpdated(ZZZZ)V
    .locals 8

    const-string v0, "sendKeyguardStateUpdated("

    const-string v1, ", "

    invoke-static {v0, v1, v1, p1, p2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v7, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda18;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;ZZZZ)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final sendPrimaryBouncerVisibilityChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v0, 0x464

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput p1, p0, Landroid/os/Message;->arg1:I

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final setAlternateBouncerShowing(Z)V
    .locals 0

    return-void
.end method

.method public final setCredentialAttempted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mCredentialAttempted:Z

    return-void
.end method

.method public final setDisableBiometricBySecurityDialog(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDisableBiometricBySecurityDialog( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisabledBiometricBySecurityDialog:Z

    return-void
.end method

.method public final setDismissActionExist(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDismissActionExist:Z

    return-void
.end method

.method public final setDismissActionType(Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardDismissActionType:Lcom/android/keyguard/KeyguardConstants$KeyguardDismissActionType;

    return-void
.end method

.method public final setFaceAuthenticated(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceAuthenticated(I)Z

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFaceAuthenticated:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceStrongBiometric()Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v0, v2}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lock stay is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " by Face"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardFace"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;-><init>(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setFaceWidgetFullScreenMode(Z)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    if-eq v0, p1, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFaceWidgetFullScreenMode(), enabled = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    const-string v2, " -> "

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    sget-object v0, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_FULL_SCREEN_FACE_WIDGET:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    new-instance v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda38;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda38;-><init>(Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method public final setFingerprintAuthenticated(Z)V
    .locals 4

    const-string v0, "setFingerprintAuthenticated : "

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFingerprintAuthenticated(I)Z

    move-result v1

    if-eq v1, p1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFingerprintStrongBiometric()Z

    move-result v3

    invoke-direct {v2, p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;-><init>(ZZ)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getUserCanSkipBouncer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTrustManager:Landroid/app/trust/TrustManager;

    sget-object v2, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    invoke-virtual {v1, v0, v2}, Landroid/app/trust/TrustManager;->unlockedByBiometricForUser(ILandroid/hardware/biometrics/BiometricSourceType;)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFingerprintStayOnLock()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Lock stay is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " by Finger"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardFingerprint"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;-><init>(II)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final setFocusForBiometrics(IZ)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setFocusForBiometrics : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    const-string v2, " -> "

    const-string v3, ", Focus window : "

    invoke-static {v0, v1, v2, p2, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    if-eqz p2, :cond_2

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    if-ne p2, p1, :cond_1

    return-void

    :cond_0
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    :cond_1
    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    if-eqz p2, :cond_7

    iget p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    if-eq p2, p1, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "setFocusForBiometrics : Cannot change focus. current Window is "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    const-string v0, ", reqWin : "

    invoke-static {p2, p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFocusWindow:I

    :goto_0
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean p1, p1, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-eqz p1, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result p1

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-eqz p1, :cond_7

    :cond_5
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    new-instance p2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/4 v0, 0x3

    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    new-instance p2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/4 v0, 0x4

    invoke-direct {p2, p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_7
    return-void
.end method

.method public final setFodStrictMode(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFODStrictMode:Z

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    move-result v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerPrintBadQualityCounts:Landroid/util/SparseIntArray;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    const/16 v2, 0xa

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    const-string v1, "setFodStrictMode : "

    const-string v2, " strongAuth : "

    const-string v3, " callStack : "

    invoke-static {v1, v0, v2, p1, v3}, Lcom/android/keyguard/KeyguardFMMViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    const/4 v2, 0x0

    const-string v3, "KeyguardFingerprint"

    invoke-static {v3, v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFODStrictMode:Z

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semSetFodStrictMode(Z)V

    :cond_1
    return-void
.end method

.method public final setHasRedactedNotifications(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasRedactedNotifications:Z

    return-void
.end method

.method public final setIsRunningBlackMemo(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setIsRunningBlackMemo : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    const-string v2, " -> "

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->updateAnimateScreenOff()V

    :cond_1
    return-void
.end method

.method public final setKeyguardGoingAway(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setKeyguardGoingAway( "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " )"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setKeyguardGoingAway(Z)V

    if-eqz p1, :cond_1

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_STOPPED_KEYGUARD_GOING_AWAY:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :goto_0
    return-void
.end method

.method public final setKeyguardShowing(ZZ)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eq v3, p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    return-void

    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    iput-boolean p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setScreenSaverRunningState()V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    invoke-virtual {v3, p1, p2, v1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logKeyguardShowingChanged(ZZZ)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_BACKGROUND_AUTHENTICATION:Z

    if-eqz p1, :cond_4

    if-nez p2, :cond_4

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByForegroundApp:Z

    :cond_4
    if-eq v1, v0, :cond_6

    if-eqz v1, :cond_5

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSecureCameraLaunched:Z

    :cond_5
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    const/4 p2, 0x0

    invoke-direct {p1, v1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(ZI)V

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_6
    if-nez v1, :cond_7

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez p1, :cond_7

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setUnlockingKeyguard(Z)V

    :cond_7
    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    iget-boolean p2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    if-nez p2, :cond_8

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    move-result p2

    if-eqz p2, :cond_8

    sget-object p2, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_VISIBILITY_CHANGED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_8
    return-void
.end method

.method public final setLockoutAttemptDeadline(II)J
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    int-to-long v2, p2

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    cmp-long p2, v0, v4

    if-nez p2, :cond_0

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    cmp-long p2, v2, v4

    if-eqz p2, :cond_2

    :cond_0
    const-string p2, "setLockoutAttemptDeadline() userId "

    const-string v4, ", AD:"

    invoke-static {p1, p2, v4}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "->"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", AT:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchLockModeChanged()V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/android/systemui/util/DesktopManager;->notifyKeyguardLockout(Z)V

    iget-wide p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    cmp-long v0, p1, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    iget-wide p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    return-wide p0
.end method

.method public final setNowBarExpandMode(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNowBarExpandMode:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setNowBarExpandMode() mIsNowBarExpandMode = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNowBarExpandMode:Z

    const-string v2, " -> "

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNowBarExpandMode:Z

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_0
    return-void
.end method

.method public final setPanelExpandingStarted(Z)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_QS_FULLY_EXPANDED:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, v2, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    if-eq p1, v0, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "setPanelExpandingStarted() mIsPanelExpandingStarted = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    const-string v3, " -> "

    const-string v4, "KeyguardUpdateMonitor"

    invoke-static {p1, v1, v3, v0, v4}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_2
    return-void
.end method

.method public final setScreenOrientationNoSensorValue(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mScreenOrientationNoSensorValue:Z

    return-void
.end method

.method public final setScreenSaverRunningState()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mIsDreaming:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    if-eq v1, v0, :cond_1

    const-string v1, " setScreenSaverRunningState : screen saver : "

    const-string v3, " -> "

    invoke-static {v1, v3, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v0, v1, v3}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->clearFingerprintRecognized()V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFingerprintAuthenticated(Z)V

    :cond_1
    return-void
.end method

.method public final setShortcutLaunchInProgress(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    if-eq v0, p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setShortcutLaunchInProgress() mIsShortcutLaunchInProgress = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    const-string v2, " -> "

    const-string v3, "KeyguardUpdateMonitor"

    invoke-static {v0, v1, v2, p1, v3}, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_0
    return-void
.end method

.method public final setSwitchingUser(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setSwitchingUser() switching: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setSwitchingUser(Z)V

    const/16 p1, 0xffe

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchSecureState(I)V

    return-void
.end method

.method public final setUnlockingKeyguard(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setUnlockingKeyguard( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    sget-object p1, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->FACE_AUTH_UPDATED_KEYGUARD_UNLOCKING:Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    :cond_1
    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda10;-><init>(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final setupLocked$2()V
    .locals 5

    const-string v0, "KeyguardUpdateMonitor"

    const-string v1, "setupLocked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ActivityManager.getCurrentUser() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCredentialType(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFMMLock(IZ)Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateCarrierLock(I)Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updatePermanentLock(I)Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateSecureLockTimeout(I)Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricLockTimeout(I)Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateLockscreenDisabled(I)Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateBiometricsOptionState(I)Z

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateOwnerInfo(I)Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateDeviceOwnerInfo()Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 v3, 0x44d

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisableCamera:Z

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)I

    move-result v2

    iput v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mMaximumFailedPasswordsForWipe:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsCallbackForUPSM:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsValueListForPSM:[Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOneHandModeSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v1, v1, [Landroid/net/Uri;

    const-string v4, "any_screen_running"

    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v1, v0

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayListener:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$3;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    :cond_2
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.app.kidshome"

    const-string v3, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsKidsModeRunning:Z

    return-void
.end method

.method public final shouldListenForFace()Z
    .locals 15

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1a

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsEarlyWakeUp:Z

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    sget-boolean v7, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz v7, :cond_0

    iget-object v8, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v8, v8, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v8, :cond_0

    iget-boolean v8, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v8

    :goto_0
    const/4 v9, 0x1

    if-nez v8, :cond_1

    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-eqz v10, :cond_4

    :cond_1
    if-nez v5, :cond_4

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v10

    if-nez v10, :cond_4

    if-nez v4, :cond_4

    if-eqz v6, :cond_2

    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez v10, :cond_2

    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    if-eqz v10, :cond_3

    :cond_2
    if-eqz v1, :cond_4

    :cond_3
    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    if-nez v10, :cond_4

    iget-boolean v10, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    if-eqz v10, :cond_4

    move v10, v9

    goto :goto_1

    :cond_4
    move v10, v2

    :goto_1
    const-string v11, "shouldListenForFace ( isFaceDefaultCondition = "

    const-string v12, " , isKeyguardVisible = "

    const-string v13, " , isDeviceInteractive = "

    invoke-static {v11, v12, v13, v10, v8}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v12, " , mPrimaryBouncerFullyShown = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v12, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    const-string v13, " , isSwitchingUser = "

    const-string v14, " , mIsDreamingForBiometrics = "

    invoke-static {v11, v12, v13, v4, v14}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    const-string v12, " , isGoingToSleep = "

    const-string v13, " , isKeyguardGoingAway = "

    invoke-static {v11, v4, v12, v3, v13}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mKeyguardUnlocking = "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    const-string v4, " , isEarlyWakeUp = "

    const-string v5, " , mIsScreenSaverRunning = "

    invoke-static {v11, v3, v4, v1, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsScreenSaverRunning:Z

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mSystemReady = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , getUserUnlockedWithBiometric = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    move-result v1

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , isKeyguardShowing = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , isKeyguardOccluded = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mHasFocus = "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "KeyguardFace"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v10, :cond_5

    const-string p0, "shouldListenForFace ( return false, Face is not default condition)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v3, v10, v12

    if-lez v3, :cond_6

    const-string p0, "shouldListenForFace ( return false, because of Biometric lockoutAttemptDeadline)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    move-result-wide v10

    cmp-long v3, v10, v12

    if-lez v3, :cond_7

    const-string p0, "shouldListenForFace ( return false, because of lockoutAttemptDeadline)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDisabled(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string p0, "shouldListenForFace (return false, because face is disabled by dpm)"

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string p0, "shouldListenForFace ( return false, because security policy)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    iget v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCocktailBarWindowType:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_a

    const-string p0, "shouldListenForFace ( return false, the cocktail bar is expanded)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCameraDisabledByPolicy()Z

    move-result v3

    if-eqz v3, :cond_b

    const-string p0, "shouldListenForFace ( return false, the camera is block by policy)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_b
    sget-boolean v3, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCoverClosed()Z

    move-result v3

    if-eqz v3, :cond_c

    const-string p0, "shouldListenForFace ( return false as cover is closed. )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_c
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    if-nez v3, :cond_e

    :cond_d
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    if-eqz v3, :cond_f

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "shouldListenForFace ( return false, because mIsQsFullyExpanded = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", or mIsFaceWidgetFullScreen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_f
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockCompleted()Z

    move-result v3

    if-nez v3, :cond_10

    const-string p0, "shouldListenForFace ( return false, unlocking never happened )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_10
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceStrongBiometric()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v3

    if-nez v3, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "shouldListenForFace ( return false, because isUnlockingWithBiometricAllowed() = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceStrongBiometric()Z

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_11
    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v1

    if-eqz v1, :cond_12

    const-string p0, "shouldListenForFace ( return false, device is locked by administrator )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_12
    sget-object v1, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterPluginConnected()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v1, :cond_13

    const-string p0, "TAG_FACE"

    const-string v0, "shouldListenForFace ( return false, NotiStar is shown )"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isEnabledFaceStayOnLock()Z

    move-result v1

    if-eqz v1, :cond_14

    if-eqz v8, :cond_14

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "shouldListenForFace ( return false, getUserHasTrust() is true)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_14
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v0, :cond_15

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDynamicLockViewMode:Z

    if-eqz v1, :cond_15

    const-string p0, "shouldListenForFace ( return false, DynamicLockViewMode"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_15
    if-eqz v6, :cond_16

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_16

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result v0

    if-nez v0, :cond_16

    const-string p0, "shouldListenForFace ( return false, Not focus on NotificationShade )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_16
    if-eqz v7, :cond_17

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_17

    const-string p0, "shouldListenForFace ( return false, Dual LCD folder is closed )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_17
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    move-result v0

    if-eqz v0, :cond_18

    const-string p0, "shouldListenForFace ( return false, Showing forgot password view )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_18
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardEditModeControllerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeController;

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardEditModeControllerImpl;->getVIRunning()Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "shouldListenForFace ( return false, Lock Edit VI running )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_19
    return v9

    :cond_1a
    return v2
.end method

.method public final shouldListenForFingerprint(Z)Z
    .locals 13

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    const-string v0, "keyguard.fingerprint_test"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result v2

    if-eqz v2, :cond_28

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSwitchingUser:Z

    iget-boolean v4, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardGoingAway:Z

    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWof()Z

    move-result v7

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    if-nez v6, :cond_0

    if-eqz v2, :cond_0

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v7, :cond_0

    if-nez v5, :cond_0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isReadyBackgroundAuthentication()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    if-nez v3, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserFingerprintAuthenticated:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor$BiometricAuthenticated;->mAuthenticated:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    if-eqz v0, :cond_2

    :goto_0
    move v0, v8

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_3
    if-nez v6, :cond_4

    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v7, :cond_4

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isReadyBackgroundAuthentication()Z

    move-result v7

    if-nez v7, :cond_4

    if-eqz v0, :cond_2

    :cond_4
    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    if-nez v5, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    if-nez v0, :cond_2

    if-nez v4, :cond_2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :goto_2
    const-string v7, "shouldListenForFingerprint ( isFingerprintEnabled = "

    const-string v9, " , mKeyguardIsVisible = "

    const-string v10, " , mDeviceInteractive = "

    invoke-static {v7, v9, v10, v0, v6}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " , mPrimaryBouncerIsOrWillBeShowing = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerIsOrWillBeShowing:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " , mPrimaryBouncerFullyShown = "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    const-string v10, " , mGoingToSleep = "

    const-string v11, " , mSwitchingUser = "

    invoke-static {v7, v9, v10, v5, v11}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mIsDreamingForBiometrics = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mKeyguardUnlocking = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardUnlocking:Z

    const-string v9, " , mKeyguardGoingAway = "

    const-string v10, " , mKeyguardShowing = "

    invoke-static {v7, v3, v9, v4, v10}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mKeyguardOccluded = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mSystemReady = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSystemReady:Z

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , mHasFocus = "

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    const-string v4, "KeyguardFingerprint"

    invoke-static {v7, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    cmp-long v0, v9, v11

    if-lez v0, :cond_5

    const-string p0, "shouldListenForFingerprint ( return false, because of Biometric lockoutAttemptDeadline )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getLockoutAttemptDeadline()J

    move-result-wide v9

    cmp-long v0, v9, v11

    if-lez v0, :cond_6

    const-string p0, "shouldListenForFingerprint ( return false, because of lockoutAttemptDeadline )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string p0, "shouldListenForFingerprint ( return false, because fingerprint is disabled by dpm )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForcedLock()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p0, "shouldListenForFingerprint ( return false, because lock to force a lockscreen )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_8
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_9

    const-string p0, "shouldListenForFingerprint ( return false as cover is closed. )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isEnabledWof()Z

    move-result v0

    if-eqz v0, :cond_b

    if-eqz v2, :cond_a

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    if-eqz v0, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintDisabledWithBadQuality()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string p0, "shouldListenForFingerprint ( bad quality count is maximum. )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_b
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isAuthenticatedWithBiometric(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p0, "shouldListenForFingerprint ( return false, authenticated with biometric)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_c
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDeviceDisabledForMaxFailedAttempt()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string p0, "shouldListenForFingerprint ( return false, device is locked by administrator )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_d
    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v7, Lcom/android/systemui/statusbar/policy/SecurityController;

    invoke-virtual {v0, v7}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_e

    const-string p0, "shouldListenForFingerprint ( return false, dependency class destroy)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_e
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_COVER:Z

    if-eqz v0, :cond_f

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mForceStartFinger:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubBioAuth:Z

    if-nez v0, :cond_f

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNeedSubWofFpAuth:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-boolean v0, v0, Lcom/android/systemui/keyguard/DisplayLifecycle;->mIsFolderOpened:Z

    if-nez v0, :cond_f

    const-string p0, "shouldListenForFingerprint ( return false, folder is closed )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isScreenOffMemoEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsRunningBlackMemo:Z

    if-eqz v0, :cond_10

    const-string p0, "shouldListenForFingerprint ( return false, because Screen off Memo is running. )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_10
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_11

    if-eqz v2, :cond_11

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardOccluded:Z

    if-eqz v0, :cond_11

    const-string p0, "shouldListenForFingerprint ( return false, strong auth with occluded )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarDeviceOwner(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarInnerAuthRequired(I)Z

    move-result v0

    if-eqz v0, :cond_12

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getDualDarInnerLockoutAttemptDeadline$1()J

    move-result-wide v9

    cmp-long v0, v9, v11

    if-lez v0, :cond_12

    const-string p0, "shouldListenForFingerprint ( return false, because of lockoutAttemptDeadline of dualdar do inner user )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_12
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFPCanceledByProximity:Z

    if-eqz v0, :cond_13

    const-string p0, "shouldListenForFingerprint ( return false, screen off by proximity)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_13
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isForgotPasswordView()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p0, "shouldListenForFingerprint ( return false, Showing forgot password view )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_14
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_27

    sget-object v0, Lcom/android/systemui/noticenter/NotiCenterPlugin;->INSTANCE:Lcom/android/systemui/noticenter/NotiCenterPlugin;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/noticenter/NotiCenterPlugin;->isNotiCenterPluginConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNotiStarShown:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v0, :cond_15

    if-eqz v2, :cond_15

    const-string p0, "shouldListenForFingerprint ( return false, NotiStar is shown )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_15
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v0, :cond_16

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    if-nez v0, :cond_17

    :cond_16
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    if-eqz v0, :cond_18

    :cond_17
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "shouldListenForFingerprint ( return false, because mIsQsFullyExpanded = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsQsFullyExpanded:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", or mIsFaceWidgetFullScreen="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceWidgetFullScreenMode:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " )"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_18
    invoke-virtual {p0, v8}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-nez v0, :cond_19

    const-string p0, "shouldListenForFingerprint ( return false, strong auth with in-display fingerprint)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_19
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsShortcutLaunchInProgress:Z

    if-eqz v0, :cond_1a

    const-string p0, "shouldListenForFingerprint ( return false, shortcut preview is showing )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1a
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez v0, :cond_1b

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsPanelExpandingStarted:Z

    if-eqz v0, :cond_1b

    const-string p0, "shouldListenForFingerprint ( return false, quick panel is showing )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1b
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string p0, "shouldListenForFingerprint ( return false, one hand mode is running)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1c
    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCocktailBarWindowType:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1d

    const-string p0, "shouldListenForFingerprint ( return false, the cocktail bar is expanded)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1d
    if-eqz v2, :cond_1e

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    if-nez v0, :cond_1e

    if-eqz v6, :cond_1e

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string p0, "shouldListenForFingerprint ( return false, getUserHasTrust() is true)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1e
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    if-eqz v0, :cond_1f

    const-string p0, "shouldListenForFingerprint ( return false, this process is for the sub-user)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1f
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    const-string v3, "KeyguardUpdateMonitor"

    if-nez v0, :cond_20

    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDynamicLockViewMode:Z

    if-eqz v6, :cond_20

    const-string p0, "shouldListenForFingerprint ( return false, DynamicLockViewMode"

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_20
    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSIPShown:Z

    if-eqz v0, :cond_21

    const-string p0, "shouldListenForFingerprint ( return false, SIP is showing )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_21
    if-eqz v2, :cond_22

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz v0, :cond_22

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mHasFocus:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWaitingFocusRunnable:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_22

    if-nez v5, :cond_22

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result v0

    if-nez v0, :cond_22

    const-string p0, "shouldListenForFingerprint ( return false, Not focus on NotificationShade )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_22
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getFaceAuthenticated(I)Z

    move-result p1

    if-eqz p1, :cond_23

    const-string p0, "shouldListenForFingerprint ( return false, Face authenticated)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_23
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    invoke-interface {p1}, Lcom/android/systemui/util/DesktopManager;->isDualView()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-eqz p1, :cond_24

    goto :goto_5

    :cond_24
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {p1}, Landroid/view/IWindowManager;->getVisibleWindowInfoList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_25
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;

    iget v2, v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->type:I

    const/16 v5, 0x7d9

    if-ne v2, v5, :cond_25

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasPopupOnDualView "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/samsung/android/view/SemWindowManager$VisibleWindowInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is showing"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "shouldListenForFingerprint ( return false, Popup showing on Dex dual view )"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :goto_3
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :goto_4
    const-string v0, "Fail to check windows by RemoteException"

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_26
    :goto_5
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsNowBarExpandMode:Z

    if-eqz p1, :cond_27

    iget-boolean p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mPrimaryBouncerFullyShown:Z

    if-nez p0, :cond_27

    const-string p0, "shouldListenForFingerprint ( return false, NowBarExpandMode)"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_27
    return v8

    :cond_28
    return v1
.end method

.method public final startBiometricWatchdog()V
    .locals 0

    return-void
.end method

.method public final startListeningForFingerprint(Z)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFingerprintPossible(I)Z

    move-result v1

    const-string v10, "KeyguardFingerprint"

    if-eqz v1, :cond_4

    iget v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    const/4 v11, 0x1

    add-int/2addr v1, v11

    iput v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    sget-object v1, Lcom/android/systemui/log/core/LogLevel;->DEBUG:Lcom/android/systemui/log/core/LogLevel;

    const-string/jumbo v2, "startListeningForFingerprint"

    const/4 v3, 0x0

    invoke-static {v10, v1, v2, v3}, Lcom/android/systemui/keyguard/KeyguardDumpLog;->log(Ljava/lang/String;Lcom/android/systemui/log/core/LogLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "startListeningForFingerprint() "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\n    callers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    const-string v4, " - "

    invoke-static {v2, v4}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v3, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    :cond_0
    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    new-instance v12, Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const-string v2, "fingerprint"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v2

    invoke-direct {v12, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/IFingerprintService;)V

    invoke-virtual {v0, v8}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isEncryptedOrLockdown(I)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->is2StepVerification()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v14, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    new-instance v15, Lcom/android/keyguard/SecFpAuthCallback;

    iget v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/4 v4, 0x2

    invoke-direct {v3, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v15, v1, v2, v3}, Lcom/android/keyguard/SecFpAuthCallback;-><init>(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    new-instance v2, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    invoke-direct {v2}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    invoke-virtual {v2, v8}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    move-result-object v17

    const/16 v18, 0x1

    const/4 v13, 0x0

    move-object/from16 v16, v1

    invoke-virtual/range {v12 .. v18}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;Z)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintDetectionCallback:Lcom/android/keyguard/KeyguardUpdateMonitor$13;

    new-instance v3, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    invoke-direct {v3}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;-><init>()V

    invoke-virtual {v3, v8}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->setUserId(I)Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintAuthenticateOptions$Builder;->build()Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;

    move-result-object v3

    invoke-virtual {v12, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->detectFingerprint(Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$FingerprintDetectionCallback;Landroid/hardware/fingerprint/FingerprintAuthenticateOptions;)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    new-instance v5, Lcom/android/keyguard/SecFpAuthCallback;

    iget v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFingerprintAuthenticationSequence:I

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    new-instance v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;

    const/4 v6, 0x2

    invoke-direct {v3, v0, v6}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;I)V

    invoke-direct {v5, v1, v2, v3}, Lcom/android/keyguard/SecFpAuthCallback;-><init>(ILjava/util/function/Consumer;Ljava/lang/Runnable;)V

    iget-object v6, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v7, -0x1

    move-object v2, v12

    invoke-virtual/range {v2 .. v9}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;III)V

    :goto_0
    invoke-virtual {v0, v11}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    iget-boolean v1, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsSkipFPResponse:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v2, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mTimeoutSkipFPResponse:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$1;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string v0, "FP started by the power key. If it receives a response within 700ms, it will skip."

    invoke-static {v10, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "startListeningForFingerprint() return - fingerprint service is not supported"

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v0, "Can\'t start startListeningForFingerprint()"

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return-void
.end method

.method public final stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V
    .locals 2

    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const-string v1, "KeyguardFace"

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFaceOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Can\'t stop stopListeningForFace(), mFaceRunningState = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-static {p0, v1, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    :cond_0
    return-void

    :cond_1
    const-string/jumbo v0, "stopListeningForFace()"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {p1}, Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;->getReason()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logStoppedListeningForFace(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->cancel()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    :cond_2
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsFaceReady:Z

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    return-void
.end method

.method public final stopListeningForFingerprint()V
    .locals 2

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "stopListeningForFingerprint()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintCancelSignal:Landroid/os/CancellationSignal;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFingerprintRunningState(I)V

    sget-object p0, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;

    return-void
.end method

.method public final updateBatteryRemainTime(Landroid/content/Intent;)V
    .locals 5

    if-eqz p1, :cond_0

    const-wide/16 v0, -0x1

    const-string v2, "remaining_charging_time"

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-lez v0, :cond_0

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mKeyguardBatteryStatus:Lcom/android/systemui/statusbar/KeyguardBatteryStatus;

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/statusbar/KeyguardBatteryStatus;->remaining:J

    :cond_0
    return-void
.end method

.method public final updateBiometricListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V
    .locals 3

    const-string v0, "KeyguardUpdateMonitor"

    const-string/jumbo v1, "updateBiometricListeningState()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "mAuthHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    return-void
.end method

.method public final updateBiometricLockTimeout(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricAttemptTimeout(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    cmp-long v4, v4, v0

    if-nez v4, :cond_1

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    cmp-long v4, v4, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string/jumbo v4, "updateBiometricLockTimeout() userId "

    const-string v5, ", BD:"

    invoke-static {p1, v4, v5}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", BT:"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptDeadline:J

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutBiometricAttemptTimeout:J

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateBiometricsOptionState(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricType(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/16 v5, 0x100

    invoke-virtual {v4, v5, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result v4

    if-ne v4, v2, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v5

    if-eq v5, v4, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricType:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    if-ne v6, v0, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-ne v6, v1, :cond_4

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v6

    if-eq v6, v4, :cond_3

    goto :goto_3

    :cond_3
    return v3

    :cond_4
    :goto_3
    const-string/jumbo v3, "updateBiometricsOptionState() userId "

    const-string v6, ", BT:"

    invoke-static {p1, v3, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricType:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "->"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", FP:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", FC:"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricType:Landroid/util/SparseIntArray;

    invoke-virtual {v6, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFingerprint:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricsFace:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-static {v3}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    if-eqz v5, :cond_5

    new-instance p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;

    const/4 v0, 0x1

    invoke-direct {p1, v4, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda9;-><init>(ZI)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_5
    return v2
.end method

.method public final updateCarrierLock(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->updateCarrierLock(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    if-eq v0, v1, :cond_0

    const-string/jumbo v1, "updateCarrierLock() userId "

    const-string v2, ", CR:"

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    const-string v2, "->"

    invoke-static {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCarrierLock:Z

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateCredentialType(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    if-eq v1, v0, :cond_0

    const-string/jumbo v1, "updateCredentialType() userId "

    const-string v2, ", credentialType:"

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mCredentialType:I

    const-string v0, ", isSecure="

    invoke-static {p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateDeviceOwnerInfo()Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "updateDeviceOwnerInfo() DO(isEmpty):"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDeviceOwnerInfoText:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateDualDARInnerLockscreenRequirement(I)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthRequired:Z

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarDeviceOwner(I)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v1, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v1, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->isDualDarInnerAuthRequired(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    const-string v5, "KeyguardUpdateMonitor"

    if-eqz v1, :cond_1

    sget-object v6, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v6, v2}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    invoke-virtual {v2, p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getInnerAuthUserId(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isSecure(I)Z

    move-result v2

    const-string v6, "DualDAR Inner isSecure? "

    invoke-static {v6, v5, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v2, :cond_1

    move v1, v4

    :cond_1
    const-string v2, "Inner lockscreen is required? "

    invoke-static {v2, v5, v1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v1, :cond_2

    if-nez v0, :cond_2

    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthRequired:Z

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    iput-boolean v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDualDarInnerAuthRequired:Z

    :goto_1
    new-instance v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;

    const/4 v1, 0x5

    invoke-direct {v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda19;-><init>(II)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchCallback(Ljava/util/function/Consumer;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final updateEsimState(II)V
    .locals 7

    if-nez p2, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSimDatas:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;

    iget v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->slotId:I

    if-ne v2, p1, :cond_0

    iget v2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v2

    const-string v5, ", slotId="

    const-string v6, "KeyguardUpdateMonitor"

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    handleSimStateChange : updateEsimState [subId="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    const-string v4, "] state from ["

    invoke-static {v2, v3, v5, p1, v4}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iget v3, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    const-string v4, "] to [SIM_STATE_UNKNOWN]"

    invoke-static {v2, v3, v4, v6}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    iput p2, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->simState:I

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "    handleSimStateChange : [Skip] updateEsimState [subId="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v1, Lcom/android/keyguard/KeyguardUpdateMonitor$SimData;->subId:I

    const-string v4, "] TelephonyManager state ["

    invoke-static {v3, v1, v5, p1, v4}, Landroidx/picker/adapter/layoutmanager/AutoFitGridLayoutManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    const-string v1, "] is not matched with request state"

    invoke-static {v3, v2, v1, v6}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final updateFMMLock(IZ)Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isFMMLockEnabled(I)Z

    move-result v0

    new-instance v1, Lcom/android/internal/widget/RemoteLockInfo$Builder;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lcom/android/internal/widget/RemoteLockInfo$Builder;-><init>(IZ)V

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getFMMMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getFMMPhone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->setPhoneNumber(Ljava/lang/CharSequence;)Lcom/android/internal/widget/RemoteLockInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/widget/RemoteLockInfo$Builder;->build()Lcom/android/internal/widget/RemoteLockInfo;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    if-eq v1, v0, :cond_1

    const-string/jumbo v1, "updateFMMLock() userId "

    const-string v2, ", FM:"

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    const-string v2, "->"

    invoke-static {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFMMLock:Z

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->dispatchLockModeChanged()V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v2
.end method

.method public final updateFaceListeningState(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFace()Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockWithFacePossible(I)Z

    move-result p1

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    const-string v2, "KeyguardFace"

    if-eq v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    monitor-enter v3

    :try_start_0
    sget-object v4, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v4, :cond_1

    invoke-static {v1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v1

    sput-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-nez v1, :cond_2

    goto :goto_4

    :cond_2
    const-string/jumbo v1, "startListeningForFace()"

    invoke-static {v2, v1}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->setFaceAuthenticated(Z)V

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    iget v3, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {v2, v3, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logUnexpectedFaceCancellationSignalState(IZ)V

    invoke-virtual {v1}, Landroid/os/CancellationSignal;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    :cond_3
    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setFaceRunningState(I)V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-virtual {v0, v1, p2}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logStartedListeningForFace(ILcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    iget-object p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mLogger:Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;

    invoke-virtual {p2, p1}, Lcom/android/keyguard/logging/KeyguardUpdateMonitorLogger;->logFaceUnlockPossible(Z)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const-class p2, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;

    monitor-enter p2

    :try_start_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_4

    invoke-static {p1}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object p1

    sput-object p1, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->sFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSemFaceCancelSignal:Landroid/os/CancellationSignal;

    new-instance v4, Lcom/android/keyguard/SecFaceAuthCallback;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFaceMsgConsumer:Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticLambda15;

    invoke-direct {v4, p1}, Lcom/android/keyguard/SecFaceAuthCallback;-><init>(Ljava/util/function/Consumer;)V

    iget-object v5, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mAuthHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->authenticate(Lcom/samsung/android/bio/face/SemBioFaceManager$CryptoObject;Landroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$AuthenticationCallback;Landroid/os/Handler;ILandroid/os/Bundle;Landroid/view/View;)V

    goto :goto_5

    :goto_2
    monitor-exit p2

    throw p0

    :goto_3
    monitor-exit v3

    throw p0

    :cond_5
    :goto_4
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Can\'t start startListeningForFace(), mFaceRunningState = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFaceRunningState:I

    invoke-static {p0, v2, p1}, Landroidx/recyclerview/widget/RecyclerView$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    goto :goto_5

    :cond_6
    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFace(Lcom/android/systemui/deviceentry/shared/FaceAuthUiEvent;)V

    :goto_5
    return-void
.end method

.method public final updateFingerprintListeningState(I)V
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->shouldListenForFingerprint(Z)Z

    move-result v1

    iget v2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    const/4 v4, 0x3

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "updateFingerprintListeningState#mFingerprintRunningState="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " shouldListenForFingerprint="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isUdfpsEnrolled=false bioType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    invoke-virtual {v5, v0}, Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;->getSelectedUserId(Z)I

    move-result v5

    iget-object v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mBiometricType:Landroid/util/SparseIntArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "KeyguardFingerprint"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    if-nez v1, :cond_4

    if-nez p1, :cond_2

    return-void

    :cond_2
    iget p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mFingerprintRunningState:I

    if-ne p1, v3, :cond_8

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->removeMaskViewForOpticalFpSensor()V

    :cond_3
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->stopListeningForFingerprint()V

    goto :goto_2

    :cond_4
    if-nez v2, :cond_7

    if-eqz v1, :cond_7

    if-ne p1, v3, :cond_5

    return-void

    :cond_5
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addMaskViewForOpticalFpSensor()V

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->startListeningForFingerprint(Z)V

    goto :goto_2

    :cond_7
    if-nez v2, :cond_8

    if-nez v1, :cond_8

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_8

    sget-boolean p1, Lcom/android/systemui/LsRune;->COVER_SUPPORTED:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isCoverClosed()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mKeyguardShowing:Z

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addMaskViewForOpticalFpSensor()V

    :cond_8
    :goto_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz p1, :cond_b

    if-nez v1, :cond_9

    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY_OPTICAL:Z

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpMaskToken:Landroid/os/IBinder;

    if-eqz p1, :cond_b

    :cond_9
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    if-eqz p1, :cond_a

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    if-nez p1, :cond_a

    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsDreamingForBiometrics:Z

    if-nez p1, :cond_a

    move v0, v3

    :cond_a
    xor-int/lit8 p1, v0, 0x1

    iget v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpInDisplayState:I

    if-eq v0, p1, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mFpInDisplayState is changed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpInDisplayState:I

    const-string v2, " -> "

    invoke-static {v0, v1, v2, p1, v5}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    iput p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpInDisplayState:I

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->semSetScreenStatus(I)I

    :cond_b
    return-void
.end method

.method public final updateLockscreenDisabled(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockscreenDisabled:Z

    if-eq v1, v0, :cond_0

    const-string/jumbo v1, "updateLockscreenDisabled() userId "

    const-string v2, ", lockScreenDisabled:"

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockscreenDisabled:Z

    const-string v2, "->"

    invoke-static {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockscreenDisabled:Z

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final updateOwnerInfo(I)Z
    .locals 5

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    if-ne v2, v0, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    if-eqz v2, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const-string/jumbo v2, "updateOwnerInfoEnabled() userId "

    const-string v3, ", OE:"

    invoke-static {p1, v2, v3}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    const-string v3, "->"

    const-string v4, ", OI(isEmpty):"

    invoke-static {p1, v2, v3, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mIsOwnerInfoEnabled:Z

    iput-object v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mOwnerInfoText:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final updatePermanentLock(I)Z
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->getMaxFailedUnlockAttempts()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    if-eq v1, v0, :cond_1

    const-string/jumbo v1, "updatePermanentLock() userId "

    const-string v2, ", PML:"

    invoke-static {p1, v1, v2}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    const-string v2, "->"

    invoke-static {p1, v1, v2, v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mPermanentLock:Z

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    return v3

    :cond_1
    return v2
.end method

.method public final updateRemoteLockInfo(Lcom/android/internal/widget/RemoteLockInfo;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    iget v4, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    if-ne v3, v4, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/RemoteLockInfo;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p1, Lcom/android/internal/widget/RemoteLockInfo;->lockState:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/RemoteLockInfo;

    iget v3, v3, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    if-ge v2, v3, :cond_3

    iput v1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mActiveRemoteLockIndex:I

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mRemoteLockInfo:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/widget/RemoteLockInfo;

    iget v2, v2, Lcom/android/internal/widget/RemoteLockInfo;->lockType:I

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/RemoteLockInfo;->diff(Lcom/android/internal/widget/RemoteLockInfo;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateRemoteLockInfo() diff="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 p1, 0x452

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    return-void
.end method

.method public final updateSIPShownState(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSIPShown:Z

    if-eq v0, p1, :cond_0

    const-string/jumbo v0, "updateSIPShownState : "

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v0, v1, p1}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSIPShown:Z

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->isFingerprintOptionEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->updateFingerprintListeningState(I)V

    :cond_0
    return-void
.end method

.method public final updateSecureLockTimeout(I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptTimeout(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    cmp-long v4, v4, v0

    const/4 v5, 0x0

    if-nez v4, :cond_1

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    cmp-long v4, v6, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    return v5

    :cond_1
    :goto_0
    const-string/jumbo v4, "updateSecureLockTimeout() userId "

    const-string v6, ", AD:"

    invoke-static {p1, v4, v6}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "->"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", AT:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptDeadline:J

    iput-wide v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->addAdditionalLog(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mDesktopManagerLazy:Ldagger/Lazy;

    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/DesktopManager;

    iget-wide v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_2

    move v5, v1

    :cond_2
    invoke-interface {p1, v5}, Lcom/android/systemui/util/DesktopManager;->notifyKeyguardLockout(Z)V

    iget-wide v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mLockoutAttemptTimeout:J

    cmp-long p1, v4, v2

    if-lez p1, :cond_3

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Lcom/android/keyguard/KeyguardUpdateMonitor$16;

    const/16 p1, 0x3eb

    invoke-virtual {p0, p1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    return v1
.end method

.method public final updateUserUnlockNotification(I)V
    .locals 6

    const-string/jumbo v0, "updateUserUnlockNotification(), isUserUnlocked("

    const-string v1, ") : "

    invoke-static {p1, v0, v1}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserIsUnlocked:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p1

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f1308c9

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1308ca

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->createChannels()V

    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mContext:Landroid/content/Context;

    const-string v5, "fbe_channel_id"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x1080b7e

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v0, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_0
    return-void
.end method

.method public final updatedSimPinPassed(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl;->mSimPinPassed:[Z

    aput-boolean v0, p0, p1

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "updatedSimPinPassed  Slot Boundary Exception SlotNum: "

    const-string v0, "KeyguardUpdateMonitor"

    invoke-static {p1, p0, v0}, Landroidx/compose/foundation/text/input/internal/RecordingInputConnection$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
