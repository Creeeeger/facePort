.class public final Lcom/android/keyguard/KeyguardInputViewController$Factory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

.field public final mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

.field public final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field public final mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

.field public final mKeyguardTouchSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

.field public final mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

.field public final mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

.field public final mResources:Landroid/content/res/Resources;

.field public final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p2

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v1, p3

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    move-object v1, p4

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object v1, p5

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object v1, p6

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    move-object v1, p7

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object v1, p8

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardTouchSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    move-object v1, p9

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object v1, p10

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    move-object v1, p11

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    move-object v1, p12

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object v1, p13

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object/from16 v1, p20

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    move-object/from16 v1, p21

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v1, p22

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v1, p23

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v1, p24

    iput-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    return-void
.end method


# virtual methods
.method public final create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a03ff

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/EmergencyButton;

    iget-object v3, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    invoke-virtual {v3, v2}, Lcom/android/keyguard/EmergencyButtonController$Factory;->create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;

    move-result-object v2

    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecPatternView;

    if-eqz v3, :cond_0

    new-instance v3, Lcom/android/keyguard/KeyguardSecPatternViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecPatternView;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object v4, v3

    move-object/from16 v9, p2

    move-object/from16 v11, p3

    move-object/from16 v16, v14

    move-object v14, v2

    move-object v2, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v4 .. v18}, Lcom/android/keyguard/KeyguardSecPatternViewController;-><init>(Lcom/android/keyguard/KeyguardSecPatternView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-object v3

    :cond_0
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecPasswordView;

    if-eqz v3, :cond_2

    instance-of v3, v1, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordView;

    if-eqz v3, :cond_1

    new-instance v3, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    move-object/from16 v24, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object/from16 v21, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v22, v0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v24}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    return-object v3

    :cond_1
    new-instance v3, Lcom/android/keyguard/KeyguardSecPasswordViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecPasswordView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mResources:Landroid/content/res/Resources;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v23, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    move-object/from16 v24, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object/from16 v21, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v22, v0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v24}, Lcom/android/keyguard/KeyguardSecPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardSecPasswordView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/content/res/Resources;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    return-object v3

    :cond_2
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecPINView;

    if-eqz v3, :cond_4

    instance-of v3, v1, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;

    if-eqz v3, :cond_3

    new-instance v3, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    move-object/from16 v22, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v19, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v20, v0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v22}, Lcom/android/keyguard/KeyguardKnoxDualDarInnerPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    return-object v3

    :cond_3
    new-instance v3, Lcom/android/keyguard/KeyguardSecPinViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecPINView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    move-object/from16 v22, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mDevicePostureController:Lcom/android/systemui/statusbar/policy/DevicePostureController;

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v19, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v20, v0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v22}, Lcom/android/keyguard/KeyguardSecPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecPINView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/policy/DevicePostureController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    return-object v3

    :cond_4
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecSimPinView;

    if-eqz v3, :cond_5

    new-instance v3, Lcom/android/keyguard/KeyguardSecSimPinViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecSimPinView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v22, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v19, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v20, v0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v18, v2

    invoke-direct/range {v4 .. v22}, Lcom/android/keyguard/KeyguardSecSimPinViewController;-><init>(Lcom/android/keyguard/KeyguardSecSimPinView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;Landroid/view/inputmethod/InputMethodManager;)V

    return-object v3

    :cond_5
    instance-of v3, v1, Lcom/android/keyguard/KeyguardSecSimPukView;

    if-eqz v3, :cond_6

    new-instance v3, Lcom/android/keyguard/KeyguardSecSimPukViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSecSimPukView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v22, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v19, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v20, v0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v18, v2

    invoke-direct/range {v4 .. v22}, Lcom/android/keyguard/KeyguardSecSimPukViewController;-><init>(Lcom/android/keyguard/KeyguardSecSimPukView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Landroid/telephony/TelephonyManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;Landroid/view/inputmethod/InputMethodManager;)V

    return-object v3

    :cond_6
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERSO_LOCK:Z

    if-eqz v3, :cond_7

    instance-of v3, v1, Lcom/android/keyguard/KeyguardSimPersoView;

    if-eqz v3, :cond_7

    new-instance v3, Lcom/android/keyguard/KeyguardSimPersoViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSimPersoView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    move-object/from16 v20, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v17, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v18, v0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v20}, Lcom/android/keyguard/KeyguardSimPersoViewController;-><init>(Lcom/android/keyguard/KeyguardSimPersoView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    return-object v3

    :cond_7
    instance-of v3, v1, Lcom/android/keyguard/KeyguardPermanentView;

    if-eqz v3, :cond_8

    new-instance v3, Lcom/android/keyguard/KeyguardPermanentViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardPermanentView;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    move-object v4, v3

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v8, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/keyguard/KeyguardPermanentViewController;-><init>(Lcom/android/keyguard/KeyguardPermanentView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-object v3

    :cond_8
    sget-boolean v3, Lcom/android/systemui/LsRune;->SECURITY_SWIPE_BOUNCER:Z

    if-eqz v3, :cond_9

    instance-of v3, v1, Lcom/android/keyguard/KeyguardSwipeView;

    if-eqz v3, :cond_9

    new-instance v3, Lcom/android/keyguard/KeyguardSwipeViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardSwipeView;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardTouchSwipeDetector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    move-object v4, v3

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v8, v2

    invoke-direct/range {v4 .. v14}, Lcom/android/keyguard/KeyguardSwipeViewController;-><init>(Lcom/android/keyguard/KeyguardSwipeView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-object v3

    :cond_9
    instance-of v3, v1, Lcom/android/keyguard/KeyguardAdminView;

    if-eqz v3, :cond_a

    new-instance v3, Lcom/android/keyguard/KeyguardAdminViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardAdminView;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    move-object v4, v3

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v8, v2

    invoke-direct/range {v4 .. v11}, Lcom/android/keyguard/KeyguardAdminViewController;-><init>(Lcom/android/keyguard/KeyguardAdminView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-object v3

    :cond_a
    instance-of v3, v1, Lcom/android/keyguard/KeyguardFMMView;

    if-eqz v3, :cond_b

    new-instance v3, Lcom/android/keyguard/KeyguardFMMViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardFMMView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    move-object/from16 v20, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v17, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v18, v0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v20}, Lcom/android/keyguard/KeyguardFMMViewController;-><init>(Lcom/android/keyguard/KeyguardFMMView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    return-object v3

    :cond_b
    instance-of v3, v1, Lcom/android/keyguard/KeyguardKnoxGuardView;

    if-eqz v3, :cond_c

    new-instance v3, Lcom/android/keyguard/KeyguardKnoxGuardViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardKnoxGuardView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v20, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v21, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mNetworkController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    move-object/from16 v22, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    move-object/from16 v23, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object/from16 v17, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v18, v0

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    move-object/from16 v16, v2

    invoke-direct/range {v4 .. v23}, Lcom/android/keyguard/KeyguardKnoxGuardViewController;-><init>(Lcom/android/keyguard/KeyguardKnoxGuardView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Landroid/view/inputmethod/InputMethodManager;Landroid/telephony/TelephonyManager;Landroid/net/wifi/WifiManager;Lcom/android/systemui/statusbar/connectivity/NetworkController;Lcom/android/systemui/keyguard/ScreenLifecycle;)V

    return-object v3

    :cond_c
    instance-of v3, v1, Lcom/android/keyguard/KeyguardCarrierView;

    if-eqz v3, :cond_d

    new-instance v3, Lcom/android/keyguard/KeyguardCarrierViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardCarrierView;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    move-object v4, v3

    move-object/from16 v6, p2

    move-object/from16 v8, p3

    move-object v9, v2

    invoke-direct/range {v4 .. v13}, Lcom/android/keyguard/KeyguardCarrierViewController;-><init>(Lcom/android/keyguard/KeyguardCarrierView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/EmergencyButtonController;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-object v3

    :cond_d
    instance-of v3, v1, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    if-eqz v3, :cond_e

    new-instance v3, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v7, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    iget-object v9, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v13, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    move-object v4, v3

    move-object/from16 v10, p2

    move-object/from16 v16, v12

    move-object/from16 v12, p3

    move-object/from16 v19, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v2

    move-object/from16 v17, v0

    move-object/from16 v18, v1

    invoke-direct/range {v4 .. v19}, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;-><init>(Lcom/android/keyguard/KeyguardCarrierPasswordView;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/flags/FeatureFlags;Landroid/view/inputmethod/InputMethodManager;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;)V

    return-object v3

    :cond_e
    instance-of v3, v1, Lcom/android/keyguard/KeyguardUCMView;

    if-eqz v3, :cond_f

    new-instance v3, Lcom/android/keyguard/KeyguardUCMViewController;

    move-object v4, v3

    move-object v5, v1

    check-cast v5, Lcom/android/keyguard/KeyguardUCMView;

    iget-object v8, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v11, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLatencyTracker:Lcom/android/internal/util/LatencyTracker;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

    move-object/from16 v19, v1

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardKeyboardInteractor:Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;

    move-object/from16 v20, v1

    iget-object v6, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v10, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mMessageAreaControllerFactory:Lcom/android/keyguard/KeyguardMessageAreaController$Factory;

    iget-object v12, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mLiftToActivateListener:Lcom/android/keyguard/LiftToActivateListener;

    iget-object v14, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v15, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mFeatureFlags:Lcom/android/systemui/flags/FeatureFlags;

    iget-object v1, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mVibrationUtil:Lcom/android/systemui/vibrate/VibrationUtil;

    move-object/from16 v16, v1

    iget-object v0, v0, Lcom/android/keyguard/KeyguardInputViewController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v18, v0

    move-object/from16 v7, p2

    move-object/from16 v9, p3

    move-object v13, v2

    invoke-direct/range {v4 .. v20}, Lcom/android/keyguard/KeyguardUCMViewController;-><init>(Lcom/android/keyguard/KeyguardUCMView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/KeyguardMessageAreaController$Factory;Lcom/android/internal/util/LatencyTracker;Lcom/android/keyguard/LiftToActivateListener;Lcom/android/keyguard/EmergencyButtonController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/vibrate/VibrationUtil;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/keyguard/domain/interactor/KeyguardKeyboardInteractor;)V

    return-object v3

    :cond_f
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unable to find controller for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
