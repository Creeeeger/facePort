.class public final Lcom/android/systemui/globalactions/GlobalActionsDialogLite;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/plugins/GlobalActionsPanelPlugin$Callbacks;
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field static final GLOBAL_ACTION_KEY_POWER:Ljava/lang/String; = "power"


# instance fields
.field public final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final mAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyAdapter;

.field public final mAirplaneModeObserver:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$7;

.field public mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;

.field public mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

.field public final mAudioManager:Landroid/media/AudioManager;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mContext:Landroid/content/Context;

.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final mDeviceProvisioned:Z

.field protected mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

.field public mDialogPressDelay:I

.field public final mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

.field public final mDreamManager:Landroid/service/dreams/IDreamManager;

.field public final mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

.field public final mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

.field public final mHasTelephony:Z

.field public final mHasVibrator:Z

.field public final mIActivityManager:Landroid/app/IActivityManager;

.field public final mIWindowManager:Landroid/view/IWindowManager;

.field public final mInteractor:Lcom/android/systemui/globalactions/domain/interactor/GlobalActionsInteractor;

.field public mIsWaitingForEcmExit:Z

.field protected final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;",
            ">;"
        }
    .end annotation
.end field

.field public final mKeyguardShowing:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public final mLightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mOrientation:I

.field public final mOverflowAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyOverflowAdapter;

.field protected final mOverflowItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;",
            ">;"
        }
    .end annotation
.end field

.field public final mPhoneStateListener:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$6;

.field public final mPowerAdapter:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$MyPowerOptionsAdapter;

.field protected final mPowerItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;",
            ">;"
        }
    .end annotation
.end field

.field public final mResources:Landroid/content/res/Resources;

.field public final mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

.field public final mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSelectedUserInteractor:Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mShowSilentToggle:Z

.field public mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

.field public mSmallestScreenWidthDp:I

.field public final mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mStatusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public final mSysuiColorExtractor:Lcom/android/systemui/colorextraction/SysuiColorExtractor;

.field public final mTelecomManager:Landroid/telecom/TelecomManager;

.field public final mTelephonyListenerManager:Lcom/android/systemui/telephony/TelephonyListenerManager;

.field public final mTrustManager:Landroid/app/trust/TrustManager;

.field public final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;


