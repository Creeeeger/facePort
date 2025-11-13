.class public final Lcom/samsung/android/settings/theftprotection/receiver/TimerActionProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;


# virtual methods
.method public final handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    const-string v3, "mandatory_biometrics_delay_time"

    const-string v4, "mandatory_biometrics_grace_time"

    const-wide/16 v5, 0x0

    const-string v7, "TimerActionProcessor"

    const/4 v8, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v9, "com.samsung.android.settings.action.START_SECURITY_DELAY"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x4

    goto :goto_0

    :sswitch_1
    const-string v9, "com.samsung.android.settings.action.GRACE_TIME_EXPIRATION"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v8, v2

    goto :goto_0

    :sswitch_2
    const-string v9, "com.samsung.android.settings.action.ENTER_TRUSTED_PLACES"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v8, 0x2

    goto :goto_0

    :sswitch_3
    const-string v9, "com.samsung.android.settings.action.TIME_DELAY_EXPIRATION"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    move v8, p0

    goto :goto_0

    :sswitch_4
    const-string v9, "com.samsung.android.settings.action.GRACE_TIME_FORCE_TERMINATION"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v8, v0

    :goto_0
    packed-switch v8, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    sget-wide v4, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_DELAY_DURATION_MILLIS:J

    add-long/2addr v0, v4

    const-string p0, "delay_expiration_time"

    invoke-virtual {p2, p0, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Start security delay. expirationTime="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "mandatory_biometrics_base_time"

    invoke-static {p0, p2, v6, v7}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    invoke-static {p1, v4, v5}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->notifyTimeDelayStart(Landroid/content/Context;J)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->getIntentForSecurityDelayExpiration(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto/16 :goto_1

    :pswitch_1
    const-string p0, "Grace Time is expired"

    invoke-static {v7, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->cancelNotifications(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_2
    const-string p2, "Enter trusted places"

    invoke-static {v7, p2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v3, v5, v6}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long p2, v0, v5

    if-lez p2, :cond_5

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-static {p2, v3, v5, v6}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->cancelNotifications(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->getIntentForSecurityDelayExpiration(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p2

    const-class v0, Landroid/app/AlarmManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    invoke-virtual {v0, p2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    invoke-static {p1, p0}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->notifyTimeDelayExpired(Landroid/content/Context;Z)V

    goto/16 :goto_1

    :cond_5
    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->isSecurityGraceActive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->cancelNotifications(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->getIntentForSecurityGraceExpiration(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto :goto_1

    :pswitch_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    sget-wide v10, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_GRACE_DURATION_MILLIS:J

    add-long/2addr v8, v10

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Security delay is expired. expirationTime(GraceTime)="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v3, v5, v6}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v8, v9}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {p1, v0}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->notifyTimeDelayExpired(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->getIntentForSecurityGraceExpiration(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    invoke-virtual {p1, v2, v8, v9, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_1

    :pswitch_4
    const-string p0, "Grace period forced termination"

    invoke-static {v7, p0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->isSecurityGraceActive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v5, v6}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->cancelNotifications(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->getIntentForSecurityGraceExpiration(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    invoke-virtual {p1, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_6
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f7cf0ae -> :sswitch_4
        0x34598290 -> :sswitch_3
        0x40ae9268 -> :sswitch_2
        0x53cc550d -> :sswitch_1
        0x6593a28e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
