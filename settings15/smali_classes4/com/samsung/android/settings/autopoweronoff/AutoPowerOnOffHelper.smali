.class public abstract Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static mPendingPowerOffIntent:Landroid/app/PendingIntent;

.field public static mPendingPowerOnIntent:Landroid/app/PendingIntent;


# direct methods
.method public static calculateAlarm(III)J
    .locals 8

    const-string v0, "calculateAlarm : hour = "

    const-string v1, ", minute = "

    const-string v2, ", repeatDays = "

    invoke-static {v0, v1, p0, p1, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoPowerOnOffHelper"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/16 v4, 0xc

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x6

    const/4 v7, 0x1

    if-lt p0, v3, :cond_0

    if-ne p0, v3, :cond_1

    if-gt p1, v5, :cond_1

    :cond_0
    invoke-virtual {v0, v6, v7}, Ljava/util/Calendar;->add(II)V

    :cond_1
    invoke-virtual {v0, v2, p0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v0, v4, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xe

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    if-nez p2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "calculateAlarm : c.getTimeInMillis(1) = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0

    :cond_2
    const/4 p0, 0x7

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ge v2, v7, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    if-ge p1, p0, :cond_5

    add-int v3, v2, p1

    sub-int/2addr v3, v7

    rem-int/2addr v3, p0

    add-int/2addr v3, v7

    shl-int v3, v7, v3

    and-int/2addr v3, p2

    if-lez v3, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "mCount = "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->add(II)V

    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "calculateAlarm : c.getTimeInMillis(2) = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getDataString(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, -0x1

    cmp-long v0, p0, v0

    if-nez v0, :cond_0

    const-string p0, "0000000000000"

    return-object p0

    :cond_0
    new-instance v0, Landroid/text/format/Time;

    const-string v1, "UTC"

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Landroid/text/format/Time;->set(J)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroid/text/format/Time;->normalize(Z)J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    iget p1, v0, Landroid/text/format/Time;->year:I

    const-string v1, ""

    invoke-static {p0, p1, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iget p1, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 p1, p1, 0x1

    const-string v2, "0"

    const/16 v3, 0xa

    if-ge p1, v3, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, v0, Landroid/text/format/Time;->month:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :goto_1
    iget v4, v0, Landroid/text/format/Time;->monthDay:I

    if-ge v4, v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_2
    iget v5, v0, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_3
    iget v5, v0, Landroid/text/format/Time;->hour:I

    if-ge v5, v3, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v6, v0, Landroid/text/format/Time;->hour:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v0, Landroid/text/format/Time;->hour:I

    invoke-static {v5, v6, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_4
    iget v6, v0, Landroid/text/format/Time;->minute:I

    if-ge v6, v3, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Landroid/text/format/Time;->minute:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/text/format/Time;->minute:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_5
    const-string v1, "1"

    invoke-static {v1, p0, p1, v4, v5}, Landroidx/appcompat/util/SeslRoundedCorner$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static registerAutoPowerOffAlarm(Landroid/content/Context;Z)V
    .locals 12

    const-string/jumbo v0, "registerAutoPowerOffAlarm"

    const-string v1, "AutoPowerOnOffHelper"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_power_off_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "auto_power_off_time"

    const/16 v6, 0x8fc

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_power_off_repeat_days"

    const/16 v7, 0x7c

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.action.AUTO_POWER_OFF_ACTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.settings"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x14000000

    invoke-static {p0, v4, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    div-int/lit8 v6, v2, 0x64

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v6, v2, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->calculateAlarm(III)J

    move-result-wide v6

    const-string v2, "auto_power_off_alert_time"

    if-nez v5, :cond_3

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-wide/16 v8, -0x1

    invoke-static {p1, v2, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "registerAutoPowerOffAlarm, savedPowerOffOneTime = "

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v10, v6

    if-ltz p1, :cond_2

    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-wide v6, v8

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v2, v6, v7}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    return-void

    :cond_4
    const-string p0, "Don\'t register auto power off, switch is close"

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static registerAutoPowerOnAlarm(Landroid/content/Context;Z)V
    .locals 12

    const-string/jumbo v0, "registerAutoPowerOnAlarm"

    const-string v1, "AutoPowerOnOffHelper"

    invoke-static {v1, v0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sget-object v2, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_power_on_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v5, "auto_power_on_time"

    const/16 v6, 0x2bc

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_power_on_repeat_days"

    const/16 v7, 0x7c

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Landroid/content/Intent;

    const-string v7, "com.samsung.settings.action.AUTO_POWER_ON_ACTION"

    invoke-direct {v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v7, "com.android.settings"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v7, 0x14000000

    invoke-static {p0, v4, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    sput-object v6, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    div-int/lit8 v6, v2, 0x64

    rem-int/lit8 v2, v2, 0x64

    invoke-static {v6, v2, v5}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->calculateAlarm(III)J

    move-result-wide v6

    if-nez v5, :cond_3

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "auto_power_on_alert_time"

    const-wide/16 v8, -0x1

    invoke-static {p1, v2, v8, v9}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v10

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "registerAutoPowerOnAlarm, savedPowerOnOneTime = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    cmp-long p1, v10, v6

    if-ltz p1, :cond_2

    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-wide v6, v8

    goto :goto_0

    :cond_3
    sget-object p1, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->mPendingPowerOnIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v4, v6, v7, p1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :goto_0
    invoke-static {p0, v6, v7}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->sendData(Landroid/content/Context;J)V

    return-void

    :cond_4
    const-string p0, "Don\'t register auto power on, switch is close"

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static sendData(Landroid/content/Context;J)V
    .locals 8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "clock_power_up_alert_time"

    const-wide/16 v2, -0x1

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v6, p1, v2

    const-string v7, "auto_power_on_alert_time"

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v6, p1, v4

    if-gtz v6, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v7, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    goto :goto_1

    :cond_1
    cmp-long v2, v0, v4

    if-lez v2, :cond_2

    cmp-long v2, v0, p1

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, p1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v7, p1, p2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string p1, "alarm"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    invoke-static {v0, v1}, Lcom/samsung/android/settings/autopoweronoff/AutoPowerOnOffHelper;->getDataString(J)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendData, setTime: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", mData: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AutoPowerOnOffHelper"

    invoke-static {v0, p2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->semSetAutoPowerUp(Ljava/lang/String;)V

    const-string p0, "SetAutoPowerUp success !"

    invoke-static {v0, p0}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
