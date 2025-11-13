.class public Lcom/android/settings/biometrics/BiometricEnrollActivity;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "BiometricEnrollActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;,
        Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;
    }
.end annotation


# instance fields
.field private mConfirmingCredentials:Z

.field private mEnrollStep:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

.field private mFaceConsent:Z

.field private mFingerConsent:Z

.field private mGkPwHandle:Ljava/lang/Long;

.field private mHasFeatureFace:Z

.field private mHasFeatureFingerprint:Z

.field private mIsEnrollActionLogged:Z

.field private mIsFaceEnrollable:Z

.field private mIsFingerprintEnrollable:Z

.field private mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

.field private mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

.field private mParentalOptions:Landroid/os/Bundle;

.field private mParentalOptionsRequired:Z

.field private mSkipReturnToParent:Z

.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    .line 106
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    .line 110
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    .line 111
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    .line 112
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    .line 114
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    .line 128
    sget-object v0, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->NONE:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mEnrollStep:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    return-void
.end method

.method private finishOrLaunchHandToParent(I)V
    .locals 1

    .line 553
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v0, :cond_1

    .line 554
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFaceConsent:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFingerConsent:Z

    if-nez p1, :cond_0

    .line 555
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchHandoffToParent()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 557
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 558
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 561
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 562
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private handleOnActivityResultWhileConsenting(IILandroid/content/Intent;)V
    .locals 4

    .line 424
    sget v0, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v1, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    const-string v3, "BiometricEnrollActivity"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_0

    .line 467
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown consenting requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", finishing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x4

    if-eq p2, p1, :cond_2

    const/4 p1, 0x5

    if-ne p2, p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "Unknown or cancelled parental consent"

    .line 461
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 463
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 444
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {p1, p0, v2, p2, p3}, Lcom/android/settings/biometrics/ParentalConsentHelper;->launchNext(Landroid/app/Activity;IILandroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 447
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {p1}, Lcom/android/settings/biometrics/ParentalConsentHelper;->getConsentResult()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    const/4 p1, 0x0

    .line 448
    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    .line 449
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Enrollment consent options set, starting enrollment: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0xfff

    .line 458
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result p2

    .line 457
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->startEnrollWith(IZ)V

    goto :goto_1

    .line 429
    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 430
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->isSuccessfulConfirmOrChooseCredential(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 431
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateGatekeeperPasswordHandle(Landroid/content/Intent;)V

    .line 432
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {p1, p0, v2}, Lcom/android/settings/biometrics/ParentalConsentHelper;->launchNext(Landroid/app/Activity;I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Nothing to prompt for consent (no modalities enabled)!"

    .line 433
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 437
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown result for set/choose lock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 439
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_1
    return-void
.end method

.method private handleOnActivityResultWhileEnrolling(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, -0x1

    const/4 v1, 0x4

    const-string v2, "BiometricEnrollActivity"

    if-ne p1, v1, :cond_0

    .line 476
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Enrollment complete, requesting handoff, result: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 478
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 479
    :cond_0
    iget-object v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    if-nez v3, :cond_a

    .line 480
    sget v3, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget v4, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v4, 0x2

    if-eq p1, v4, :cond_6

    const/4 p3, 0x5

    if-eq p1, p3, :cond_4

    const/16 p3, 0xa

    if-eq p1, p3, :cond_1

    .line 542
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown enrolling requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", finishing"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    :cond_1
    if-ne p2, v1, :cond_3

    .line 525
    iput-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFaceConsent:Z

    .line 526
    iput-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFingerConsent:Z

    .line 527
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    if-eqz p1, :cond_2

    .line 528
    sget-object p1, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->FINGER:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mEnrollStep:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    .line 529
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFingerprintOnlyEnroll()V

    goto/16 :goto_0

    .line 531
    :cond_2
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-eqz p1, :cond_3

    .line 532
    sget-object p1, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->FACE:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mEnrollStep:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    .line 533
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceOnlyEnroll()V

    goto/16 :goto_0

    .line 537
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 538
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    .line 514
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mEnrollStep:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    sget-object p3, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->FINGER:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    if-ne p1, p3, :cond_5

    .line 515
    sget-object p1, Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;->FACE:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mEnrollStep:Lcom/android/settings/biometrics/BiometricEnrollActivity$EnrollStep;

    .line 516
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceOnlyEnroll()V

    goto/16 :goto_0

    .line 520
    :cond_5
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finishOrLaunchHandToParent(I)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    .line 485
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 487
    invoke-static {p1, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->isSuccessfulConfirmOrChooseCredential(II)Z

    move-result p1

    .line 491
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v1, :cond_8

    if-eqz p1, :cond_7

    .line 493
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateGatekeeperPasswordHandle(Landroid/content/Intent;)V

    .line 494
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchParentalConsent()V

    goto :goto_0

    .line 496
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 497
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_8
    if-eqz p1, :cond_9

    .line 503
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    if-eqz p1, :cond_9

    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz p1, :cond_9

    .line 504
    invoke-direct {p0, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->updateGatekeeperPasswordHandle(Landroid/content/Intent;)V

    .line 505
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceAndFingerprintEnroll()V

    goto :goto_0

    .line 507
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unknown result for set/choose lock: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    .line 509
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 546
    :cond_a
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "RequestCode: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " resultCode: "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 548
    invoke-direct {p0, p2}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->finishOrLaunchHandToParent(I)V

    :goto_0
    return-void
.end method

.method private static isSuccessfulConfirmOrChooseCredential(II)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    if-ne p1, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, 0x2

    if-ne p0, v3, :cond_1

    const/4 p0, -0x1

    if-ne p1, p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-nez v2, :cond_2

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method private launchChooseLock()V
    .locals 4

    const-string v0, "BiometricEnrollActivity"

    const-string v1, "launchChooseLock"

    .line 626
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 629
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "request_gk_pw_handle"

    .line 630
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "for_biometrics"

    .line 631
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 633
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz v1, :cond_0

    const-string v1, "for_fingerprint"

    .line 634
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_0

    .line 635
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    if-eqz v1, :cond_1

    const-string v1, "for_face"

    .line 636
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 640
    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_2

    const-string v3, "android.intent.extra.USER_ID"

    .line 641
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 643
    :cond_2
    invoke-virtual {p0, v0, v2}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 3

    const-string v0, "BiometricEnrollActivity"

    const-string v1, "launchConfirmLock"

    .line 647
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/4 v1, 0x2

    .line 650
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 651
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 652
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v1

    .line 653
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 654
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 655
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 657
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_1

    .line 661
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private launchCredentialOnlyEnroll()V
    .locals 3

    .line 679
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "hide_insecure_options"

    const/4 v2, 0x1

    .line 680
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 681
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchFaceAndFingerprintEnroll()V
    .locals 8

    .line 702
    new-instance v7, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    iget v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    iget-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    .line 703
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;-><init>(Landroidx/fragment/app/FragmentActivity;IZZJ)V

    iput-object v7, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mMultiBiometricEnrollHelper:Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;

    .line 704
    invoke-virtual {v7}, Lcom/android/settings/biometrics/MultiBiometricEnrollHelper;->startNextStep()V

    return-void
.end method

.method private launchFaceOnlyEnroll()V
    .locals 2

    .line 697
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFaceIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    .line 698
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchFingerprintOnlyEnroll()V
    .locals 3

    .line 687
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "skip_intro"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintFindSensorIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 691
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getFingerprintIntroIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    :goto_0
    const/4 v1, 0x5

    .line 693
    invoke-direct {p0, v0, v1}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchHandoffToParent()V
    .locals 2

    .line 708
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/biometrics/BiometricUtils;->getHandoffToParentIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    .line 709
    invoke-virtual {p0, v0, v1}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private launchParentalConsent()V
    .locals 3

    .line 714
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsParentalConsentActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 715
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    const-string v2, "mHasFeatureFingerprint"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 716
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    const-string v2, "mHasFeatureFace"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 717
    iget v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {p0, v0, v2, v1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private launchSingleSensorEnrollActivity(Landroid/content/Intent;I)V
    .locals 7

    .line 668
    instance-of v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v0, :cond_0

    .line 669
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    .line 672
    iget-object v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    iget v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    invoke-static/range {v1 .. v6}, Lcom/android/settings/biometrics/BiometricUtils;->launchEnrollForResult(Landroidx/fragment/app/FragmentActivity;Landroid/content/Intent;I[BLjava/lang/Long;I)V

    return-void
.end method

.method private newResultIntent()Landroid/content/Intent;
    .locals 4

    .line 567
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 575
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 576
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFaceConsent:Z

    const-string v3, "face"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 577
    iget-boolean p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFingerConsent:Z

    const-string v2, "fingerprint"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "iris"

    const/4 v2, 0x0

    .line 578
    invoke-virtual {v1, p0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p0, "consent_status"

    .line 580
    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 581
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result consent status: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BiometricEnrollActivity"

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private setOrConfirmCredentialsNow()V
    .locals 1

    .line 601
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 602
    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    .line 603
    iget v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    invoke-direct {p0, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->userHasPassword(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchChooseLock()V

    goto :goto_0

    .line 606
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchConfirmLock()V

    :cond_1
    :goto_0
    return-void
.end method

.method private startEnrollWith(IZ)V
    .locals 6
    .param p1    # I
        .annotation build Landroid/hardware/biometrics/BiometricManager$Authenticators$Types;
        .end annotation
    .end param

    const-string v0, "BiometricEnrollActivity"

    if-nez p2, :cond_0

    .line 308
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-nez v1, :cond_0

    .line 309
    const-class v1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/biometrics/BiometricManager;

    .line 310
    invoke-virtual {v1, p1}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    .line 312
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unexpected result (has enrollments): "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 318
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    .line 319
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    .line 320
    iget-boolean v3, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    const/4 v4, -0x1

    if-eqz v3, :cond_2

    .line 322
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 323
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFaceConsent:Z

    .line 324
    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFingerConsent:Z

    .line 325
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 326
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 328
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->setOrConfirmCredentialsNow()V

    :goto_0
    return-void

    :cond_2
    if-nez p2, :cond_3

    const v5, 0x8000

    if-ne p1, v5, :cond_3

    .line 346
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchCredentialOnlyEnroll()V

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :cond_3
    if-eqz v1, :cond_4

    if-eqz v2, :cond_4

    .line 350
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFingerprintOnlyEnroll()V

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    .line 360
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFingerprintOnlyEnroll()V

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    .line 362
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->launchFaceOnlyEnroll()V

    goto :goto_2

    :cond_6
    if-eqz v3, :cond_7

    const-string p1, "No consent for any modality: skipping enrollment"

    .line 365
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_1

    .line 368
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state, finishing (was SUW: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method private updateGatekeeperPasswordHandle(Landroid/content/Intent;)V
    .locals 2

    .line 612
    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    .line 613
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    if-eqz p0, :cond_0

    .line 614
    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/ParentalConsentHelper;->updateGatekeeperHandle(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private userHasPassword(I)Z
    .locals 2

    .line 619
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 620
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 621
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x632

    return p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .line 389
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    if-eqz v0, :cond_4

    const/16 v0, 0x8

    .line 397
    invoke-static {p0, v0}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const/4 v3, 0x2

    .line 399
    invoke-static {p0, v3}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    .line 401
    iget-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    :goto_2
    if-eqz v3, :cond_3

    .line 404
    iget-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    .line 406
    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "faceConsentRequired: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fpConsentRequired: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasFeatureFace: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", hasFeatureFingerprint: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", faceEnrollable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", fpEnrollable: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BiometricEnrollActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    invoke-virtual {v0, v4, v1}, Lcom/android/settings/biometrics/ParentalConsentHelper;->setConsentRequirement(ZZ)V

    .line 415
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->handleOnActivityResultWhileConsenting(IILandroid/content/Intent;)V

    goto :goto_4

    .line 417
    :cond_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->handleOnActivityResultWhileEnrolling(IILandroid/content/Intent;)V

    :goto_4
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 2

    .line 595
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Context;Landroid/content/Intent;)I

    move-result p2

    .line 596
    sget v0, Lcom/android/settings/R$style;->SetupWizardPartnerResource:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 597
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 13

    .line 133
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 137
    instance-of v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity$InternalActivity;

    if-eqz v1, :cond_0

    .line 138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    const-string v2, "confirming_credentials"

    .line 145
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    const-string v2, "enroll_action_logged"

    .line 147
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    const-string v2, "enroll_preferences"

    .line 149
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    const-string v2, "gk_pw_handle"

    .line 150
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 151
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    .line 156
    :cond_1
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    const/16 v2, 0xff

    const-string v3, "android.provider.extra.BIOMETRIC_AUTHENTICATORS_ALLOWED"

    const/4 v4, 0x1

    if-nez p1, :cond_6

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v5, "android.settings.BIOMETRIC_ENROLL"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 157
    iput-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    .line 163
    const-class p1, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    const/16 v5, 0xc

    if-eqz p1, :cond_2

    const/16 v5, 0xf

    .line 165
    invoke-virtual {p1, v5}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v5

    .line 166
    invoke-virtual {p1, v2}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result v6

    const v7, 0x8000

    .line 167
    invoke-virtual {p1, v7}, Landroid/hardware/biometrics/BiometricManager;->canAuthenticate(I)I

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v5

    move v6, p1

    :goto_0
    const/16 v7, 0x163

    if-nez v5, :cond_3

    move v8, v4

    goto :goto_1

    :cond_3
    move v8, v1

    :goto_1
    if-nez v6, :cond_4

    move v9, v4

    goto :goto_2

    :cond_4
    move v9, v1

    :goto_2
    if-nez p1, :cond_5

    move v10, v4

    goto :goto_3

    :cond_5
    move v10, v1

    .line 178
    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v11

    .line 179
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    .line 174
    invoke-static/range {v7 .. v12}, Lcom/android/internal/util/FrameworkStatsLog;->write(IZZZZI)V

    :cond_6
    const-string/jumbo p1, "theme"

    .line 183
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    .line 186
    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getThemeString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    .line 184
    invoke-virtual {v0, p1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v5, "android.hardware.fingerprint"

    .line 190
    invoke-virtual {p1, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    .line 191
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isSupportBioFace()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    .line 194
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Authenticators: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BiometricEnrollActivity"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "require_consent"

    .line 198
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    const-string v2, "skip_return_to_parent"

    .line 199
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    .line 202
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    .line 203
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz v2, :cond_8

    move v2, v4

    goto :goto_4

    :cond_8
    move v2, v1

    .line 205
    :goto_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parentalOptionsRequired: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", skipReturnToParent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isSetupWizard: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isMultiSensor: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFace:Z

    if-eqz v5, :cond_d

    .line 211
    const-class v5, Landroid/hardware/face/FaceManager;

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/face/FaceManager;

    .line 213
    invoke-virtual {v5}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v6

    .line 214
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/settings/R$integer;->suw_max_faces_enrollable:I

    .line 215
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 216
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_d

    .line 217
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/face/FaceSensorPropertiesInternal;

    if-eqz v0, :cond_9

    goto :goto_5

    .line 219
    :cond_9
    iget v7, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 220
    :goto_5
    iget v8, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 221
    invoke-virtual {v5, v8}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v7, :cond_a

    move v5, v4

    goto :goto_6

    :cond_a
    move v5, v1

    :goto_6
    iput-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-nez v0, :cond_c

    .line 226
    iget-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v5, :cond_b

    .line 227
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_7

    :cond_b
    move v5, v1

    goto :goto_8

    :cond_c
    :goto_7
    move v5, v4

    :goto_8
    if-eqz v5, :cond_d

    if-eqz v2, :cond_d

    .line 228
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    if-eqz v2, :cond_d

    .line 229
    iget v2, v6, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    if-nez v2, :cond_d

    const-string v2, "Excluding face from SuW enrollment (STRENGTH_CONVENIENCE)"

    .line 230
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iput-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFaceEnrollable:Z

    .line 236
    :cond_d
    iget-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mHasFeatureFingerprint:Z

    if-eqz v2, :cond_10

    .line 237
    const-class v2, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 239
    invoke-virtual {v2}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v5

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/settings/R$integer;->suw_max_fingerprints_enrollable:I

    .line 241
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 242
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_10

    if-eqz v0, :cond_e

    goto :goto_9

    .line 245
    :cond_e
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v6, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->maxEnrollmentsPerUser:I

    .line 246
    :goto_9
    iget v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mUserId:I

    .line 247
    invoke-virtual {v2, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, v6, :cond_f

    move v2, v4

    goto :goto_a

    :cond_f
    move v2, v1

    :goto_a
    iput-boolean v2, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsFingerprintEnrollable:Z

    :cond_10
    const/4 v2, 0x2

    if-eqz v0, :cond_11

    .line 254
    iget-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v5, :cond_11

    const-string p1, "Enrollment with parental consent is not supported when launched  directly from SuW - skipping enrollment"

    .line 255
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 258
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_11
    if-eqz v0, :cond_13

    .line 267
    iget-boolean v5, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v5, :cond_13

    const/16 v5, 0xa

    .line 268
    invoke-static {p0, v5}, Lcom/android/settings/biometrics/ParentalControlsUtils;->parentConsentRequired(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    if-eqz v5, :cond_12

    move v1, v4

    :cond_12
    if-eqz v1, :cond_13

    const-string p1, "Consent was already setup - skipping enrollment"

    .line 272
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 274
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 281
    :cond_13
    iget-boolean v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptionsRequired:Z

    if-eqz v1, :cond_15

    .line 282
    iget-boolean p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mSkipReturnToParent:Z

    if-eqz p1, :cond_14

    .line 283
    iput-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFaceConsent:Z

    .line 284
    iput-boolean v4, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mFingerConsent:Z

    const/4 p1, -0x1

    .line 285
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->newResultIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_b

    .line 288
    :cond_14
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->setOrConfirmCredentialsNow()V

    :goto_b
    return-void

    :cond_15
    if-eqz v1, :cond_16

    .line 294
    iget-object v1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    if-nez v1, :cond_16

    .line 295
    new-instance p1, Lcom/android/settings/biometrics/ParentalConsentHelper;

    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    invoke-direct {p1, v0}, Lcom/android/settings/biometrics/ParentalConsentHelper;-><init>(Ljava/lang/Long;)V

    iput-object p1, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalConsentHelper:Lcom/android/settings/biometrics/ParentalConsentHelper;

    .line 296
    invoke-direct {p0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->setOrConfirmCredentialsNow()V

    goto :goto_c

    .line 299
    :cond_16
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/BiometricEnrollActivity;->startEnrollWith(IZ)V

    :goto_c
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 376
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 377
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mConfirmingCredentials:Z

    const-string v1, "confirming_credentials"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 378
    iget-boolean v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mIsEnrollActionLogged:Z

    const-string v1, "enroll_action_logged"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mParentalOptions:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    const-string v1, "enroll_preferences"

    .line 380
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 382
    :cond_0
    iget-object p0, p0, Lcom/android/settings/biometrics/BiometricEnrollActivity;->mGkPwHandle:Ljava/lang/Long;

    if-eqz p0, :cond_1

    .line 383
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string p0, "gk_pw_handle"

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
