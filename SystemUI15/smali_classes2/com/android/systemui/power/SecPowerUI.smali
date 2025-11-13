.class public final Lcom/android/systemui/power/SecPowerUI;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/power/ChargerAnimationListener;
.implements Lcom/android/systemui/power/WirelessMisalignListener;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

.field public mBatteryChargingType:I

.field public mBatteryCurrentEvent:I

.field public mBatteryHealth:I

.field public mBatteryHealthInterruptionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBatteryHealthInterruptionScreenDimWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mBatteryHighVoltageCharger:Z

.field public mBatteryLevel:I

.field public mBatteryMiscEvent:I

.field public mBatteryOnline:I

.field public mBatteryOverheatLevel:I

.field public mBatterySlowCharger:Z

.field public mBatteryStatus:I

.field public mBatterySwellingMode:I

.field public mBatteryWaterConnector:Z

.field public mBootCompleted:Z

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public mCallState:I

.field public mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

.field public mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public mChargerAnimationWindowManager:Landroid/view/WindowManager;

.field public mChargerNowBarView:Lcom/android/systemui/power/ChargerNowBarView;

.field public mChargingStartTime:Ljava/lang/String;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public mCurrentBatteryStateData:Lcom/android/systemui/power/BatteryStateData;

.field public mCurrentChargingAnimation:Ljava/lang/String;

.field public mDismissBatteryHealthInterruptionWarning:Z

.field public final mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

.field public final mFaceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

.field public mFullyConnected:Z

.field public final mHandler:Landroid/os/Handler;

.field public mIsAfterAdaptiveProtection:Z

.field public mIsChangedBatteryProtectionOnCharging:Z

.field public mIsChangedStringAfterCharging:Z

.field public mIsDeviceMoving:Z

.field public mIsHiccupState:Z

.field public mIsMotionDetectionSupported:Z

.field public mIsRunningLowBatteryTask:Z

.field public mIsRunningStopPowerSoundTask:Z

.field public mIsSContextEnabled:Z

.field public mIsSContextListenerRegistered:Z

.field public mIsShutdownTaskDelayed:Z

.field public mIsWirelessMisalignTask:Z

.field public mIsWirelessOverheat:Z

.field public mLastBatteryStateData:Lcom/android/systemui/power/BatteryStateData;

.field public mLastShowWarningTask:Ljava/util/concurrent/Future;

.field public mLowBatteryAlertCloseLevel:I

