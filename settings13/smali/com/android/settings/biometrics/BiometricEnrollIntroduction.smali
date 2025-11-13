.class public abstract Lcom/android/settings/biometrics/BiometricEnrollIntroduction;
.super Lcom/android/settings/biometrics/BiometricEnrollBase;
.source "BiometricEnrollIntroduction.java"

# interfaces
.implements Lcom/google/android/setupdesign/span/LinkSpan$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;
    }
.end annotation


# instance fields
.field private mBiometricUnlockDisabledByAdmin:Z

.field protected mConfirmingCredentials:Z

.field private mHasPassword:Z

.field private mHasScrolledToBottom:Z

.field protected mNextClicked:Z

.field private mParentalConsentRequired:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$I_uspg03h_qdjMLMa7fz5wTpB8Y(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$y4rH5_JqpZcvF4i_VYODSlJBgZA(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasScrolledToBottom:Z

    return-void
.end method

.method private handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const-string v1, "skip_pending_enroll"

    .line 392
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enroll_after_face"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 398
    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onEnrollmentSkipped(Landroid/content/Intent;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 400
    invoke-virtual {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onFinishedEnrolling(Landroid/content/Intent;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static isResultSkipOrFinished(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/16 v1, 0xb

    if-eq p0, v1, :cond_1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private synthetic lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 339
    iput p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 340
    iput-wide p4, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 341
    iget p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 343
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 359
    iput p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mSensorId:I

    .line 360
    iput-wide p4, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mChallenge:J

    .line 361
    iget p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    invoke-static {p0, p1, p2, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mToken:[B

    .line 363
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    return-void
.end method

.method private launchSecBiometricsEnroll()V
    .locals 4

    const-string v0, "SecBiometricsEnrollment"

    const-string v1, "launchSecBiometricsEnroll"

    .line 467
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getSecBiometricsEnrollIntent()Landroid/content/Intent;

    move-result-object v1

    .line 470
    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    const-string v3, "android.intent.extra.USER_ID"

    .line 471
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 475
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 476
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Activity Not Found !"

    .line 478
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private updatePasswordQuality()V
    .locals 3

    .line 274
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollBase;->mUserId:I

    .line 275
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 276
    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasPassword:Z

    return-void
.end method


# virtual methods
.method protected abstract getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V
.end method

.method protected abstract getDescriptionDisabledByAdmin()Ljava/lang/String;
.end method

.method protected abstract getNextButton()Lcom/google/android/setupcompat/template/FooterButton;
.end method

.method protected abstract getSecBiometricsEnrollIntent()Landroid/content/Intent;
.end method

.method protected initViews()V
    .locals 1

    .line 436
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->initViews()V

    .line 438
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mBiometricUnlockDisabledByAdmin:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mParentalConsentRequired:Z

    if-nez v0, :cond_0

    .line 439
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getDescriptionDisabledByAdmin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->setDescriptionText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 324
    invoke-static {p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->isResultSkipOrFinished(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-direct {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V

    goto/16 :goto_0

    :cond_0
    if-ne p2, v0, :cond_8

    .line 327
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_3

    .line 331
    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    if-ne p2, v1, :cond_2

    .line 333
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->updatePasswordQuality()V

    .line 334
    invoke-virtual {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSetOrConfirmCredentials(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 336
    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 337
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 338
    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_5

    .line 352
    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    const/4 v0, -0x1

    if-ne p2, v0, :cond_4

    if-eqz p3, :cond_4

    .line 354
    invoke-virtual {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->onSetOrConfirmCredentials(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 356
    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getNextButton()Lcom/google/android/setupcompat/template/FooterButton;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/setupcompat/template/FooterButton;->setEnabled(Z)V

    .line 358
    new-instance v0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/BiometricEnrollIntroduction;Landroid/content/Intent;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->getChallenge(Lcom/android/settings/biometrics/BiometricEnrollIntroduction$GenerateChallengeCallback;)V

    goto :goto_0

    .line 368
    :cond_4
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 369
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_5
    if-ne p1, v0, :cond_6

    .line 372
    sget v0, Lcom/android/settings/R$anim;->sud_slide_back_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_back_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0

    :cond_6
    const/4 v0, 0x6

    if-ne p1, v0, :cond_8

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ENROLL_NEXT_BIOMETRIC_REQUEST, result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricEnrollIntroduction"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-static {p2}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->isResultSkipOrFinished(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 376
    invoke-direct {p0, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->handleBiometricResultSkipOrFinished(ILandroid/content/Intent;)V

    goto :goto_0

    :cond_7
    if-eqz p2, :cond_8

    .line 378
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 379
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 382
    :cond_8
    :goto_0
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 161
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->launchSecBiometricsEnroll()V

    return-void
.end method

.method protected onEnrollmentSkipped(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x2

    .line 425
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onFinishedEnrolling(Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x1

    .line 430
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 431
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 243
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 263
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 264
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    const-string v1, "confirming_credentials"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 265
    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mHasScrolledToBottom:Z

    const-string v0, "scrolled"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onSetOrConfirmCredentials(Landroid/content/Intent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected shouldFinishWhenBackgrounded()Z
    .locals 1

    .line 270
    invoke-super {p0}, Lcom/android/settings/biometrics/BiometricEnrollBase;->shouldFinishWhenBackgrounded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mConfirmingCredentials:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollIntroduction;->mNextClicked:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