# direct methods
.method public static -$$Nest$mchangeAirplaneModeSystemSetting(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v1, "airplane_mode_on"

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/util/settings/SettingsProxy;->putInt(Ljava/lang/String;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasTelephony:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    :cond_1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;Landroid/media/AudioManager;Landroid/service/dreams/IDreamManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/telephony/TelephonyListenerManager;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/VibratorHelper;Landroid/content/res/Resources;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Landroid/os/UserManager;Landroid/app/trust/TrustManager;Landroid/app/IActivityManager;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Landroid/view/IWindowManager;Ljava/util/concurrent/Executor;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/util/RingerModeTracker;Landroid/os/Handler;Landroid/content/pm/PackageManager;Lcom/android/systemui/shade/ShadeController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/animation/DialogTransitionAnimator;Lcom/android/systemui/user/domain/interactor/SelectedUserInteractor;Lcom/android/systemui/globalactions/domain/interactor/GlobalActionsInteractor;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v4, Landroidx/lifecycle/LifecycleRegistry;

    invoke-direct {v4, p0}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;)V

    iput-object v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mItems:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mOverflowItems:Ljava/util/ArrayList;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mPowerItems:Ljava/util/ArrayList;

    const/4 v4, 0x0

    iput-boolean v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mKeyguardShowing:Z

    iput-boolean v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDeviceProvisioned:Z

    sget-object v5, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    iput-boolean v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mIsWaitingForEcmExit:Z

    const/16 v4, 0x352

    iput v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogPressDelay:I

    new-instance v4, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;

    invoke-direct {v4, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$5;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    new-instance v5, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$6;

    invoke-direct {v5, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$6;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    new-instance v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$7;

    iget-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mMainHandler:Landroid/os/Handler;

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$7;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;Landroid/os/Handler;)V

    new-instance v7, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    invoke-direct {v7, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    iput-object v1, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mContext:Landroid/content/Context;

    move-object v7, p2

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    move-object v7, p3

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAudioManager:Landroid/media/AudioManager;

    move-object v7, p5

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    move-object/from16 v7, p6

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v7, p16

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    move-object/from16 v7, p10

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    iput-object v3, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mResources:Landroid/content/res/Resources;

    move-object/from16 v7, p14

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    move-object/from16 v7, p15

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    move-object/from16 v7, p17

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v7, p18

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mTrustManager:Landroid/app/trust/TrustManager;

    move-object/from16 v7, p19

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mIActivityManager:Landroid/app/IActivityManager;

    move-object/from16 v7, p20

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mTelecomManager:Landroid/telecom/TelecomManager;

    move-object/from16 v7, p21

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v7, p29

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v7, p27

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mIWindowManager:Landroid/view/IWindowManager;

    move-object/from16 v7, p28

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v7, p30

    iput-object v7, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mRingerModeTracker:Lcom/android/systemui/util/RingerModeTracker;

    move-object/from16 v8, p31

    iput-object v8, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mMainHandler:Landroid/os/Handler;

    invoke-virtual/range {p12 .. p12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v8, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mSmallestScreenWidthDp:I

    invoke-virtual/range {p12 .. p12}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    iput v8, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mOrientation:I

    move-object/from16 v8, p33

    iput-object v8, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    move-object/from16 v8, p35

    iput-object v8, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogTransitionAnimator:Lcom/android/systemui/animation/DialogTransitionAnimator;

    move-object/from16 v8, p37

    iput-object v8, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mInteractor:Lcom/android/systemui/globalactions/domain/interactor/GlobalActionsInteractor;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v9, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    move-object/from16 v9, p7

    invoke-virtual {v9, v8, v4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    const-string v4, "android.hardware.telephony"

    move-object/from16 v8, p32

    invoke-virtual {v8, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasTelephony:Z

    move-object/from16 v4, p8

    iget-object v8, v4, Lcom/android/systemui/telephony/TelephonyListenerManager;->mTelephonyCallback:Lcom/android/systemui/telephony/TelephonyCallback;

    iget-object v8, v8, Lcom/android/systemui/telephony/TelephonyCallback;->mServiceStateListeners:Ljava/util/List;

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/telephony/TelephonyListenerManager;->updateListening()V

    const-string v4, "airplane_mode_on"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v2, v4, v5, v6}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverSync(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-virtual/range {p11 .. p11}, Lcom/android/systemui/statusbar/VibratorHelper;->hasVibrator()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasVibrator:Z

    const v2, 0x1110273

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    xor-int/2addr v2, v5

    iput-boolean v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mShowSilentToggle:Z

    if-eqz v2, :cond_0

    invoke-interface/range {p30 .. p30}, Lcom/android/systemui/util/RingerModeTracker;->getRingerMode()Landroidx/lifecycle/LiveData;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    invoke-virtual {v2, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_0
    new-instance v2, Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-direct {v2, p1}, Lcom/android/internal/util/EmergencyAffordanceManager;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    new-instance v2, Lcom/android/internal/util/ScreenshotHelper;

    invoke-direct {v2, p1}, Lcom/android/internal/util/ScreenshotHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mScreenshotHelper:Lcom/android/internal/util/ScreenshotHelper;

    move-object/from16 v1, p13

    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->shouldShowAction(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)Z

    move-result p0

    if-eqz p0, :cond_0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createActionItems()V
    .locals 20

    move-object/from16 v6, p0

    iget-boolean v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasVibrator:Z

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeToggleAction;

    invoke-direct {v0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeToggleAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    iput-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;

    iget-object v1, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SilentModeTriStateAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    :goto_0
    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;

    invoke-direct {v0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    iput-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->onAirplaneModeChanged()V

    iget-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mPowerItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->getDefaultActions()[Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ShutDownAction;

    invoke-direct {v8, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ShutDownAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    new-instance v9, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$RestartAction;

    invoke-direct {v9, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$RestartAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    new-instance v10, Landroid/util/ArraySet;

    invoke-direct {v10}, Landroid/util/ArraySet;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;

    const/4 v13, 0x0

    invoke-direct {v12, v6, v13}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V

    iget-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mEmergencyAffordanceManager:Lcom/android/internal/util/EmergencyAffordanceManager;

    invoke-virtual {v0}, Lcom/android/internal/util/EmergencyAffordanceManager;->needsEmergencyAffordance()Z

    move-result v0

    const-string v14, "emergency"

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAffordanceAction;

    invoke-direct {v0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyAffordanceAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    invoke-virtual {v10, v14}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    move v15, v13

    :goto_1
    array-length v0, v7

    if-ge v15, v0, :cond_19

    aget-object v5, v7, v15

    invoke-virtual {v10, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object/from16 v18, v7

    goto/16 :goto_b

    :cond_2
    const-string v0, "power"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v6, v11, v8}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    :cond_3
    :goto_2
    move-object/from16 v18, v7

    move-object v7, v5

    goto/16 :goto_a

    :cond_4
    const-string v0, "airplane"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto :goto_2

    :cond_5
    const-string v0, "bugreport"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->shouldDisplayBugReport(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;

    invoke-direct {v0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto :goto_2

    :cond_6
    const-string/jumbo v0, "silent"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mShowSilentToggle:Z

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mSilentModeAction:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v0, "users"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "fw.power_user_switcher"

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v4

    iget-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_3
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/UserInfo;

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    if-nez v4, :cond_9

    iget v1, v3, Landroid/content/pm/UserInfo;->id:I

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    move v0, v13

    goto :goto_4

    :cond_9
    iget v1, v4, Landroid/content/pm/UserInfo;->id:I

    iget v2, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, v2, :cond_8

    :goto_4
    iget-object v1, v3, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v1, :cond_a

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_5
    move-object/from16 v17, v1

    goto :goto_6

    :cond_a
    const/4 v1, 0x0

    goto :goto_5

    :goto_6
    new-instance v2, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$4;

    iget-object v1, v3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_b

    goto :goto_7

    :cond_b
    const-string v1, "Primary"

    :goto_7
    if-eqz v0, :cond_c

    const-string v0, " \u2714"

    goto :goto_8

    :cond_c
    const-string v0, ""

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const v19, 0x1080535

    move-object v0, v2

    move-object/from16 v1, p0

    move-object v13, v2

    move/from16 v2, v19

    move-object/from16 v19, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v18

    move-object/from16 v18, v7

    move-object v7, v5

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$4;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Landroid/content/pm/UserInfo;)V

    invoke-virtual {v6, v11, v13}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto :goto_9

    :cond_d
    move-object/from16 v17, v4

    move-object/from16 v18, v7

    move-object v7, v5

    :goto_9
    move-object v5, v7

    move-object/from16 v4, v17

    move-object/from16 v7, v18

    const/4 v13, 0x0

    goto :goto_3

    :cond_e
    move-object/from16 v18, v7

    move-object v7, v5

    const-string/jumbo v0, "settings"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$1;

    const v1, 0x10805be

    const v2, 0x10405e5

    invoke-direct {v0, v6, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$1;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;II)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto/16 :goto_a

    :cond_f
    const-string v0, "lockdown"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->shouldDisplayLockdown(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LockDownAction;

    invoke-direct {v0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LockDownAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto/16 :goto_a

    :cond_10
    const-string/jumbo v0, "voiceassist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$3;

    const v1, 0x10805fe

    const v2, 0x10405ed

    invoke-direct {v0, v6, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$3;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;II)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto/16 :goto_a

    :cond_11
    const-string v0, "assist"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$2;

    const v1, 0x1080395

    const v2, 0x10405be

    invoke-direct {v0, v6, v1, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$2;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;II)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto/16 :goto_a

    :cond_12
    const-string/jumbo v0, "restart"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {v6, v11, v9}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto :goto_a

    :cond_13
    const-string/jumbo v0, "screenshot"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;

    invoke-direct {v0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto :goto_a

    :cond_14
    const-string v0, "logout"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isLogoutEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v12}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$CurrentUserProvider;->get()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LogoutAction;

    const/4 v1, 0x0

    invoke-direct {v0, v6, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$LogoutAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto :goto_a

    :cond_15
    const/4 v1, 0x0

    invoke-virtual {v14, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->shouldDisplayEmergency()Z

    move-result v0

    if-eqz v0, :cond_18

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;

    invoke-direct {v0, v6, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto :goto_a

    :cond_16
    const-string/jumbo v0, "system_update"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SystemUpdateAction;

    invoke-direct {v0, v6}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$SystemUpdateAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    invoke-virtual {v6, v11, v0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->addIfShouldShowAction(Ljava/util/List;Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)V

    goto :goto_a

    :cond_17
    const-string v0, "Invalid global action key "

    const-string v1, "GlobalActionsDialogLite"

    invoke-static {v0, v7, v1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_18
    :goto_a
    invoke-virtual {v10, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v7, v18

    const/4 v13, 0x0

    goto/16 :goto_1

    :cond_19
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->getMaxShownPowerItems()I

    move-result v1

    if-le v0, v1, :cond_1a

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mPowerItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mPowerItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$PowerOptionsAction;

    const/4 v2, 0x0

    invoke-direct {v1, v6, v2}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$PowerOptionsAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V

    invoke-virtual {v11, v0, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_1a
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;

    iget-object v2, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->getMaxShownPowerItems()I

    move-result v3

    if-ge v2, v3, :cond_1b

    iget-object v2, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1b
    iget-object v2, v6, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mOverflowItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1c
    return-void
.end method

.method public final dismissGlobalActionsMenu()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHandler:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$8;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public getDefaultActions()[Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mResources:Landroid/content/res/Resources;

    const v0, 0x1070108

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getLifecycle()Landroidx/lifecycle/Lifecycle;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public getMaxShownPowerItems()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b00d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0b00d2

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    mul-int/2addr p0, v0

    return p0
.end method

.method public makeBugReportActionForTesting()Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;
    .locals 1

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$BugReportAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    return-object v0
.end method

.method public makeEmergencyDialerActionForTesting()Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;
    .locals 2

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$EmergencyDialerAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;I)V

    return-object v0
.end method

.method public makeScreenshotActionForTesting()Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;
    .locals 1

    new-instance v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;

    invoke-direct {v0, p0}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ScreenshotAction;-><init>(Lcom/android/systemui/globalactions/GlobalActionsDialogLite;)V

    return-object v0
.end method

.method public final onAirplaneModeChanged()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasTelephony:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mGlobalSettings:Lcom/android/systemui/util/settings/GlobalSettings;

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->On:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;->Off:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mAirplaneModeOn:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$AirplaneModeAction;

    iput-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleAction;->mState:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ToggleState;

    :cond_2
    :goto_1
    return-void
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mSmallestScreenWidthDp:I

    if-ne v0, v1, :cond_0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mOrientation:I

    if-eq v1, v2, :cond_4

    :cond_0
    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mSmallestScreenWidthDp:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mOrientation:I

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOnRefreshCallback:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mOverflowPopup:Lcom/android/systemui/globalactions/GlobalActionsPopupMenu;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mPowerOptionsDialog:Landroid/app/Dialog;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;->mGlobalActionsLayout:Lcom/android/systemui/MultiListLayout;

    iget-object p1, p0, Lcom/android/systemui/MultiListLayout;->mAdapter:Lcom/android/systemui/MultiListLayout$MultiListAdapter;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/MultiListLayout;->onUpdateList()V

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "mAdapter must be set before calling updateList"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_0
    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iput-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialog:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$ActionsDialogLite;

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_POWER_MENU_CLOSE:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mWindowManagerFuncs:Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/GlobalActions$GlobalActionsManager;->onGlobalActionsHidden()V

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v0, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mInteractor:Lcom/android/systemui/globalactions/domain/interactor/GlobalActionsInteractor;

    iget-object p0, p0, Lcom/android/systemui/globalactions/domain/interactor/GlobalActionsInteractor;->repository:Lcom/android/systemui/globalactions/data/repository/GlobalActionsRepository;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/android/systemui/globalactions/data/repository/GlobalActionsRepository;->_isVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v1, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x620

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    iget-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;->GA_POWER_MENU_OPEN:Lcom/android/systemui/globalactions/GlobalActionsDialogLite$GlobalActionsEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mInteractor:Lcom/android/systemui/globalactions/domain/interactor/GlobalActionsInteractor;

    iget-object p0, p0, Lcom/android/systemui/globalactions/domain/interactor/GlobalActionsInteractor;->repository:Lcom/android/systemui/globalactions/data/repository/GlobalActionsRepository;

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v0, 0x0

    iget-object p0, p0, Lcom/android/systemui/globalactions/data/repository/GlobalActionsRepository;->_isVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->updateState(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public setZeroDialogPressDelayForTesting()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDialogPressDelay:I

    return-void
.end method

.method public shouldDisplayBugReport(Landroid/content/pm/UserInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    const-string v1, "bugreport_in_power_menu"

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {p0, v1, v0, p1}, Lcom/android/systemui/util/settings/UserSettingsProxy;->getIntForUser(Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public shouldDisplayEmergency()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mHasTelephony:Z

    return p0
.end method

.method public shouldDisplayLockdown(Landroid/content/pm/UserInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mSecure:Z

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getStrongAuthForUser(I)I

    move-result p0

    if-eqz p0, :cond_2

    const/4 p1, 0x4

    if-ne p0, p1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public shouldShowAction(Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialogLite;->mDeviceProvisioned:Z

    if-nez p0, :cond_1

    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->showBeforeProvisioning()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/globalactions/GlobalActionsDialogLite$Action;->shouldShow()Z

    move-result p0

    return p0
.end method
