.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda3;->f$1:Z

    iput-boolean p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda3;->f$2:Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda3;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda3;->f$1:Z

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit$$ExternalSyntheticLambda3;->f$2:Z

    sget-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mOptionsMenu:Landroid/view/Menu;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "FpstFingerprintSettingsRename"

    const-string v1, "deRegisterAllFingerprint : removeAllEnrolledFingers"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x2029

    const-wide/16 v2, 0x5

    const/16 v4, 0x2025

    invoke-static {v4, v1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJ)V

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const-string v2, "deRegisterAllFingerprint : DevicePolicyManager.PASSWORD_QUALITY_UNSPECIFIED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "db_lockscreen_is_smart_lock"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    if-nez p2, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->removeFingerprint()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "fingerprint_secret_box"

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "fingerprint_webpass"

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "fingerprint_fingerIndex"

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "fingerprint_used_samsungaccount"

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "fingerprint_samsungaccount_confirmed"

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->mUserId:I

    invoke-static {p2, p1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->removeFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsEdit;->removeFingerprint()V

    :goto_1
    return-void
.end method
