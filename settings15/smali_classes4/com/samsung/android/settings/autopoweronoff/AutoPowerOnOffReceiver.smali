.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mWakeLockForPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTO_POWER_ON_OFF"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoPowerOnOffReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "mAction = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/high16 v3, 0x14000000

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_2

    const-string/jumbo p0, "power_on_reg"

    invoke-virtual {p2, p0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "by_user"

    invoke-virtual {p2, p0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :cond_0
    const-string p0, "alarm"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    sget-object p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_1

    invoke-virtual {p0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/content/Intent;

    const-string p2, "com.samsung.settings.action.AUTO_POWER_ON_ACTION"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.settings"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v6, p0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    :goto_0
    sput-object v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-static {p1, v4, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->sendData(Landroid/content/Context;J)V

    goto/16 :goto_5

    :cond_2
    const-string v1, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo p0, "power_off_reg"

    invoke-virtual {p2, p0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "by_user"

    invoke-virtual {p2, p0, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :cond_3
    const-string p0, "alarm"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    sget-object p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_4

    invoke-virtual {p0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    :cond_4
    new-instance p0, Landroid/content/Intent;

    const-string p2, "com.samsung.settings.action.AUTO_POWER_OFF_ACTION"

    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.android.settings"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v6, p0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    :goto_1
    sput-object v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "auto_power_off_alert_time"

    invoke-static {p0, p1, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_5

    :cond_5
    const-string v1, "com.samsung.settings.action.AUTO_POWER_ON_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "auto_power_on_settings"

    invoke-static {p0, p2, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_6

    invoke-static {p1, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :cond_6
    const-string p0, "AutoPowerOnOffReceiver"

    const-string p1, "Don\'t open auto power on"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_7
    const-string v1, "com.samsung.settings.action.AUTO_POWER_OFF_ACTION"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x7c

    if-eqz v1, :cond_e

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "auto_power_off_settings"

    invoke-static {p2, v0, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_d

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p2

    const/4 v0, 0x7

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "auto_power_off_repeat_days"

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_power_off_alert_time"

    invoke-static {v1, v2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v1

    const-string v3, "AutoPowerOnOffReceiver"

    const-string v4, "currentTime = "

    const-string v5, ", savedPowerOffTime = "

    invoke-static {v7, v8, v4, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v3, v7, v1

    if-ltz v3, :cond_c

    const-wide/32 v3, 0xc350

    add-long/2addr v1, v3

    cmp-long v1, v1, v7

    if-gez v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x1

    if-nez p2, :cond_9

    goto :goto_2

    :cond_9
    shl-int v0, v1, v0

    and-int/2addr p2, v0

    if-lez p2, :cond_b

    :goto_2
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-static {p1, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    const-string p0, "AutoPowerOnOffReceiver"

    const-string p1, "Now calling, do not show power off dialog. Return!"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_a
    const-string p2, "AutoPowerOnOffReceiver"

    monitor-enter p0

    :try_start_0
    const-string v0, "AutoPowerOnOffReceiver"

    const-string v2, "acquirePartial"

    invoke-static {v0, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->releasePartial()V

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0, v1, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mWakeLockForPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v1, "com.samsung.android.settings.autopoweronoff.AutoPowerOnOffConfirmDialog"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x14040000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance p2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;)V

    const-wide/16 v0, 0xbb8

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_b
    invoke-static {p1, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :cond_c
    :goto_3
    invoke-static {p1, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    goto/16 :goto_5

    :cond_d
    const-string p0, "AutoPowerOnOffReceiver"

    const-string p1, "Don\'t open auto power off"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_e
    const-string p0, "com.samsung.sec.android.clockpackage.AUTO_POWER_UP"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_15

    const-string p0, "Alarm_Power_Up_Time"

    invoke-virtual {p2, p0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/32 v7, 0x2bf20

    sub-long/2addr v0, v7

    const-string p0, "AutoPowerOnOffReceiver"

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v7, "mAlarmPowerUpTime = "

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "clock_power_up_alert_time"

    invoke-static {p0, p2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "auto_power_on_settings"

    invoke-static {p0, v0, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_14

    const-string p0, "AutoPowerOnOffHelper"

    const-string/jumbo v0, "registerAutoPowerOnClock"

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    const-string v1, "alarm"

    if-eqz v0, :cond_f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v7, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v7}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "auto_power_on_time"

    const/16 v8, 0x2bc

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_power_on_repeat_days"

    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    div-int/lit8 v7, v0, 0x64

    rem-int/lit8 v0, v0, 0x64

    invoke-static {v7, v0, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->calculateAlarm(III)J

    move-result-wide v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p2, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    cmp-long p2, v7, v4

    const-string v0, "auto_power_on_alert_time"

    if-nez p2, :cond_10

    goto :goto_4

    :cond_10
    cmp-long p2, v7, v11

    if-gtz p2, :cond_11

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v0, v4, v5}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto/16 :goto_5

    :cond_11
    cmp-long p2, v9, v11

    if-lez p2, :cond_12

    cmp-long p2, v9, v7

    if-gtz p2, :cond_12

    goto :goto_4

    :cond_12
    move-wide v9, v7

    :goto_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v0, v7, v8}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.AUTO_POWER_ON_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p1, v6, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-virtual {p2, v6, v9, v10, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    invoke-static {v9, v10}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->getDataString(J)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "sendData, setTime: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_5

    :cond_13
    invoke-virtual {p2, p1}, Landroid/app/AlarmManager;->semSetAutoPowerUp(Ljava/lang/String;)V

    const-string p1, "SetAutoPowerUp success !"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_14
    const-string p0, "AutoPowerOnOffReceiver"

    const-string p1, "Don\'t open auto power on"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_15
    const-string p0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_16

    const-string p0, "android.intent.action.TIME_SET"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    :cond_16
    invoke-static {p1, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    invoke-static {p1, v6}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    :cond_17
    :goto_5
    return-void

    :cond_18
    const-string p0, "AutoPowerOnOffReceiver"

    const-string p1, "Do not support the function !"

    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final declared-synchronized releasePartial()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AutoPowerOnOffReceiver"

    const-string/jumbo v1, "releasePartial"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mWakeLockForPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mWakeLockForPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method
