.class public abstract Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final SUB_DISPLAY_IS_LARGE_SCREEN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_SUBDISPLAY_POLICY"

    const-string v1, "LARGESCREEN"

    invoke-static {v0, v1}, Lcom/samsung/android/settings/Rune$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    return-void
.end method

.method public static convertEvtToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "MSG_DEFAULT"

    goto :goto_0

    :pswitch_0
    const-string p0, "MSG_FINGER_AUTH_HELP"

    goto :goto_0

    :pswitch_1
    const-string p0, "MSG_FINGER_AUTH_ERROR"

    goto :goto_0

    :pswitch_2
    const-string p0, "MSG_FINGER_AUTH_FAIL"

    goto :goto_0

    :pswitch_3
    const-string p0, "MSG_FINGER_AUTH_SUCCESS"

    goto :goto_0

    :pswitch_4
    const-string p0, "MSG_REFRESH_FINGERPRINT_TEMPLATES"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p1, "enrolledFingerprint : "

    const-string v0, "FpstFingerprintSettingsUtils"

    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static getFingerprintAlwaysOnBooleanValue(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_always_on"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-string p1, "getFingerprintAlwaysOnBooleanValue :"

    const-string v0, "FpstFingerprintSettingsUtils"

    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static getFingerprintEffectValue(Landroid/content/Context;I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_effect"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const-string p1, "getFingerprintEffectValue :"

    const-string v0, "FpstFingerprintSettingsUtils"

    invoke-static {p0, p1, v0}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static getFingerprintEnrollmentIntentForAosp(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 2

    const-string v0, "FpstFingerprintSettingsUtils"

    const-string v1, "getFingerprintEnrollmentIntentForAosp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p0, "previousStage"

    if-eqz p1, :cond_0

    const-string p1, "google_setupwizard_fingerprint"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "fingerprint_register_external"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method public static getFingerprintLockIconValue(Landroid/content/Context;I)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "fingerprint_screen_on_icon_lock"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLockIconValue(Landroid/content/Context;II)V

    :cond_0
    const-string p0, "getFingerprintLockIconValue :"

    const-string p1, "FpstFingerprintSettingsUtils"

    invoke-static {v0, p0, p1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I
    .locals 4

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v0

    const-string v1, "FpstFingerprintSettingsUtils"

    const/4 v2, -0x1

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fingerprint_screen_off_icon_aod"

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fingerprint_adaptive_icon"

    invoke-static {v0, v3, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {p0, v2, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    :cond_2
    :goto_0
    move v2, v0

    goto :goto_1

    :cond_3
    const-string p0, "getFingerprintScreenOffIconAodDbValue: not supported device"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string p0, "getFingerprintScreenOffIconAodDbValue :"

    invoke-static {v2, p0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getFingerprintUnlockEnabled(Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/widget/LockPatternUtils;->getBiometricState(II)I

    move-result p0

    if-ne p0, v1, :cond_0

    move v0, v1

    :cond_0
    return v0
.end method

.method public static getMaxFingerEnroll(Landroid/hardware/fingerprint/FingerprintManager;)I
    .locals 2

    const/4 v0, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->semGetMaxEnrollmentNumber()I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    if-ne p0, v0, :cond_1

    const/4 p0, 0x3

    :cond_1
    const-string v0, "getMaxFingerEnroll: "

    const-string v1, "FpstFingerprintSettingsUtils"

    invoke-static {p0, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public static getStayOnLockScreen(Landroid/content/Context;I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "fingerprint_stay_on_lock_screen"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v2, "getStayOnLockScreen : "

    const-string v4, "FpstFingerprintSettingsUtils"

    invoke-static {v1, v2, v4}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v1, v3, :cond_0

    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setStayOnLockScreen(Landroid/content/Context;IZ)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    if-ne v1, p0, :cond_1

    move v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method public static isSupportFasterRecognition()V
    .locals 2

    const-string v0, "FpstFingerprintSettingsUtils"

    const-string v1, "isSupportFasterRecognition : false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isSupportFingerprintAlwaysOn()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOnType()V

    const-string v0, "isSupportFingerprintAlwaysOn : true"

    const-string v1, "FpstFingerprintSettingsUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isSupportFingerprintAlwaysOnType()V
    .locals 2

    const-string v0, "Support Fingerprint Always On for Dual screen : false"

    const-string v1, "FpstFingerprintSettingsUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static isSupportFingerprintScreenOffIconAod()Z
    .locals 3

    invoke-static {}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isSupportAodService()Z

    move-result v0

    const-string v1, "isSupportFingerprintScreenOffIconAod : "

    const-string v2, "FpstFingerprintSettingsUtils"

    invoke-static {v1, v2, v0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public static removeFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    const-string v0, "FpstFingerprintSettingsUtils"

    const-string/jumbo v1, "removeFingerprintLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/settings/security/SecurityUtils;->removeBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method public static setFingerprintAlwaysOnTypeValue(Landroid/content/Context;II)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p0, p2, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnValue(Landroid/content/Context;IZ)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_always_on_type"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Set Fingerprint Always On Type : "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "FpstFingerprintSettingsUtils"

    invoke-static {p0, p1, p2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public static setFingerprintAlwaysOnValue(Landroid/content/Context;IZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_always_on"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setFingerprintAlwaysOnValue : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "FpstFingerprintSettingsUtils"

    invoke-static {p0, p2, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public static setFingerprintEffectValue(Landroid/content/Context;IZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p2, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "fingerprint_effect"

    invoke-static {p0, v1, v0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setFingerprintEffectValue: "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "FpstFingerprintSettingsUtils"

    invoke-static {p0, p2, p1}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    return-void
.end method

.method public static setFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 2

    const-string v0, "FpstFingerprintSettingsUtils"

    const-string/jumbo v1, "setFingerprintLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {p1, p2, v0, p0}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;II)V

    return-void
.end method

.method public static setFingerprintLockIconValue(Landroid/content/Context;II)V
    .locals 1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_screen_on_icon_lock"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setFingerprintLockIconValue: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "FpstFingerprintSettingsUtils"

    invoke-static {p0, p1, p2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void
.end method

.method public static setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v0

    const-string v1, "FpstFingerprintSettingsUtils"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_screen_off_icon_aod"

    invoke-static {p0, v0, p1, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "setFingerprintScreenOffIconAodValue: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1, v1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "setFingerprintScreenOffIconAodValue: not supported device"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setStayOnLockScreen(Landroid/content/Context;IZ)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_stay_on_lock_screen"

    invoke-static {p0, v0, p2, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance p0, Ljava/lang/StringBuilder;

    const-string/jumbo p1, "setStayOnLockScreen : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "FpstFingerprintSettingsUtils"

    invoke-static {p0, p2, p1}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "FpstFingerprintSettingsUtils"

    const-string p1, "Activity is null. Skip SensorErrorDialog"

    invoke-static {p0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x7f1423d8

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const p1, 0x7f1423d9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    new-instance v1, Landroidx/appcompat/util/SeslKoreanGeneralizer;

    invoke-direct {v1}, Landroidx/appcompat/util/SeslKoreanGeneralizer;-><init>()V

    invoke-virtual {v1, p2}, Landroidx/appcompat/util/SeslKoreanGeneralizer;->naturalizeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$$ExternalSyntheticLambda0;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    const v0, 0x104000a

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Z)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p0, p2}, Landroid/view/Window;->setDimAmount(F)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public static showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V
    .locals 1

    const v0, 0x7f1423bf

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
