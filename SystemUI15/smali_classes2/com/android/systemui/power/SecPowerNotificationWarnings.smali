.class public final Lcom/android/systemui/power/SecPowerNotificationWarnings;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/power/SecWarningsUI;


# instance fields
.field public final mAudioManager:Landroid/media/AudioManager;

.field public mAutomaticTestMode:Z

.field public mBatteryHealth:I

.field public mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

.field public mBatteryLevel:I

.field public final mBatterySettings:Landroid/content/Intent;

.field public mBatteryStatus:I

.field public mBucket:I

.field public mChargingTime:J

.field public mChargingType:I

.field public mConnectedChargerChangedToast:Landroid/widget/Toast;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBatteryMode:I

.field public mDoNotShowChargingNotice:Z

.field public mFTAMode:Z

.field public final mFoldStateListener:Lcom/android/systemui/power/SecPowerNotificationWarnings$2;

.field public mHVchargerEnablePopupDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mHandler:Landroid/os/Handler;

.field public mHandlerWrapper:Lcom/android/systemui/power/HandlerWrapper;

.field public mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

.field public mIsHiccupState:Z

.field public mIsInCall:Z

.field public mIsMaximumProtectionEnabled:Z

.field public mIsTemperatureHiccupState:Z

.field public mIsUnintentionalPopupShowing:Z

.field public mIsWaterDetected:Z

.field public mMaximumThresholdValue:I

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field public mOldBatteryLevel:I

.field public mOldChargingType:I

.field public mOptimizationChargingFinishTime:Ljava/lang/String;

.field public mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

.field public mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mOverheatShutdownTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

.field public mPlaySound:Z

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mSafeModeDialog:Landroidx/appcompat/app/AlertDialog;

.field public mShowChargingNotice:Z

.field public mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mSmartManagerBatterySettings:Landroid/content/Intent;

.field public mSuperFastCharger:I

.field public mSwellingDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

.field public mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

.field public mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mUsbDamageProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

.field public mUsbDamageProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final mVibrator:Landroid/os/Vibrator;

.field public mWarning:Z

.field public mWarningTriggerTimeMs:J

.field public mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

.field public final mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

.field public mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

.field public mWindowManager:Landroid/view/WindowManager;

