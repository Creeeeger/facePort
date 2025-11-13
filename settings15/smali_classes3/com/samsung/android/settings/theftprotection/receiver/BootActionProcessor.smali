.class public final Lcom/samsung/android/settings/theftprotection/receiver/BootActionProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;


# virtual methods
.method public final handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const-string p0, "BootActionProcessor"

    const-string/jumbo p2, "register the trust locations : BOOT COMPLETED"

    invoke-static {p0, p2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "mandatory_biometrics_base_time"

    const-wide/16 v0, 0x0

    invoke-static {p0, p2, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "mandatory_biometrics_delay_time"

    invoke-static {p0, p2, v0, v1}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    cmp-long p0, v2, v0

    const/4 v0, 0x3

    if-lez p0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    sget-wide v1, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_DELAY_DURATION_MILLIS:J

    sub-long/2addr v1, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->notifyTimeDelayStart(Landroid/content/Context;J)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->getIntentForSecurityDelayExpiration(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    invoke-virtual {p2, v0, v3, v4, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->isSecurityGraceActive(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    sget-wide v1, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_DELAY_DURATION_MILLIS:J

    invoke-static {}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSecurityDelayTest()V

    sget-wide v6, Lcom/samsung/android/settings/theftprotection/TheftProtectionConstants;->SECURITY_GRACE_DURATION_MILLIS:J

    add-long/2addr v1, v6

    sub-long/2addr v1, v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long/2addr v3, v1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "mandatory_biometrics_grace_time"

    invoke-static {p0, p2, v3, v4}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;->getIntentForSecurityGraceExpiration(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object p0

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AlarmManager;

    invoke-virtual {p2, v0, v3, v4, p0}, Landroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLandroid/app/PendingIntent;)V

    :cond_1
    :goto_0
    sget-object p0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/settings/theftprotection/receiver/BootActionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->updateInSignificantPlace(Landroid/content/Context;Z)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->updateRequirementsSatisfied(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "LocationManager"

    const-string/jumbo v0, "registerAllGeofence"

    invoke-static {p2, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method
