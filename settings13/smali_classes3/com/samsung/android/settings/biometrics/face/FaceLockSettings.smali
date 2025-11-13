.class public Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;
.super Landroid/app/Activity;
.source "FaceLockSettings.java"


# instance fields
.field private key:Ljava/lang/String;

.field private mChallenge:J

.field private mContext:Landroid/content/Context;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

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

.field private mSensorId:I

.field private mToken:[B

.field private mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field private mUnificationProfileId:I

.field private mUserId:I

.field private result_intent:Landroid/content/Intent;


# direct methods
.method public static synthetic $r8$lambda$4Fr-tPGo4RCCwEycgLz3O39487k(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$startFaceRegister$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$8WCj3Xmc5f_Wi_Ay59IfZ0dzceE(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$onCreate$0(JIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$En5AcYFWbsuECyKcz0bL1uRui3Y(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$startFaceRegister$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGtoX_-RfWC4iqBmYRVY9r59YCA(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$onActivityResult$5(JIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$NFmZKm1lF7ilVN3NCb-Z_NTmWBA(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$onCreate$2(JIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$QNjbn3n57VYtmXUVNO3dU694rjw(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$showFaceRetryDialog$7(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sqb1yyAqmkvcsj3jx-GOXNDonLI(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$showFaceRetryDialog$8(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Vsconjp4RLX5ppV7B6WRu5CMYsw(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$onActivityResult$6(JIIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$uli3HrGHNCkoAqrGjyJU9RFxkjA(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;JIIJ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->lambda$onCreate$1(JIIJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 53
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 55
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-wide/16 v0, 0x0

    .line 57
    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    const/4 v0, -0x1

    .line 58
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 60
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    .line 61
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v1, ""

    .line 62
    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->key:Ljava/lang/String;

    .line 63
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsAfw:Z

    .line 64
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    .line 65
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    .line 66
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 67
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIdentifyFace:Z

    .line 68
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsRelativeLink:Z

    .line 69
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    .line 70
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    .line 91
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromKnoxSetCases:Z

    const/16 v1, -0x2710

    .line 94
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    .line 98
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRequestedMinComplexity:I

    return-void
.end method

.method private closeSessionAndFinish()V
    .locals 6

    .line 1203
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

    .line 1204
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const-string v0, "closeSessionAndFinish : Keep the Face session!"

    .line 1205
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v0, :cond_1

    .line 1208
    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->semIsEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "closeSessionAndFinish : Close Face Session"

    .line 1209
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/face/FaceManager;->revokeChallenge(IIJ)V

    .line 1211
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v2, 0x0

    const-string v3, "hw_auth_token"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 1216
    :cond_1
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_2

    const-string p0, "closeSessionAndFinish : Keep the activity!"

    .line 1217
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v0, "closeSessionAndFinish : finish activity"

    .line 1219
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_1
    return-void
.end method

.method private fromFaceSettings(Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 1189
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "key_face_settings_entry"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1193
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "FaceSettings_unlock_switch"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v2, "FaceSettings_register"

    .line 1194
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "FaceSettings_register_alternative"

    .line 1195
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
    .locals 9

    .line 407
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 408
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 410
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "previousStage"

    .line 411
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 412
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v1, "is_knox"

    const/4 v2, 0x0

    .line 414
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromKnoxSetCases:Z

    .line 415
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

    .line 417
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const/16 v4, -0x2710

    const-string v5, "FcstFaceLockSettings"

    if-ne v1, v4, :cond_1

    const-string v0, "User ID is USER_NULL."

    .line 418
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const-string v1, "from_biometric_fragment"

    .line 423
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromFragment:Z

    const-string v1, "hw_auth_token"

    .line 424
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    iput-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-wide/16 v6, -0x1

    const-string v8, "challenge"

    .line 425
    invoke-virtual {v0, v8, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    const/4 v6, -0x1

    const-string v7, "sensor_id"

    .line 426
    invoke-virtual {v0, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    const-string v6, "fromSetupWizard"

    .line 427
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    .line 428
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v7, "setupwizard_face"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 429
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    :cond_2
    const-string v6, "identifyFace"

    .line 431
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIdentifyFace:Z

    const-string v6, "relative_link"

    .line 432
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsRelativeLink:Z

    .line 434
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPreviousStage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsRelativeLink : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsRelativeLink:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
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

    .line 438
    invoke-virtual {v0, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRequestedMinComplexity:I

    .line 440
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v6, ":settings:fragment_args_key"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 441
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->key:Ljava/lang/String;

    .line 443
    :cond_3
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 444
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz v6, :cond_4

    .line 445
    invoke-virtual {v6, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    .line 449
    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz v2, :cond_6

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v2, v6}, Landroid/hardware/face/FaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 450
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_5

    .line 452
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    .line 453
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mHasEnrolledFaces : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v6

    if-eqz v6, :cond_6

    if-le v2, v3, :cond_6

    .line 455
    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    .line 456
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

    .line 459
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    :cond_6
    :goto_1
    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "unification_profile_id"

    .line 466
    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const-string v1, "unification_profile_credential"

    .line 468
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    return-void
.end method

.method private synthetic lambda$onActivityResult$5(JIIJ)V
    .locals 6

    .line 808
    iput p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    .line 809
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    .line 810
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    move-wide v1, p1

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    .line 811
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 813
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const-string p1, "FcstFaceLockSettings"

    const-string p3, "CHOOSE_LOCK_GENERIC_REQUEST: token = NULL"

    .line 814
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget p3, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 816
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 815
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 819
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    .line 820
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 821
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p4, "previousStage"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 822
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 823
    iput p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 826
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 827
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 829
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p2, "key_face_settings_entry"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 830
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    .line 832
    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_5

    .line 833
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p3, "lock_screen_face"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_4

    .line 834
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_0

    .line 836
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p3, "setupwizard_face"

    .line 837
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 838
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 839
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 843
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_1

    :cond_6
    const/4 p1, 0x0

    .line 845
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(Z)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onActivityResult$6(JIIJ)V
    .locals 6

    .line 951
    iput p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    .line 952
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    .line 953
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    move-wide v1, p1

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    .line 954
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 956
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const-string p1, "FcstFaceLockSettings"

    const-string p3, "CONFIRM_REQUEST: token = NULL"

    .line 957
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget p3, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 959
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 958
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 962
    :cond_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-nez p1, :cond_1

    .line 963
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_0

    .line 964
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result p1

    const/4 p3, 0x0

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p4, "FaceSettings_register_alternative"

    .line 966
    invoke-virtual {p4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 967
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(Z)V

    goto :goto_0

    .line 969
    :cond_2
    invoke-direct {p0, p3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 970
    iput p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 972
    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(JIIJ)V
    .locals 7

    .line 206
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " GK PW : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "FcstFaceLockSettings"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iput p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    .line 208
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    .line 209
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    move-wide v2, p1

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    .line 210
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 212
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_0

    const-string p1, "KEY_LOCK_SCREEN_FACE: token = NULL"

    .line 213
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 215
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 214
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$1(JIIJ)V
    .locals 7

    .line 247
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " GK PW : "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "FcstFaceLockSettings"

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iput p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    .line 249
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    .line 250
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    move-wide v2, p1

    move-wide v5, p5

    invoke-static/range {v1 .. v6}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    .line 251
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p3, p1, p2}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;J)V

    .line 253
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_0

    const-string p1, "KEY_LOCK_SCREEN_FACE: token = NULL"

    .line 254
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 256
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 255
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$2(JIIJ)V
    .locals 6

    .line 287
    iput p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    .line 288
    iput-wide p5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    .line 289
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    move-wide v1, p1

    move-wide v4, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_0

    const-string p1, "FcstFaceLockSettings"

    const-string p2, "Face register external : token = NULL"

    .line 291
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget p2, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 293
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    .line 292
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 296
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    :goto_0
    return-void
.end method

.method private synthetic lambda$showFaceRetryDialog$7(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1239
    check-cast p1, Landroid/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const/4 p1, 0x1

    .line 1240
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(Z)V

    return-void
.end method

.method private synthetic lambda$showFaceRetryDialog$8(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "FcstFaceLockSettings"

    const-string v0, "showFaceRetryDialog dismissed! Finish the activity!"

    .line 1246
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v0, "FaceSettings_register"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v0, "FaceSettings_register_alternative"

    .line 1248
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v0, "FaceSettings_unlock_switch"

    .line 1249
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1250
    :cond_0
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    const/4 p1, 0x0

    .line 1253
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1254
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v0, "lock_screen_face"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1255
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    .line 1257
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method private static synthetic lambda$startFaceRegister$3(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "FcstFaceLockSettings"

    const-string p1, "showSensorErrorDialog"

    .line 632
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private synthetic lambda$startFaceRegister$4(Landroid/content/DialogInterface;)V
    .locals 0

    .line 634
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method private launchChooseLock()V
    .locals 7

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "launchChooseLock"

    .line 474
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 477
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->prevent_to_change_by_device_policy:I

    new-array v2, v2, [Ljava/lang/Object;

    sget v4, Lcom/android/settings/R$string;->sec_biometrics_chooselock_title:I

    .line 478
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 477
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 478
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 479
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 480
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    .line 484
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const-string v4, "request_gk_pw_handle"

    .line 485
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "for_face"

    .line 486
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "hide_insecure_options"

    .line 487
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 488
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v4, "fromSetupWizard"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 489
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 490
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    const/4 v4, 0x0

    .line 491
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/app/ActivityOptions;->semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    .line 493
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_1

    const-string v6, "android.intent.extra.USER_ID"

    .line 494
    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 497
    :cond_1
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    if-eq v4, v5, :cond_2

    .line 499
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 500
    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const-string v6, "unification_profile_id"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 502
    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    const-string v6, "unification_profile_credential"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, ":settings:show_fragment_args"

    .line 504
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 508
    :cond_2
    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz v4, :cond_3

    const-string v4, "This is Knox user, remove keep session flag"

    .line 509
    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x10

    .line 510
    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    goto :goto_0

    :cond_3
    const/16 v4, 0x11

    .line 512
    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :goto_0
    const/16 v4, 0x3ea

    .line 514
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v1, v4, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Activity Not Found !"

    .line 516
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v3, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 518
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 519
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private launchConfirmLock()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "launchConfirmLock"

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x11

    .line 385
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 387
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3eb

    .line 388
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 389
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 390
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 391
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v2

    .line 392
    invoke-virtual {v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 394
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    .line 395
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 398
    :cond_0
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Fail launchConfirmationActivity!"

    .line 399
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 401
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 402
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :cond_1
    return-void
.end method

.method private needFaceUsefulFeature()Z
    .locals 2

    .line 1180
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

    .line 1183
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

    .line 1095
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1099
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "face_register_external"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "setupwizard_face"

    const-string v3, "key_face_settings_entry"

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1100
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 1101
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 1102
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1135
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->needFaceUsefulFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1136
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceUsefulFeature()V

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 1140
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1141
    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1144
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    .line 1145
    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1146
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1147
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1148
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    goto :goto_2

    .line 1104
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1105
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {v0, v1, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 1108
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->needFaceUsefulFeature()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1109
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 1112
    :cond_5
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceUsefulFeature()V

    return-void

    .line 1117
    :cond_6
    :goto_1
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1118
    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1120
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1121
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    .line 1123
    :cond_8
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez v0, :cond_a

    .line 1124
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "lock_screen_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1125
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_2

    .line 1127
    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1128
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1129
    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1130
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 1151
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void
.end method

.method private sendLoggingForFaceRegistration(Z)V
    .locals 13

    .line 1264
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/16 v1, 0x20e0

    invoke-static {v0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    .line 1265
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v1, "setupwizard_face"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/16 v2, 0x20e0

    const/16 v3, 0x20e7

    const-wide/16 v5, 0x0

    const-string v4, "1"

    invoke-static/range {v1 .. v6}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    goto :goto_0

    .line 1268
    :cond_0
    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const/16 v8, 0x20e0

    const/16 v9, 0x20e7

    const-wide/16 v11, 0x0

    const-string v10, "2"

    invoke-static/range {v7 .. v12}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;IILjava/lang/String;J)V

    .line 1271
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

    .line 674
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 675
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

    .line 693
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    .line 687
    :cond_0
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_password_toast:I

    goto :goto_0

    .line 682
    :cond_1
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_pin_toast:I

    goto :goto_0

    .line 690
    :cond_2
    sget v0, Lcom/android/settings/R$string;->sec_fingerprint_backuplock_pattern_toast:I

    :goto_0
    if-eqz v0, :cond_3

    .line 698
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

    .line 1225
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1227
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1229
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 1231
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, -0x4

    if-ne p1, v1, :cond_1

    .line 1234
    sget p1, Lcom/android/settings/R$string;->sec_face_error_message_retry_too_dark:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/settings/R$string;->sec_face_error_message_retry:I

    .line 1235
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_face_error_title_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1236
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p1, -0x1

    .line 1237
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sec_face_error_message_button_retry:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda7;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, -0x2

    .line 1242
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->common_cancel:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 1245
    new-instance p1, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda8;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda8;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1260
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startBiometricsDisclaimer()V
    .locals 7

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startBiometricsDisclaimer"

    .line 315
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->sec_biometrics_common_dex_standalone_block_register_face:I

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 323
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    .line 327
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 328
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 329
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v5, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v4, 0x100

    const-string v5, "BIOMETRICS_LOCK_TYPE"

    .line 330
    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 331
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v5, "fromSetupWizard"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-string v5, "hw_auth_token"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 333
    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    const-string v6, "challenge"

    invoke-virtual {v1, v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 334
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    const-string v5, "sensor_id"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz v4, :cond_2

    .line 336
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 337
    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v5, "key_face_settings_entry"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez v4, :cond_3

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.settings.biometrics.BiometricsDisclaimerWithConfirmLock"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    const/16 v4, 0x11

    .line 342
    :try_start_0
    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v4, 0x3f0

    .line 343
    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 345
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v1, "startBiometricsDisclaimer : Activity Not Found !"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 349
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 350
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 352
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private startBiometricsRotationGuide()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startBiometricsRotationGuide"

    .line 357
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 359
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsRotationGuide"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 360
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/16 v3, 0x100

    .line 361
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 362
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v3, "fromSetupWizard"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 363
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.SuwBiometricsRotationGuide"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const/16 v2, 0x11

    .line 368
    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3f2

    .line 369
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 371
    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string v1, "startBiometricsRotationGuide : Activity Not Found !"

    .line 372
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 374
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 375
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 376
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 378
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method private startFaceRegister(Z)V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startFaceRegister"

    .line 594
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 595
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    return-void
.end method

.method private startFaceRegister(ZZ)V
    .locals 5

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startFaceRegister : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->sec_biometrics_common_dex_standalone_block_register_face:I

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 604
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 605
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    if-eqz p2, :cond_3

    .line 609
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 610
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    const-string v0, "window"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    .line 611
    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    .line 612
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rotation : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_2

    .line 615
    :cond_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eq p2, v3, :cond_3

    .line 616
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsRotationGuide()V

    return-void

    :cond_3
    const-string p2, "There is no enrolled face. Run startFaceRegister!!"

    .line 621
    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "always_finish_activities"

    invoke-static {p2, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eqz p2, :cond_5

    .line 624
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_error_message_always_finish_activities:I

    new-array v0, v3, [Ljava/lang/Object;

    sget v1, Lcom/android/settings/R$string;->immediately_destroy_activities:I

    .line 625
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    .line 624
    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 626
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x5

    goto :goto_0

    :cond_4
    const/4 p2, 0x4

    .line 628
    :goto_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget p2, Lcom/android/settings/R$string;->sec_fingerprint_attention:I

    .line 629
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 630
    invoke-virtual {p2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p2, 0x104000a

    new-instance v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda5;-><init>()V

    .line 631
    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 633
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 634
    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda6;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda6;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 635
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    goto :goto_1

    .line 636
    :cond_5
    invoke-static {p0}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isInMultiWindow(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 637
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_doesnt_support_multi_window_text:I

    .line 639
    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 640
    sget p1, Lcom/android/settings/R$string;->sec_biometrics_fullscreen_register_face:I

    .line 641
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 642
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 646
    :cond_6
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 647
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void

    .line 649
    :cond_7
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.samsung.android.biometrics.app.setting"

    const-string v4, "com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity"

    .line 650
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-string v4, "hw_auth_token"

    invoke-virtual {p2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v0, "face_enroll_retry"

    .line 653
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    .line 654
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 655
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v0, "android.intent.extra.USER_ID"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v0, "fromSetupWizard"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 657
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceWearGlasses(Landroid/content/Context;I)Z

    move-result p1

    const-string v0, "face_wear_glasses"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/16 p1, 0x11

    .line 660
    :try_start_0
    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 p1, 0x3ec

    .line 661
    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-string p1, "runRegister : Activity Not Found !"

    .line 663
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 665
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 667
    :cond_8
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_2
    return-void
.end method

.method private startFaceSettings(Landroid/content/Context;)V
    .locals 7

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startFaceSettings"

    .line 703
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "mIsBiometricsSettingsDestroy is set!"

    .line 706
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 708
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string p0, "startFragment : context is null"

    .line 715
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 717
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 718
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->key:Ljava/lang/String;

    const-string v4, ":settings:fragment_args_key"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-eqz v3, :cond_2

    const-string v4, "hw_auth_token"

    .line 721
    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 724
    :cond_2
    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsAfw:Z

    const-string v4, "isAfw"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 725
    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v4, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v3, 0x1

    .line 726
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 728
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    const-string v5, "need_fmm_popup"

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string v6, "lock_screen_face"

    .line 729
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    .line 730
    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 731
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    .line 733
    :cond_3
    invoke-virtual {v1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 736
    :goto_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsRelativeLink:Z

    const/high16 v4, 0x10000

    const-string v5, ":settings:show_fragment_args"

    if-eqz v2, :cond_4

    const-string p1, "from relative link"

    .line 737
    invoke-static {v0, p1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.android.settings"

    const-string v2, "com.android.settings.Settings$FaceSettingsActivity"

    .line 739
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "relative_link"

    .line 741
    invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 742
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 743
    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

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
    invoke-virtual {p1, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

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
    invoke-virtual {p0, v4}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 758
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_1
    return-void
.end method

.method private startFaceUsefulFeature()V
    .locals 4

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "Run startFaceUsefulFeature"

    .line 572
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 574
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

    .line 576
    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v3, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 577
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v3, "fromSetupWizard"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 578
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x11

    .line 581
    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3f1

    .line 582
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "startFaceUsefulFeature : Activity Not Found !"

    .line 584
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 585
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 588
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method private startFmmBackupPasswordPopup()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startFmmBackupPasswordPopup"

    .line 1155
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1157
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1161
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Exception occured!"

    .line 1163
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private startRedactionInterstitial()V
    .locals 3

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "startRedactionInterstitial"

    .line 1170
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1171
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string v2, "fromSetupWizard"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1174
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 766
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 767
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

    const-string v3, "FcstFaceLockSettings"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/4 v0, -0x1

    if-eqz p3, :cond_3

    const-string v4, "intent is not null! Copy the token to result_intent"

    .line 773
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x3ec

    if-eq p1, v4, :cond_1

    const-string v4, "hw_auth_token"

    .line 776
    invoke-virtual {p3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 779
    iput-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-wide/16 v5, -0x1

    const-string v7, "challenge"

    .line 780
    invoke-virtual {p3, v7, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    const-string v5, "sensor_id"

    .line 781
    invoke-virtual {p3, v5, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    .line 783
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    iget-object v8, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    invoke-virtual {v6, v4, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 784
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    iget-wide v8, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    invoke-virtual {v4, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 785
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 788
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: tokenFace="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

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

    .line 790
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "biometrics_settings_destroy"

    .line 791
    invoke-virtual {p3, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    .line 792
    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 793
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onActivityResult: mIsBiometricsSettingsDestroy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v4, 0xb

    const-string v5, "setupwizard_face"

    const-string v6, "lock_screen_face"

    const-wide/16 v7, 0x0

    const-string v9, "key_face_settings_entry"

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const-string p0, "default : Not consider this case"

    .line 1089
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 1005
    :pswitch_1
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->needFaceUsefulFeature()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1006
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceUsefulFeature()V

    return-void

    .line 1010
    :cond_4
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1011
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1013
    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1014
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    .line 1016
    :cond_6
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_8

    .line 1017
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1018
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_2

    .line 1020
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1021
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1022
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1023
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 1027
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_d

    :pswitch_2
    if-ne p2, v0, :cond_9

    .line 1069
    invoke-direct {p0, v2, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    goto/16 :goto_d

    .line 1071
    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1072
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_b

    .line 1073
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1074
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_3

    .line 1076
    :cond_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 1077
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    .line 1078
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 1082
    :cond_b
    :goto_3
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1083
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1085
    :cond_c
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_d

    .line 985
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 986
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 988
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 989
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    .line 991
    :cond_e
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_10

    .line 992
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 993
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_4

    .line 995
    :cond_f
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 996
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 997
    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 998
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 1002
    :cond_10
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_d

    :pswitch_4
    if-ne p2, v0, :cond_17

    .line 1031
    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const/16 p2, -0x2710

    if-eq p1, p2, :cond_11

    .line 1033
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_d

    .line 1036
    :cond_11
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_12

    .line 1037
    sget p1, Lcom/android/settings/R$anim;->sud_slide_next_in:I

    sget p2, Lcom/android/settings/R$anim;->sud_slide_next_out:I

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 1039
    :cond_12
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p1, :cond_13

    .line 1040
    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    .line 1042
    :cond_13
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromKnoxSetCases:Z

    if-nez p1, :cond_14

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz p1, :cond_14

    goto :goto_5

    .line 1046
    :cond_14
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_15

    .line 1047
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_d

    .line 1049
    :cond_15
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(Z)V

    goto/16 :goto_d

    .line 1044
    :cond_16
    :goto_5
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_d

    .line 1053
    :cond_17
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_18

    .line 1054
    sget p1, Lcom/android/settings/R$anim;->sud_slide_back_in:I

    sget p3, Lcom/android/settings/R$anim;->sud_slide_back_out:I

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_18
    if-ne p2, v4, :cond_19

    .line 1057
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6

    .line 1059
    :cond_19
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 1061
    :goto_6
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 1062
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 1064
    :cond_1a
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_d

    :pswitch_5
    if-eqz p3, :cond_1b

    const-string p1, "face_wear_glasses"

    .line 863
    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 864
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p3, p1, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceWearGlasses(Landroid/content/Context;ZI)V

    goto :goto_7

    :cond_1b
    move p1, v2

    .line 866
    :goto_7
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->sendLoggingForFaceRegistration(Z)V

    const/4 p1, -0x5

    if-ne p2, p1, :cond_1c

    const/16 p1, 0x10

    .line 869
    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 870
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_d

    :cond_1c
    const/4 p1, -0x2

    if-eq p2, p1, :cond_29

    const/4 p1, -0x4

    if-ne p2, p1, :cond_1d

    goto/16 :goto_a

    :cond_1d
    const/4 p1, -0x3

    if-ne p2, p1, :cond_1e

    .line 881
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 882
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_d

    .line 886
    :cond_1e
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result p1

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const-string p3, "FaceSettings_register_alternative"

    .line 887
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 888
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 889
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 890
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_d

    :cond_1f
    if-ne p2, v0, :cond_25

    .line 895
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceStayOnLockScreen()Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 896
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v0, :cond_20

    .line 898
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;ZI)V

    .line 901
    :cond_20
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 902
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v0, :cond_21

    .line 904
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v2, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceRecognizeMask(Landroid/content/Context;ZI)V

    .line 907
    :cond_21
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 908
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceOpenEyesDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v0, :cond_23

    .line 911
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    .line 912
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v2, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    goto :goto_8

    .line 914
    :cond_22
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;ZI)V

    .line 918
    :cond_23
    :goto_8
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceBrightenScreen()Z

    move-result p1

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    .line 919
    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v0, :cond_24

    .line 921
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, v1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;ZI)V

    .line 923
    :cond_24
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->processFaceRegistrationResult()V

    goto/16 :goto_d

    .line 925
    :cond_25
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 926
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 927
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_26

    .line 928
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 930
    :cond_26
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_28

    .line 931
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_27

    .line 932
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startRedactionInterstitial()V

    goto :goto_9

    .line 934
    :cond_27
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_28

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    .line 935
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_28

    .line 936
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFmmBackupPasswordPopup()V

    .line 940
    :cond_28
    :goto_9
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_d

    .line 876
    :cond_29
    :goto_a
    invoke-direct {p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->showFaceRetryDialog(I)V

    goto/16 :goto_d

    :pswitch_6
    if-ne p2, v0, :cond_2c

    if-eqz p3, :cond_2a

    .line 945
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    goto :goto_b

    :cond_2a
    move-wide p1, v7

    :goto_b
    cmp-long p3, p1, v7

    if-nez p3, :cond_2b

    const-string p1, "CONFIRM_REQUEST: GK_PW_Handle is 0."

    .line 947
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_d

    .line 950
    :cond_2b
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p3, v0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_d

    .line 978
    :cond_2c
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 979
    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 981
    :cond_2d
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_d

    :pswitch_7
    if-ne p2, v1, :cond_30

    .line 800
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->showCurrentLockTypeToast()V

    if-eqz p3, :cond_2e

    .line 802
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p1

    goto :goto_c

    :cond_2e
    move-wide p1, v7

    :goto_c
    cmp-long p3, p1, v7

    if-nez p3, :cond_2f

    const-string p1, "CHOOSE_LOCK_GENERIC_REQUEST: GK_PW_Handle is 0."

    .line 804
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_d

    .line 807
    :cond_2f
    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p3, v0, v1}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_d

    :cond_30
    const-string p1, "Set lockscreen failed!"

    .line 851
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p2, v4, :cond_31

    .line 853
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 854
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_d

    .line 856
    :cond_31
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 102
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onCreate"

    .line 103
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Landroid/content/Context;

    .line 107
    sget v1, Lcom/android/settings/R$string;->bio_face_recognition_title:I

    invoke-static {p0, v1, v0}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 109
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    .line 113
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->initFaceLockSettings()V

    .line 115
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez p1, :cond_1

    const-string p1, "mPreviousStage is null! Finish the activity!"

    .line 116
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    .line 121
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

    .line 307
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 271
    :pswitch_0
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz p1, :cond_b

    .line 272
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_a

    .line 273
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 275
    :cond_a
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setResult(I)V

    .line 277
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 280
    :cond_b
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_e

    .line 281
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

    .line 283
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_4

    .line 286
    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda4;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p1, v0, v3}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto/16 :goto_4

    .line 301
    :cond_e
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 123
    :pswitch_1
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz p1, :cond_10

    .line 124
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_f

    const-string p1, "startBiometricsDisclaimer() : mIsSecured is false"

    .line 125
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    :cond_f
    const-string p1, "Wrong case! Face and digital lock already exist!"

    .line 128
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 132
    :cond_10
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_11

    .line 133
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_4

    .line 135
    :cond_11
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 229
    :pswitch_2
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz v1, :cond_12

    .line 230
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 232
    :cond_12
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_14

    .line 233
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_13

    .line 234
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 236
    :cond_13
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 240
    :cond_14
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v1, :cond_17

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez v1, :cond_17

    .line 241
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

    .line 243
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_4

    .line 246
    :cond_16
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda3;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p1, v0, v3}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto/16 :goto_4

    .line 264
    :cond_17
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 185
    :pswitch_3
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const/16 v3, -0x2710

    if-eq v1, v3, :cond_18

    const-string p1, "startBiometricsDisclaimer() : enabling one lock case"

    .line 187
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 191
    :cond_18
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_1a

    .line 192
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_19

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 195
    :cond_19
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_4

    .line 199
    :cond_1a
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez v1, :cond_1d

    .line 200
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

    .line 202
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_4

    .line 205
    :cond_1c
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;J)V

    invoke-virtual {p1, v0, v3}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto/16 :goto_4

    .line 223
    :cond_1d
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_4

    .line 168
    :pswitch_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result p1

    if-eqz p1, :cond_20

    .line 169
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    if-eqz p1, :cond_1e

    const-string p0, "Wrong case! Alternative face already exist"

    .line 170
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 172
    :cond_1e
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_1f

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_1f

    .line 173
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_4

    .line 175
    :cond_1f
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(Z)V

    goto :goto_4

    :cond_20
    const-string p1, "onCreate : Wrong case"

    .line 179
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 181
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_4

    .line 141
    :pswitch_5
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_21

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz p1, :cond_21

    .line 142
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_4

    .line 144
    :cond_21
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_4

    .line 150
    :pswitch_6
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz p1, :cond_23

    .line 151
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez p1, :cond_22

    .line 152
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_4

    .line 154
    :cond_22
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_4

    .line 159
    :cond_23
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_24

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_24

    .line 160
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_4

    .line 162
    :cond_24
    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
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

    .line 544
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onPause"

    .line 531
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    .line 533
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 525
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "FcstFaceLockSettings"

    const-string v0, "onResume"

    .line 526
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "onStop"

    .line 538
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
