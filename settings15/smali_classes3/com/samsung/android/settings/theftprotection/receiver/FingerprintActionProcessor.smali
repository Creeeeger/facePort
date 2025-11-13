.class public final Lcom/samsung/android/settings/theftprotection/receiver/FingerprintActionProcessor;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/theftprotection/receiver/ProcessAction;


# virtual methods
.method public final handle(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p0, "FingerprintActionProcessor"

    const-string v0, "handle Action Fingerprint"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p2, "com.samsung.android.intent.action.FINGERPRINT_ADDED"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    const-string p2, "com.samsung.android.intent.action.FINGERPRINT_RESET"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->getInstance()Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "ProtectionTimerManager"

    const-string/jumbo p2, "stopTimer()"

    invoke-static {p0, p2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sCountDownTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p0, 0x0

    sput-object p0, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager;->sCountDownTimer:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerManager$NoLeakCountDownTimer;

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "mandatory_biometrics_delay_time"

    const-wide/16 v0, 0x0

    invoke-static {p0, p2, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "mandatory_biometrics_grace_time"

    invoke-static {p0, p2, v0, v1}, Landroid/provider/Settings$Secure;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    sget-object p0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/settings/theftprotection/receiver/FingerprintActionProcessor$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->updateInSignificantPlace(Landroid/content/Context;Z)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    const-string p0, "LocationManager"

    const-string/jumbo p2, "registerAllGeofence"

    invoke-static {p0, p2}, Lcom/samsung/android/settings/theftprotection/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/samsung/android/settings/theftprotection/location/LocationStorage$InstanceHolder;->INSTANCE:Lcom/samsung/android/settings/theftprotection/location/LocationStorage;

    invoke-virtual {p0}, Lcom/samsung/android/settings/theftprotection/location/LocationStorage;->loadLocationData()Ljava/util/List;

    move-result-object p0

    new-instance p2, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;

    const/4 v0, 0x1

    invoke-direct {p2, p1, v0}, Lcom/samsung/android/settings/theftprotection/location/LocationManager$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;I)V

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->updateRequirementsSatisfied(Landroid/content/Context;)V

    return-void
.end method