.field public final mLowBatteryReminderLevels:[I

.field public final mLowBatteryWarningTask:Lcom/android/systemui/power/SecPowerUI$1;

.field public mLtcHighSocThreshold:I

.field public mLtcReleaseThreshold:I

.field public final mOverheatShutdownWarningTask:Lcom/android/systemui/power/SecPowerUI$2;

.field public final mPhoneStateListener:Lcom/android/systemui/power/SecPowerUI$3;

.field public mPlugType:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field public mProtectBatteryValue:I

.field public mProtectionEvent:I

.field public final mReceiver:Lcom/android/systemui/power/SecPowerUI$Receiver;

.field public final mRestoreDisplayStateTask:Lcom/android/systemui/power/SecPowerUI$5;

.field public final mSContextListener:Lcom/android/systemui/power/SecPowerUI$7;

.field public mSContextManager:Landroid/hardware/scontext/SContextManager;

.field public mScreenOffTime:J

.field public mSkipChargingUiMsg:Ljava/lang/String;

.field public mSleepChargingEvent:Ljava/lang/String;

.field public final mStopPowerSoundTask:Lcom/android/systemui/power/SecPowerUI$6;

.field public mSuperFastCharger:I

.field public final mSystemEventCoordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

.field public mTemperatureHiccupState:Z

.field public mTurnOffPsmLevel:I

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/power/SecPowerUI$9;

.field public final mWarnings:Lcom/android/systemui/power/SecWarningsUI;

.field public mWirelessFodState:Z

.field public final mWirelessMisalignTimeoutTask:Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;

.field public mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

.field public mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

.field public mWirelessMisalignWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static -$$Nest$mcheckBatteryProtectionTipsNotification(Lcom/android/systemui/power/SecPowerUI;I)V
    .locals 9

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/power/tips/TipsManager;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/power/tips/TipsManager;-><init>(Landroid/content/Context;)V

    iget p0, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    iget-object v1, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    const-string v2, "com.android.systemui.power_tips_notification"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string/jumbo v4, "tipsNotiFirstTime"

    const/4 v5, 0x1

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iget-object v6, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "user_setup_complete"

    const/4 v8, -0x2

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v3

    :goto_0
    if-nez p1, :cond_3

    if-eq p0, v5, :cond_1

    const/4 p1, 0x4

    if-ne p0, p1, :cond_3

    :cond_1
    if-eqz v1, :cond_3

    iget-object p0, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p0

    if-ne p0, v5, :cond_3

    if-eqz v6, :cond_3

    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.samsung.android.app.tips"

    const-string v1, "com.samsung.android.app.tips.TipsIntentService"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "tips_extras"

    const/16 v1, 0x8

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "tips_extras2"

    const-string v1, "BATT_0003"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    const v1, 0x7f130211

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "tips_extras3"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p1, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    const v1, 0x7f130212

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "tips_extras4"

    invoke-virtual {p0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "All condition is OK, Try to show battery protection tips"

    const-string v1, "PowerUI.TipsManager"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Exception occur"

    const/4 v5, 0x0

    :try_start_0
    iget-object v6, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    invoke-virtual {v6, p0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    :goto_1
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_2
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    move-object p0, v5

    :goto_4
    if-eqz p0, :cond_3

    iget-object p0, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_3

    invoke-interface {v5, v4, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_3
    return-void
.end method

.method public static -$$Nest$mcheckCoolDownStatus(Lcom/android/systemui/power/SecPowerUI;Landroid/content/Intent;)V
    .locals 10

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOverheatLevel:I

    const-string v1, "battery_overheat_level"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOverheatLevel:I

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Battery overheat Level = "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOverheatLevel:I

    const-string v2, "PowerUI"

    invoke-static {v1, v2, p1}, Landroidx/appcompat/widget/TooltipPopup$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    iget p1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOverheatLevel:I

    if-eq v0, p1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    const-string/jumbo v3, "showOverheatWarning()"

    const/4 v4, 0x6

    const-string v5, "PowerUI.Notification"

    const/4 v6, 0x2

    iget-object v7, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    if-ne p1, v6, :cond_0

    move-object p1, v7

    check-cast p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v4}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mOverheatShutdownWarningTask:Lcom/android/systemui/power/SecPowerUI$2;

    const-wide/16 v8, 0x7530

    invoke-virtual {v1, p1, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    if-ge p1, v6, :cond_2

    if-gt v6, v0, :cond_2

    move-object p1, v7

    check-cast p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "dismissWillOverheatShutdownWarning"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object v6, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$9;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p1, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mOverheatShutdownWarningTask:Lcom/android/systemui/power/SecPowerUI$2;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string p1, "Battery overheat level recovered from shutdown"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget p0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOverheatLevel:I

    if-nez p0, :cond_4

    check-cast v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "dismissOverheatWarning()"

    invoke-static {v5, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_3
    invoke-virtual {v7, v4}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x1

    if-ne p0, p1, :cond_5

    check-cast v7, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7, v4}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public static -$$Nest$mcheckTipsNotification(Lcom/android/systemui/power/SecPowerUI;I)V
    .locals 12

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/systemui/power/tips/TipsManager;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/power/tips/TipsManager;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    iget p0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const/16 v4, 0x1e

    if-gt p0, v4, :cond_1

    if-ge v4, p1, :cond_1

    move p0, v3

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    iget-object p1, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    const-string v4, "com.android.systemui.power_tips_notification"

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v5, "PowerUI.TipsManager"

    if-nez p1, :cond_2

    const-string/jumbo p0, "sharedPref is null"

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_2
    if-eqz v1, :cond_e

    if-nez p0, :cond_3

    goto/16 :goto_9

    :cond_3
    const-string/jumbo p0, "tipsNotiConfirmed"

    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "User confirmed already"

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_4
    const-string/jumbo p0, "tipsNotiRegisteredCount"

    invoke-interface {p1, p0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x3

    if-lt p0, v1, :cond_5

    const-string p0, "Displayed refresh rate tip notification more then 3 times"

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_5
    iget-object p0, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "refresh_rate_mode"

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-gtz p0, :cond_6

    const-string p0, "Refresh rate are not 120hz"

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_6
    const-string/jumbo p0, "tipsNotiLastTime"

    const-wide/16 v6, 0x0

    invoke-interface {p1, p0, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-wide/32 v8, 0x240c8400

    cmp-long v1, v10, v8

    if-gtz v1, :cond_7

    const-string p0, "Last tip notification has been registered within 1 week"

    invoke-static {v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :cond_7
    const-string v1, "ignoreRUT"

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "TEST_IGNORE_RUT is true"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    iget-object p1, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v8, "low_power"

    invoke-static {v1, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_9

    const/4 p1, -0x1

    goto :goto_2

    :cond_9
    const/16 v1, 0x27

    invoke-static {p1, v1}, Lcom/samsung/android/hardware/SemBatteryUtils;->getBatteryRemainingUsageTime(Landroid/content/Context;I)I

    move-result v1

    int-to-long v8, v1

    cmp-long v1, v8, v6

    if-gez v1, :cond_a

    const/4 v1, 0x5

    invoke-static {p1, v1}, Lcom/samsung/android/hardware/SemBatteryUtils;->getBatteryRemainingUsageTime(Landroid/content/Context;I)I

    move-result p1

    int-to-long v8, p1

    :cond_a
    long-to-int p1, v8

    :goto_2
    if-lez p1, :cond_d

    const/16 v1, 0x30c

    if-lt p1, v1, :cond_b

    goto/16 :goto_8

    :cond_b
    :goto_3
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v6, "com.android.settings.Settings$HighRefreshRatesSettingsActivity"

    invoke-virtual {p1, v1, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    const-string v6, "com.samsung.android.sm.TIPS_DELETED"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "com.android.systemui"

    const-string v7, "com.android.systemui.power.tips.TipsNotificationService"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const-string v7, "com.samsung.android.app.tips"

    const-string v8, "com.samsung.android.app.tips.TipsIntentService"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "tips_extras"

    const/16 v8, 0x9

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v7, "tips_id"

    const-string v8, "120999"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tips_app_name"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    const v8, 0x7f130c70

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tips_title"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v7, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    const v8, 0x7f130c6f

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tips_text"

    invoke-virtual {v6, v8, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "tips_noti_category"

    const-string v8, "CATEGORY_RECOMMENDATION"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "tips_action"

    invoke-virtual {v6, v7, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p1, "tips_delete_action"

    invoke-virtual {v6, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo p1, "tips_delete_action_type"

    invoke-virtual {v6, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "tips_condition"

    invoke-virtual {v6, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p1, "tips_noti_skip_add_action"

    invoke-virtual {v6, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "All condition is OK, Show refresh rate tips notification"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "Exception occur"

    const/4 v1, 0x0

    :try_start_0
    iget-object v3, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    invoke-virtual {v3, v6}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/app/ForegroundServiceStartNotAllowedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    goto :goto_5

    :goto_4
    invoke-static {v5, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :goto_5
    invoke-static {v5, p1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    move-object p1, v1

    :goto_7
    if-eqz p1, :cond_f

    iget-object p1, v0, Lcom/android/systemui/power/tips/TipsManager;->context:Landroid/content/Context;

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    :cond_c
    if-eqz v1, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v1, p0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_a

    :cond_d
    :goto_8
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Ignored by RUT :"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_e
    :goto_9
    const-string p0, "Not enough battery condition"

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_a
    return-void
.end method

.method public static -$$Nest$mcheckTurnOnBatteryProtectionByLongTermCharge(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 6

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    iget v1, p0, Lcom/android/systemui/power/SecPowerUI;->mLtcHighSocThreshold:I

    const/4 v2, 0x2

    if-lt v0, v1, :cond_1

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->startScheduling()V

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    const-string v1, "com.android.systemui.power_auto_on_protect_battery"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_on_protect_battery_timer_started"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "PowerUI"

    if-nez v0, :cond_2

    iget v4, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    iget v5, p0, Lcom/android/systemui/power/SecPowerUI;->mLtcReleaseThreshold:I

    if-ge v4, v5, :cond_2

    iget v4, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    if-ne v4, v2, :cond_2

    const-string/jumbo v0, "send intent to DC, restore battery protection"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.sm.action.TURN_OFF_PROTECT_BATTERY_BY_LONG_TERM_TA"

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUtils;->sendIntentToDc(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    iget v2, p0, Lcom/android/systemui/power/SecPowerUI;->mLtcHighSocThreshold:I

    if-ge v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "key_ltc_state"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    const-string/jumbo v0, "send intent to DC, turn off LTC soft notification"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.sm.action.TURN_OFF_SOFT_NOTI_BY_LONG_TERM_TA"

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUtils;->sendIntentToDc(Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->clearScheduling()V

    :goto_2
    return-void
.end method

.method public static -$$Nest$mcheckTurnOnProtectBatteryByLongTa(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 4

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/BatteryProtectionUtil;->isMaximumProtectionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->startScheduling()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    const-string v1, "com.android.systemui.power_auto_on_protect_battery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "auto_on_protect_battery_timer_started"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_on_protect_battery"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    const-string v0, "PowerUI"

    const-string/jumbo v1, "send intent to DC, turn off protect battery"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    const-string v1, "com.samsung.android.sm.action.TURN_OFF_PROTECT_BATTERY_BY_LONG_TERM_TA"

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerUtils;->sendIntentToDc(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->clearScheduling()V

    :goto_1
    return-void
.end method

.method public static -$$Nest$mcheckWaterDetectionStatus(Lcom/android/systemui/power/SecPowerUI;Landroid/content/Intent;)V
    .locals 8

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryWaterConnector:Z

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerUI;->mIsHiccupState:Z

    const-string v2, "misc_event"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_0

    move v4, v5

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryWaterConnector:Z

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v2, 0x20

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_1

    move p1, v5

    goto :goto_1

    :cond_1
    move p1, v3

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI;->mIsHiccupState:Z

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iput-boolean p1, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsHiccupState:Z

    const-string p1, "SUPPORT_WATER_PROTECTION_POPUP - oldBatteryWaterConnector : "

    const-string v4, ", mBatteryWaterConnector : "

    invoke-static {p1, v4, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryWaterConnector:Z

    const-string v6, ", oldHiccupState : "

    const-string v7, ", mIsHiccupState : "

    invoke-static {p1, v4, v6, v1, v7}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;ZLjava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerUI;->mIsHiccupState:Z

    const-string v6, "PowerUI"

    invoke-static {p1, v4, v6}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI;->mIsHiccupState:Z

    const-string v4, "com.samsung.systemui.power.action.USB_DAMAGE_POPUP_SHOW"

    if-eq v1, p1, :cond_2

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryWaterConnector:Z

    invoke-virtual {v2, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V

    const-string/jumbo p1, "showWaterProtectionAlertDialog by hiccup state : show and sending intent ACTION_USB_DAMAGE_PROTECTION_POPUP_SHOW"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryWaterConnector:Z

    if-eq v0, p1, :cond_5

    if-eqz p1, :cond_3

    invoke-virtual {v2, v5}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V

    const-string/jumbo p1, "showWaterProtectionAlertDialog by mBatteryWaterConnector : show and sending intent ACTION_USB_DAMAGE_PROTECTION_POPUP_SHOW"

    invoke-static {v6, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "dismiss WaterProtectionAlertDialog - isWaterDetected = false mIsWaterDetected = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p1, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    const-string v0, "PowerUI.Notification"

    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput-boolean v3, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIsWaterDetected:Z

    iget-object p0, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandler:Landroid/os/Handler;

    iget-object p1, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertTask:Lcom/android/systemui/power/SecPowerNotificationWarnings$18;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 p0, 0x0

    iput-object p0, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_4
    iget-object p0, v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWaterProtectionAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_5
    :goto_2
    return-void
.end method

.method public static -$$Nest$mcheckWirelessChargingFodStatus(Lcom/android/systemui/power/SecPowerUI;Landroid/content/Intent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessFodState:Z

    const-string v1, "misc_event"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v1, 0x100

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessFodState:Z

    const-string p1, "SUPPORT_WIRELESS_CHARGER_FOD_POPUP - oldWirelessFodState : "

    const-string v1, ", mWirelessFodState : "

    invoke-static {p1, v1, v0}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessFodState:Z

    const-string v2, "PowerUI"

    invoke-static {p1, v1, v2}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessFodState:Z

    if-eq v0, p1, :cond_2

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "PowerUI.Notification"

    const-string/jumbo v0, "showWirelessFodAlertDialog"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_2

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/systemui/power/SecPowerNotificationWarnings$14;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$14;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method

.method public static -$$Nest$mupdateBatteryNotificationLanguage(Lcom/android/systemui/power/SecPowerUI;)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-boolean v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWarning:Z

    const-string v2, "PowerUI"

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->updateNotification()V

    const-string v1, "Language is changed so notify LowBatteryNotification again"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "Language is changed so notify ChargingNotification again"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    iget v3, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    iget v4, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    invoke-virtual {p0, v1, v3, v4}, Lcom/android/systemui/power/SecPowerUI;->checkChargingNotification(III)V

    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOnline:I

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mIncompatibleChargerDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    :cond_1
    const-string v1, "PowerUI.Notification"

    const-string v3, "dismissing incompatible charger notification"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    const-string v1, "Language is changed so notify incompatible charger again"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showIncompatibleChargerNotice()V

    :cond_2
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/BatteryProtectionUtil;->isSleepChargingOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mSleepChargingEvent:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mChargingStartTime:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/power/SecPowerUI;->checkAdaptiveProtectionNotification(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION_NOTIFICATION:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->checkBatteryProtectionNotification()V

    :cond_4
    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "PowerUI"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/power/SecPowerUI;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/power/SecWarningsUI;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/os/PowerManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/power/DozeChargingHelper;Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/statusbar/events/SystemEventCoordinator;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryReminderLevels:[I

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$Receiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$Receiver;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mReceiver:Lcom/android/systemui/power/SecPowerUI$Receiver;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/systemui/power/SecPowerUI;->mScreenOffTime:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsRunningLowBatteryTask:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsRunningStopPowerSoundTask:Z

    iput v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatterySwellingMode:I

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHighVoltageCharger:Z

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mFullyConnected:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatterySlowCharger:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedStringAfterCharging:Z

    iput v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    iput v1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOnline:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsWirelessMisalignTask:Z

    iput-object v3, p0, Lcom/android/systemui/power/SecPowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsMotionDetectionSupported:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextEnabled:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextListenerRegistered:Z

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsDeviceMoving:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessFodState:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryWaterConnector:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsHiccupState:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mTemperatureHiccupState:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mDismissBatteryHealthInterruptionWarning:Z

    iput v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsWirelessOverheat:Z

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsShutdownTaskDelayed:Z

    iput v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOverheatLevel:I

    iput v2, p0, Lcom/android/systemui/power/SecPowerUI;->mCallState:I

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBootCompleted:Z

    iput v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryCurrentEvent:I

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedBatteryProtectionOnCharging:Z

    iput v1, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    iput-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsAfterAdaptiveProtection:Z

    iput v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    iput v2, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectionEvent:I

    iput v1, p0, Lcom/android/systemui/power/SecPowerUI;->mTurnOffPsmLevel:I

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$1;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryWarningTask:Lcom/android/systemui/power/SecPowerUI$1;

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$2;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mOverheatShutdownWarningTask:Lcom/android/systemui/power/SecPowerUI$2;

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$3;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mPhoneStateListener:Lcom/android/systemui/power/SecPowerUI$3;

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$4;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$5;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mRestoreDisplayStateTask:Lcom/android/systemui/power/SecPowerUI$5;

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$6;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mStopPowerSoundTask:Lcom/android/systemui/power/SecPowerUI$6;

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$7;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mSContextListener:Lcom/android/systemui/power/SecPowerUI$7;

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignTimeoutTask:Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$9;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$9;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWakefulnessObserver:Lcom/android/systemui/power/SecPowerUI$9;

    new-instance v0, Lcom/android/systemui/power/SecPowerUI$10;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/SecPowerUI$10;-><init>(Lcom/android/systemui/power/SecPowerUI;)V

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/power/SecPowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object p3, p0, Lcom/android/systemui/power/SecPowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p4, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    iput-object p6, p0, Lcom/android/systemui/power/SecPowerUI;->mPowerManager:Landroid/os/PowerManager;

    iput-object p5, p0, Lcom/android/systemui/power/SecPowerUI;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p7, p0, Lcom/android/systemui/power/SecPowerUI;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    iput-object p8, p0, Lcom/android/systemui/power/SecPowerUI;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    iput-object p9, p0, Lcom/android/systemui/power/SecPowerUI;->mFaceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    iput-object p10, p0, Lcom/android/systemui/power/SecPowerUI;->mSystemEventCoordinator:Lcom/android/systemui/statusbar/events/SystemEventCoordinator;

    return-void
.end method

.method public static getLayoutParam(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v1, -0x1

    const v4, 0x1000100

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_AOD_PACKAGE_AVAILABLE:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x40000

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->semAddExtensionFlags(I)V

    :cond_0
    const/4 v0, 0x1

    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->setTrustedOverlay()V

    invoke-virtual {v6, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    return-object v6
.end method


# virtual methods
.method public final checkAdaptiveProtectionNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "checkAdaptiveProtectionNotification : "

    const-string v1, ", chargingStartTime : "

    const-string v2, ", lev : "

    invoke-static {v0, p1, v1, p2, v2}, Landroidx/appcompat/util/SeslRoundedCorner$SeslRoundedChunkingDrawable$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    const-string/jumbo v2, "sleep_charging_finish_time"

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    const/16 v5, 0x64

    const/4 v6, 0x4

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    if-ne v0, v6, :cond_1

    iget p1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    if-eq p1, v5, :cond_0

    const-string/jumbo p1, "show AdaptiveProtectionNotification"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v4, p2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showAdaptiveProtectionNotification(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/android/systemui/power/BatteryProtectionUtil;->setSleepChargingStatus(ILandroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "update"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    if-ne v0, v6, :cond_3

    iget p1, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    if-eq p1, v5, :cond_2

    const-string/jumbo p1, "update AdaptiveProtectionNotification"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v4, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v4, p2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showAdaptiveProtectionNotification(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    invoke-static {v0, p1}, Lcom/android/systemui/power/BatteryProtectionUtil;->setSleepChargingStatus(ILandroid/content/Context;)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_3
    const-string p2, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "off AdaptiveProtectionNotification"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->setSleepChargingOff()V

    iput-boolean v3, p0, Lcom/android/systemui/power/SecPowerUI;->mIsAfterAdaptiveProtection:Z

    goto :goto_0

    :cond_4
    const-string p1, "dismiss AdaptiveProtectionNotification"

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->setSleepChargingOff()V

    :goto_0
    return-void
.end method

.method public final checkBatteryProtectionNotification()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/BatteryProtectionUtil;->isSleepChargingOn(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    const/4 v3, 0x2

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const/4 v4, 0x4

    if-lt v0, v4, :cond_1

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    if-ne v0, v3, :cond_1

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOverheatLevel:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectionEvent:I

    iget v4, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v4}, Lcom/android/systemui/power/BatteryProtectionUtil;->isProtectedFullyByMaximum(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    check-cast v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v2, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showNotification(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/BatteryProtectionUtil;->isSleepChargingOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    if-eq v0, v3, :cond_3

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    if-ne v0, v3, :cond_3

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOverheatLevel:I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectionEvent:I

    iget p0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lcom/android/systemui/power/BatteryProtectionUtil;->isProtectedFullyByMaximum(I)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    check-cast v2, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v2, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    :goto_1
    return-void
.end method

.method public final checkChargingNotification(III)V
    .locals 10

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mSContextListener:Lcom/android/systemui/power/SecPowerUI$7;

    const/16 v2, 0x2e

    const-string v3, "PowerUI"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x2

    if-ne v0, v8, :cond_d

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-eq v0, v7, :cond_5

    if-ne v0, v8, :cond_0

    goto :goto_0

    :cond_0
    if-ne v0, v6, :cond_4

    if-eq p1, v7, :cond_1

    if-ne p1, v8, :cond_2

    :cond_1
    move-object v0, v5

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0, v4}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingTypeSwitchedNotice(Z)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsMotionDetectionSupported:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextEnabled:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextListenerRegistered:Z

    if-nez v0, :cond_3

    const-string v0, "Register SContextListener"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    iput-boolean v7, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextListenerRegistered:Z

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessFodState:Z

    if-nez v0, :cond_6

    if-eq v6, p1, :cond_6

    move-object v0, v5

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "PowerUI.Notification"

    const-string v2, "dismissWirelessFodAlertDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWirelessFodAlertDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->dismissChargingNotice()V

    goto :goto_1

    :cond_5
    :goto_0
    if-ne p1, v6, :cond_6

    move-object v0, v5

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0, v7}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingTypeSwitchedNotice(Z)V

    :cond_6
    :goto_1
    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryChargingType:I

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatterySwellingMode:I

    if-eq v0, v7, :cond_e

    move-object v0, v5

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showChargingNotice()V

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x1388

    const-string v2, "Already registered mAfterChargingNoticeTask, so skip"

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedStringAfterCharging:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsAfterAdaptiveProtection:Z

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_9
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_a
    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedStringAfterCharging:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_c
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

    invoke-virtual {v1, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->dismissChargingNotice()V

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsMotionDetectionSupported:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextListenerRegistered:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsDeviceMoving:Z

    if-eqz v0, :cond_e

    if-ne p1, v6, :cond_e

    const-string v0, "Unregister SContextListener - From Check charging type"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextListenerRegistered:Z

    :cond_e
    :goto_3
    if-ne p1, v6, :cond_11

    iget p1, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-nez p1, :cond_11

    if-ne p2, v6, :cond_f

    const/4 p1, 0x3

    if-ne p3, p1, :cond_f

    move v4, v7

    :cond_f
    if-nez v4, :cond_10

    iget-boolean p0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsDeviceMoving:Z

    if-nez p0, :cond_10

    const-string p0, "Wireless charger has been disconnected but this is no move case, so we do nothing !!"

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    if-eqz v4, :cond_11

    check-cast v5, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v5}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->showWirelessChargerDisconnectNotice()V

    :cond_11
    :goto_4
    return-void
.end method

.method public final checkOverheatShutdownHappened()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkOverheatShutdownHappened, boot completed : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/systemui/power/SecPowerUI;->mBootCompleted:Z

    const-string v2, "PowerUI"

    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    const-string v1, "com.android.systemui.power_overheat_shutdown_happened"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "OverheatShutdownHappened"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.systemui.power.action.ACTION_CLEAR_SHUTDOWN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->isShutdownOn(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "PowerUI.Notification"

    if-eqz v0, :cond_0

    const-string p0, "don\'t show Overheat shutdown notice while Shutdown is ON"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mWillOverheatShutdownWarningDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    const-string p0, "don\'t show Overheat shutdown notice while Over heat shutdown warning"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "showOverheatShutdownHappenedNotice()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "showOverheatShutdownHappenedPopUp()"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->getPopupDialog(I)Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$10;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOverheatShutdownHappenedDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/power/SecPowerNotificationWarnings$11;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$11;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->turnOnScreen()V

    goto :goto_0

    :cond_3
    const-string p0, "Not an overheat shutdown case"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public final clearScheduling()V
    .locals 5

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    sget-object v1, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "ltc_highsoc_exceed_time"

    const-wide/16 v3, 0x0

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "charger_connected_time"

    const-string v3, ""

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "com.android.systemui.power_auto_on_protect_battery"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "auto_on_protect_battery_timer_started"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method

.method public final dismissChargingNotice()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mDoNotShowChargingNotice:Z

    iput v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingType:I

    iput v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOldChargingType:I

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mChargingTime:J

    iput-boolean v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mShowChargingNotice:Z

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mSlowByChargerConnectionInfoDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mAfterChargingNoticeTask:Lcom/android/systemui/power/SecPowerUI$4;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput-boolean v1, p0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedStringAfterCharging:Z

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "LowBatteryReminderLevels = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryReminderLevels:[I

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "BatteryLevel = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    const-string v1, "BatteryStatus = "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const-string v1, "PlugType = "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    const-string v1, "BatteryHealth = "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryHealth:I

    const-string v1, "ScreenOffTime = "

    invoke-static {p2, v0, p1, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/android/systemui/power/SecPowerUI;->mScreenOffTime:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/systemui/power/SecPowerUI;->mScreenOffTime:J

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-ltz p2, :cond_0

    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/power/SecPowerUI;->mScreenOffTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    const-string p2, " ago)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "bucket = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/power/SecPowerUI;->findBatteryLevelBucket$1(I)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p1, Lcom/android/systemui/PowerUiRune;->CHN_SMART_MANAGER:Z

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/systemui/power/HandlerWrapper;

    invoke-direct {p1}, Lcom/android/systemui/power/HandlerWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mHandlerWrapper:Lcom/android/systemui/power/HandlerWrapper;

    new-instance p2, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/systemui/power/SecPowerNotificationWarnings$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/power/SecPowerNotificationWarnings;)V

    iget-object p0, p1, Lcom/android/systemui/power/HandlerWrapper;->mWorker:Landroid/os/Handler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public final findBatteryLevelBucket$1(I)I
    .locals 3

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryAlertCloseLevel:I

    const/4 v1, 0x1

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryReminderLevels:[I

    const/4 v0, 0x0

    aget v2, p0, v0

    if-le p1, v2, :cond_1

    return v0

    :cond_1
    array-length v0, p0

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_3

    aget v1, p0, v0

    if-gt p1, v1, :cond_2

    rsub-int/lit8 p0, v0, -0x1

    return p0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "not possible!"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final removeChargerView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v1, "now_bar_charging_vi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-direct {v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;-><init>()V

    const-string v2, "charging_vi_now_bar_key"

    invoke-virtual {v0, v2}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarKey(Ljava/lang/String;)V

    const-string v2, "com.android.systemui"

    invoke-virtual {v0, v2}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarPackage(Ljava/lang/String;)V

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarViewStyle(I)V

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mFaceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {v2, v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->removeItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mChargerNowBarView:Lcom/android/systemui/power/ChargerNowBarView;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    const-string v2, "old_charging_vi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    :cond_2
    :goto_0
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method public final removeMisalignView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_1

    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    :cond_1
    iput-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/power/SecPowerUI;->mIsWirelessMisalignTask:Z

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignTimeoutTask:Lcom/android/systemui/power/SecPowerUI$$ExternalSyntheticLambda0;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final requestNowBarChargingInfo(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mCurrentChargingAnimation:Ljava/lang/String;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-lez p1, :cond_0

    new-instance p1, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;

    invoke-direct {p1}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;-><init>()V

    const-string v0, "charging_vi_now_bar_key"

    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarKey(Ljava/lang/String;)V

    const-string v0, "com.android.systemui"

    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarPackage(Ljava/lang/String;)V

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;->setNowBarViewStyle(I)V

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mFaceWidgetNotificationControllerWrapper:Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;

    invoke-virtual {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->removeItem(Lcom/android/systemui/plugins/keyguardstatusview/NowBarItem;)V

    :cond_0
    return-void
.end method

.method public final setChargerAnimationView()V
    .locals 17

    move-object/from16 v0, p0

    const/4 v1, 0x2

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_0

    const-string v2, "PowerUI.ChargerAnimationViewLp"

    invoke-static {v2}, Lcom/android/systemui/power/SecPowerUI;->getLayoutParam(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x7e5

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 v3, v3, 0x18

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v2

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    const/4 v4, 0x3

    const/4 v5, 0x0

    if-nez v3, :cond_4

    invoke-static {v2}, Lcom/android/systemui/power/PowerUtils;->isFlipSubDisplayOn(Z)Z

    move-result v3

    const v6, 0x7f0d0051

    const-string/jumbo v7, "window"

    if-eqz v3, :cond_3

    const-string v3, "folder state : "

    const-string v8, "PowerUI"

    invoke-static {v3, v8, v2}, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/power/PowerUtils;->getSubDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    sget-boolean v3, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_LARGE_SCREEN:Z

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    const-string/jumbo v3, "ro.product.vendor.name"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v7, "bloom"

    invoke-virtual {v3, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f0d0052

    invoke-static {v2, v3, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    goto :goto_0

    :cond_2
    invoke-static {v2, v6, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    goto :goto_0

    :cond_3
    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v2, v6, v5}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    :cond_4
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowManager:Landroid/view/WindowManager;

    iget-object v3, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget-object v6, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    const/16 v6, 0x8

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iput-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationListener:Lcom/android/systemui/power/ChargerAnimationListener;

    iget-object v7, v0, Lcom/android/systemui/power/SecPowerUI;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    iput-object v7, v2, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v7

    invoke-static {v7}, Lcom/android/systemui/power/PowerUtils;->isFlipSubDisplayOn(Z)Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_5

    iget-object v8, v2, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const-string v10, "display"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/display/DisplayManager;

    const-string v10, "com.samsung.android.hardware.display.category.BUILTIN"

    invoke-virtual {v8, v10}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v8

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/view/Display;->getState()I

    move-result v8

    if-ne v8, v9, :cond_5

    move v8, v9

    goto :goto_1

    :cond_5
    move v8, v3

    :goto_1
    iput-boolean v8, v2, Lcom/android/systemui/power/ChargerAnimationView;->mIsSubscreenOff:Z

    invoke-static {}, Lcom/android/systemui/power/ChargerAnimationUtil;->isAodOrLockScreen()Z

    move-result v8

    if-nez v8, :cond_7

    invoke-static {v7}, Lcom/android/systemui/power/PowerUtils;->isFlipSubDisplayOn(Z)Z

    move-result v7

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    move v7, v3

    goto :goto_3

    :cond_7
    :goto_2
    move v7, v9

    :goto_3
    iput-boolean v7, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    iget-boolean v7, v2, Lcom/android/systemui/power/ChargerAnimationView;->mIsSubscreenOff:Z

    if-eqz v7, :cond_8

    iget-object v5, v2, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    iget-object v2, v2, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const v7, 0x7f060099

    invoke-virtual {v2, v7}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_8
    iget-object v7, v2, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    invoke-virtual {v7}, Lcom/android/systemui/power/DozeChargingHelper;->isDozeChargingCondition()Z

    move-result v7

    const v8, 0x7f060098

    if-eqz v7, :cond_9

    iget-object v5, v2, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    iget-object v2, v2, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto/16 :goto_4

    :cond_9
    sget-boolean v7, Lcom/android/systemui/PowerUiRune;->WINDOW_BLUR_SUPPORTED:Z

    if-eqz v7, :cond_b

    sget-boolean v7, Lcom/android/systemui/PowerUiRune;->GPU_BLUR_SUPPORTED:Z

    if-eqz v7, :cond_b

    new-instance v7, Landroid/view/SemBlurInfo$Builder;

    invoke-direct {v7, v3}, Landroid/view/SemBlurInfo$Builder;-><init>(I)V

    const/16 v8, 0xb

    invoke-virtual {v7, v8}, Landroid/view/SemBlurInfo$Builder;->setColorCurvePreset(I)Landroid/view/SemBlurInfo$Builder;

    move-result-object v7

    iget-boolean v8, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    if-eqz v8, :cond_a

    iget-object v8, v2, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    iget-object v10, v2, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const v11, 0x7f060096

    invoke-virtual {v10, v11}, Landroid/content/Context;->getColor(I)I

    move-result v10

    invoke-virtual {v8, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v8, v2, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v11}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    iget-object v8, v2, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v8, v5}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    invoke-virtual {v7}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v5

    iget-object v2, v2, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_4

    :cond_a
    iget-object v8, v2, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    const v10, 0x7f060095

    invoke-virtual {v8, v10}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/SemBlurInfo$Builder;->setBackgroundColor(I)Landroid/view/SemBlurInfo$Builder;

    iget-object v8, v2, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v8, v5}, Landroid/widget/LinearLayout;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    iget-object v5, v2, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0701b8

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    invoke-virtual {v7, v5}, Landroid/view/SemBlurInfo$Builder;->setBackgroundCornerRadius(F)Landroid/view/SemBlurInfo$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SemBlurInfo$Builder;->build()Landroid/view/SemBlurInfo;

    move-result-object v5

    iget-object v2, v2, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->semSetBlurInfo(Landroid/view/SemBlurInfo;)V

    goto :goto_4

    :cond_b
    iget-boolean v5, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    if-eqz v5, :cond_c

    iget-object v5, v2, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    iget-object v2, v2, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v8}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_4

    :cond_c
    iget-object v2, v2, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    const v5, 0x7f0806e9

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :goto_4
    iget-object v2, v0, Lcom/android/systemui/power/SecPowerUI;->mChargerAnimationView:Lcom/android/systemui/power/ChargerAnimationView;

    iget v5, v0, Lcom/android/systemui/power/SecPowerUI;->mBatteryLevel:I

    iget v0, v0, Lcom/android/systemui/power/SecPowerUI;->mSuperFastCharger:I

    iput v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mSuperFastChargingType:I

    iput v5, v2, Lcom/android/systemui/power/ChargerAnimationView;->mCurrentBatteryLevel:I

    iget-boolean v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    const-string v5, "PowerUI.ChargerAnimationView"

    if-eqz v0, :cond_d

    const-string v0, "Animation is playing, return"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_d
    iput-boolean v9, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAnimationPlaying:Z

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    invoke-virtual {v0}, Lcom/android/systemui/power/DozeChargingHelper;->handleDisplayStateWhenDozeCharging()V

    iget v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mSuperFastChargingType:I

    const/4 v7, 0x5

    const/4 v8, 0x4

    if-eq v0, v4, :cond_10

    if-eq v0, v8, :cond_f

    if-eq v0, v7, :cond_e

    const-string v0, "charging_l1"

    goto :goto_5

    :cond_e
    const-string v0, "charging_l4"

    goto :goto_5

    :cond_f
    const-string v0, "charging_l3"

    goto :goto_5

    :cond_10
    const-string v0, "charging_l2"

    :goto_5
    invoke-static {}, Lcom/android/systemui/power/ChargerAnimationUtil;->isAodOrLockScreen()Z

    move-result v9

    if-eqz v9, :cond_11

    const-string v9, "_lock"

    invoke-virtual {v0, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_11
    const-string v9, ".json"

    invoke-static {v0, v9}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v9, "Animation applied : "

    invoke-static {v9, v0, v5}, Lcom/android/keyguard/KeyguardPluginControllerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v9, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    iget-boolean v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mIsSubscreenOff:Z

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    const-wide/16 v13, 0xc8

    const-wide/16 v15, 0x190

    const-string v11, "alpha"

    if-eqz v0, :cond_14

    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargerContainer:Landroid/widget/RelativeLayout;

    new-array v12, v1, [F

    fill-array-data v12, :array_0

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-boolean v12, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    if-eqz v12, :cond_12

    move-wide v13, v15

    :cond_12
    invoke-virtual {v0, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargerContainer:Landroid/widget/RelativeLayout;

    new-array v12, v1, [F

    fill-array-data v12, :array_1

    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-boolean v11, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    if-eqz v11, :cond_13

    move-wide v11, v15

    goto :goto_6

    :cond_13
    const-wide/16 v11, 0x64

    :goto_6
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    goto :goto_8

    :cond_14
    new-array v0, v1, [F

    fill-array-data v0, :array_2

    invoke-static {v2, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-boolean v12, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    if-eqz v12, :cond_15

    move-wide v13, v15

    :cond_15
    invoke-virtual {v0, v13, v14}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    new-array v0, v1, [F

    fill-array-data v0, :array_3

    invoke-static {v2, v11, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-boolean v11, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    if-eqz v11, :cond_16

    move-wide v11, v15

    goto :goto_7

    :cond_16
    const-wide/16 v11, 0x64

    :goto_7
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    :goto_8
    iget-boolean v11, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    if-eqz v11, :cond_17

    const-wide/16 v11, 0x640

    goto :goto_9

    :cond_17
    const-wide/16 v11, 0x546

    :goto_9
    invoke-virtual {v0, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v11, Lcom/android/systemui/power/ChargerAnimationView$1;

    invoke-direct {v11, v2}, Lcom/android/systemui/power/ChargerAnimationView$1;-><init>(Lcom/android/systemui/power/ChargerAnimationView;)V

    invoke-virtual {v0, v11}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v11, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v11, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v11, v2, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-boolean v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    if-eqz v0, :cond_18

    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :cond_18
    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mBackGroundView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mCircleBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_a
    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/android/systemui/power/ChargerAnimationView;->mContext:Landroid/content/Context;

    iget v6, v2, Lcom/android/systemui/power/ChargerAnimationView;->mSuperFastChargingType:I

    if-eq v6, v4, :cond_19

    if-eq v6, v8, :cond_19

    if-eq v6, v7, :cond_19

    const v4, 0x7f080965

    goto :goto_b

    :cond_19
    const v4, 0x7f080966

    :goto_b
    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v3, 0x3ea8f5c3    # 0.33f

    const v4, 0x3f2b851f    # 0.67f

    invoke-direct {v0, v3, v9, v4, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v6, 0x3ecccccd    # 0.4f

    invoke-direct {v4, v3, v9, v6, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iget-object v3, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v6, v1, [F

    fill-array-data v6, :array_4

    const-string/jumbo v7, "scaleX"

    invoke-static {v3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v8, 0xe9

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-boolean v6, v2, Lcom/android/systemui/power/ChargerAnimationView;->mNeedFullScreenBlur:Z

    if-eqz v6, :cond_1a

    const-wide/16 v11, 0x64

    goto :goto_c

    :cond_1a
    const-wide/16 v11, 0x0

    :goto_c
    invoke-virtual {v3, v11, v12}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v6, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v10, v1, [F

    fill-array-data v10, :array_5

    const-string/jumbo v11, "scaleY"

    invoke-static {v6, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v6, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v8, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v9, v1, [F

    fill-array-data v9, :array_6

    invoke-static {v8, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    const-wide/16 v9, 0x10b

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v8, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v12, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v13, v1, [F

    fill-array-data v13, :array_7

    invoke-static {v12, v11, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v12, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v9, v1, [F

    fill-array-data v9, :array_8

    invoke-static {v0, v7, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v9, 0xb7

    invoke-virtual {v0, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v7, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargingIconView:Landroid/widget/ImageView;

    new-array v1, v1, [F

    fill-array-data v1, :array_9

    invoke-static {v7, v11, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v7, v2, Lcom/android/systemui/power/ChargerAnimationView;->mFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v4, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v3, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mChargerAnimationView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, v2, Lcom/android/systemui/power/ChargerAnimationView;->mAlphaAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-virtual {v2}, Lcom/android/systemui/power/ChargerAnimationView;->setBatteryLevelText()V

    const-string v0, "Animation Started"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
    .end array-data

    :array_5
    .array-data 4
        0x3f000000    # 0.5f
        0x3f866666    # 1.05f
    .end array-data

    :array_6
    .array-data 4
        0x3f866666    # 1.05f
        0x3f75c28f    # 0.96f
    .end array-data

    :array_7
    .array-data 4
        0x3f866666    # 1.05f
        0x3f75c28f    # 0.96f
    .end array-data

    :array_8
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        0x3f75c28f    # 0.96f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final setSleepChargingOff()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->cancelNotification(I)V

    const-string v1, ""

    iput-object v1, v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;->mOptimizationChargingFinishTime:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v2, v0}, Lcom/android/systemui/power/BatteryProtectionUtil;->setSleepChargingStatus(ILandroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mChargingStartTime:Ljava/lang/String;

    const-string v0, "off"

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mSleepChargingEvent:Ljava/lang/String;

    return-void
.end method

.method public final setWirelessMisalignView(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    const-string v0, "PowerUI.WirelessMisalignViewLp"

    invoke-static {v0}, Lcom/android/systemui/power/SecPowerUI;->getLayoutParam(Ljava/lang/String;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7d9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_0
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->isFlipSubDisplayOn(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_LARGE_SCREEN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/power/PowerUtils;->isFlipSubDisplayOn(Z)Z

    move-result v1

    const-string/jumbo v2, "window"

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->getSubDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/power/PowerUtils;->isFlipSubDisplayOn(Z)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-static {v0}, Lcom/android/systemui/power/PowerUtils;->getSubDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->COVER_DISPLAY_LARGE_SCREEN:Z

    if-eqz v1, :cond_4

    const v1, 0x7f0d0055

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    goto :goto_1

    :cond_4
    const v1, 0x7f0d0057

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    goto :goto_1

    :cond_5
    const v2, 0x7f0d0056

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v1, :cond_6

    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    goto :goto_1

    :cond_6
    sget-boolean v1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FOLD:Z

    if-eqz v1, :cond_7

    const v1, 0x7f0d0054

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    goto :goto_1

    :cond_7
    sget-boolean v1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    if-eqz v1, :cond_8

    const v1, 0x7f0d0053

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    goto :goto_1

    :cond_8
    invoke-static {v0, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/power/WirelessMisalignView;

    :goto_1
    iput-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWindowLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    iput-object p0, v0, Lcom/android/systemui/power/WirelessMisalignView;->mListener:Lcom/android/systemui/power/WirelessMisalignListener;

    const/4 v1, 0x0

    if-eqz p1, :cond_b

    const/4 v2, 0x1

    if-eq p1, v2, :cond_a

    goto :goto_2

    :cond_a
    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mTextContainerLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mCenterImageView:Landroid/widget/ImageView;

    const v0, 0x7f080d56

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_b
    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mTextContainerLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mButton:Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, v0, Lcom/android/systemui/power/WirelessMisalignView;->mCenterImageView:Landroid/widget/ImageView;

    const v0, 0x7f080d55

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mPowerManager:Landroid/os/PowerManager;

    if-eqz p1, :cond_d

    const-string p1, "PowerUI"

    const-string/jumbo v0, "turn on screen - misalign view"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x10000006

    invoke-virtual {v0, v2, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_c
    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v2, 0x7530

    invoke-virtual {p1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_d
    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mWirelessMisalignView:Lcom/android/systemui/power/WirelessMisalignView;

    invoke-virtual {p0, v1}, Lcom/android/systemui/power/WirelessMisalignView;->setWirelessMisalignViewVisibility(I)V

    return-void
.end method

.method public final skipChargingUi(IIIZ)Z
    .locals 5

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    invoke-static {v0}, Lcom/android/systemui/power/BatteryProtectionUtil;->isProtectedFullyByMaximum(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const-string p1, "protect battery cut off"

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mSkipChargingUiMsg:Ljava/lang/String;

    return v1

    :cond_0
    const/4 v0, -0x1

    if-eq p1, v0, :cond_a

    iget v0, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-eqz v0, :cond_a

    iget v2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryStatus:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_a

    iget-boolean v4, p0, Lcom/android/systemui/power/SecPowerUI;->mFullyConnected:Z

    if-eqz v4, :cond_a

    const/4 v4, 0x5

    if-eq p2, v4, :cond_1

    if-ne p2, v2, :cond_2

    :cond_1
    if-ne p1, v0, :cond_2

    if-eqz p4, :cond_2

    goto/16 :goto_0

    :cond_2
    iget p4, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryMiscEvent:I

    sget-object v0, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x4

    if-ne p2, v0, :cond_3

    if-ne v2, v3, :cond_3

    invoke-static {p4}, Lcom/android/systemui/power/BatteryProtectionUtil;->isProtectedFullyByMaximum(I)Z

    move-result p2

    invoke-static {p3}, Lcom/android/systemui/power/BatteryProtectionUtil;->isProtectedFullyByMaximum(I)Z

    move-result p3

    const-string p4, "protectFully prior : "

    const-string v2, ", current : "

    const-string v4, "PowerUI.BatteryProtectionUtil"

    invoke-static {p4, v2, v4, p3, p2}, Lcom/android/keyguard/KeyguardKnoxGuardViewController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    if-eqz p3, :cond_3

    if-nez p2, :cond_3

    iget-boolean p2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsChangedBatteryProtectionOnCharging:Z

    if-nez p2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Recharge from battery protection, value : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " / Sleep charging : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/power/SecPowerUI;->mSleepChargingEvent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mSkipChargingUiMsg:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iget p2, p0, Lcom/android/systemui/power/SecPowerUI;->mBatteryOnline:I

    const/16 p3, 0x63

    if-ne p2, p3, :cond_4

    const-string p1, "AFC retry case"

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mSkipChargingUiMsg:Ljava/lang/String;

    goto :goto_1

    :cond_4
    iget p2, p0, Lcom/android/systemui/power/SecPowerUI;->mPlugType:I

    if-ne p2, v1, :cond_5

    if-eq p1, v3, :cond_6

    :cond_5
    if-ne p2, v3, :cond_7

    if-ne p1, v1, :cond_7

    :cond_6
    const-string p1, "Only cable charger type changed"

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mSkipChargingUiMsg:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI;->mIsMotionDetectionSupported:Z

    if-eqz p1, :cond_8

    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI;->mIsDeviceMoving:Z

    if-nez p1, :cond_8

    if-ne p2, v0, :cond_8

    iget-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mDozeChargingHelper:Lcom/android/systemui/power/DozeChargingHelper;

    const-string p2, "Charger connected but device had no move detection and screen off => trigger AOD"

    invoke-virtual {p1, p2}, Lcom/android/systemui/power/DozeChargingHelper;->handlePluginAodCharging(Ljava/lang/String;)V

    const-string p1, "No motion detected during wireless charging"

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mSkipChargingUiMsg:Ljava/lang/String;

    return v1

    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/power/SecPowerUI;->mIsAfterAdaptiveProtection:Z

    if-eqz p1, :cond_9

    const-string p1, "After adaptive protection"

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mSkipChargingUiMsg:Ljava/lang/String;

    return v1

    :cond_9
    const/4 p0, 0x0

    return p0

    :cond_a
    :goto_0
    const-string p1, "Plug reason"

    iput-object p1, p0, Lcom/android/systemui/power/SecPowerUI;->mSkipChargingUiMsg:Ljava/lang/String;

    :goto_1
    return v1
.end method

.method public final start()V
    .locals 12

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e005e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e00d5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    if-ge v2, v1, :cond_0

    move v2, v1

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryReminderLevels:[I

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v5, 0x1

    aput v1, v3, v5

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x10e00d4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/power/SecPowerUI;->mLowBatteryAlertCloseLevel:I

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mReceiver:Lcom/android/systemui/power/SecPowerUI$Receiver;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.samsung.server.BatteryService.action.SEC_BATTERY_EVENT"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.samsung.systemui.power.action.WATER_ALERT_SOUND_TEST"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.samsung.intent.action.KSO_SHOW_POPUP"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.samsung.intent.action.KSO_CLOSE_POPUP"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v6, "com.samsung.CHECK_COOLDOWN_LEVEL"

    invoke-virtual {v8, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.sec.android.intent.action.SAFEMODE_ENABLE"

    invoke-virtual {v8, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v6, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v7, v6, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    iget-object v10, v6, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    const/4 v11, 0x2

    const-string v9, "com.samsung.android.permission.SSRM_NOTIFICATION_PERMISSION"

    move-object v6, v7

    move-object v7, v1

    invoke-virtual/range {v6 .. v11}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    sget-boolean v6, Lcom/android/systemui/PowerUiRune;->TIPS_NOTIFICATION:Z

    if-eqz v6, :cond_1

    const-string v6, "com.samsung.android.sm.IGNORE_RUT_TIPS_NOTI"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "com.samsung.android.sm.CLEAR_TIPS_NOTI"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.tips.noti.confirmed"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    sget-boolean v6, Lcom/android/systemui/PowerUiRune;->INIT_LTC_TIME_CHANGED:Z

    if-eqz v6, :cond_2

    const-string v6, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v6, "android.intent.action.TIME_SET"

    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_2
    sget-boolean v6, Lcom/android/systemui/PowerUiRune;->ADAPTIVE_PROTECTION_NOTIFICATION:Z

    if-eqz v6, :cond_3

    const-string v7, "com.samsung.server.BatteryService.action.ACTION_SLEEP_CHARGING"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_3
    const-string v7, "com.samsung.server.BatteryService.action.SEC_BATTERY_REMAINING_CHARGING_TIME_CHANGED"

    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v8, v7, Lcom/android/systemui/power/SecPowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v7, v7, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v1, v2, v7}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    iget-boolean v2, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->mHasReceivedBattery:Z

    const/4 v7, 0x2

    if-nez v2, :cond_4

    iget-object v2, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v2, v2, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v3, v1, Lcom/android/systemui/power/SecPowerUI$Receiver;->this$0:Lcom/android/systemui/power/SecPowerUI;

    iget-object v3, v3, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/power/SecPowerUI$Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/SecPowerUI;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-virtual {v3, v1, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mWakefulnessObserver:Lcom/android/systemui/power/SecPowerUI$9;

    iget-object v2, p0, Lcom/android/systemui/power/SecPowerUI;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    const-string/jumbo v1, "sys.boot_completed"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/power/SecPowerUI;->mBootCompleted:Z

    const-string v2, "protect_battery"

    const/4 v3, -0x1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->checkOverheatShutdownHappened()V

    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/power/BatteryProtectionUtil;->getProtectBatteryValue(Landroid/content/Context;)I

    move-result v1

    iget-object v8, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "prev_protect_battery_ltc"

    invoke-static {v8, v9, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v1, v7, :cond_5

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v9, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->clearScheduling()V

    :cond_6
    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/power/SecPowerUI;->setSleepChargingOff()V

    iput-boolean v4, p0, Lcom/android/systemui/power/SecPowerUI;->mIsAfterAdaptiveProtection:Z

    :cond_7
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->PROTECT_BATTERY_CUTOFF:Z

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/systemui/power/SecPowerUI$11;

    iget-object v6, p0, Lcom/android/systemui/power/SecPowerUI;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/power/SecPowerUI$11;-><init>(Lcom/android/systemui/power/SecPowerUI;Landroid/os/Handler;)V

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/power/BatteryProtectionUtil;->getProtectBatteryValue(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/power/SecPowerUI;->mProtectBatteryValue:I

    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ltc_highsoc_threshold"

    const/16 v7, 0x5f

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/power/SecPowerUI;->mLtcHighSocThreshold:I

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "ltc_release_threshold"

    const/16 v7, 0x4b

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/power/SecPowerUI;->mLtcReleaseThreshold:I

    :cond_8
    sget-boolean v1, Lcom/android/systemui/PowerUiRune;->BATTERY_PROTECTION:Z

    if-eqz v1, :cond_9

    new-instance v1, Lcom/android/systemui/power/SecPowerUI$12;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/power/SecPowerUI$12;-><init>(Lcom/android/systemui/power/SecPowerUI;Landroid/os/Handler;)V

    const-string v2, "battery_protection_threshold"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Lcom/android/systemui/power/SecPowerUI$13;

    invoke-direct {v1, p0, v6}, Lcom/android/systemui/power/SecPowerUI$13;-><init>(Lcom/android/systemui/power/SecPowerUI;Landroid/os/Handler;)V

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v4, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mWarnings:Lcom/android/systemui/power/SecWarningsUI;

    check-cast v0, Lcom/android/systemui/power/SecPowerNotificationWarnings;

    invoke-virtual {v0}, Lcom/android/systemui/power/SecPowerNotificationWarnings;->restoreScreenTimeOutIfNeeded()V

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.sensorhub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "PowerUI"

    const-string/jumbo v1, "start : hasSystemFeature(com.sec.feature.sensorhub)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v5, p0, Lcom/android/systemui/power/SecPowerUI;->mIsMotionDetectionSupported:Z

    iget-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "scontext"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/scontext/SContextManager;

    iput-object v1, p0, Lcom/android/systemui/power/SecPowerUI;->mSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v1, :cond_a

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Landroid/hardware/scontext/SContextManager;->isAvailableService(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextEnabled:Z

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "start : (mSContextManager != null - mIsSContextEnabled = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/power/SecPowerUI;->mIsSContextEnabled:Z

    invoke-static {v1, v2, v0}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mPhoneStateListener:Lcom/android/systemui/power/SecPowerUI$3;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public final startScheduling()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    const-string v1, "com.android.systemui.power_auto_on_protect_battery"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v3, "auto_on_protect_battery_timer_started"

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "PowerUI"

    const-string v4, "Meet soc conditions, start scheduling"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/power/SecPowerUI;->mContext:Landroid/content/Context;

    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_CHARGE:Z

    sget-object v4, Lcom/android/systemui/power/BatteryProtectionUtil;->INSTANCE:Lcom/android/systemui/power/BatteryProtectionUtil;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "ltc_highsoc_exceed_time"

    invoke-static {v0, v7, v5, v6}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/PowerUiRune;->TURN_ON_PROTECT_BATTERY_BY_LONG_TERM_TA:Z

    if-eqz v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "charger_connected_time"

    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    :goto_0
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v3, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    return-void
.end method
