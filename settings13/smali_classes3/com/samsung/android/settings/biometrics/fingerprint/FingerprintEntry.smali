.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;
.super Landroid/app/Activity;
.source "FingerprintEntry.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field private static mUserId:I


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIdentifyFingerprint:Z

.field private mIsAfw:Z

.field private mIsFromFragment:Z

.field private mIsFromTemplateChangeNoti:Z

.field private mIsKnox:Z

.field private mIsRegisteredFromEntry:Z

.field private mIsRelativeLink:Z

.field private mIsWaitingResult:Z

.field private mPreviousStage:Ljava/lang/String;

.field private mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

.field private mSensorStatus:I

.field private mToken:[B


# direct methods
.method public static synthetic $r8$lambda$9n8m5eyWkjM9r23kdaWxbNnGaCg(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->lambda$showDatabaseFailureDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$AKkAMDEdtfc_dglvPvQcIQIskEA(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$KSXj26ZXwgKdJSPDNyPCFMECj0M(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->lambda$showDatabaseFailureDialog$2(Landroid/content/DialogInterface;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowDatabaseFailureDialog(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->showDatabaseFailureDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 501
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$2;

    invoke-direct {v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$2;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 69
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    .line 75
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    .line 79
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    .line 84
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsAfw:Z

    .line 85
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    .line 87
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    .line 89
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromTemplateChangeNoti:Z

    .line 90
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsRegisteredFromEntry:Z

    return-void
.end method

.method private deleteAllFingerprints()V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method private synthetic lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 308
    iput-wide p4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mChallenge:J

    .line 309
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    sget p3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    .line 310
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    if-nez p1, :cond_0

    const-string p1, "FpstFingerprintEntry"

    const-string p2, "CONFIRM_REQUEST: token = NULL"

    .line 313
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 315
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 314
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 318
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 319
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_0

    .line 321
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->runRegister()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showDatabaseFailureDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "FpstFingerprintEntry"

    const-string p2, "showDatabaseFailureDialog"

    .line 432
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$showDatabaseFailureDialog$2(Landroid/content/DialogInterface;)V
    .locals 0

    .line 436
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 5

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "launchConfirmLock "

    .line 354
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 356
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    .line 358
    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v3, 0x65

    .line 359
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 360
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 361
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 362
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 363
    invoke-virtual {v3, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 365
    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_0

    .line 366
    invoke-virtual {v2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 369
    :cond_0
    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "ConfirmLock Fail"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 371
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    .line 372
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mChallenge:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    .line 373
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private runRegister()V
    .locals 6

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "There is no enrolled fingerprint. Run RegisterFingerprint!!"

    .line 232
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isDisableScreenForDisplayFingerprint(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 239
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "always_finish_activities"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_always_finish_activities:I

    new-array v4, v2, [Ljava/lang/Object;

    sget v5, Lcom/android/settings/R$string;->immediately_destroy_activities:I

    .line 242
    invoke-virtual {p0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    .line 241
    invoke-virtual {v0, v1, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-static {p0, v0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 243
    :cond_1
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 244
    sget v0, Lcom/android/settings/R$string;->sec_biometrics_fullscreen_register_finger:I

    .line 245
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 244
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 247
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 249
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.android.settings"

    const-string v5, "com.samsung.android.settings.biometrics.fingerprint.FingerprintLockSettings"

    .line 251
    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    const-string v5, "fingerprint_register_external"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "fingerprint_entry"

    .line 254
    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    .line 256
    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    const-string v5, "previousStage"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    const-string v5, "hw_auth_token"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const/high16 v4, 0x20000000

    .line 258
    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 259
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsAfw:Z

    const-string v5, "isAfw"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 260
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    const-string v5, "is_knox"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 261
    sget v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 262
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    const-string v5, "relative_link"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 263
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromFragment:Z

    const-string v5, "from_biometric_fragment"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 265
    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromFragment:Z

    if-eqz v4, :cond_4

    const/16 v3, 0x66

    .line 266
    invoke-virtual {p0, v1, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    goto :goto_0

    .line 269
    :cond_4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 270
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "runRegister : Activity Not Found !"

    .line 274
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showDatabaseFailureDialog()V
    .locals 3

    .line 423
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    .line 424
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 425
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 427
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_attention:I

    .line 428
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_data_has_been_corrupted:I

    .line 429
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)V

    .line 430
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 435
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 436
    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 437
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startFragment(Landroid/content/Context;)V
    .locals 5

    .line 443
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsTemplateDbCorrupted()Z

    move-result v0

    const-string v1, "FpstFingerprintEntry"

    if-eqz v0, :cond_0

    const-string p1, "onCreate DB Corrupt"

    .line 444
    invoke-static {v1, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->deleteAllFingerprints()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p1, "startFragment : context is null"

    .line 450
    invoke-static {v1, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 452
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 453
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    if-eqz v2, :cond_2

    const-string v3, "tokenFromLock"

    .line 456
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 457
    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mChallenge:J

    const-string v4, "challenge"

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 459
    :cond_2
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIdentifyFingerprint:Z

    const-string v3, "identifyFingerprint"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 460
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromTemplateChangeNoti:Z

    const-string v3, "fingerprint_from_template_change_noti"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 461
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsRegisteredFromEntry:Z

    const-string v3, "fingerprint_registered_from_fingerprint"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 462
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsAfw:Z

    const-string v3, "isAfw"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 464
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    const-string v3, "is_knox"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 466
    sget v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    const-string v3, ":settings:show_fragment_args"

    if-eqz v2, :cond_3

    const-string p1, "from relative link"

    .line 469
    invoke-static {v1, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$FingerprintSettingsActivity"

    .line 471
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    const-string v2, "relative_link"

    .line 473
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 474
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 477
    :cond_3
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromFragment:Z

    if-eqz v1, :cond_4

    .line 478
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 479
    invoke-virtual {p1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 480
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_0

    .line 482
    :cond_4
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    .line 483
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 484
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 486
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setExtras(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/16 v0, 0x2347

    .line 488
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->bio_fingerprint_sanner_title:I

    .line 489
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 490
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 494
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "=====onActivityResult : requestCode : "

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

    const-string v1, "FpstFingerprintEntry"

    invoke-static {v1, v0}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 299
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    const/16 v1, 0x65

    if-ne p1, v1, :cond_3

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_0

    const-string p1, "hw_auth_token"

    .line 304
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    .line 307
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_0

    .line 327
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 328
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mChallenge:J

    invoke-virtual {p1, p2, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    .line 331
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {p1, p2, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintSettingsCreateValue(Landroid/content/Context;IZ)V

    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const/16 v0, 0x66

    if-ne p1, v0, :cond_6

    .line 335
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_5

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    .line 336
    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_5

    if-eqz p3, :cond_4

    const-string p1, ":settings:show_fragment_args"

    .line 338
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string p2, "tokenFromLock"

    .line 340
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mToken:[B

    const-string p2, "fingerprint_registered_from_fingerprint"

    .line 341
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsRegisteredFromEntry:Z

    .line 344
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_0

    .line 346
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 349
    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 379
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string p0, "FpstFingerprintEntry"

    const-string p1, "=====onConfigurationChanged"

    .line 380
    invoke-static {p0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 98
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onCreate()"

    .line 99
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    .line 101
    new-instance v1, Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-direct {v1}, Lcom/samsung/android/app/SemMultiWindowManager;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    .line 103
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const-string p1, "Mobile keyboard attached"

    .line 104
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_keyboard_toast_msg:I

    new-array v1, v2, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint:I

    .line 106
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-static {p1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 112
    :cond_0
    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_1

    .line 114
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_unable_to_register:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "FingerprintSettingsPreferenceController unsupported"

    .line 115
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 120
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/security/SecurityUtils;->isWinnerProduct()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mSemMultiWindowManager:Lcom/samsung/android/app/SemMultiWindowManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/SemMultiWindowManager;->getMode()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    .line 122
    invoke-static {p0}, Lcom/samsung/android/settings/security/SecurityUtils;->setSplitViewFullScScreen(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string p1, "Fail to split view to full screen"

    .line 123
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 127
    :cond_2
    sget v1, Lcom/android/settings/R$string;->bio_fingerprint_sanner_title:I

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 132
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, ":settings:fragment_args_key"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 133
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->key:Ljava/lang/String;

    .line 136
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "from_biometric_fragment"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromFragment:Z

    .line 137
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    .line 138
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isAfwWithoutKnox(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsAfw:Z

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "previousStage"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    .line 141
    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    .line 143
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "relative_link"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "sensor_status"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mSensorStatus:I

    .line 146
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 148
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "allremovenoti"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "from FINGERPRINT_TEMPLATE_CHANGED_NOTIFICATION_INTENT"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v1, :cond_5

    .line 151
    invoke-virtual {v1, v3}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_5

    .line 152
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    .line 153
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintKnoxId(Landroid/content/Context;)I

    move-result v1

    sput v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    .line 155
    :cond_5
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsFromTemplateChangeNoti:Z

    goto :goto_0

    .line 156
    :cond_6
    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v1

    if-nez v1, :cond_7

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 157
    :cond_7
    sput v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SecureFolder or DualApp use owner\'s fingerprint. mUserId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :cond_8
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mUserId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsAfw : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsAfw:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsKnox : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsKnox:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mIsRelativeLink : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsRelativeLink:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/settings/ucm/UCMUtils;->isUCMKeyguardEnabledAsUser(I)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string p1, "UCMKeyguard enabled"

    .line 166
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 171
    :cond_9
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_a

    const-string p1, "onCreate mGFingerprintManager == null"

    .line 172
    invoke-static {v0, p1}, Landroid/util/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 174
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-static {p0, p1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    .line 177
    :cond_a
    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v1

    .line 178
    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mSensorStatus:I

    if-ne v4, v5, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->semGetSensorStatus()I

    move-result v4

    :cond_b
    if-eqz v1, :cond_13

    const v5, 0x186c8

    if-eq v4, v5, :cond_c

    const v5, 0x186c9

    if-eq v4, v5, :cond_c

    goto/16 :goto_3

    .line 200
    :cond_c
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    if-eqz p1, :cond_d

    const-string v1, "IsWaitingResult"

    .line 204
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-eqz p1, :cond_d

    return-void

    .line 211
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "fingerprint_guide_shown"

    invoke-static {p1, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 212
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-static {p1, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintSettingsCreateValue(Landroid/content/Context;IZ)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mPreviousStage:Ljava/lang/String;

    const-string v1, "fingerprint_register_external"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 215
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->runRegister()V

    goto :goto_2

    .line 217
    :cond_e
    sget p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_f

    goto :goto_1

    :cond_f
    move v2, v3

    .line 218
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mGFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    sget v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_10

    if-eqz v2, :cond_10

    .line 219
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->startFragment(Landroid/content/Context;)V

    goto :goto_2

    :cond_10
    if-eqz v2, :cond_12

    .line 221
    invoke-static {}, Landroidx/window/embedding/SplitController;->getInstance()Landroidx/window/embedding/SplitController;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/window/embedding/SplitController;->isActivityEmbedded(Landroid/app/Activity;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 222
    invoke-static {p0}, Lcom/samsung/android/settings/homepage/HomepageUtils;->isSupportMultiPaneLayout(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 223
    :cond_11
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->launchConfirmLock()V

    goto :goto_2

    .line 225
    :cond_12
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->runRegister()V

    :goto_2
    return-void

    .line 182
    :cond_13
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate isHardwareDetected = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", semGetSensorStatus = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_title_not_responding:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v0, 0x186cd

    if-eq v4, v0, :cond_14

    .line 192
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 188
    :cond_14
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_title_calibration:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 189
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_contact_customer_service:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 195
    :goto_4
    invoke-static {p0, p1, v0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onDestroy()"

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "onPause"

    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 393
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "onSaveInstanceState"

    .line 385
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    const-string v1, "IsWaitingResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 387
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "FpstFingerprintEntry"

    const-string v1, "=====onStop()"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mContext:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    .line 409
    sget v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintEntry;->mIsWaitingResult:Z

    if-nez v0, :cond_0

    .line 410
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 413
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
