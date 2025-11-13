.class public Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;
.super Landroid/app/Activity;
.source "BiometricsParentalConsentActivity.java"


# instance fields
.field private mHasFeatureFace:Z

.field private mHasFeatureFingerprint:Z


# direct methods
.method public static synthetic $r8$lambda$DNLQpFZK-3JruqvolCiJCicIhUo(Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;->lambda$showDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$WYE2qTjKKFp-VGb1eUGA9tCUQyg(Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;->lambda$showDialog$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$c9SJ_n47V-qz7p5d3NL14hyfk9g(Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;->lambda$showDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private synthetic lambda$showDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x4

    .line 53
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method private synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x5

    .line 56
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method private synthetic lambda$showDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private showDialog()V
    .locals 7

    .line 32
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 34
    sget v2, Lcom/android/settings/R$string;->sec_biometrics_parental_consent_allow:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 35
    sget v3, Lcom/android/settings/R$string;->sec_biometrics_parental_consent_dont_allow:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 38
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;->mHasFeatureFingerprint:Z

    const-string v5, ""

    if-eqz v4, :cond_0

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;->mHasFeatureFace:Z

    if-eqz v6, :cond_0

    .line 39
    sget v4, Lcom/android/settings/R$string;->sec_biometrics_parental_consent_title_finger_face:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 40
    sget v4, Lcom/android/settings/R$string;->sec_biometrics_parental_consent_message_finger_face:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    .line 42
    sget v4, Lcom/android/settings/R$string;->sec_biometrics_parental_consent_title_finger:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 43
    sget v4, Lcom/android/settings/R$string;->sec_biometrics_parental_consent_message_finger:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 44
    :cond_1
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;->mHasFeatureFace:Z

    if-eqz v4, :cond_2

    .line 45
    sget v4, Lcom/android/settings/R$string;->sec_biometrics_parental_consent_title_face:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 46
    sget v4, Lcom/android/settings/R$string;->sec_biometrics_parental_consent_message_face:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v5

    .line 49
    :goto_0
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 50
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 51
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 52
    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;)V

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 55
    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 58
    new-instance v1, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 60
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "BiometricsParentalConsentActivity"

    const-string v0, "onCreate"

    .line 23
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mHasFeatureFingerprint"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;->mHasFeatureFingerprint:Z

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "mHasFeatureFace"

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;->mHasFeatureFace:Z

    .line 28
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;->showDialog()V

    return-void
.end method
