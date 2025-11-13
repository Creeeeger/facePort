.class public abstract Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;


# instance fields
.field public mGatekeeperPasswordProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract checkMaxEnrolled()I
.end method

.method public abstract getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;)V
.end method

.method public getGatekeeperPasswordProvider()Lcom/android/settings/biometrics/GatekeeperPasswordProvider;
    .locals 2

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mGatekeeperPasswordProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mGatekeeperPasswordProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mGatekeeperPasswordProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    return-object p0
.end method

.method public getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
.end method

.method public abstract getSecBiometricsEnrollIntent()Landroid/content/Intent;
.end method

.method public getSetResultIntentExtra(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    return-object p1
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 0

    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    return-object p0
.end method

.method public final handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, "skip_pending_enroll"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enroll_after_face"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enroll_after_finger"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onEnrollmentSkipped(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onFinishedEnrolling(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public initViews$1()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->initViews$1()V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updateDescriptionText()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    const-string v0, "onActivityResult(requestCode="

    const-string v1, ", resultCode="

    const-string v2, ")"

    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/foundation/text/CoreTextFieldKt$CoreTextField$semanticsModifier$1$1$3$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricEnrollIntroduction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x7

    if-ne p1, v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "enroll_after_finger"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    const/16 v4, 0xb

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-ne p1, v5, :cond_4

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getSetResultIntentExtra(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V

    goto/16 :goto_3

    :cond_1
    if-eq p2, v5, :cond_3

    if-ne p2, v4, :cond_2

    goto :goto_1

    :cond_2
    if-ne p2, v6, :cond_f

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :cond_3
    :goto_1
    invoke-static {p0}, Lcom/android/settings/biometrics/BiometricUtils;->tryStartingNextBiometricEnroll(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V

    goto/16 :goto_3

    :cond_4
    if-ne p1, v0, :cond_6

    if-eq p2, v0, :cond_5

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_3

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getLockPatternUtils()Lcom/android/internal/widget/LockPatternUtils;

    const/4 p0, 0x0

    throw p0

    :cond_6
    const/4 v7, 0x4

    if-ne p1, v7, :cond_8

    const/4 v0, -0x1

    if-ne p2, v0, :cond_7

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSetOrConfirmCredentials()Z

    move-result v0

    if-nez v0, :cond_f

    const v0, 0x7f0100db

    const v2, 0x7f0100dc

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_8
    if-ne p1, v6, :cond_9

    const v0, 0x7f0100d9

    const v1, 0x7f0100da

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_3

    :cond_9
    const/4 v1, 0x6

    if-eq p1, v1, :cond_a

    if-eqz v3, :cond_f

    :cond_a
    if-ne p2, v0, :cond_b

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V

    goto :goto_3

    :cond_b
    if-eq p2, v5, :cond_d

    if-ne p2, v4, :cond_c

    goto :goto_2

    :cond_c
    if-eqz p2, :cond_f

    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_3

    :cond_d
    :goto_2
    if-ne p1, v2, :cond_e

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->checkMaxEnrolled()I

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V

    goto :goto_3

    :cond_e
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V

    :cond_f
    :goto_3
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "launchSecBiometricsEnroll"

    const-string v0, "SecBiometricsEnrollment"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getSecBiometricsEnrollIntent()Landroid/content/Intent;

    move-result-object p1

    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Activity Not Found !"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public abstract onFinishedEnrolling(Landroid/content/Intent;)V
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string p0, "confirming_credentials"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "scrolled"

    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSetOrConfirmCredentials()Z
    .locals 0

    instance-of p0, p0, Lcom/android/settings/biometrics/face/FaceEnrollParentalConsent;

    return p0
.end method

.method public updateDescriptionText()V
    .locals 0

    return-void
.end method
