.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AutoPowerOnOffReceiver.java"


# instance fields
.field private mWakeLockForPartialWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic -$$Nest$mreleasePartial(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->releasePartial()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private declared-synchronized acquirePartial(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AutoPowerOnOffReceiver"

    const-string v1, "acquirePartial"

    .line 179
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->releasePartial()V

    if-eqz p1, :cond_0

    const-string v0, "power"

    .line 183
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    const/4 v0, 0x1

    .line 184
    invoke-virtual {p1, v0, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mWakeLockForPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 185
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isActivateDay(II)Z
    .locals 0

    const/4 p0, 0x1

    if-nez p2, :cond_0

    return p0

    :cond_0
    shl-int p1, p0, p1

    and-int/2addr p1, p2

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private procAutoPowerOffAction(Landroid/content/Context;)V
    .locals 10

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_power_off_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v1, "AutoPowerOnOffReceiver"

    if-nez v0, :cond_1

    const-string p0, "Don\'t open auto power off"

    .line 105
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v3, 0x7

    .line 110
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 111
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 113
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v6, 0x7c

    const-string v7, "auto_power_off_repeat_days"

    invoke-static {v0, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 115
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-wide/16 v7, -0x1

    const-string v9, "auto_power_off_alert_time"

    invoke-static {v6, v9, v7, v8}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 118
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "currentTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v9, ", savedPowerOffTime = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long v1, v4, v6

    if-ltz v1, :cond_4

    const-wide/32 v8, 0xc350

    add-long/2addr v6, v8

    cmp-long v1, v6, v4

    if-gez v1, :cond_2

    goto :goto_1

    .line 122
    :cond_2
    invoke-direct {p0, v3, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->isActivateDay(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->startPowerOffConfirmDialog(Landroid/content/Context;)V

    goto :goto_2

    .line 125
    :cond_3
    invoke-static {p1, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    goto :goto_2

    .line 121
    :cond_4
    :goto_1
    invoke-static {p1, v2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    :goto_2
    return-void
.end method

.method private procAutoPowerOnAction(Landroid/content/Context;)V
    .locals 3

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "auto_power_on_settings"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    if-nez v2, :cond_1

    const-string p0, "AutoPowerOnOffReceiver"

    const-string p1, "Don\'t open auto power on"

    .line 87
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->setNextPowerOnAlarm(Landroid/content/Context;)V

    return-void
.end method

.method private procClockPowerUpAction(Landroid/content/Context;J)V
    .locals 1

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "clock_power_up_alert_time"

    invoke-static {p0, v0, p2, p3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 168
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "auto_power_on_settings"

    const/4 p3, 0x0

    invoke-static {p0, p2, p3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, p3

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "AutoPowerOnOffReceiver"

    const-string p1, "Don\'t open auto power on"

    .line 171
    invoke-static {p0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 175
    :cond_1
    invoke-static {p1, p3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOnClock(Landroid/content/Context;Z)V

    return-void
.end method

.method private declared-synchronized releasePartial()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "AutoPowerOnOffReceiver"

    const-string v1, "releasePartial"

    .line 190
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mWakeLockForPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->mWakeLockForPartialWakeLock:Landroid/os/PowerManager$WakeLock;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setNextPowerOffAlarm(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x0

    .line 154
    invoke-static {p1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method private setNextPowerOnAlarm(Landroid/content/Context;)V
    .locals 0

    const/4 p0, 0x0

    .line 94
    invoke-static {p1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    return-void
.end method

.method private startPowerOffConfirmDialog(Landroid/content/Context;)V
    .locals 3

    .line 130
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    const-string v1, "AutoPowerOnOffReceiver"

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 132
    invoke-static {p1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    const-string p0, "Now calling, do not show power off dialog. Return!"

    .line 133
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->acquirePartial(Landroid/content/Context;Ljava/lang/String;)V

    .line 139
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.samsung.android.settings.autopoweronoff.AutoPowerOnOffConfirmDialog"

    .line 140
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x14040000

    .line 142
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 143
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 145
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver$1;-><init>(Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 47
    invoke-static {}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->isSupportAutoPowerOnOff()Z

    move-result v0

    const-string v1, "AutoPowerOnOffReceiver"

    if-nez v0, :cond_0

    const-string p0, "Do not support the function !"

    .line 48
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 52
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAction = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.settings.action.SET_AUTO_POWER_ON"

    .line 55
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "by_user"

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    const-string p0, "power_on_reg"

    .line 56
    invoke-virtual {p2, p0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 57
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOnAlarm(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 59
    :cond_1
    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->unregisterAutoPowerOnAlarm(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    const-string v2, "com.samsung.settings.action.SET_AUTO_POWER_OFF"

    .line 61
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "power_off_reg"

    .line 62
    invoke-virtual {p2, p0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 63
    invoke-virtual {p2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->registerAutoPowerOffAlarm(Landroid/content/Context;Z)V

    goto :goto_0

    .line 65
    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->unregisterAutoPowerOffAlarm(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v2, "com.samsung.settings.action.AUTO_POWER_ON_ACTION"

    .line 67
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->procAutoPowerOnAction(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v2, "com.samsung.settings.action.AUTO_POWER_OFF_ACTION"

    .line 69
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 70
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->procAutoPowerOffAction(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    const-string v2, "com.samsung.sec.android.clockpackage.AUTO_POWER_UP"

    .line 71
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const-wide/16 v2, -0x1

    const-string v0, "Alarm_Power_Up_Time"

    .line 72
    invoke-virtual {p2, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    const-wide/32 v4, 0x2bf20

    sub-long/2addr v2, v4

    .line 74
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mAlarmPowerUpTime = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-direct {p0, p1, v2, v3}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->procClockPowerUpAction(Landroid/content/Context;J)V

    goto :goto_0

    :cond_7
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    const-string p2, "android.intent.action.TIME_SET"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 78
    :cond_8
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->setNextPowerOffAlarm(Landroid/content/Context;)V

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffReceiver;->setNextPowerOnAlarm(Landroid/content/Context;)V

    :cond_9
    :goto_0
    return-void
.end method
