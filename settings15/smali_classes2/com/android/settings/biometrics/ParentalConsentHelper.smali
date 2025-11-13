.class public final Lcom/android/settings/biometrics/ParentalConsentHelper;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mConsentFace:Ljava/lang/Boolean;

.field public mConsentFingerprint:Ljava/lang/Boolean;

.field public mGkPwHandle:J

.field public mRequireFace:Z

.field public mRequireFingerprint:Z


# virtual methods
.method public final launchNext(Landroid/app/Activity;)Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mRequireFingerprint:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFingerprint:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/fingerprint/FingerprintEnrollParentalConsent;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mRequireFace:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mConsentFace:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->copyWizardManagerExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    iget-wide v1, p0, Lcom/android/settings/biometrics/ParentalConsentHelper;->mGkPwHandle:J

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_2

    const-string p0, "gk_pw_handle"

    invoke-virtual {v0, p0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_2
    const/4 p0, 0x3

    invoke-virtual {p1, v0, p0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    const/4 p0, 0x1

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method
