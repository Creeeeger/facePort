.class public Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;
.super Landroid/app/Activity;
.source "RegisterFingerprint.java"


# instance fields
.field private mChallenge:J

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromSetupwizard:Z

.field private mIdentifyFingerprint:Z

.field private mIsFinishRegistration:Z

.field private mIsFromKnoxFingerprintPlus:Z

.field private mIsFromKnoxOtherCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsFromSecureFolder:Z

.field private mIsPreEnrolled:Z

.field private mIsRegisterStarted:Z

.field private mIsShowSurfaceUpdates:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mSensorStatus:I

.field private mToken:[B

.field private mUserId:I

.field private mUserPassword:Ljava/lang/String;

.field private mWasSecureBefore:Z


# direct methods
.method public static synthetic $r8$lambda$0-9u_0IbCvP-E057eEZoGhKaPW8(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->lambda$showSensorErrorDialog$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SFfAdwG4rD9JRuW7K4dT5VB0t30(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->lambda$showLDUDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$_K7zm6CxVPxgvD91vZKp1iGS9pQ(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$qqF9PsUItJKOenefMDUucq3CPd4(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->lambda$showLDUDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$re2OIhZhT3WcBVFe7zg-ww4Tc04(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$tuHY8ff-y7BB4xLWmOMvxgLVtlg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->lambda$showSensorErrorDialog$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 44
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromSecureFolder:Z

    const/4 v1, 0x0

    .line 68
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 70
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    const-wide/16 v1, 0x0

    .line 71
    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    const/4 v1, 0x1

    .line 75
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsRegisterStarted:Z

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    .line 80
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    .line 82
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mSensorStatus:I

    return-void
.end method

.method private finishRegistration()V
    .locals 2

    .line 326
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    const-string v1, "FpstRegisterTouchFingerprint"

    if-eqz v0, :cond_0

    const-string p0, "finishRegistration() already run."

    .line 327
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "finishRegistration()"

    .line 331
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 332
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFinishRegistration:Z

    .line 334
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/settings/Rune;->isShopDemo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "isShopDemo is true, showLDUDialog()"

    .line 335
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->showLDUDialog()V

    return-void

    .line 340
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private isSkipGuideScreen()Z
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 427
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "fingerprint_guide_shown"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method private synthetic lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V
    .locals 0

    const/4 p2, 0x1

    .line 230
    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    .line 231
    iput-wide p4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    .line 232
    iget p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {p0, p1, p3, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    .line 233
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 235
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    const-string p3, "FpstRegisterTouchFingerprint"

    if-nez p1, :cond_0

    const-string p1, "CONFIRM_REQUEST: token = NULL"

    .line 236
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 238
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 237
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 241
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CONFIRM_REQUEST: token = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startFingerprintRegistration()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V
    .locals 0

    const/4 p2, 0x1

    .line 276
    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    .line 277
    iput-wide p4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    .line 278
    iget p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {p0, p1, p3, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    .line 279
    invoke-static {p0, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 281
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult: token="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    const-string p4, "NULL"

    if-eqz p3, :cond_0

    invoke-static {p3}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p4

    :goto_0
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "FpstRegisterTouchFingerprint"

    invoke-static {p3, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-eqz p1, :cond_3

    .line 285
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "[KNOX FINGERPRINT] : startEnroll, token="

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    iget-object p5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz p5, :cond_2

    invoke-static {p5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object p4

    :cond_2
    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 285
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    if-nez p1, :cond_4

    .line 291
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 292
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 291
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_1

    .line 295
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startFingerprintRegistration()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$showLDUDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 541
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showLDUDialog$3(Landroid/content/DialogInterface;)V
    .locals 0

    .line 542
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private static synthetic lambda$showSensorErrorDialog$4(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "FpstRegisterTouchFingerprint"

    const-string p1, "showSensorErrorDialog OK!!"

    .line 584
    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$showSensorErrorDialog$5(Landroid/content/DialogInterface;)V
    .locals 2

    const-string p1, "FpstRegisterTouchFingerprint"

    const-string v0, "showSensorErrorDialog dismiss!!"

    .line 586
    invoke-static {p1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "enrollResult"

    const/4 v1, 0x1

    .line 588
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 589
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 590
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 591
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 4

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "launchChooseLock"

    .line 365
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hide_insecure_options"

    const/4 v3, 0x1

    .line 368
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "request_gk_pw_handle"

    .line 369
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "for_fingerprint"

    .line 370
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 371
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    const-string v3, "android.intent.extra.USER_ID"

    .line 372
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x3eb

    .line 376
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "launchChooseLock : Activity Not Found !"

    .line 378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private launchConfirmLock()V
    .locals 4

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "launchConfirmLock"

    .line 384
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3ea

    .line 387
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 388
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 389
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 390
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 391
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 393
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    .line 394
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 397
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Fail launchConfirmLock!"

    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private sendSALogging()V
    .locals 5

    .line 525
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "fingerprint_register_external"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "google_setupwizard_fingerprint"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 533
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    const/16 v1, 0x203f

    const/16 v2, 0x2057

    int-to-long v3, v0

    invoke-static {p0, v1, v2, v3, v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IIJ)V

    return-void
.end method

.method private showLDUDialog()V
    .locals 3

    .line 537
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_unable_to_register:I

    .line 538
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_ldu_warning_message:I

    .line 539
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;)V

    const v2, 0x104000a

    .line 540
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda5;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;)V

    .line 542
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/4 v0, 0x0

    .line 543
    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 544
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 545
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3eb

    if-eq p1, v0, :cond_0

    .line 566
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 567
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 558
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 559
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_not_responding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_message_something_on_sensor:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 p1, 0x0

    goto :goto_0

    .line 562
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_title_no_space:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 563
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_no_space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_3

    .line 572
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mSensorStatus:I

    .line 574
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mSensorStatus:I

    const v3, 0x186c8

    if-eq v2, v3, :cond_4

    const v3, 0x186c9

    if-ne v2, v3, :cond_5

    .line 577
    :cond_4
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v1

    if-nez v1, :cond_5

    const-string p1, "FpstRegisterTouchFingerprint"

    const-string v0, "Session closed!"

    .line 578
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 581
    :cond_5
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 582
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda2;-><init>()V

    .line 583
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;)V

    .line 585
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 592
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 593
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :goto_1
    return-void
.end method

.method private startBiometricsDisclaimer()V
    .locals 5

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "startBiometricsDisclaimer"

    .line 344
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 347
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/4 v3, 0x1

    .line 348
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 349
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 350
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v4, "google_setupwizard_fingerprint"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "fromSetupWizard"

    .line 351
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 352
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x3ed

    .line 356
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 358
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v1, "startBiometricsDisclaimer : Activity Not Found !"

    .line 359
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private startFingerprintRegistration()V
    .locals 4

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "startFingerprintRegistration()"

    .line 435
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_1

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    .line 438
    invoke-static {v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I

    move-result v1

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 444
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.biometrics.app.setting"

    const-string v3, "com.samsung.android.biometrics.app.setting.fingerprint.enroll.FingerprintEnrollActivity"

    .line 445
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    const-string v3, "hw_auth_token"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 448
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 449
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->isSkipGuideScreen()Z

    move-result v2

    const-string v3, "skipGuideScreen"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 450
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    const-string v3, "fromSetupWizard"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 451
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    const-string v3, "isFromKnoxFingerprintPlus"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x3ee

    .line 454
    :try_start_0
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Activity Not Found !"

    .line 456
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 440
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method getShowSurfaceUpdates()V
    .locals 5

    :try_start_0
    const-string v0, "SurfaceFlinger"

    .line 405
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 407
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 408
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    const-string v3, "android.ui.ISurfaceComposer"

    .line 409
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v3, 0x3f2

    const/4 v4, 0x0

    .line 410
    invoke-interface {v0, v3, v1, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 411
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 412
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    .line 413
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    :cond_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsShowSurfaceUpdates:Z

    .line 414
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 418
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getShowSurfaceUpdates : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FpstRegisterTouchFingerprint"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 220
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstRegisterTouchFingerprint"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-virtual {p0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    const/4 v0, 0x0

    const/4 v2, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 312
    :pswitch_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "FINGERPRINT_ENROLL_REQUEST : resultCode = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 314
    invoke-virtual {p0, p2}, Landroid/app/Activity;->setResult(I)V

    goto :goto_0

    .line 315
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_1

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 316
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 318
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->finishRegistration()V

    goto/16 :goto_2

    :pswitch_2
    if-ne p2, v2, :cond_2

    .line 305
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->launchChooseLock()V

    goto/16 :goto_2

    .line 307
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_2

    :pswitch_3
    const/4 p1, 0x1

    if-ne p2, p1, :cond_7

    const/4 p1, 0x0

    .line 252
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p2, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result p2

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passwordQuality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v1, 0x10000

    if-eq p2, v1, :cond_5

    const/high16 v1, 0x20000

    if-eq p2, v1, :cond_4

    const/high16 v1, 0x30000

    if-eq p2, v1, :cond_4

    const/high16 v1, 0x40000

    if-eq p2, v1, :cond_3

    const/high16 v1, 0x50000

    if-eq p2, v1, :cond_3

    const/high16 v1, 0x60000

    if-eq p2, v1, :cond_3

    goto :goto_1

    .line 262
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_password_toast:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 257
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_pin_toast:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 265
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_pattern_toast:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_6

    .line 272
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 275
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_2

    .line 299
    :cond_7
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_2

    :pswitch_4
    if-ne p2, v2, :cond_8

    .line 229
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_2

    .line 246
    :cond_8
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "onConfigurationChanged"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "onCreate"

    .line 87
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/Window;->requestFeature(I)Z

    .line 91
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isOpticalSensor()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->getShowSurfaceUpdates()V

    .line 95
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsShowSurfaceUpdates:Z

    if-eqz v1, :cond_0

    .line 97
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_message_always_finish_activities:I

    new-array v1, v2, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->show_screen_updates:I

    .line 98
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 97
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-static {p0, p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    .line 103
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "always_finish_activities"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_1

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_message_always_finish_activities:I

    new-array v1, v2, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->immediately_destroy_activities:I

    .line 106
    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .line 105
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 104
    invoke-static {p0, p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    .line 110
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisplaySensor()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isOneHandedMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_message_one_handed_mode:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 112
    invoke-static {p0, p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    .line 117
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "previousStage"

    .line 119
    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    .line 120
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[previousStage] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    if-nez v4, :cond_3

    const-string v4, "fingerprint_register_external"

    .line 122
    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    .line 124
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "challenge"

    const-string v5, "hw_auth_token"

    if-eqz p1, :cond_4

    .line 126
    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    .line 127
    iput-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    goto :goto_0

    .line 129
    :cond_4
    invoke-virtual {v1, v5}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    const-wide/16 v6, -0x1

    .line 130
    invoke-virtual {v1, v4, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    .line 132
    :goto_0
    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v6

    if-nez v6, :cond_5

    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-static {v6}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 133
    :cond_5
    iput v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    .line 134
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SecureFolder or DualApp use owner\'s fingerprint. mUserId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onCreate: token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v7, :cond_7

    invoke-static {v7}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_7
    const-string v7, "NULL"

    :goto_1
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v7, "lock_screen_fingerprint"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v7, "knox_fingerprint_entry"

    .line 138
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    const-string v6, "password"

    .line 139
    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserPassword:Ljava/lang/String;

    :cond_9
    const-string v6, "identifyFingerprint"

    .line 141
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIdentifyFingerprint:Z

    const-string v6, "fromSetupWizard"

    .line 142
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFromSetupwizard:Z

    const-string v6, "isFromKnoxSetupWizard"

    .line 144
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    const-string v6, "isFromKnoxFingerprintPlus"

    .line 145
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    const-string v6, "is_knox"

    .line 146
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    const-string v6, "is_knox_two_step"

    .line 147
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    const-string v6, "is_secure_folder"

    .line 148
    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromSecureFolder:Z

    .line 149
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsFromKnoxOtherCases:"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsFromKnoxTwoStep"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", mIsFromSecureFolder"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromSecureFolder:Z

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, "fingerprint"

    .line 157
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_a

    const-string p1, "[onCreate] mFingerprintManager == null"

    .line 160
    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void

    .line 163
    :cond_a
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    if-nez v1, :cond_b

    const-string p1, "[onCreate] isHardwareDetected = false"

    .line 164
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->showSensorErrorDialog(I)V

    return-void

    .line 169
    :cond_b
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->sendSALogging()V

    .line 171
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    if-nez v1, :cond_c

    if-eqz p1, :cond_c

    .line 172
    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    .line 173
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    const-string v1, "IsPreEnrolled"

    .line 174
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    const-string v1, "WasSecureBefore"

    .line 175
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    goto :goto_2

    .line 177
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    .line 180
    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz p1, :cond_e

    array-length v1, p1

    if-ne v1, v2, :cond_d

    aget-byte p1, p1, v3

    const/4 v1, -0x1

    if-eq p1, v1, :cond_e

    .line 181
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startFingerprintRegistration()V

    goto/16 :goto_4

    .line 182
    :cond_e
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    if-nez p1, :cond_16

    .line 184
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxSetupWizard:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxTwoStep:Z

    if-nez p1, :cond_11

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    if-nez p1, :cond_11

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    .line 185
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_3

    .line 202
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto :goto_4

    .line 205
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startBiometricsDisclaimer()V

    goto :goto_4

    .line 186
    :cond_11
    :goto_3
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_16

    .line 187
    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxFingerprintPlus:Z

    if-eqz p1, :cond_16

    :cond_12
    const-string p1, "[KNOX FINGERPRPINT] : nonFinger chooseLock CASE"

    .line 188
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    .line 190
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_14

    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    if-eqz p1, :cond_14

    :cond_13
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    .line 192
    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    .line 193
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 194
    invoke-virtual {p1, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 195
    :cond_14
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->launchConfirmLock()V

    goto :goto_4

    .line 197
    :cond_15
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->startBiometricsDisclaimer()V

    :cond_16
    :goto_4
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 505
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p0

    return p0
.end method

.method public onDestroy()V
    .locals 5

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "onDestroy"

    .line 478
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsFromKnoxOtherCases:Z

    if-eqz v1, :cond_0

    .line 481
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/4 v2, 0x4

    const-string v3, "KnoxKeyguardEventFlag"

    .line 482
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 483
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.samsung.knox.kss"

    const-string v4, "com.samsung.knox.kss.KnoxKeyguardService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 485
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 488
    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v2, "lock_screen_fingerprint"

    .line 489
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v2, "knox_fingerprint_entry"

    .line 490
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v2, "google_setupwizard_fingerprint"

    .line 491
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v2, "personal_page"

    .line 492
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mPreviousStage:Ljava/lang/String;

    const-string v2, "app_lock"

    .line 493
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 494
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_3

    const-string v1, "postEnroll()"

    .line 495
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mUserId:I

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    .line 500
    :cond_3
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 510
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-eq v0, v1, :cond_0

    .line 520
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0

    .line 512
    :cond_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/4 v0, 0x0

    const-string v1, "enrollResult"

    .line 513
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 514
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 515
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v0
.end method

.method public onResume()V
    .locals 1

    .line 462
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "FpstRegisterTouchFingerprint"

    const-string v0, "onResume"

    .line 463
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 468
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "FpstRegisterTouchFingerprint"

    const-string v1, "onSaveInstanceState"

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mToken:[B

    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 471
    iget-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mChallenge:J

    const-string v2, "challenge"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 472
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mIsPreEnrolled:Z

    const-string v1, "IsPreEnrolled"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 473
    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;->mWasSecureBefore:Z

    const-string v0, "WasSecureBefore"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
