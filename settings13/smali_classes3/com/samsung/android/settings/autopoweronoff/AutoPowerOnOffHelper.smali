.class public Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;
.super Ljava/lang/Object;
.source "AutoPowerOnOffHelper.java"


# static fields
.field private static mPendingPowerOffIntent:Landroid/app/PendingIntent;

.field private static mPendingPowerOnIntent:Landroid/app/PendingIntent;


# direct methods
.method private static calculateAlarm(III)J
    .locals 8

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "calculateAlarm : hour = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", minute = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", repeatDays = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoPowerOnOffHelper"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    .line 259
    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    .line 260
    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x1

    if-lt p0, v3, :cond_0

    if-ne p0, v3, :cond_1

    if-gt p1, v5, :cond_1

    .line 264
    :cond_0
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    .line 266
    :cond_1
    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    .line 267
    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p1, 0x0

    .line 268
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    .line 269
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    if-nez p2, :cond_2

    .line 272
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "calculateAlarm : c.getTimeInMillis(1) = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    :cond_2
    const/4 p0, 0x7

    .line 277
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v7, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    if-ge p1, p0, :cond_5

    add-int v3, v2, p1

    sub-int/2addr v3, v7

    .line 283
    rem-int/2addr v3, p0

    add-int/2addr v3, v7

    shl-int v3, v7, v3

    and-int/2addr v3, p2

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 288
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCount = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->add(II)V

    .line 292
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "calculateAlarm : c.getTimeInMillis(2) = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method private static getDataString(ZJ)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_5

    const-wide/16 v0, -0x1

    cmp-long p0, p1, v0

    if-nez p0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-wide/16 v0, 0x0

    .line 382
    new-instance p0, Landroid/text/format/Time;

    const-string v2, "UTC"

    invoke-direct {p0, v2}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    sub-long/2addr p1, v0

    .line 385
    invoke-virtual {p0, p1, p2}, Landroid/text/format/Time;->set(J)V

    const/4 p1, 0x0

    .line 386
    invoke-virtual {p0, p1}, Landroid/text/format/Time;->normalize(Z)J

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget p2, p0, Landroid/text/format/Time;->year:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 390
    iget v0, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v0, v0, 0x1

    const-string v1, "0"

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Landroid/text/format/Time;->month:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    iget v3, p0, Landroid/text/format/Time;->monthDay:I

    if-ge v3, v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    iget v4, p0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 392
    iget v4, p0, Landroid/text/format/Time;->hour:I

    if-ge v4, v2, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 393
    iget v5, p0, Landroid/text/format/Time;->minute:I

    if-ge v5, v2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/text/format/Time;->minute:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 394
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_4
    const-string p0, "0000000000000"

    return-object p0
.end method

