.class public Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;
.super Landroid/app/Activity;
.source "FaceLockSettings.java"


# instance fields
.field private key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFromSetupwizard:Z

.field private mHasEnrolledAlternativeFaces:Z

.field private mHasEnrolledFaces:Z

.field private mIdentifyFace:Z

.field private mIsAfw:Z

.field private mIsBiometricsSettingsDestroy:Z

.field private mIsFromFragment:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsOneLock:Z

.field private mIsRelativeLink:Z

.field private mIsSecured:Z

.field private mKeepSessionAndActivity:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPreviousStage:Ljava/lang/String;

.field private mRequestedMinComplexity:I

.field private mToken:[B

.field private mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mUnificationProfileId:I

.field private mUserId:I

.field private result_intent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$3sS9Fn8mwRWhZsZkD3-klLe-WU0(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$showFaceRetryDialog$3(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BnxiSL1bC68ksJCCBIu19fRmN3w(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$startFaceRegister$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$sllEOxIVdzDTkwrXAVzlOjoVlNQ(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$showFaceRetryDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$t8OxrfMRX8vxMQNisVtWggqzp0U(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$startFaceRegister$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 54
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 57
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    .line 60
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v1, ""

    .line 61
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->key:Ljava/lang/String;

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsAfw:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    .line 65
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 66
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIdentifyFace:Z

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsRelativeLink:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    .line 92
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromKnoxSetCases:Z

    const/16 v1, -0x2710

    .line 95
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    .line 99
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRequestedMinComplexity:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)[B
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    return-object p0
.end method

.method static synthetic access$002(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;[B)[B
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    return-object p1
.end method

.method static synthetic access$100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Context;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    return-void
.end method

.method static synthetic access$1300(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method static synthetic access$1500(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Z)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(Z)V

    return-void
.end method

.method static synthetic access$1600(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)I
    .locals 0

    .line 49
    iget p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    return p0
.end method

.method static synthetic access$500(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Landroid/content/Intent;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Ljava/lang/String;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Z)Z
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$802(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;I)I
    .locals 0

    .line 49
    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method private closeSessionAndFinish()V
    .locals 4

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSessionAndFinish : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1241
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "closeSessionAndFinish : Keep the Face session!"

    .line 1242
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1244
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    .line 1245
    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "closeSessionAndFinish : Close Face Session"

    .line 1246
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    .line 1248
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "hw_auth_token"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1253
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const-string p0, "closeSessionAndFinish : Keep the activity!"

    .line 1254
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "closeSessionAndFinish : finish activity"

    .line 1256
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1257
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private fromFaceSettings(Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1226
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "key_face_settings_entry"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1230
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "FaceSettings_unlock_switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "FaceSettings_register"

    .line 1231
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "FaceSettings_register_alternative"

    .line 1232
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    :goto_1
    return v0
.end method

.method private initFaceLockSettings()V
    .locals 8

    .line 413
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 414
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    .line 416
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "previousStage"

    .line 417
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 418
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v1, "is_knox"

    const/4 v2, 0x0

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromKnoxSetCases:Z

    .line 421
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    .line 423
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const/16 v4, -0x2710

    const-string v5, "FcstFaceLockSettings"

    if-ne v1, v4, :cond_1

    const-string v0, "User ID is USER_NULL."

    .line 424
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v1, "from_biometric_fragment"

    .line 429
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromFragment:Z

    const-string v1, "hw_auth_token"

    .line 430
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-string v6, "fromSetupWizard"

    .line 431
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    .line 432
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v7, "setupwizard_face"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 433
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    :cond_2
    const-string v6, "identifyFace"

    .line 435
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIdentifyFace:Z

    const-string v6, "relative_link"

    .line 436
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsRelativeLink:Z

    .line 438
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPreviousStage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsRelativeLink : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsRelativeLink:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mFromSetupwizard : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "requested_min_complexity"

    .line 442
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRequestedMinComplexity:I

    .line 444
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, ":settings:fragment_args_key"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 445
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->key:Ljava/lang/String;

    .line 447
    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 448
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v6, :cond_4

    .line 449
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    .line 453
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v2, :cond_6

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v2, v6}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 454
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 456
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    .line 457
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHasEnrolledFaces : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v6

    if-eqz v6, :cond_6

    if-le v2, v3, :cond_6

    .line 459
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasEnrolledAlternativeFaces : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    const-string v2, "faceList is null or size is 0"

    .line 463
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "unification_profile_id"

    .line 470
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const-string v1, "unification_profile_credential"

    .line 472
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method

.method private synthetic lambda$showFaceRetryDialog$2(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1276
    check-cast p1, Landroid/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p1, 0x1

    .line 1277
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(Z)V

    return-void
.end method

.method private synthetic lambda$showFaceRetryDialog$3(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "FcstFaceLockSettings"

    const-string v0, "showFaceRetryDialog dismissed! Finish the activity!"

    .line 1283
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v0, "FaceSettings_register"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v0, "FaceSettings_register_alternative"

    .line 1285
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v0, "FaceSettings_unlock_switch"

    .line 1286
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1287
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    const/4 p1, 0x0

    .line 1290
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1291
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v0, "lock_screen_face"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1292
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    .line 1294
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method private static synthetic lambda$startFaceRegister$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "FcstFaceLockSettings"

    const-string p1, "showSensorErrorDialog"

    .line 633
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$startFaceRegister$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 635
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 6

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "launchChooseLock"

    .line 478
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 481
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->prevent_to_change_by_device_policy:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->sec_biometrics_chooselock_title:I

    .line 482
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 481
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 482
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 483
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 484
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v4, 0x10000

    const-string v5, "minimum_quality"

    .line 489
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "hide_disabled_prefs"

    .line 491
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "request_gk_pw_handle"

    .line 492
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "for_face"

    .line 493
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 494
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v4, "fromSetupWizard"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 495
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const/16 v4, -0x2710

    if-eq v2, v4, :cond_1

    const-string v5, "android.intent.extra.USER_ID"

    .line 496
    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 499
    :cond_1
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    if-eq v2, v4, :cond_2

    .line 501
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 502
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const-string v5, "unification_profile_id"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 504
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    const-string v5, "unification_profile_credential"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v4, ":settings:show_fragment_args"

    .line 506
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 510
    :cond_2
    :try_start_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz v2, :cond_3

    const-string v2, "This is Knox user, remove keep session flag"

    .line 511
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x10

    .line 512
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    goto :goto_0

    :cond_3
    const/16 v2, 0x11

    .line 514
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :goto_0
    const/16 v2, 0x3ea

    .line 516
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Activity Not Found !"

    .line 518
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 520
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 521
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private launchConfirmLock()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "launchConfirmLock"

    .line 389
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x11

    .line 391
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 393
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3eb

    .line 394
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 395
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 396
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 397
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 398
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 400
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    .line 401
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 404
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Fail launchConfirmationActivity!"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 407
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 408
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :cond_1
    return-void
.end method

.method private needFaceUsefulFeature()Z
    .locals 2

    .line 1217
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceUsefulFeature()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1220
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needFaceUsefulFeature : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FcstFaceLockSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private processFaceRegistrationResult()V
    .locals 6

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "processFaceRegistrationResult"

    .line 1128
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1130
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1131
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->setBiometricPromptType(Landroid/content/Context;ZI)V

    .line 1133
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "face_register_external"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "setupwizard_face"

    const-string v4, "key_face_settings_entry"

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1134
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 1135
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 1136
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1169
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1170
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceStayOnLockScreen()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1174
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1175
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1178
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    .line 1179
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1180
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1181
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1182
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    goto :goto_2

    .line 1138
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1139
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v2, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1142
    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1143
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 1146
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceStayOnLockScreen()V

    return-void

    .line 1151
    :cond_6
    :goto_1
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1152
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1154
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1155
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    .line 1157
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_a

    .line 1158
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "lock_screen_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1159
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_2

    .line 1161
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1162
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1163
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1164
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 1185
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method private sendLoggingForFaceRegistration(Z)V
    .locals 13

    .line 1301
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/16 v1, 0x20e0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 1302
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "setupwizard_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1303
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/16 v2, 0x20e0

    const/16 v3, 0x20e7

    const-wide/16 v5, 0x0

    const-string v4, "1"

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto :goto_0

    .line 1305
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/16 v8, 0x20e0

    const/16 v9, 0x20e7

    const-wide/16 v11, 0x0

    const-string v10, "2"

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 1308
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/16 v0, 0x20ea

    const/16 v1, 0x20eb

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    :goto_1
    int-to-long v2, p1

    invoke-static {p0, v0, v1, v2, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IIJ)V

    return-void
.end method

.method private showCurrentLockTypeToast()V
    .locals 3

    .line 675
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 676
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    const/high16 v1, 0x10000

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "showCurrentLockTypeToast undefined lock type"

    .line 694
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    .line 688
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_password_toast:I

    goto :goto_0

    .line 683
    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_pin_toast:I

    goto :goto_0

    .line 691
    :cond_2
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_pattern_toast:I

    :goto_0
    if-eqz v0, :cond_3

    .line 699
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_3
    return-void
.end method

.method private showFaceRetryDialog(I)V
    .locals 3

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "showFaceRetryDialog"

    .line 1262
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1264
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1266
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1268
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x4

    if-ne p1, v1, :cond_1

    .line 1271
    sget p1, Lcom/android/settings/R$string;->sec_face_error_message_retry_too_dark:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/settings/R$string;->sec_face_error_message_retry:I

    .line 1272
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_face_error_title_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1273
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 1274
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_face_error_message_button_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, -0x2

    .line 1279
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1282
    new-instance p1, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1297
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsDisclaimer()V
    .locals 6

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startBiometricsDisclaimer"

    .line 323
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 327
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_dex_standalone_block_register_face:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 328
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 331
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    .line 335
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 336
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v4, 0x100

    const-string v5, "BIOMETRICS_LOCK_TYPE"

    .line 338
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 339
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v5, "fromSetupWizard"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 340
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-string v5, "hw_auth_token"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 341
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz v4, :cond_2

    .line 342
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 343
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v5, "key_face_settings_entry"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromFragment:Z

    if-nez v4, :cond_3

    .line 344
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.settings.biometrics.BiometricsDisclaimerWithConfirmLock"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    const/16 v4, 0x11

    .line 348
    :try_start_0
    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v4, 0x3f0

    .line 349
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 351
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v1, "startBiometricsDisclaimer : Activity Not Found !"

    .line 352
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 355
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 356
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 358
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private startBiometricsRotationGuide()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startBiometricsRotationGuide"

    .line 363
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 365
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsRotationGuide"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 366
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/16 v3, 0x100

    .line 367
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 368
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v3, "fromSetupWizard"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 369
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz v2, :cond_0

    .line 370
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.SuwBiometricsRotationGuide"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x11

    .line 374
    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3f2

    .line 375
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 377
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v1, "startBiometricsRotationGuide : Activity Not Found !"

    .line 378
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 380
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 381
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 382
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 384
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startFaceRegister(Z)V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startFaceRegister"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 596
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    return-void
.end method

.method private startFaceRegister(ZZ)V
    .locals 5

    .line 600
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFaceRegister : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->sec_biometrics_common_dex_standalone_block_register_face:I

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 605
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 606
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 610
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 611
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 612
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 616
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eq p2, v3, :cond_3

    .line 617
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsRotationGuide()V

    return-void

    :cond_3
    const-string p2, "There is no enrolled face. Run startFaceRegister!!"

    .line 622
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "always_finish_activities"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    .line 625
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_error_message_always_finish_activities:I

    new-array v0, v3, [Ljava/lang/Object;

    sget v1, Lcom/android/settings/R$string;->immediately_destroy_activities:I

    .line 626
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 625
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 627
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x5

    goto :goto_0

    :cond_4
    const/4 p2, 0x4

    .line 629
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_attention:I

    .line 630
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 631
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    sget-object v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda1;->INSTANCE:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda1;

    .line 632
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 634
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 635
    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 636
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 637
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 638
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 640
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 641
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_fullscreen_register_face:I

    .line 642
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 643
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 647
    :cond_6
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 648
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void

    .line 650
    :cond_7
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.biometrics.app.setting"

    const-string v4, "com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity"

    .line 651
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 653
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-string v4, "hw_auth_token"

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "face_enroll_retry"

    .line 654
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 655
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 656
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 657
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v0, "fromSetupWizard"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 658
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceWearGlasses(Landroid/content/Context;I)Z

    move-result p1

    const-string v0, "face_wear_glasses"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x11

    .line 661
    :try_start_0
    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 p1, 0x3ec

    .line 662
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "runRegister : Activity Not Found !"

    .line 664
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 666
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 668
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_2
    return-void
.end method

.method private startFaceSettings(Landroid/content/Context;)V
    .locals 7

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startFaceSettings"

    .line 704
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "mIsBiometricsSettingsDestroy is set!"

    .line 707
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 709
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "startFragment : context is null"

    .line 716
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 718
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 719
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->key:Ljava/lang/String;

    const-string v4, ":settings:fragment_args_key"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-eqz v3, :cond_2

    const-string v4, "hw_auth_token"

    .line 722
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 725
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsAfw:Z

    const-string v4, "isAfw"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 726
    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x1

    .line 727
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 729
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    const-string v5, "need_fmm_popup"

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v6, "lock_screen_face"

    .line 730
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    .line 731
    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 732
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 734
    :cond_3
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 737
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsRelativeLink:Z

    const-string v4, ":settings:show_fragment_args"

    if-eqz v2, :cond_4

    const-string p1, "from relative link"

    .line 738
    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.Settings$FaceSettingsActivity"

    .line 740
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "relative_link"

    .line 742
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 743
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 744
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 746
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromFragment:Z

    if-eqz v0, :cond_5

    .line 747
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 748
    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 749
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 750
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 752
    :cond_5
    new-instance p0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    .line 753
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 754
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x2347

    .line 755
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    .line 756
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_1
    return-void
.end method

.method private startFaceStayOnLockScreen()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Run startFaceStayOnLockScreen"

    .line 551
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 553
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.android.settings.biometrics.face.SuwFaceStayOnLockScreen"

    goto :goto_0

    :cond_0
    const-string v3, "com.samsung.android.settings.biometrics.face.FaceStayOnLockScreen"

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 555
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 556
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v3, "fromSetupWizard"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "fromSettingsPreference"

    .line 557
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 558
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->needFaceUsefulFeature()Z

    move-result v2

    const-string v3, "needFaceUseFulFeature"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x11

    .line 561
    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3f3

    .line 562
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "startFaceStayOnLockScreen : Activity Not Found !"

    .line 564
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 565
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 566
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 568
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private startFaceUsefulFeature()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Run startFaceUsefulFeature"

    .line 574
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 576
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.android.settings.biometrics.face.SuwFaceUsefulFeature"

    goto :goto_0

    :cond_0
    const-string v3, "com.samsung.android.settings.biometrics.face.FaceUsefulFeature"

    :goto_0
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 578
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 579
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v3, "fromSetupWizard"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 v2, 0x11

    .line 582
    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3f1

    .line 583
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "startFaceUsefulFeature : Activity Not Found !"

    .line 585
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 586
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 587
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 589
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private startFmmBackupPasswordPopup()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startFmmBackupPasswordPopup"

    .line 1189
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1191
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1195
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception occured!"

    .line 1197
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1198
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startRedactionInterstitial()V
    .locals 3

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startRedactionInterstitial"

    .line 1204
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1207
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v2, "fromSetupWizard"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x0

    const-string v2, "extra_show_multi_pane_layout"

    .line 1209
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1211
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 765
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult : requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data is NULL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FcstFaceLockSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    if-eqz p3, :cond_4

    const-string v0, "intent is not null! Copy the token to result_intent"

    .line 772
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3ec

    if-eq p1, v0, :cond_2

    const-string v0, "hw_auth_token"

    .line 775
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    if-eqz v4, :cond_1

    .line 778
    iput-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    .line 780
    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 782
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: tokenFace="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-eqz v4, :cond_3

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const-string v4, "NULL"

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "biometrics_settings_destroy"

    .line 785
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    .line 786
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 787
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult: mIsBiometricsSettingsDestroy="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v0, 0xb

    const-wide/16 v4, 0x0

    const-string v6, "setupwizard_face"

    const-string v7, "lock_screen_face"

    const-string v8, "key_face_settings_entry"

    const/4 v9, -0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p0, "default : Not consider this case"

    .line 1122
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    .line 1014
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->needFaceUsefulFeature()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1015
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceUsefulFeature()V

    return-void

    .line 1019
    :cond_5
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1020
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1022
    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1023
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    .line 1025
    :cond_7
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_9

    .line 1026
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 1027
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_2

    .line 1029
    :cond_8
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1030
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1031
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1032
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 1036
    :cond_9
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_2
    if-ne p2, v9, :cond_a

    .line 1102
    invoke-direct {p0, v1, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    goto/16 :goto_f

    .line 1104
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1105
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_c

    .line 1106
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 1107
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_3

    .line 1109
    :cond_b
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1110
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    .line 1111
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 1115
    :cond_c
    :goto_3
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 1116
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1118
    :cond_d
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    .line 994
    :pswitch_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 995
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 997
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 998
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    .line 1000
    :cond_f
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_11

    .line 1001
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 1002
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_4

    .line 1004
    :cond_10
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1005
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1006
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    .line 1007
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 1011
    :cond_11
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_4
    if-ne p2, v9, :cond_18

    .line 1064
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_12

    .line 1066
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_f

    .line 1069
    :cond_12
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_13

    .line 1070
    sget p1, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget p2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1072
    :cond_13
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p1, :cond_14

    .line 1073
    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    .line 1075
    :cond_14
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_17

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromKnoxSetCases:Z

    if-nez p1, :cond_15

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz p1, :cond_15

    goto :goto_5

    .line 1079
    :cond_15
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_16

    .line 1080
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_f

    .line 1082
    :cond_16
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_f

    .line 1077
    :cond_17
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_f

    .line 1086
    :cond_18
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_19

    .line 1087
    sget p1, Lcom/android/settings/R$anim;->sud_slide_back_in:I

    sget p3, Lcom/android/settings/R$anim;->sud_slide_back_out:I

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_19
    if-ne p2, v0, :cond_1a

    .line 1090
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6

    .line 1092
    :cond_1a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1094
    :goto_6
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1095
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1097
    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    .line 1039
    :pswitch_5
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result p1

    if-eqz p1, :cond_1c

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    if-nez p1, :cond_1c

    .line 1040
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceStayOnLockScreen()V

    goto/16 :goto_f

    .line 1042
    :cond_1c
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 1043
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1045
    :cond_1d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1046
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    .line 1048
    :cond_1e
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_20

    .line 1049
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1050
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_7

    .line 1052
    :cond_1f
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1053
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1054
    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    .line 1055
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 1059
    :cond_20
    :goto_7
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_6
    if-ne p2, v9, :cond_21

    const-string p1, "start chooseLockGeneric"

    .line 985
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_f

    :cond_21
    const-string p1, "onActivityResult: Finish the activity!"

    .line 988
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 990
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_7
    if-eqz p3, :cond_22

    const-string p1, "face_wear_glasses"

    .line 859
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 860
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p3, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceWearGlasses(Landroid/content/Context;ZI)V

    goto :goto_8

    :cond_22
    move p1, v1

    .line 862
    :goto_8
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->sendLoggingForFaceRegistration(Z)V

    const/4 p1, -0x5

    if-ne p2, p1, :cond_23

    const/16 p1, 0x10

    .line 865
    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 866
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_f

    :cond_23
    const/4 p1, -0x2

    if-eq p2, p1, :cond_31

    const/4 p1, -0x4

    if-ne p2, p1, :cond_24

    goto/16 :goto_c

    :cond_24
    const/4 p1, -0x3

    if-ne p2, p1, :cond_25

    .line 877
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 878
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    .line 882
    :cond_25
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result p1

    if-eqz p1, :cond_26

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p3, "FaceSettings_register_alternative"

    .line 883
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 884
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v9, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 885
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 886
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :cond_26
    if-ne p2, v9, :cond_2d

    .line 891
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result p1

    if-eqz p1, :cond_27

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 892
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v9, :cond_27

    .line 894
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v2, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    .line 897
    :cond_27
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceFasterRecognition()Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 898
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceFasterRecognitionDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v9, :cond_28

    .line 900
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p0, v2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceFasterRecognitionValue(Landroid/content/Context;ZI)V

    .line 903
    :cond_28
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result p1

    if-eqz p1, :cond_2b

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 904
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v9, :cond_2b

    .line 907
    sget p1, Landroid/os/Build$VERSION;->FIRST_SDK_INT:I

    const/16 p2, 0x1d

    if-lt p1, p2, :cond_2a

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    .line 908
    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_29

    goto :goto_9

    .line 911
    :cond_29
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v2, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    goto :goto_a

    .line 909
    :cond_2a
    :goto_9
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    .line 915
    :cond_2b
    :goto_a
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result p1

    if-eqz p1, :cond_2c

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 916
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v9, :cond_2c

    .line 918
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v2, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    .line 920
    :cond_2c
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->processFaceRegistrationResult()V

    goto/16 :goto_f

    .line 922
    :cond_2d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 923
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 924
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 925
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 927
    :cond_2e
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_30

    .line 928
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2f

    .line 929
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_b

    .line 931
    :cond_2f
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 932
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    .line 933
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 937
    :cond_30
    :goto_b
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    .line 872
    :cond_31
    :goto_c
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->showFaceRetryDialog(I)V

    goto/16 :goto_f

    :pswitch_8
    if-ne p2, v9, :cond_34

    if-eqz p3, :cond_32

    .line 942
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    goto :goto_d

    :cond_32
    move-wide p1, v4

    :goto_d
    cmp-long p3, p1, v4

    if-nez p3, :cond_33

    const-string p1, "CONFIRM_REQUEST: GK_PW_Handle is 0."

    .line 944
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_f

    .line 947
    :cond_33
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$5;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    goto :goto_f

    .line 977
    :cond_34
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_35

    .line 978
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 980
    :cond_35
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_f

    :pswitch_9
    if-ne p2, v2, :cond_38

    .line 794
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->showCurrentLockTypeToast()V

    if-eqz p3, :cond_36

    .line 796
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    goto :goto_e

    :cond_36
    move-wide p1, v4

    :goto_e
    cmp-long p3, p1, v4

    if-nez p3, :cond_37

    const-string p1, "CHOOSE_LOCK_GENERIC_REQUEST: GK_PW_Handle is 0."

    .line 798
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_f

    .line 801
    :cond_37
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$4;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p3, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    goto :goto_f

    :cond_38
    const-string p1, "Set lockscreen failed!"

    .line 847
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v0, :cond_39

    .line 849
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 850
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_f

    .line 852
    :cond_39
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 103
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onCreate"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    .line 108
    sget v1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 109
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->initFaceLockSettings()V

    .line 116
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "mPreviousStage is null! Finish the activity!"

    .line 117
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    .line 122
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "face_register_external"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v2, "setupwizard_face"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v2, "FaceSettings_register"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v2, "knox_lock_screen_face"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "lock_screen_face"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v2, "FaceSettings_register_alternative"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v2, "key_face_settings_entry"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_0

    :sswitch_7
    const-string v2, "FaceSettings_unlock_switch"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v1, v4

    :goto_0
    const-string p1, "KEY_LOCK_SCREEN_FACE: GK_PW_Handle is 0."

    const-string v2, "Wrong Case!"

    const-wide/16 v5, 0x0

    const-string v7, "startBiometricsDisclaimer() : no enrolled face"

    packed-switch v1, :pswitch_data_0

    const-string p1, "This is wrong previousStage case! Finish the Activity"

    .line 315
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 276
    :pswitch_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz p1, :cond_b

    .line 277
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_a

    .line 278
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 280
    :cond_a
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 282
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 285
    :cond_b
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_e

    .line 286
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    goto :goto_1

    :cond_c
    move-wide v1, v5

    :goto_1
    cmp-long p1, v1, v5

    if-nez p1, :cond_d

    const-string p1, "Launch ConfirmLock : GkPWHandle is 0."

    .line 288
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_4

    .line 291
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$3;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    goto/16 :goto_4

    .line 309
    :cond_e
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 124
    :pswitch_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz p1, :cond_10

    .line 125
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_f

    const-string p1, "startBiometricsDisclaimer() : mIsSecured is false"

    .line 126
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    :cond_f
    const-string p1, "Wrong case! Face and digital lock already exist!"

    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 133
    :cond_10
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_11

    .line 134
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_4

    .line 136
    :cond_11
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 232
    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz v1, :cond_12

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 235
    :cond_12
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_14

    .line 236
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_13

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 239
    :cond_13
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 243
    :cond_14
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez v1, :cond_17

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    goto :goto_2

    :cond_15
    move-wide v1, v5

    :goto_2
    cmp-long v3, v1, v5

    if-nez v3, :cond_16

    .line 246
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_4

    .line 249
    :cond_16
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    goto/16 :goto_4

    .line 269
    :cond_17
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 186
    :pswitch_3
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_18

    const-string p1, "startBiometricsDisclaimer() : enabling one lock case"

    .line 188
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 192
    :cond_18
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_1a

    .line 193
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_19

    .line 194
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 196
    :cond_19
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 200
    :cond_1a
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez v1, :cond_1d

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1b

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v1

    goto :goto_3

    :cond_1b
    move-wide v1, v5

    :goto_3
    cmp-long v3, v1, v5

    if-nez v3, :cond_1c

    .line 203
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_4

    .line 206
    :cond_1c
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$1;

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    goto/16 :goto_4

    .line 226
    :cond_1d
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 169
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 170
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    if-eqz p1, :cond_1e

    const-string p0, "Wrong case! Alternative face already exist"

    .line 171
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 173
    :cond_1e
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_1f

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_4

    .line 176
    :cond_1f
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(Z)V

    goto :goto_4

    :cond_20
    const-string p1, "onCreate : Wrong case"

    .line 180
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 182
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_4

    .line 142
    :pswitch_5
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz p1, :cond_21

    .line 143
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_4

    .line 145
    :cond_21
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_4

    .line 151
    :pswitch_6
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz p1, :cond_23

    .line 152
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_22

    .line 153
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_4

    .line 155
    :cond_22
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 157
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_4

    .line 160
    :cond_23
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_24

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_4

    .line 163
    :cond_24
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7defbfb0 -> :sswitch_7
        -0x68750668 -> :sswitch_6
        -0x521592d0 -> :sswitch_5
        0x189ed3c -> :sswitch_4
        0xd4e6a8f -> :sswitch_3
        0x25783a42 -> :sswitch_2
        0x2c243a14 -> :sswitch_1
        0x7fc7f085 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onDestroy"

    .line 546
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onPause"

    .line 533
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    .line 535
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 527
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "FcstFaceLockSettings"

    const-string v0, "onResume"

    .line 528
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onStop"

    .line 540
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