.field public mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;

    const/4 v7, 0x0

    invoke-direct {v1, p0, v7}, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x1c800000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatterySettings:Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.android.sm.ACTION_POWER_MODE_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    iput v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mMaximumThresholdValue:I

    iput v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    iput v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    iput v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    iput v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldBatteryLevel:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    iput v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    const/4 v8, 0x1

    iput v8, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryStatus:I

    iput v8, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsTemperatureHiccupState:Z

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z

    const/4 v9, 0x0

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAutomaticTestMode:Z

    iput-object v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandlerWrapper:Lcom/android/systemui/power/HandlerWrapper;

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    new-instance v0, Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$4;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    new-instance v0, Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$5;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    new-instance v0, Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$9;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

    new-instance v0, Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$18;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    new-instance v0, Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$21;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v10, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v10, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v10, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Lcom/android/systemui/media/NotificationPlayer;

    const-string v2, "PowerUI.Notification"

    invoke-direct {v0, v2}, Lcom/android/systemui/media/NotificationPlayer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "PNW.batteryInfo"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.powerMode"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.abnormalPadNoThanks"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "PNW.dismissedWarning"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_OVER_HEAT"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_BATTERY_SAFE_MODE"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.factory.app.factorytest.FTA_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.sec.factory.app.factorytest.FTA_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_ON"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.power.action.ACTION_AUTOMATIC_TEST_MODE_OFF"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->POLICY_CHARGING_NOTIFICATION:Z

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.systemui.action.DELETED_CHARGING_NOTI"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    if-eqz v0, :cond_1

    const-string v0, "com.samsung.android.sm.ACTION_OPTIMIZED_CHARGING_NOTI_DISMISSED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v0, v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v5, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x2

    const-string v11, "android.permission.DEVICE_POWER"

    move-object v0, v2

    move-object v2, v4

    move-object v4, v11

    invoke-virtual/range {v0 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$1;

    invoke-direct {v1, p0, v10, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$1;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    const-string v2, "low_power"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v7, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {v0, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    iput v8, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    goto :goto_0

    :cond_3
    iput v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    :goto_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    if-eqz p1, :cond_4

    new-instance p1, Lcom/android/systemui/power/SecPowerNotificationWarnings$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$2;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p0

    invoke-virtual {p0, p1, v9}, Lcom/samsung/android/view/SemWindowManager;->registerFoldStateListener(Lcom/samsung/android/view/SemWindowManager$FoldStateListener;Landroid/os/Handler;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final cancelNotification(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/power/notification/PowerUiNotificationFactory;->getNotification(ILandroid/content/Context;)Lcom/android/systemui/power/notification/PowerUiNotification;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Illegal notification type : "

    const-string v0, "PowerUI.Notification"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p1, v0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatterySnapshot;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/power/notification/PowerUiNotification;->setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V

    invoke-virtual {v0}, Lcom/android/systemui/power/notification/PowerUiNotification;->dismissNotification()V

    return-void
.end method

.method public final declared-synchronized dismissUnintentionalLcdOnWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z

    if-eqz v0, :cond_2

    const-string v0, "PowerUI.Notification"

    const-string v1, "dismissUnintentionalLcdOnWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    iget-object v2, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    if-ne v2, p0, :cond_0

    iput-object v1, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    :cond_0
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    sget-object v0, Lcom/android/systemui/LsRune;->VALUE_SUB_DISPLAY_POLICY:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    move-object v2, v1

    goto :goto_0

    :pswitch_0
    new-instance v2, Lcom/android/systemui/power/dialog/HvChargerEnableDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/HvChargerEnableDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    new-instance v2, Lcom/android/systemui/power/dialog/UsbDamageProtectionDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/UsbDamageProtectionDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_2
    new-instance v2, Lcom/android/systemui/power/dialog/WaterProtectionDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/WaterProtectionDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_3
    new-instance v2, Lcom/android/systemui/power/dialog/WirelessFodDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/WirelessFodDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_4
    new-instance v2, Lcom/android/systemui/power/dialog/SafeModeDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/SafeModeDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_5
    new-instance v2, Lcom/android/systemui/power/dialog/HappenedOverheatShutdownDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/HappenedOverheatShutdownDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_6
    new-instance v2, Lcom/android/systemui/power/dialog/WillOverheatShutdownDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/WillOverheatShutdownDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_7
    new-instance v2, Lcom/android/systemui/power/dialog/OverheatDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/OverheatDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_8
    new-instance v2, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/BatteryHealthInterruptionDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_9
    new-instance v2, Lcom/android/systemui/power/dialog/PdChargerAlertDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/PdChargerAlertDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_a
    new-instance v2, Lcom/android/systemui/power/dialog/IncompatibleChargerDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/IncompatibleChargerDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_b
    new-instance v2, Lcom/android/systemui/power/dialog/BatterySwellingLowTempDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/BatterySwellingLowTempDialog;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :pswitch_c
    new-instance v2, Lcom/android/systemui/power/dialog/IncompleteChargerDialog;

    invoke-direct {v2, v0}, Lcom/android/systemui/power/dialog/IncompleteChargerDialog;-><init>(Landroid/content/Context;)V

    :goto_0
    if-nez v2, :cond_0

    const-string p0, "Illegal dialog type : "

    const-string v0, "PowerUI.Notification"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatterySnapshot;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/systemui/power/dialog/PowerUiDialog;->setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V

    invoke-virtual {v2}, Lcom/android/systemui/power/dialog/PowerUiDialog;->checkCondition()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/power/dialog/PowerUiDialog;->getDialog()Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    :cond_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatterySnapshot;
    .locals 11

    new-instance v10, Lcom/android/systemui/power/SecBatterySnapshot;

    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    iget v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mCurrentBatteryMode:I

    iget-wide v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    iget v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    iget v6, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    iget-boolean v7, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    iget-boolean v8, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAutomaticTestMode:Z

    iget-object v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOptimizationChargingFinishTime:Ljava/lang/String;

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/power/SecBatterySnapshot;-><init>(IIJIIZZLjava/lang/String;)V

    return-object v10
.end method

.method public final playPowerSound(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/power/sound/PowerUiSoundFactory;->getPowerUiSound(ILandroid/content/Context;)Lcom/android/systemui/power/sound/PowerUiSound;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iput-object v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    iput-object v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mVibrator:Landroid/os/Vibrator;

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    iput-boolean v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mIsInCall:Z

    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    iput v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mChargingType:I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    iput-object p0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Lcom/android/systemui/power/sound/PowerUiSound;->playSoundAndVibration()V

    return-void
.end method

.method public final playWaterAlertSound()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    if-nez v0, :cond_0

    const/16 v0, 0x640

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    :cond_0
    return-void
.end method

.method public final restoreScreenTimeOutIfNeeded()V
    .locals 11

    const-string v0, "PowerUI.Notification"

    const-string/jumbo v1, "restoreScreenTimeOut - restore user value to : "

    const-string/jumbo v2, "restoreScreenTimeOut : saved value = "

    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v4, "powerui_prefs"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "ScreenTimeOut"

    const-string v6, ":"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    invoke-virtual {v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v8, v6

    const/4 v9, 0x2

    if-lt v8, v9, :cond_0

    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x1

    aget-object v6, v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", screenTimeOut = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " userId = "

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x7530

    if-le v8, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_off_timeout"

    invoke-static {v1, v2, v8, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_dim_screen"

    invoke-static {v1, v2, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p0, :cond_0

    const-string v1, "PowerUi.PowerUtils"

    const-string v2, "Request userActivity() for reset screen on time"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2, v5, v5}, Landroid/os/PowerManager;->userActivity(JII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "restoreScreenTimeOutIfNeeded "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, v4}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1
    return-void
.end method

.method public final showAdaptiveProtectionNotification(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v1, ""

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "PowerUi.PowerUtils"

    const-string v2, "ParseException"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOptimizationChargingFinishTime:Ljava/lang/String;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    return-void
.end method

.method public final showBatteryHealthInterruptionPopUp()V
    .locals 5

    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v3, 0x6

    if-eqz v0, :cond_5

    const-string v0, "PowerUI.Notification"

    const-string v4, "mBatteryHealthInterruptionDialog is not null"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    if-ne v4, v3, :cond_1

    const v3, 0x7f1301e7

    goto :goto_0

    :cond_1
    if-ne v4, v2, :cond_3

    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f1301e5

    goto :goto_0

    :cond_2
    const v3, 0x7f1301e4

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    if-nez v3, :cond_4

    const-string/jumbo p0, "status is NotCharging but health is wrong value"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v0, v0, Landroidx/appcompat/app/AlertDialog;->mAlert:Landroidx/appcompat/app/AlertController;

    iput-object v3, v0, Landroidx/appcompat/app/AlertController;->mMessage:Ljava/lang/CharSequence;

    iget-object v0, v0, Landroidx/appcompat/app/AlertController;->mMessageView:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_6

    return-void

    :cond_6
    new-instance v3, Lcom/android/systemui/power/SecPowerNotificationWarnings$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$3;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :cond_7
    :goto_1
    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    if-ne v0, v2, :cond_8

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    const-wide/16 v2, 0x640

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_2

    :cond_8
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    :goto_2
    return-void
.end method

.method public final showBatteryHealthInterruptionWarning()V
    .locals 4

    const-string v0, "PowerUI.Notification"

    const-string/jumbo v1, "showBatteryHealthInterruptionWarning()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/power/PowerUtils;->isShutdownOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "don\'t show Battery health interruption warning while Shutdown is ON"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealth:I

    const/16 v1, 0x8

    const/4 v2, 0x5

    const/4 v3, 0x6

    if-eq v0, v1, :cond_3

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$4;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mTemperatureLimitAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$5;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryHealthInterruptionDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    goto :goto_1

    :cond_3
    :goto_0
    if-ne v0, v3, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showBatteryHealthInterruptionPopUp()V

    :goto_1
    return-void
.end method

.method public final showChargingNotice()V
    .locals 11

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mMaximumThresholdValue:I

    iget-wide v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/systemui/power/BatteryProtectionUtil;->isMaximumProtectionEnabled(Landroid/content/Context;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    sget v5, Landroid/provider/Settings$Global;->BATTERY_PROTECTION_THRESHOLD_DEFAULT_VALUE:I

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v6, "battery_protection_threshold"

    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mMaximumThresholdValue:I

    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->BATTERY_CHARGING_ESTIMATE_TIME:Z

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v9, "com.samsung.server.BatteryService.action.SEC_BATTERY_REMAINING_CHARGING_TIME_CHANGED"

    invoke-direct {v8, v9}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v8, "remaining_charging_time"

    invoke-virtual {v4, v8, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    :cond_0
    iput-wide v6, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    goto :goto_0

    :cond_1
    iput-wide v6, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    :goto_0
    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    const/16 v6, 0x9

    if-ne v4, v6, :cond_2

    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    if-eq v4, v6, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_2
    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->SPECIFIC_POWER_REQUEST_BY_VZW:Z

    const/16 v7, 0x8

    if-nez v4, :cond_3

    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    if-ne v4, v7, :cond_3

    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    if-eq v4, v7, :cond_3

    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    iput-object v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_3
    sget-boolean v4, Lcom/android/systemui/PowerUiRune;->POLICY_CHARGING_NOTIFICATION:Z

    const/4 v5, 0x0

    const-string v8, "PowerUI.Notification"

    if-eqz v4, :cond_5

    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    if-eqz v4, :cond_4

    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    if-ne v0, v4, :cond_4

    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mMaximumThresholdValue:I

    if-ne v1, v4, :cond_4

    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    if-eq v4, v7, :cond_4

    if-eq v4, v6, :cond_4

    const-string/jumbo p0, "showChargingNotice - User swipe charging notification, so return!"

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iput-boolean v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    :cond_5
    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldBatteryLevel:I

    iget v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    if-ne v4, v9, :cond_6

    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    iget v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    if-ne v4, v9, :cond_6

    iget-wide v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    cmp-long v4, v2, v9

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    if-ne v0, v4, :cond_6

    iget v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mMaximumThresholdValue:I

    if-ne v1, v4, :cond_6

    const-string/jumbo p0, "showChargingNotice - There is no change charging status, so return!"

    invoke-static {v8, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "showChargingNotice - oldBatteryLevel : "

    invoke-direct {v4, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldBatteryLevel:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , BatteryLevel : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / oldChargingType : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " , ChargingType : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " / oldChargingTime : "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", ChargingTime : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " / oldMaximumEnabled : "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , MaximumEnabled : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsMaximumProtectionEnabled:Z

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " / oldMaximumThreshold : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , MaximumThreshold : "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mMaximumThresholdValue:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    iget v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    if-ne v2, v7, :cond_7

    if-eq v0, v7, :cond_9

    const-string v0, "Show slow charging toast"

    invoke-static {v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v1, 0x7f13021b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    goto :goto_1

    :cond_7
    if-ne v2, v6, :cond_9

    if-eq v0, v6, :cond_9

    const-string/jumbo v0, "showIncompleteChargerConnectionInfoPopUp()"

    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_9

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_8

    goto :goto_1

    :cond_8
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;I)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    :cond_9
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    return-void
.end method

.method public final showChargingTypeSwitchedNotice(Z)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    const-string v1, "PowerUI.Notification"

    if-eqz v0, :cond_0

    const-string p0, "GATE tool is running so don\'t show Charging type switched notice"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v0, 0x7f1301e0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v0, 0x7f130229

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string/jumbo v0, "showChargingTypeSwitchedToast()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v2, ""

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {p1, v1}, Landroid/widget/Toast;->setDuration(I)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mConnectedChargerChangedToast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    return-void
.end method

.method public final showIncompatibleChargerNotice()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->isShutdownOn(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PowerUI.Notification"

    if-eqz v0, :cond_0

    const-string p0, "don\'t show Incompatible charging warning while Shutdown is ON"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    if-eqz v0, :cond_1

    const-string p0, "FTA Mode is ON so don\'t show Incompatible charging warning"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string/jumbo v0, "showIncompatibleChargerWarning()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->restoreScreenTimeOutIfNeeded()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    const-string/jumbo v0, "showIncompatibleChargerNotification()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$13;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final showLowBatteryWarning(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->isShutdownOn(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PowerUI.Notification"

    if-eqz v0, :cond_0

    const-string p0, "Shutdown is ON"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    const/4 v2, -0x2

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    if-eq v0, v2, :cond_1

    const-string p0, "FTA Mode is ON and Not critical Low battery"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "show low battery warning: level="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBatteryLevel:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] playSound="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    iget v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mBucket:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string v3, "powerui_prefs"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v5

    const-string/jumbo v6, "screen_off_timeout"

    const/16 v7, 0x7530

    invoke-static {v3, v6, v7, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-le v3, v7, :cond_2

    if-eqz v0, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "1.backupAndResetScreenTimeOut backup screen timeout : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " value : "

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v3, "ScreenTimeOut"

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "2.backupAndResetScreenTimeOut set default timeout!!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v6, v7, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_dim_screen"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p0, :cond_3

    const-string p1, "PowerUi.PowerUtils"

    const-string v0, "Request userActivity() for reset screen on time"

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, v4, v4}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_0

    :cond_2
    const-string/jumbo p0, "screen time out is shorter than default value, so we do nothing !!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method public final showNotification(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/power/notification/PowerUiNotificationFactory;->getNotification(ILandroid/content/Context;)Lcom/android/systemui/power/notification/PowerUiNotification;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "Illegal notification type : "

    const-string v0, "PowerUI.Notification"

    invoke-static {p1, p0, v0}, Lcom/android/keyguard/ClockEventController$zenModeCallback$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object p1, v0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatterySnapshot;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/power/notification/PowerUiNotification;->setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V

    invoke-virtual {v0}, Lcom/android/systemui/power/notification/PowerUiNotification;->showNotification()V

    return-void
.end method

.method public final showSafeModeNotice()V
    .locals 2

    const-string v0, "PowerUI.Notification"

    const-string/jumbo v1, "showSafeModeNotice()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    return-void
.end method

.method public final showUnintentionalLcdOnNotice()V
    .locals 11

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    sget-object v1, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    invoke-virtual {v1, v0}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    const-string v1, "PowerUI.Notification"

    const-string/jumbo v2, "showUnintentionallyLcdOnNotice() - isLock ? "

    invoke-static {v2, v1, v0}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string/jumbo v1, "showUnintentionalLcdOnWindow addview - isCover = "

    monitor-enter p0

    :try_start_0
    iget-boolean v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    goto/16 :goto_4

    :cond_0
    :try_start_1
    const-string v2, "PowerUI.Notification"

    const-string/jumbo v3, "showUnintentionalLcdOnWindow"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v2, v3}, Landroid/os/PowerManager;->userActivity(JII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v4, :cond_2

    new-instance v4, Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x3

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/16 v8, 0x7e5

    const/16 v9, 0x100

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v4, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    :cond_2
    sget-boolean v4, Lcom/android/systemui/LsRune;->SUBSCREEN_LARGE_FRONT_SUB_DISPLAY:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    goto :goto_1

    :cond_3
    move v4, v3

    :goto_1
    if-nez v4, :cond_4

    iget-object v6, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    iput v5, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v7, 0x3

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6, v3}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    iget-object v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    iget v6, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/2addr v2, v6

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    if-nez v0, :cond_5

    const-wide/16 v6, 0x2710

    invoke-virtual {v3, v6, v7}, Landroid/view/WindowManager$LayoutParams;->semSetScreenTimeout(J)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/WindowManager$LayoutParams;->semSetScreenDimDuration(J)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "UnintentionalLcdOn"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    if-nez v0, :cond_8

    :cond_6
    const-string v0, "PowerUI.Notification"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz v4, :cond_7

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/power/PowerUtils;->getSubDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    const v2, 0x7f0d033e

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/UnintentionalLcdOnView;

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f0d0547

    invoke-static {v1, v2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/UnintentionalLcdOnView;

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    :goto_3
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    invoke-virtual {v0, v4}, Lcom/android/systemui/power/UnintentionalLcdOnView;->setCoverState(Z)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLCDOnWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUnintentionalLcdOnWindow:Lcom/android/systemui/power/UnintentionalLcdOnView;

    iput-object p0, v0, Lcom/android/systemui/power/UnintentionalLcdOnView;->mTouchListener:Lcom/android/systemui/power/SecPowerNotificationWarnings;

    :cond_8
    iput-boolean v5, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsUnintentionalPopupShowing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    :goto_4
    return-void

    :goto_5
    monitor-exit p0

    throw v0
.end method

.method public final showUsbDamageProtectionAlertDialog()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "show UsbDamageProtectionAlertDialog - mIsTemperatureHiccupState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsTemperatureHiccupState:Z

    const-string v2, "PowerUI.Notification"

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "PowerUI.Notification USB damage"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_2

    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v2, Lcom/android/systemui/power/SecPowerNotificationWarnings$19;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$19;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;

    invoke-direct {v2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$20;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    :cond_2
    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mUsbDamageProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$21;

    const-wide/16 v1, 0x640

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final showWaterProtectionAlertDialog(Z)V
    .locals 4

    const-string/jumbo v0, "show WaterProtectionAlertDialog - isWaterDetected = "

    const-string v1, " mIsWaterDetected = "

    invoke-static {v0, v1, p1}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsHiccupState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "mWaterProtectionAlertDialog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI.Notification"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v2, :cond_5

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    if-nez p1, :cond_2

    const-string p1, "Wrong executed, so return"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_1
    return-void

    :cond_2
    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$16;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$16;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$17;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    :cond_5
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    const-wide/16 v1, 0x640

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final showWillOverheatShutdownWarning()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->isShutdownOn(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PowerUI.Notification"

    if-eqz v0, :cond_0

    const-string p0, "don\'t show Overheat shutdown warning while Shutdown is ON"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v0, "showWillOverheatShutdownWarning()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "dismissOverheatShutdownHappenedPopUp()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_3

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$6;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$7;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    :cond_3
    :goto_0
    return-void
.end method

.method public final showWirelessChargerDisconnectNotice()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mFTAMode:Z

    const-string v1, "PowerUI.Notification"

    if-eqz v0, :cond_0

    const-string p0, "FTA Mode is ON so don\'t show Wireless charging disconnect warning"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f130228

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const v2, 0x7f130227

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string/jumbo p0, "showWirelessChargerDisconnectToast()"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final stopPowerSound(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/systemui/power/sound/PowerUiSoundFactory;->getPowerUiSound(ILandroid/content/Context;)Lcom/android/systemui/power/sound/PowerUiSound;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iput-object v0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mNotificationPlayer:Lcom/android/systemui/media/NotificationPlayer;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mVibrator:Landroid/os/Vibrator;

    iput-object v1, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mVibrator:Landroid/os/Vibrator;

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsInCall:Z

    iput-boolean v1, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mIsInCall:Z

    iget v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSuperFastCharger:I

    iput v1, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mChargingType:I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mAudioManager:Landroid/media/AudioManager;

    iput-object p0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/NotificationPlayer;->stop()V

    :cond_0
    iget-object p0, p1, Lcom/android/systemui/power/sound/PowerUiSound;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    :cond_1
    return-void
.end method

.method public final turnOnScreen()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    const-string p0, "PowerUI.Notification"

    const-string/jumbo v0, "turnOnScreen : fail to get PowerManager reference"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, v2, p0}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void
.end method

.method public final updateNotification()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateNotification mWarning = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPlaySound = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI.Notification"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    sget-object v0, Lcom/android/systemui/Dependency;->sDependency:Lcom/android/systemui/Dependency;

    const-class v3, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-virtual {v0, v3}, Lcom/android/systemui/Dependency;->getDependencyInner(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    iget-object v0, v0, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->mCustomSdkMonitor:Lcom/android/systemui/knox/CustomSdkMonitor;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/android/systemui/knox/CustomSdkMonitor;->mHideNotificationMessages:I

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/systemui/power/notification/PowerUiNotificationFactory;->getNotification(ILandroid/content/Context;)Lcom/android/systemui/power/notification/PowerUiNotification;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "Illegal notification type : 1"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v1, v0, Lcom/android/systemui/power/notification/PowerUiNotification;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getSecBatteryStatsSnapshot()Lcom/android/systemui/power/SecBatterySnapshot;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/notification/PowerUiNotification;->setInformation(Lcom/android/systemui/power/SecBatterySnapshot;)V

    invoke-virtual {v0}, Lcom/android/systemui/power/notification/PowerUiNotification;->getBuilder()Landroid/app/Notification$Builder;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v3, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarningTriggerTimeMs:J

    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    const/4 v3, 0x3

    if-eqz v1, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->playPowerSound(I)V

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mPlaySound:Z

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x2

    const-string v5, "low_battery"

    invoke-virtual {v1, v5, v4, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v5, v3, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string p0, "We do not show warning notifications due to KNOX."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    :goto_2
    return-void
.end method