.method public static isSupportAutoPowerOnOff()Z
    .locals 2

    .line 76
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isChinaModel()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string v1, "SEC_FLOATING_FEATURE_SETTINGS_SUPPORT_AUTO_POWER_ON_OFF"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static registerAutoPowerOffAlarm(Landroid/content/Context;Z)V
    .locals 12

    const-string v0, "AutoPowerOnOffHelper"

    const-string v1, "registerAutoPowerOffAlarm"

    .line 199
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "alarm"

    .line 200
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 201
    sget-object v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 202
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 205
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_power_off_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-nez v2, :cond_2

    const-string p0, "Don\'t register auto power off, switch is close"

    .line 207
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 211
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v5, 0x8fc

    const-string v6, "auto_power_off_time"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 212
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/16 v6, 0x7c

    const-string v7, "auto_power_off_repeat_days"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 214
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.action.AUTO_POWER_OFF_ACTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.settings"

    .line 215
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x14000000

    .line 216
    invoke-static {p0, v4, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    .line 218
    div-int/lit8 v6, v2, 0x64

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v6, v2, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->calculateAlarm(III)J

    move-result-wide v6

    const-string v2, "auto_power_off_alert_time"

    if-nez v5, :cond_5

    if-eqz p1, :cond_3

    .line 221
    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 223
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-wide/16 v8, -0x1

    invoke-static {p1, v2, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 224
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "registerAutoPowerOffAlarm, savedPowerOffOneTime = "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v10, v6

    if-ltz p1, :cond_4

    .line 226
    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 229
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-wide v6, v8

    goto :goto_1

    .line 233
    :cond_5
    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 236
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static registerAutoPowerOnAlarm(Landroid/content/Context;Z)V
    .locals 12

    const-string v0, "AutoPowerOnOffHelper"

    const-string v1, "registerAutoPowerOnAlarm"

    .line 83
    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "alarm"

    .line 84
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 85
    sget-object v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    .line 86
    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 89
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_power_on_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    if-nez v2, :cond_2

    const-string p0, "Don\'t register auto power on, switch is close"

    .line 91
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 95
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v5, 0x2bc

    const-string v6, "auto_power_on_time"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/16 v6, 0x7c

    const-string v7, "auto_power_on_repeat_days"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 98
    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.action.AUTO_POWER_ON_ACTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.settings"

    .line 99
    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x14000000

    .line 100
    invoke-static {p0, v4, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    .line 102
    div-int/lit8 v6, v2, 0x64

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v6, v2, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->calculateAlarm(III)J

    move-result-wide v6

    if-nez v5, :cond_5

    if-eqz p1, :cond_3

    .line 106
    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "auto_power_on_alert_time"

    const-wide/16 v8, -0x1

    invoke-static {p1, v2, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerAutoPowerOnAlarm, savedPowerOnOneTime = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v10, v6

    if-ltz p1, :cond_4

    .line 112
    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    .line 116
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-wide v6, v8

    goto :goto_1

    .line 121
    :cond_5
    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 124
    :goto_1
    invoke-static {v6, v7, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->sendData(JLandroid/content/Context;)V

    return-void
.end method

.method public static registerAutoPowerOnClock(Landroid/content/Context;Z)V
    .locals 3

    const-string p1, "AutoPowerOnOffHelper"

    const-string v0, "registerAutoPowerOnClock"

    .line 129
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_0

    const-string p1, "alarm"

    .line 131
    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    .line 132
    sget-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 135
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/16 v0, 0x2bc

    const-string v1, "auto_power_on_time"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v1, 0x7c

    const-string v2, "auto_power_on_repeat_days"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 138
    div-int/lit8 v1, p1, 0x64

    rem-int/lit8 p1, p1, 0x64

    invoke-static {v1, p1, v0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->calculateAlarm(III)J

    move-result-wide v0

    .line 140
    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->setAutoPowerUpClock(JLandroid/content/Context;)V

    return-void
.end method

.method private static sendData(JLandroid/content/Context;)V
    .locals 0

    .line 321
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->setAutoPowerUp(JLandroid/content/Context;)V

    return-void
.end method

.method private static setAutoPowerUp(JLandroid/content/Context;)V
    .locals 8

    .line 325
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_power_up_alert_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 326
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, p0, v2

    const-string v7, "auto_power_on_alert_time"

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v6, p0, v4

    if-gtz v6, :cond_1

    .line 334
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v7, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void

    :cond_1
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    cmp-long v2, v0, p0

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, p0

    .line 345
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v7, p0, p1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string p0, "alarm"

    .line 348
    invoke-virtual {p2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    const/4 p1, 0x1

    .line 349
    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->getDataString(ZJ)Ljava/lang/String;

    move-result-object p1

    .line 350
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData, setTime: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mData: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AutoPowerOnOffHelper"

    invoke-static {v0, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 356
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->semSetAutoPowerUp(Ljava/lang/String;)V

    const-string p0, "SetAutoPowerUp success !"

    .line 357
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static setAutoPowerUpClock(JLandroid/content/Context;)V
    .locals 8

    .line 144
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_power_up_alert_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 145
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, p0, v2

    const-string v7, "auto_power_on_alert_time"

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v6, p0, v4

    if-gtz v6, :cond_1

    .line 152
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v7, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void

    :cond_1
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    cmp-long v2, v0, p0

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, p0

    .line 162
    :goto_0
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v7, p0, p1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string p0, "alarm"

    .line 165
    invoke-virtual {p2, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    .line 167
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.action.AUTO_POWER_ON_ACTION"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.settings"

    .line 168
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x14000000

    const/4 v3, 0x0

    .line 169
    invoke-static {p2, v3, p1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    sput-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    .line 170
    invoke-virtual {p0, v3, v0, v1, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    const/4 p1, 0x1

    .line 172
    invoke-static {p1, v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->getDataString(ZJ)Ljava/lang/String;

    move-result-object p1

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendData, setTime: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mData: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AutoPowerOnOffHelper"

    invoke-static {v0, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    .line 179
    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->semSetAutoPowerUp(Ljava/lang/String;)V

    const-string p0, "SetAutoPowerUp success !"

    .line 180
    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static unregisterAutoPowerOffAlarm(Landroid/content/Context;)V
    .locals 3

    const-string v0, "alarm"

    .line 240
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 241
    sget-object v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 242
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 244
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.AUTO_POWER_OFF_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    .line 246
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    :goto_0
    const/4 v0, 0x0

    .line 248
    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-wide/16 v0, -0x1

    const-string v2, "auto_power_off_alert_time"

    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void
.end method

.method public static unregisterAutoPowerOnAlarm(Landroid/content/Context;)V
    .locals 3

    const-string v0, "alarm"

    .line 184
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 185
    sget-object v1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 186
    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 188
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.settings.action.AUTO_POWER_ON_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings"

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    const/high16 v2, 0x14000000

    .line 190
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    :goto_0
    const/4 v0, 0x0

    .line 192
    sput-object v0, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    const-wide/16 v0, -0x1

    .line 194
    invoke-static {v0, v1, p0}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->sendData(JLandroid/content/Context;)V

    return-void
.end method
