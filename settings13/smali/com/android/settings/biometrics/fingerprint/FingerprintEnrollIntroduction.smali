.class public Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.source "FingerprintEnrollIntroduction.java"


# instance fields
.field private mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Fxy6ze_Tb7SXk4A_nHbmx8h4u78(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->lambda$getDescriptionDisabledByAdmin$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;-><init>()V

    return-void
.end method

.method private synthetic lambda$getDescriptionDisabledByAdmin$0()Ljava/lang/String;
    .locals 1

    .line 204
    sget v0, Lcom/android/settings/R$string;->security_settings_fingerprint_enroll_introduction_message_unlock_disabled:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected static setSkipPendingEnroll(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 2

    if-nez p0, :cond_0

    .line 362
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    :cond_0
    const/4 v0, 0x1

    const-string v1, "skip_pending_enroll"

    .line 364
    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object p0
.end method


# virtual methods
.method protected getCancelButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 209
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getSecondaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
    .locals 2

    .line 262
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    .line 264
    invoke-interface {p1, p0, p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;->onChallengeGenerated(IIJ)V

    return-void

    .line 267
    :cond_0
    iget p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    invoke-virtual {v0, p0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    return-void
.end method

.method protected getDescriptionDisabledByAdmin()Ljava/lang/String;
    .locals 2

    .line 202
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    move-result-object v0

    new-instance v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;)V

    const-string p0, "Settings.FINGERPRINT_UNLOCK_DISABLED"

    invoke-virtual {v0, p0, v1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0xf3

    return p0
.end method

.method protected getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mFooterBarMixin:Lcom/google/android/setupcompat/template/FooterBarMixin;

    if-eqz p0, :cond_0

    .line 218
    invoke-virtual {p0}, Lcom/google/android/setupcompat/template/FooterBarMixin;->getPrimaryButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected getSecBiometricsEnrollIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "SecBiometricsEnrollment"

    const-string v1, "return Fingerprint enrollment intent"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 371
    invoke-static {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintEnrollmentIntentForAosp(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    const/4 v3, 0x6

    if-ne p1, v3, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v2

    :goto_1
    if-eq p2, v1, :cond_2

    const/16 v1, 0xb

    if-eq p2, v1, :cond_2

    if-ne p2, v2, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    if-eqz v3, :cond_4

    if-eqz v0, :cond_4

    .line 121
    invoke-static {p3}, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->setSkipPendingEnroll(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 123
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Lcom/google/android/setupdesign/span/LinkSpan;)V
    .locals 2

    .line 297
    invoke-virtual {p1}, Lcom/google/android/setupdesign/span/LinkSpan;->getId()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "url"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 298
    sget p1, Lcom/android/settings/R$string;->help_url_fingerprint:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "FingerprintIntro"

    if-nez p1, :cond_0

    const-string p0, "Null help intent."

    .line 301
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 307
    :try_start_0
    invoke-virtual {p0, p1, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 309
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity was not found for intent, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    const-string p1, "FingerprintIntro"

    const-string v0, "Null FingerprintManager"

    .line 72
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 77
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 79
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollIntroduction;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    return-void
.end method
