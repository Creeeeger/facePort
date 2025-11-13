.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;
.super Landroid/app/Activity;
.source "FingerprintLockSettings.java"


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mDisplayKnoxName:Ljava/lang/String;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFromSetupwizard:Z

.field private mHasEnrolledFingerprint:Z

.field private mIdentifyFingerprint:Z

.field private mInitializedUI:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsAfw:Z

.field private mIsBiometricsSettingsDestroy:Z

.field private mIsFromFragment:Z

.field private mIsFromKnoxFingerprintPlus:Z

.field private mIsFromKnoxSetCases:Z

.field private mIsFromKnoxSetupWizard:Z

.field private mIsFromKnoxTwoStep:Z

.field private mIsOneLock:Z

.field private mIsRelativeLink:Z

.field private mIsSecured:Z

.field private mKeepSessionAndActivity:I

.field private mKnoxIdentifyOnlyFingerprint:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMaxEnrolledFingerprint:Z

.field private mOnlyIdentifyFingerprint:Z

.field private mPreviousStage:Ljava/lang/String;

.field private mSelectedFingerIndex:I

.field private mStartUseFingerprint:Z

.field private mToken:[B

.field private mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mUnificationProfileId:I

.field private mUserId:I

.field private result_intent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$PIp3grPh9MjcLoyVFUgF_ayk9e8(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->lambda$onActivityResult$3(JIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$_P9uzjtk5wMWNHfmP4ImT80YxQI(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->lambda$onCreate$0(JIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$a-yf6K552Xp95vHLxPjQHRiO8I8(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->lambda$onCreate$1(JIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$kIO0eerZIUvdfqZlT99Tsp-22Bs(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->lambda$onActivityResult$4(JIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$lKwpi-3ypsCl1-InpqbXAlPlF5M(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->lambda$onCreate$2(JIIJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresult_intent(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmKeepSessionAndActivity(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcloseSessionAndFinish(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfromFingerprintSettings(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mshowDatabaseFailureDialog(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->showDatabaseFailureDialog()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 51
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    .line 61
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    .line 62
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    .line 71
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    .line 72
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    const-string v1, ""

    .line 73
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->key:Ljava/lang/String;

    .line 74
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRelativeLink:Z

    .line 76
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    .line 77
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    .line 78
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsBiometricsSettingsDestroy:Z

    const/4 v1, 0x0

    .line 83
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    const-wide/16 v1, 0x0

    .line 84
    iput-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    .line 85
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    .line 86
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    .line 87
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const/16 v0, -0x2710

    .line 101
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    return-void
.end method

.method private closeSessionAndFinish()V
    .locals 5

    .line 1270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "closeSessionAndFinish : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "closeSessionAndFinish : Keep the Fingerprint session!"

    .line 1272
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "Close fingerprint session"

    .line 1274
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1275
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    .line 1276
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "closeSessionAndFinish : Close Fingerprint Session"

    .line 1277
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    .line 1279
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "hw_auth_token"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1284
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const-string p0, "closeSessionAndFinish : Keep the activity!"

    .line 1285
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "closeSessionAndFinish : finish activity"

    .line 1287
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1288
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private deleteAllFingerprints()V
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method

.method private fromFingerprintSettings(Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 841
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "fingerprint_entry"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 845
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "FingerprintSettings_register"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "fingerprint_settings_set_screen_lock"

    .line 846
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "support_web_signin"

    .line 847
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "support_samsung_account"

    .line 848
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

.method private initFingerprintLockSettings()Z
    .locals 6

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "initFingerprintLockSettings"

    .line 1027
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, "fingerprint"

    .line 1030
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "FingerprintManager is null"

    .line 1032
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1036
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    .line 1037
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    const/16 v3, -0x2710

    if-ne v1, v3, :cond_1

    const-string p0, "User ID is USER_NULL."

    .line 1039
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1043
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "from_biometric_fragment"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromFragment:Z

    .line 1044
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "previousStage"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1045
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "identifyFingerprint"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    .line 1046
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "onlyIdentify"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    .line 1047
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "isAfw"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    .line 1048
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "relative_link"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRelativeLink:Z

    .line 1049
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const/4 v4, -0x1

    const-string v5, "fingerIndex"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    .line 1050
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, ":settings:fragment_args_key"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1051
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->key:Ljava/lang/String;

    .line 1054
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "mKnoxIdentifyOnly"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    .line 1055
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "hw_auth_token"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    .line 1056
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v5, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1057
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    .line 1058
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "fromSetupWizard"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    .line 1059
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v4, "google_setupwizard_fingerprint"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 1060
    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    .line 1062
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v5}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    .line 1063
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v1, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I

    move-result v1

    .line 1064
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll()I

    move-result v5

    if-ne v1, v5, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    .line 1067
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v5, "isFromKnoxFingerprintPlus"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    .line 1068
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v5, "is_knox"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    .line 1069
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v5, "is_knox_two_step"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    .line 1070
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v5, "isFromKnoxSetupWizard"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    .line 1071
    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_5

    move v1, v4

    goto :goto_1

    :cond_5
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    .line 1072
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v5, "displayKnoxName"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    .line 1073
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mDisplayKnoxName:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", mIsFromKnoxSetCases:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mIsFromKnoxTwoStep:"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mUserId : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[previousStage] = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[identifyFingerprint] = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isSecured] = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[fromSetupwizard] = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[hasEnrolledFingerprint] = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[maxEnrolledFingerprint] = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mIsRelativeLink] = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRelativeLink:Z

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[mSelectedFingerIndex]"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "unification_profile_id"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    .line 1090
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v1, "unification_profile_credential"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    .line 1094
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    if-nez v0, :cond_7

    .line 1095
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1096
    iput v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 1098
    :cond_6
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_7
    return v4
.end method

.method private isRegistrationNeeded()Z
    .locals 3

    .line 825
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 828
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "google_setupwizard_fingerprint"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "FingerprintSettings_register"

    .line 829
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "fingerprint_register_external"

    .line 830
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 835
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRegistrationNeeded : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FpstFingerprintLockSettings"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private synthetic lambda$onActivityResult$3(JIIJ)V
    .locals 6

    .line 623
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    .line 624
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    move-wide v1, p1

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    .line 625
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 627
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    const/4 p2, 0x1

    const-string p3, "FpstFingerprintLockSettings"

    if-nez p1, :cond_0

    const-string p1, "CHOOSE_LOCK_GENERIC_REQUEST: token = NULL"

    .line 628
    invoke-static {p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 630
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 629
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    return-void

    .line 636
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p4, "knox_fingerprint_entry"

    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p4, -0x1

    if-eqz p1, :cond_3

    .line 637
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Fingerprint already registered for KNOX!"

    .line 638
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object p5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {p1, p2, p3, p5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;)V

    .line 640
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 641
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    .line 643
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 644
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_1

    .line 646
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    return-void

    .line 651
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->isRegistrationNeeded()Z

    move-result p1

    if-nez p1, :cond_9

    .line 652
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p4, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 653
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 654
    iput p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 656
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 657
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object p4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {p1, p2, p3, p4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;)V

    .line 659
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p2, "fingerprint_entry"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 660
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startFingerprintSettings(Landroid/content/Context;)V

    .line 662
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez p1, :cond_8

    .line 663
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p3, "lock_screen_fingerprint"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 664
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    goto :goto_0

    .line 666
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p3, "google_setupwizard_fingerprint"

    .line 667
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 668
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 669
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startFmmBackupPasswordPopup()V

    .line 673
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_9
    const-string p1, "There is no fingerprint Launch the RegisterFingerprint"

    .line 675
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onActivityResult$4(JIIJ)V
    .locals 6

    .line 700
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    .line 701
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    move-wide v1, p1

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    .line 702
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 704
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    const-string p2, "FpstFingerprintLockSettings"

    if-nez p1, :cond_0

    const-string p1, "CONFIRM_REQUEST: token = NULL"

    .line 705
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 707
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 706
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 710
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez p1, :cond_1

    .line 711
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto :goto_0

    .line 714
    :cond_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    if-eqz p1, :cond_2

    const-string p1, "OneLock case : Launch chooseLockGeneric"

    .line 715
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, -0x1

    .line 716
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock(J)V

    goto :goto_0

    .line 719
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(JIIJ)V
    .locals 6

    .line 207
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    .line 208
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    move-wide v1, p1

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    .line 209
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 211
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez p1, :cond_0

    const-string p1, "FpstFingerprintLockSettings"

    const-string p2, "KEY_LOCK_SCREEN_FINGERPRINT: token = NULL"

    .line 212
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 214
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 213
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 217
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(JIIJ)V
    .locals 6

    .line 279
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    .line 280
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    move-wide v1, p1

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez p1, :cond_0

    const-string p1, "FpstFingerprintLockSettings"

    const-string p2, "Fingerprint register external : token = NULL"

    .line 283
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 285
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 284
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 288
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez p1, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto :goto_0

    .line 291
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$2(JIIJ)V
    .locals 6

    .line 333
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    .line 334
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    move-wide v1, p1

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    .line 335
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 337
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    const-string p2, "FpstFingerprintLockSettings"

    if-nez p1, :cond_0

    const-string p1, "KEY_KNOX_FINGERPRINT_SETTINGS_ENTRY: token = NULL"

    .line 338
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 340
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    .line 339
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    const-string p1, "startBiometricsDisclaimer() : mIsSecured is false"

    .line 343
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    :goto_0
    return-void
.end method

.method private launchChooseLock(J)V
    .locals 5

    const-string p1, "FpstFingerprintLockSettings"

    const-string p2, "launchChooseLock"

    .line 1201
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 1204
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->prevent_to_change_by_device_policy:I

    new-array v0, v0, [Ljava/lang/Object;

    sget v2, Lcom/android/settings/R$string;->sec_biometrics_chooselock_title:I

    .line 1205
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1204
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1205
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 1206
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 1207
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    .line 1211
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p2

    const-string v2, "request_gk_pw_handle"

    .line 1212
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "for_fingerprint"

    .line 1213
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "hide_insecure_options"

    .line 1214
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1215
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    const-string v2, "fromSetupWizard"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v0, 0x10000

    .line 1216
    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1217
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    const/4 v2, 0x0

    .line 1218
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/app/ActivityOptions;->semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    .line 1220
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_1

    const-string v4, "android.intent.extra.USER_ID"

    .line 1221
    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1224
    :cond_1
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    if-eq v2, v3, :cond_2

    .line 1226
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1227
    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    const-string v4, "unification_profile_id"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1229
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    const-string v4, "unification_profile_credential"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v3, ":settings:show_fragment_args"

    .line 1231
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const/16 v2, 0x11

    .line 1235
    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ea

    .line 1236
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p2, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p2, "Activity Not Found !"

    .line 1238
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1239
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1240
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 1241
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private launchConfirmLock()V
    .locals 4

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchConfirmLock"

    .line 1246
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x11

    .line 1248
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 1250
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3ec

    .line 1251
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 1252
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 1253
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 1254
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 1255
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 1257
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    .line 1258
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 1261
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Fail launchConfirmationActivity!"

    .line 1262
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1264
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 1265
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_1
    return-void
.end method

.method private launchRedactionInterstitial()V
    .locals 4

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchRedactionInterstitial"

    .line 1362
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v1, v2}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "launchRedaction [startActivity]"

    .line 1366
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1367
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    const-string v3, "fromSetupWizard"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1370
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "launchRedactionInterstitial : Activity Not Found !"

    .line 1372
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "RedactionInterstitial.createStartIntent is NULL."

    .line 1375
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private processFingerprintRegistrationResult()V
    .locals 4

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "processFingerprintRegistrationResult"

    .line 793
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    const-string v2, "fingerIndex"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 796
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 798
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v0, :cond_0

    .line 799
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    .line 802
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 803
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 806
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "fingerprint_entry"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 807
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startFingerprintSettings(Landroid/content/Context;)V

    .line 810
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v0, :cond_4

    .line 811
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "lock_screen_fingerprint"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 812
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    goto :goto_0

    .line 814
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "google_setupwizard_fingerprint"

    .line 815
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 816
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 817
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startFmmBackupPasswordPopup()V

    :cond_4
    :goto_0
    return-void
.end method

.method private recognizeFingerprint()V
    .locals 1

    const-string p0, "FpstFingerprintLockSettings"

    const-string v0, "recognizeFingerprint"

    .line 1105
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private runRegister()V
    .locals 6

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "runRegister"

    .line 1110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 1111
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1112
    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 1114
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isNotAvailableFingerprintWithMobileKeyboard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "Mobile keyboard attached"

    .line 1115
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->showMobileKeyboardToastMsg()V

    .line 1117
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    if-nez v0, :cond_7

    .line 1118
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_0

    .line 1120
    :cond_1
    sget v2, Lcom/android/settings/R$string;->bio_fingerprint_sanner_title:I

    invoke-static {p0, v2, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1121
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1122
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_0

    .line 1124
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isDisableScreenForDisplayFingerprint(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1125
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    if-nez v0, :cond_7

    .line 1126
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_0

    .line 1128
    :cond_3
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisplaySensor()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1129
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isOneHandedMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1130
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_error_message_one_handed_mode:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1131
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mInitializedUI:Z

    if-nez v0, :cond_7

    .line 1132
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_0

    .line 1135
    :cond_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.android.settings"

    const-string v4, "com.samsung.android.settings.biometrics.fingerprint.RegisterFingerprint"

    .line 1136
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v4, "previousStage"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    const-string v4, "fromSetupWizard"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1140
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    const-string v4, "hw_auth_token"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1141
    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    const-string v5, "challenge"

    invoke-virtual {v2, v5, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1142
    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1143
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    const-string v4, "isAfw"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1144
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    const-string v4, "identifyFingerprint"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1146
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    const-string v4, "isFromKnoxSetupWizard"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1147
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    const-string v4, "isFromKnoxFingerprintPlus"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1148
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    const-string v4, "is_knox"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1149
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    const-string v4, "is_knox_two_step"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1150
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "fromKnoxKeyguard"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1151
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "is_secure_folder"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1155
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runRegister hasEnrolledFingerprints "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    .line 1156
    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 1157
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-nez v0, :cond_5

    const/16 v0, 0x3e9

    .line 1158
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 1161
    :cond_5
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x3f0

    .line 1162
    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_6
    const/16 v0, 0x3e8

    .line 1165
    new-instance v1, Landroid/os/UserHandle;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-direct {v1, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v2, v0, v1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1170
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_7
    :goto_0
    return-void
.end method

.method private runRegisterForKnox()V
    .locals 2

    .line 1381
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1382
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    return-void

    .line 1385
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    return-void
.end method

.method private showCurrentLockTypeToast()V
    .locals 4

    .line 858
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 859
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_lock_settings_set_lock_type_fingerprint:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 862
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "passwordQuality : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FpstFingerprintLockSettings"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_3

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_2

    const/high16 v2, 0x30000

    if-eq v0, v2, :cond_2

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x50000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_1

    move-object v0, v1

    goto :goto_0

    .line 872
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_password_toast:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 867
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_pin_toast:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 875
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_pattern_toast:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 881
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_6

    .line 885
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isDisplaySensor()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x50

    .line 886
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 887
    invoke-static {v3, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getToastHeightForDisplaySensor(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result p0

    .line 886
    invoke-virtual {v1, v0, v2, p0}, Landroid/widget/Toast;->setGravity(III)V

    .line 889
    :cond_5
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_6
    return-void
.end method

.method private showDatabaseFailureDialog()V
    .locals 3

    .line 1298
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_attention:I

    .line 1299
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_data_has_been_corrupted:I

    .line 1300
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V

    const v2, 0x104000a

    .line 1301
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1306
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1308
    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1318
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMobileKeyboardToastMsg()V
    .locals 5

    .line 1293
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_fingerprint_keyboard_toast_msg:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/settings/R$string;->sec_fingerprint:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 1294
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showSensorErrorDialog(I)V
    .locals 3

    .line 1322
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1324
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error_title:I

    .line 1325
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1326
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$4;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V

    .line 1327
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1332
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1333
    new-instance v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$5;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1343
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsDisclaimer()V
    .locals 5

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "startBiometricsDisclaimer"

    .line 1176
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1179
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1180
    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/4 v3, 0x1

    .line 1181
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1182
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    const-string v4, "hw_auth_token"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1183
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v4, "google_setupwizard_fingerprint"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "fromSetupWizard"

    .line 1184
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1185
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 1186
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v3, "fingerprint_entry"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v2, :cond_1

    .line 1187
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsDisclaimerWithConfirmLock"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const/16 v2, 0x11

    .line 1191
    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ed

    .line 1192
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 1194
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v1, "startBiometricsDisclaimer : Activity Not Found !"

    .line 1195
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private startFingerprintSettings(Landroid/content/Context;)V
    .locals 7

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "startFingerprintSettings"

    .line 907
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsBiometricsSettingsDestroy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "mIsBiometricsSettingsDestroy is set!"

    .line 910
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 912
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    .line 918
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->semIsTemplateDbCorrupted()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "onCreate DB Corrupt"

    .line 919
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->deleteAllFingerprints()V

    return-void

    :cond_1
    if-nez p1, :cond_2

    const-string p0, "startFragment : context is null"

    .line 925
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 927
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 928
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->key:Ljava/lang/String;

    const-string v4, ":settings:fragment_args_key"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-eqz v3, :cond_3

    const-string v4, "tokenFromLock"

    .line 931
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 932
    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    const-string v5, "challenge"

    invoke-virtual {v1, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 934
    :cond_3
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIdentifyFingerprint:Z

    const-string v4, "identifyFingerprint"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 935
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    const-string v4, "isAfw"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 936
    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 937
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    const/4 v4, 0x1

    xor-int/2addr v3, v4

    const-string v5, "fingerprint_registered_from_fingerprint"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 938
    iput v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 940
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    const-string v5, "need_fmm_popup"

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v6, "lock_screen_fingerprint"

    .line 941
    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    .line 942
    invoke-static {v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 943
    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 945
    :cond_4
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 948
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRelativeLink:Z

    const-string v3, ":settings:show_fragment_args"

    if-eqz v2, :cond_5

    const-string p1, "from relative link"

    .line 949
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.Settings$FingerprintSettingsActivity"

    .line 951
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "relative_link"

    .line 953
    invoke-virtual {v1, v0, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 954
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 955
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 957
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromFragment:Z

    if-eqz v0, :cond_6

    .line 958
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 959
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    .line 960
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 961
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    .line 963
    :cond_6
    new-instance p0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    .line 964
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 965
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    const/16 p1, 0x2347

    .line 966
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->bio_fingerprint_sanner_title:I

    .line 967
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 968
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_1
    return-void
.end method

.method private startFmmBackupPasswordPopup()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "startFmmBackupPasswordPopup"

    .line 1347
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1349
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1353
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception occured!"

    .line 1355
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    .line 400
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 401
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

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FpstFingerprintLockSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const-string v0, "fingerprint_settings_destroy"

    if-eqz p3, :cond_4

    const-string v4, "intent is not null! Copy the token to result_intent"

    .line 407
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "hw_auth_token"

    .line 408
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 410
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    .line 411
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 412
    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    const-string v6, "challenge"

    invoke-virtual {p3, v6, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    .line 414
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: token="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-eqz v5, :cond_2

    invoke-static {v5}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_2
    const-string v5, "NULL"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 417
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 418
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v5, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 419
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onActivityResult: isFpSettingsDestroy="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_3
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "biometrics_settings_destroy"

    .line 423
    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsBiometricsSettingsDestroy:Z

    .line 424
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 425
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: mIsBiometricsSettingsDestroy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsBiometricsSettingsDestroy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/16 v4, 0x384

    if-eq p1, v4, :cond_3d

    const/16 v4, 0x3ec

    const-wide/16 v5, 0x0

    const/4 v7, -0x1

    if-eq p1, v4, :cond_38

    const/16 v4, 0x3ed

    const/16 v8, 0xb

    if-eq p1, v4, :cond_2f

    const/16 v4, 0x3ef

    if-eq p1, v4, :cond_2d

    const/16 v4, 0x3f0

    const-string v9, "previousStage"

    const-string v10, "Fingerprint Registration failed!"

    if-eq p1, v4, :cond_1d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_f

    :pswitch_0
    if-ne p2, v1, :cond_7

    .line 615
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->showCurrentLockTypeToast()V

    if-eqz p3, :cond_5

    .line 617
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    goto :goto_2

    :cond_5
    move-wide p1, v5

    :goto_2
    cmp-long p3, p1, v5

    if-nez p3, :cond_6

    const-string p1, "CHOOSE_LOCK_GENERIC_REQUEST : GK_PW_Handle is 0."

    .line 619
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_f

    .line 622
    :cond_6
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;J)V

    invoke-virtual {p3, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto/16 :goto_f

    :cond_7
    const-string p1, "Set lockscreen failed!"

    .line 682
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v8, :cond_8

    .line 684
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 685
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    .line 687
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_f

    :pswitch_1
    if-ne p2, v7, :cond_16

    .line 433
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {p1, v1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintOnScreenTipsValue(Landroid/content/Context;ZI)V

    .line 435
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    .line 436
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintAlwaysOnDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v7, :cond_9

    const-string p1, "onActivityResult :  alwaysOn value not set"

    .line 438
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    .line 440
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isWakeOnFingerOffDevice()Z

    move-result p2

    xor-int/2addr p2, v1

    iget p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    .line 439
    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnValue(Landroid/content/Context;ZI)V

    .line 443
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    .line 444
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v7, :cond_a

    const-string p1, "onActivityResult :  screenOff icon for aod value not set"

    .line 446
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    const/4 p2, 0x2

    iget p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    .line 451
    :cond_a
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIcon()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    .line 452
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v7, :cond_b

    const-string p1, "onActivityResult :  screenOff icon value not set"

    .line 454
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {p1, v1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconValue(Landroid/content/Context;ZI)V

    .line 458
    :cond_b
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFasterRecognition()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    .line 459
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintFastRecognitionDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v7, :cond_c

    const-string p1, "setFingerprintLock fast recognition value not set"

    .line 461
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {p1, v1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintFastRecognition(Landroid/content/Context;ZI)V

    .line 465
    :cond_c
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, v9, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 468
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz p1, :cond_10

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-nez p1, :cond_10

    .line 469
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 470
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz p1, :cond_d

    goto/16 :goto_f

    .line 473
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_3

    .line 476
    :cond_e
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 478
    :goto_3
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 479
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 481
    :cond_f
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_6

    .line 483
    :cond_10
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz p1, :cond_11

    goto :goto_4

    .line 490
    :cond_11
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-eqz p1, :cond_13

    .line 491
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    .line 493
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 494
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_6

    .line 496
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_6

    .line 499
    :cond_13
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->processFingerprintRegistrationResult()V

    goto/16 :goto_6

    .line 484
    :cond_14
    :goto_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 485
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    .line 487
    :cond_15
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 489
    :goto_5
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_6

    :cond_16
    const/4 p1, 0x3

    if-ne p2, p1, :cond_17

    .line 503
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 504
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 505
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :cond_17
    const-string p1, "google_setupwizard_fingerprint"

    if-ne p2, v1, :cond_18

    .line 507
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 508
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const-string p1, "Register fingerprint is closed. Restart runRegister!"

    .line 509
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_f

    .line 514
    :cond_18
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 517
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p2

    if-eqz p2, :cond_19

    .line 518
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 521
    :cond_19
    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez p2, :cond_1b

    .line 522
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p3, "lock_screen_fingerprint"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1a

    .line 523
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    goto :goto_6

    .line 525
    :cond_1a
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1b

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 526
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1b

    .line 527
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startFmmBackupPasswordPopup()V

    .line 533
    :cond_1b
    :goto_6
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    if-nez p1, :cond_1c

    .line 534
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    .line 536
    :cond_1c
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    goto/16 :goto_f

    :cond_1d
    if-ne p2, v7, :cond_29

    if-eqz p3, :cond_1e

    .line 543
    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 544
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "previousStage : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    :cond_1e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mIsFromKnoxSetCases : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mKnoxIdentifyOnlyFingerprint : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsFromKnoxTwoStep : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsFromKnoxSetupWizard : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz p1, :cond_23

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-nez p1, :cond_23

    .line 551
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 552
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz p1, :cond_1f

    goto/16 :goto_f

    .line 555
    :cond_1f
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 557
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_21

    .line 558
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {p1, p2, p3, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;)V

    goto :goto_7

    .line 561
    :cond_20
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 563
    :cond_21
    :goto_7
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 564
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 566
    :cond_22
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_a

    .line 568
    :cond_23
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez p1, :cond_27

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz p1, :cond_24

    goto :goto_8

    .line 575
    :cond_24
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-eqz p1, :cond_26

    .line 576
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    .line 578
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_25

    .line 579
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_a

    .line 581
    :cond_25
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_a

    .line 584
    :cond_26
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    const-string p3, "fingerIndex"

    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 585
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_a

    .line 569
    :cond_27
    :goto_8
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_28

    .line 570
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_9

    .line 572
    :cond_28
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 574
    :goto_9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_a

    .line 588
    :cond_29
    invoke-static {v3, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 590
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 591
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 594
    :cond_2a
    :goto_a
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez p1, :cond_2b

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    if-eqz p1, :cond_2b

    .line 595
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchRedactionInterstitial()V

    .line 598
    :cond_2b
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    if-nez p1, :cond_2c

    .line 599
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    .line 601
    :cond_2c
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mStartUseFingerprint:Z

    goto/16 :goto_f

    .line 606
    :cond_2d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 607
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v7, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_b

    .line 609
    :cond_2e
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 611
    :goto_b
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_f

    :cond_2f
    if-ne p2, v7, :cond_34

    .line 749
    iget p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    const/16 p2, -0x2710

    const-string p3, "OneLock case : Launch chooseLockGeneric"

    const-wide/16 v0, -0x1

    if-eq p1, p2, :cond_30

    .line 751
    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock(J)V

    goto/16 :goto_f

    .line 755
    :cond_30
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_31

    .line 756
    sget p1, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget p2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 759
    :cond_31
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez p1, :cond_32

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    if-eqz p1, :cond_32

    .line 760
    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock(J)V

    goto/16 :goto_f

    .line 764
    :cond_32
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_33

    .line 765
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_f

    :cond_33
    const-string p1, "start chooseLockGeneric"

    .line 767
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    invoke-direct {p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock(J)V

    goto/16 :goto_f

    :cond_34
    const-string p1, "onActivityResult: Finish the activity!"

    .line 772
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_35

    .line 774
    sget p1, Lcom/android/settings/R$anim;->sud_slide_back_in:I

    sget p3, Lcom/android/settings/R$anim;->sud_slide_back_out:I

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_35
    if-ne p2, v8, :cond_36

    .line 777
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_c

    .line 779
    :cond_36
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 782
    :goto_c
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 783
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 786
    :cond_37
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_f

    :cond_38
    if-ne p2, v7, :cond_3b

    .line 693
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez p1, :cond_3b

    if-eqz p3, :cond_39

    .line 694
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    goto :goto_d

    :cond_39
    move-wide p1, v5

    :goto_d
    cmp-long p3, p1, v5

    if-nez p3, :cond_3a

    const-string p1, "CONFIRM_REQUEST : GK_PW_Handle is 0."

    .line 696
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto :goto_f

    .line 699
    :cond_3a
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;J)V

    invoke-virtual {p3, v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_f

    .line 726
    :cond_3b
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 727
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 729
    :cond_3c
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_f

    :cond_3d
    if-ne p2, v1, :cond_3f

    .line 735
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 736
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto :goto_e

    .line 738
    :cond_3e
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    :goto_e
    const-string p0, "KNOXNOTICE_REQUEST_CODE got RESULT_FINISHED"

    .line 740
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_3f
    const-string p1, "KNOXNOTICE_REQUEST_CODE got RESULT_FAILED"

    .line 742
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 744
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FpstFingerprintLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 897
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 110
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "FpstFingerprintLockSettings"

    const-string v0, "onCreate"

    .line 111
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 115
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 116
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_fullscreen_register_finger:I

    .line 119
    :cond_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 120
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->initFingerprintLockSettings()Z

    move-result v0

    if-nez v0, :cond_2

    .line 125
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->showSensorErrorDialog(I)V

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    .line 130
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v0, :cond_3

    const-string v0, "mPreviousStage is null! Finish the activity!"

    .line 131
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    .line 136
    :cond_3
    sget v0, Lcom/android/settings/R$string;->bio_fingerprint_sanner_title:I

    invoke-static {p0, v0, p1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 137
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v3, "google_setupwizard_fingerprint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v2, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v3, "support_web_signin"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v2, 0x7

    goto :goto_0

    :sswitch_3
    const-string v3, "lock_screen_fingerprint"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v2, 0x6

    goto :goto_0

    :sswitch_4
    const-string v3, "knox_fingerprint_entry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v2, 0x5

    goto :goto_0

    :sswitch_5
    const-string v3, "lock_screen_pin_pattern_password_upgragde"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v2, 0x4

    goto :goto_0

    :sswitch_6
    const-string v3, "fingerprint_entry"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_7
    const-string v3, "fingerprint_register_external"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_8
    const-string v3, "FingerprintSettings_register"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    move v2, v4

    goto :goto_0

    :sswitch_9
    const-string v3, "support_samsung_account"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    move v2, v1

    :goto_0
    const-string v0, "[KNOX FINGERPRINT] : START recognizeFingerprint() in FingerExist"

    const-string v3, "launchConfirmLock() : Token is null"

    const-string v5, "There is no fingerprint. Register fingerprint!"

    const-string v6, "This is wrong case!"

    const-string v7, "startFingerprintRegister"

    const-string v8, "startBiometricsDisclaimer() :mIsSecured is false"

    const-wide/16 v9, 0x0

    packed-switch v2, :pswitch_data_0

    const-string v0, "This is wrong previousStage case! Finish the Activity"

    .line 372
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 374
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_7

    :pswitch_0
    const-string v0, "Google Setupwizard - Fingerprint"

    .line 246
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v0, :cond_f

    .line 248
    invoke-static {p1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 251
    :cond_f
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v0, :cond_11

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v0, :cond_10

    .line 253
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_7

    .line 256
    :cond_10
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_7

    .line 259
    :cond_11
    invoke-static {p1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 261
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_7

    :pswitch_1
    const-string v1, "LockScreen - Fingerprint"

    .line 191
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_12

    const-string v0, "startBiometricsDisclaimer() : enabling one lock case"

    .line 194
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 198
    :cond_12
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v1, :cond_16

    .line 199
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v0, :cond_15

    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    goto :goto_1

    :cond_13
    move-wide v0, v9

    :goto_1
    cmp-long v2, v0, v9

    if-nez v2, :cond_14

    const-string v0, "KEY_LOCK_SCREEN_FINGERPRINT: GK_PW_Handle is 0."

    .line 203
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_7

    .line 206
    :cond_14
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;J)V

    invoke-virtual {p1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto/16 :goto_7

    .line 222
    :cond_15
    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 227
    :cond_16
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_17

    .line 228
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 230
    :cond_17
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-eqz v1, :cond_18

    .line 231
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_7

    .line 232
    :cond_18
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v1, :cond_19

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-nez v1, :cond_19

    .line 233
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_7

    .line 234
    :cond_19
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v1, :cond_1b

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v1, :cond_1a

    goto :goto_2

    .line 239
    :cond_1a
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 235
    :cond_1b
    :goto_2
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto/16 :goto_7

    :pswitch_2
    const-string v1, "KEY_KNOX_FINGERPRINT_SETTINGS_ENTRY"

    .line 313
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    if-eqz v1, :cond_1c

    .line 315
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 316
    :cond_1c
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_23

    .line 317
    invoke-static {p1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v0, :cond_22

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_1d

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-nez v0, :cond_1d

    goto :goto_4

    .line 321
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_21

    const-string v0, "FingerprintLockSettings() : mIsSecured is TRUE"

    .line 322
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-eqz v0, :cond_1e

    .line 324
    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_7

    .line 327
    :cond_1e
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    goto :goto_3

    :cond_1f
    move-wide v0, v9

    :goto_3
    cmp-long v2, v0, v9

    if-nez v2, :cond_20

    const-string v0, "KEY_KNOX_FINGERPRINT_SETTINGS_ENTRY: GK_PW_Handle is 0."

    .line 329
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_7

    .line 332
    :cond_20
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;J)V

    invoke-virtual {p1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto/16 :goto_7

    .line 350
    :cond_21
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 319
    :cond_22
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_7

    .line 354
    :cond_23
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 355
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 357
    :cond_24
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-eqz v1, :cond_25

    .line 358
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_7

    .line 359
    :cond_25
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v1, :cond_26

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-nez v1, :cond_26

    .line 360
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_7

    .line 361
    :cond_26
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v1, :cond_28

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v1, :cond_27

    goto :goto_5

    .line 365
    :cond_27
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 362
    :cond_28
    :goto_5
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->recognizeFingerprint()V

    goto/16 :goto_7

    :pswitch_3
    const-string v0, "LockScreen - OS Upgrade with P/P/P"

    .line 180
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v0, :cond_29

    .line 182
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-static {p1, v0, v1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;ILjava/lang/String;)V

    goto/16 :goto_7

    :cond_29
    const-string v0, "Wrong case! At this point, Fingerprint must be exist!"

    .line 184
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 186
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_7

    :pswitch_4
    const-string v0, "FingerprintSettings - Entry"

    .line 143
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v0, :cond_2a

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v0, :cond_2a

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_7

    :cond_2a
    const-string v0, "startBiometricsDisclaimer() : no enrolled fingerprint"

    .line 147
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 267
    :pswitch_5
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v0, :cond_2b

    .line 268
    invoke-static {p1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_7

    .line 271
    :cond_2b
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v0, :cond_30

    .line 272
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v0, :cond_2e

    .line 273
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    goto :goto_6

    :cond_2c
    move-wide v0, v9

    :goto_6
    cmp-long v2, v0, v9

    if-nez v2, :cond_2d

    const-string v0, "Launch ConfirmLock : GkPWHandle is 0."

    .line 275
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto :goto_7

    .line 278
    :cond_2d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v0, v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;J)V

    invoke-virtual {p1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_7

    .line 296
    :cond_2e
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v0, :cond_2f

    .line 297
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto :goto_7

    .line 299
    :cond_2f
    invoke-static {p1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto :goto_7

    :cond_30
    const-string v0, "This is wrong case! All fingerprint already enrolled"

    .line 303
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 305
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 306
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_7

    :pswitch_6
    const-string v0, "FingerprintSettings"

    .line 156
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v0, :cond_31

    .line 158
    invoke-static {p1, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto :goto_7

    .line 161
    :cond_31
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v0, :cond_34

    .line 162
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v0, :cond_32

    .line 163
    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto :goto_7

    .line 165
    :cond_32
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez p1, :cond_33

    .line 166
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto :goto_7

    .line 168
    :cond_33
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto :goto_7

    .line 171
    :cond_34
    invoke-static {p1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    .line 173
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x77be5188 -> :sswitch_9
        -0x70e29525 -> :sswitch_8
        -0x5bf1f0b4 -> :sswitch_7
        -0x5464e6a9 -> :sswitch_6
        -0x6de907 -> :sswitch_5
        0x18664664 -> :sswitch_4
        0x2a642925 -> :sswitch_3
        0x4ad7295d -> :sswitch_2
        0x5a88c147 -> :sswitch_1
        0x5effd7a0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "onDestroy"

    .line 902
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "onPause"

    .line 387
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    .line 389
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 381
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "FpstFingerprintLockSettings"

    const-string v0, "onResume"

    .line 382
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "onStop"

    .line 394
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
