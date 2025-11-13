.class public Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public key:Ljava/lang/String;

.field public mChallenge:J

.field public mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

.field public mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field public mFromSetupwizard:Z

.field public mGkPwHandle:J

.field public mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

.field public mHasEnrolledAlternativeFaces:Z

.field public mHasEnrolledFaces:Z

.field public mIsBiometricsSettingsDestroy:Z

.field public mIsFromFragment:Z

.field public mIsFromKnoxSetCases:Z

.field public mIsFromTip:Z

.field public mIsLockTypeSet:Z

.field public mIsOneLock:Z

.field public mIsSecured:Z

.field public mKeepSessionAndActivity:I

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mOrientation:I

.field public mPreviousStage:Ljava/lang/String;

.field public mRetryDialog:Landroid/app/AlertDialog;

.field public mSensorId:I

.field public mSkipMandatoryBiometrics:Z

.field public mToken:[B

.field public mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mUnificationProfileId:I

.field public mUserId:I

.field public final result_intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsLockTypeSet:Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v2, ""

    iput-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->key:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromTip:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSkipMandatoryBiometrics:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromKnoxSetCases:Z

    const/16 v1, -0x2710

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    return-void
.end method


# virtual methods
.method public final closeSessionAndFinish()V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeSessionAndFinish : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const-string v2, "FcstFaceLockSettings"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    const-string v1, "key_face_settings_entry"

    if-eqz v0, :cond_0

    const-string v0, "closeSessionAndFinish : Keep the Face session!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    const-string v3, "face_register_external"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "closeSessionAndFinish : remove GatekeeperPasswordHandle"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->removeGatekeeperPasswordHandle(J)V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_4

    const-string v0, "closeSessionAndFinish : revokeChallenge"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_4
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_5

    const-string p0, "closeSessionAndFinish : Keep the activity!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string v0, "closeSessionAndFinish : finish activity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsLockTypeSet:Z

    if-nez v0, :cond_6

    const-string v0, "Skip - startRedactionInterstitial"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    const-string v0, "lock_screen_face"

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "startRedactionInterstitial"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p0, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "fromSetupWizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "setupwizard_face"

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "startFmmBackupPasswordPopup"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getFmmPopupIntent()Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "Exception occured!"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method public final fromFaceSettings(Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "key_face_settings_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "FaceSettings_unlock_switch"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FaceSettings_register"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "FaceSettings_register_alternative"

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

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

.method public final launchChooseLock()V
    .locals 7

    const-string v0, "FcstFaceLockSettings"

    const-string v1, "launchChooseLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const v1, 0x7f14211e

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v3, 0x7f141cdb

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-static {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getBiometricsChooseLockGenericIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "request_gk_pw_handle"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "for_face"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "hide_insecure_options"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "fromSetupWizard"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "face_register_external"

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v4

    const-string/jumbo v4, "set_biometric_lock"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/app/ActivityOptions;->semSetPopOverOptions([I[I[Landroid/graphics/Point;[I)Landroid/app/ActivityOptions;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_1

    const-string v6, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    if-eq v4, v5, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "unification_profile_id"

    iget v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "unification_profile_credential"

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    :try_start_0
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz v4, :cond_3

    const-string v4, "This is Knox user, remove keep session flag"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x10

    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    goto :goto_0

    :cond_3
    const/16 v4, 0x11

    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :goto_0
    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-virtual {p0, v1, v4, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v1, "Activity Not Found !"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method public final launchConfirmLock()V
    .locals 4

    const-string v0, "launchConfirmLock"

    const-string v1, "FcstFaceLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3eb

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getConfirmLockHeader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Fail launchConfirmationActivity!"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :cond_1
    return-void
.end method

.method public final needFaceUsefulFeature()Z
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "setupwizard_face"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "knox_lock_screen_face"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "face_register_external"

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    const-string/jumbo v0, "needFaceUsefulFeature : "

    const-string v1, "FcstFaceLockSettings"

    invoke-static {v0, v1, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    return p0
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v0, "onActivityResult : requestCode : "

    const-string v1, " resultCode : "

    const-string v2, " data is NULL : "

    invoke-static {v0, v1, p1, p2, v2}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    const-string v4, "FcstFaceLockSettings"

    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const-wide/16 v5, 0x0

    if-eqz p3, :cond_4

    const-string v0, "intent is not null! Copy the GkPwHandle to result_intent"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "gk_pw_handle"

    invoke-virtual {p3, v0, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v3, v0, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "biometrics_settings_destroy"

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v7, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onActivityResult: mIsBiometricsSettingsDestroy="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    invoke-static {v0, v3, v4}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    :cond_4
    const/4 v0, -0x1

    const v3, 0x7f0100dc

    const v7, 0x7f0100db

    const/16 v8, 0x3fc

    if-eq p1, v8, :cond_3d

    const/16 v9, 0x406

    if-eq p1, v9, :cond_39

    const-string v9, "FaceSettings_register_alternative"

    const-string v10, "key_face_settings_entry"

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p0, "default : Not consider this case"

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :pswitch_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->needFaceUsefulFeature()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceUsefulFeature()V

    return-void

    :cond_5
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_1
    if-ne p2, v0, :cond_7

    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    goto/16 :goto_f

    :cond_7
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_8

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_3
    if-ne p2, v0, :cond_10

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_2

    :cond_a
    invoke-virtual {p0, v7, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_2
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    if-eqz p1, :cond_b

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    :cond_b
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz p1, :cond_f

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    cmp-long p1, p1, v5

    if-nez p1, :cond_d

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_f

    :cond_d
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_e

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->requestToken(Z)V

    goto/16 :goto_f

    :cond_e
    const-string/jumbo p1, "startFaceRegister"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    goto/16 :goto_f

    :cond_f
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_f

    :cond_10
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_11

    const p1, 0x7f0100d9

    const p3, 0x7f0100da

    invoke-virtual {p0, p1, p3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_11
    const/16 p1, 0xb

    if-ne p2, p1, :cond_12

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_4

    :cond_12
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_4
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_13

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_13
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_4
    if-eqz p3, :cond_14

    const-string p1, "face_wear_glasses"

    invoke-virtual {p3, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    sget-boolean v8, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, p1, p3, v7}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_5

    :cond_14
    move p3, v2

    :goto_5
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const/16 v3, 0x20e0

    invoke-static {p1, v3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->insertSaLog(Landroid/content/Context;I)V

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromTip:Z

    const-string v7, "face_register_external"

    if-eqz p1, :cond_16

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_15

    const-string p1, "6"

    goto :goto_6

    :cond_15
    const-string p1, "5"

    goto :goto_6

    :cond_16
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_17

    const-string p1, "1"

    goto :goto_6

    :cond_17
    const-string p1, "lock_screen_face"

    iget-object v8, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const-string p1, "8"

    goto :goto_6

    :cond_18
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "2"

    goto :goto_6

    :cond_19
    const-string p1, "7"

    :goto_6
    const/16 v8, 0x20e7

    invoke-static {v3, v8, v5, v6, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const/4 v3, 0x2

    if-eqz p3, :cond_1a

    move p3, v1

    goto :goto_7

    :cond_1a
    move p3, v3

    :goto_7
    int-to-long v5, p3

    const/16 p3, 0x20ea

    invoke-static {p1, p3}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getSaLogIdByDisplayType(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x20eb

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const/4 v8, 0x0

    invoke-static {v5, v6, p1, p3, v8}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, -0x5

    if-ne p2, p1, :cond_1b

    const/16 p1, 0x10

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_f

    :cond_1b
    const/4 p1, -0x4

    const/4 p3, -0x2

    if-eq p2, p3, :cond_2d

    if-ne p2, p1, :cond_1c

    goto/16 :goto_b

    :cond_1c
    const/4 p1, -0x3

    if-ne p2, p1, :cond_1d

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :cond_1d
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1e

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :cond_1e
    if-ne p2, v0, :cond_2b

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceStayOnLockScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v0, :cond_1f

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceStayOnLockScreen(Landroid/content/Context;IZ)V

    :cond_1f
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceRecognizeWithMask(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_20

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceRecognizeMaskDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v0, :cond_20

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "face_recognize_mask"

    invoke-static {p1, p3, v2, p2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_20
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceOpenEyes()Z

    move-result p1

    if-eqz p1, :cond_22

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "face_open_eyes"

    invoke-static {p1, p3, v0, p2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v0, :cond_22

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/android/settings/Utils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2, v2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;IZ)V

    goto :goto_8

    :cond_21
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceOpenEyes(Landroid/content/Context;IZ)V

    :cond_22
    :goto_8
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->getFaceBrightenScreenDbValue(Landroid/content/Context;I)I

    move-result p1

    if-ne p1, v0, :cond_23

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceBrightenScreen(Landroid/content/Context;IZ)V

    :cond_23
    const-string/jumbo p1, "processFaceRegistrationResult"

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_24

    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-nez p1, :cond_24

    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result p1

    if-nez p1, :cond_24

    goto :goto_9

    :cond_24
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->needFaceUsefulFeature()Z

    move-result p1

    if-eqz p1, :cond_29

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceUsefulFeature()V

    goto/16 :goto_f

    :cond_25
    :goto_9
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1, p2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFaceDisabled(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_26

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    iget-object p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {p2, p1, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->setFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    :cond_26
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->needFaceUsefulFeature()Z

    move-result p1

    if-eqz p1, :cond_28

    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result p1

    if-eqz p1, :cond_27

    goto :goto_a

    :cond_27
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceUsefulFeature()V

    goto/16 :goto_f

    :cond_28
    :goto_a
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v10, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_29

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceSettings(Landroid/content/Context;)V

    :cond_29
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_2a

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_2a
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :cond_2b
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {p3, p1, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->removeFaceLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_2c

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_2c
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :cond_2d
    :goto_b
    const-string/jumbo v1, "showFaceRetryDialog"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2e

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    :cond_2e
    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const/4 v1, 0x5

    goto :goto_c

    :cond_2f
    const/4 v1, 0x4

    :goto_c
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-direct {v2, v4, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    if-ne p2, p1, :cond_30

    const p1, 0x7f14239c

    goto :goto_d

    :cond_30
    const p1, 0x7f14239b

    :goto_d
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v2, 0x7f14239f

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f142399

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    invoke-virtual {p1, v0, p2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f1409b6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2, v8}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const p2, 0x3e99999a    # 0.3f

    invoke-virtual {p1, p2}, Landroid/view/Window;->setDimAmount(F)V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/Window;->addFlags(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_f

    :pswitch_5
    if-ne p2, v0, :cond_35

    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    cmp-long p1, p1, v5

    if-nez p1, :cond_31

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez p1, :cond_31

    const-string p1, "CONFIRM_REQUEST: GK_PW_Handle is 0."

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto/16 :goto_f

    :cond_31
    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-nez p1, :cond_32

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_f

    :cond_32
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result p1

    if-eqz p1, :cond_33

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    if-nez p1, :cond_33

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_33

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->requestToken(Z)V

    goto/16 :goto_f

    :cond_33
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_34

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_34
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :cond_35
    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_36

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_36
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_f

    :pswitch_6
    if-ne p2, v1, :cond_38

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->requestToken(Z)V

    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsLockTypeSet:Z

    const/16 p1, 0x11

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz p1, :cond_37

    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_e

    :cond_37
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/samsung/android/settings/biometrics/BiometricsSetScreenLockActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_e
    const-string p2, "BIOMETRICS_LOCK_TYPE"

    const/16 p3, 0x100

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v2, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    invoke-virtual {p0, p1, v8}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_f

    :cond_38
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_f

    :cond_39
    if-ne p2, v0, :cond_3c

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {p1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isMandatoryBiometricsAccessible(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    cmp-long p1, p1, v5

    if-nez p1, :cond_3a

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_f

    :cond_3a
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_f

    :cond_3b
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_f

    :cond_3c
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_f

    :cond_3d
    if-ne p2, v0, :cond_3f

    invoke-virtual {p0, v7, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-wide p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    cmp-long p1, p1, v5

    if-nez p1, :cond_3e

    const-string p1, "CHOOSE_LOCK_GENERIC_REQUEST: GK_PW_Handle is 0."

    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_f

    :cond_3e
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_f

    :cond_3f
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_f
    return-void

    :pswitch_data_0
    .packed-switch 0x3ea
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mRetryDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mOrientation:I

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "face_register_external"

    const-string v2, "FaceSettings_unlock_switch"

    const-string v3, "FaceSettings_register"

    const-string v4, "FaceSettings_register_alternative"

    const/4 v5, -0x1

    const-string/jumbo v6, "setupwizard_face"

    const/4 v7, 0x6

    const/4 v8, 0x5

    const/4 v9, 0x1

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v10, "FcstFaceLockSettings"

    const-string/jumbo v11, "onCreate"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    new-instance v11, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

    invoke-direct {v11, v0}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v11}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v11

    const/4 v12, 0x3

    const/4 v13, 0x0

    if-ne v11, v12, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const v2, 0x7f14239f

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "Face recognition is not available."

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isAvailableMemorySizeToEnroll()Z

    move-result v11

    if-nez v11, :cond_1

    const v1, 0x7f14239e

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f14239a

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v9}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v14, "always_finish_activities"

    invoke-static {v11, v14, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_2

    const v1, 0x7f1423bf

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1411f9

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const v4, 0x7f142398

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v9}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget-object v11, v11, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v11}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v11

    if-eq v11, v8, :cond_23

    if-ne v11, v7, :cond_3

    goto/16 :goto_6

    :cond_3
    const v11, 0x7f140645

    invoke-static {v0, v11, v10}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_4
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isPopupWindowMode()Z

    move-result v11

    if-eqz v11, :cond_5

    const v1, 0x7f142393

    invoke-static {v0, v1, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_5
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    if-nez v11, :cond_6

    goto :goto_1

    :cond_6
    const-string/jumbo v14, "previousStage"

    invoke-virtual {v11, v14}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v14, :cond_7

    const-string v1, "mPreviousStage is null."

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    new-instance v14, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v15, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-direct {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v14}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v14

    iput-object v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const-string v14, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    invoke-virtual {v11, v14, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    iput v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const-string v14, "is_knox"

    invoke-virtual {v11, v14, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromKnoxSetCases:Z

    iget v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-static {v14}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v14

    if-eqz v14, :cond_8

    iget-object v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v15, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v14, v15}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v14

    if-nez v14, :cond_8

    move v14, v9

    goto :goto_0

    :cond_8
    move v14, v13

    :goto_0
    iput-boolean v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    iget v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    const/16 v15, -0x2710

    if-ne v14, v15, :cond_9

    const-string v1, "User ID is USER_NULL."

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_9
    const-string v14, "from_biometric_fragment"

    invoke-virtual {v11, v14, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromFragment:Z

    const-string v14, "fromSetupWizard"

    invoke-virtual {v11, v14, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    const-string/jumbo v14, "skip_mandatory_biometrics"

    invoke-virtual {v11, v14, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSkipMandatoryBiometrics:Z

    iget-object v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    iput-boolean v9, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    :cond_a
    const-string v14, "identifyFace"

    invoke-virtual {v11, v14, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string v14, "fromTip"

    invoke-virtual {v11, v14, v13}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    iput-boolean v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromTip:Z

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v7, "mPreviousStage : "

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v14, "mFromSetupwizard : "

    invoke-direct {v7, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, ":settings:fragment_args_key"

    invoke-virtual {v11, v7}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_b

    invoke-virtual {v11, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->key:Ljava/lang/String;

    :cond_b
    iget v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    iget-object v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-wide/16 v12, 0x0

    if-eqz v14, :cond_c

    invoke-virtual {v14, v7}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    new-instance v7, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-object v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v7, v14}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    const-string v7, "gk_pw_handle"

    invoke-virtual {v11, v7, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v8

    iput-wide v8, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    iget-object v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v14, v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_c
    const-string v7, "hw_auth_token"

    invoke-virtual {v11, v7}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    iput-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const-string v7, "challenge"

    invoke-virtual {v11, v7, v12, v13}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    const-string/jumbo v7, "sensor_id"

    invoke-virtual {v11, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    iget-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v7, :cond_e

    iget v8, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v7, v8}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getEnrolledFaces(I)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_e

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_d

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v14, "mHasEnrolledFaces : "

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v14, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v9

    if-eqz v9, :cond_e

    if-le v7, v8, :cond_e

    iput-boolean v8, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mHasEnrolledAlternativeFaces : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    invoke-static {v7, v8, v10}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v7, "faceList is null or size is 0"

    invoke-static {v10, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_2
    const-string/jumbo v7, "unification_profile_id"

    invoke-virtual {v11, v7, v15}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileId:I

    const-string/jumbo v7, "unification_profile_credential"

    invoke-virtual {v11, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v7}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_10

    iget-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_10

    iget-boolean v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSkipMandatoryBiometrics:Z

    if-nez v7, :cond_10

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v2, :cond_f

    const-string v1, "external register request, already face registered"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_3

    :cond_f
    const/16 v2, 0x11

    iput v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget-object v3, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v3, 0x100

    invoke-static {v2, v3, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getMandatoryBiometricIntentForBiometricsSetting(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x406

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3
    return-void

    :cond_10
    iget-object v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v8, "Start Screen lock type."

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    goto :goto_4

    :cond_11
    const/4 v5, 0x7

    goto :goto_4

    :sswitch_1
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    goto :goto_4

    :cond_12
    const/4 v5, 0x6

    goto :goto_4

    :sswitch_2
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_13
    const/4 v5, 0x5

    goto :goto_4

    :sswitch_3
    const-string v1, "knox_lock_screen_face"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4

    :cond_14
    const/4 v5, 0x4

    goto :goto_4

    :sswitch_4
    const-string v1, "lock_screen_face"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    const/4 v5, 0x3

    goto :goto_4

    :sswitch_5
    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_4

    :cond_16
    const/4 v5, 0x2

    goto :goto_4

    :sswitch_6
    const-string v1, "key_face_settings_entry"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_4

    :cond_17
    const/4 v5, 0x1

    goto :goto_4

    :sswitch_7
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_4

    :cond_18
    const/4 v5, 0x0

    :goto_4
    packed-switch v5, :pswitch_data_0

    const-string v1, "This is wrong previousStage case! Finish the Activity"

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :pswitch_0
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsOneLock:Z

    if-eqz v1, :cond_19

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchChooseLock()V

    goto/16 :goto_5

    :cond_19
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_1b

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-nez v1, :cond_1a

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_5

    :cond_1a
    const-string v1, "Wrong Case!"

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_5

    :cond_1b
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_5

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->isSupportBioFaceAlternativeFace()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledAlternativeFaces:Z

    if-eqz v1, :cond_1c

    const-string v1, "Wrong case! Alternative face already exist"

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_1c
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v1, :cond_1d

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    cmp-long v1, v1, v12

    if-nez v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_5

    :cond_1d
    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    goto :goto_5

    :cond_1e
    const/4 v2, 0x1

    const-string/jumbo v1, "onCreate : Wrong case"

    invoke-static {v10, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_5

    :pswitch_2
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v1, :cond_1f

    const v1, 0x7f150331

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_5

    :cond_1f
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchChooseLock()V

    goto :goto_5

    :pswitch_3
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mHasEnrolledFaces:Z

    if-eqz v1, :cond_20

    const-string v1, "Wrong case! Face and digital lock already exist!"

    invoke-static {v10, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    goto :goto_5

    :cond_20
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v1, :cond_22

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    cmp-long v1, v1, v12

    if-nez v1, :cond_21

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchConfirmLock()V

    goto :goto_5

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startBiometricsDisclaimer()V

    goto :goto_5

    :cond_22
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->launchChooseLock()V

    :goto_5
    return-void

    :cond_23
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isEnabledBiometricsMenuInDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_24

    const v1, 0x7f14214b

    :goto_7
    const/4 v2, 0x0

    goto :goto_8

    :cond_24
    const v1, 0x7f142127

    goto :goto_7

    :goto_8
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    nop

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
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public final onDestroy()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mOrientation:I

    return-void
.end method

.method public final onStop()V
    .locals 2

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final requestToken(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-nez v1, :cond_0

    new-instance v2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Z)V

    invoke-virtual {v0, v2}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll(Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;)J

    :cond_0
    return-void
.end method

.method public final startBiometricsDisclaimer()V
    .locals 8

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startBiometricsDisclaimer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()V

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const v1, 0x7f142125

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER_ID"

    iget v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "BIOMETRICS_LOCK_TYPE"

    const/16 v5, 0x100

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "fromSetupWizard"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "gk_pw_handle"

    iget-wide v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    iget-boolean v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    if-eqz v4, :cond_3

    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.android.settings.biometrics.BiometricsDisclaimerWithConfirmLock"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3
    :goto_0
    const/16 v4, 0x11

    :try_start_0
    iput v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v4, 0x3f0

    invoke-virtual {p0, v1, v4}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v1, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method

.method public final startFaceRegister(ZZ)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "startFaceRegister : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FcstFaceLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/Utils;->isDesktopStandaloneMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()V

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const p2, 0x7f142125

    invoke-static {p1, p2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    const/16 v0, 0x11

    const-string v4, "fromSetupWizard"

    const-string v5, "android.intent.extra.USER_ID"

    if-eqz p2, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const-string/jumbo v6, "window"

    invoke-virtual {p2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Display;->getRotation()I

    move-result p2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "rotation : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()V

    if-nez p2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLandscapeDefaultModel()V

    goto :goto_1

    :cond_1
    const-string/jumbo p1, "startBiometricsRotationGuide"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v6, "com.samsung.android.settings.biometrics.BiometricsRotationGuide"

    invoke-virtual {p1, p2, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {p1, v5, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p2, "BIOMETRICS_LOCK_TYPE"

    const/16 v5, 0x100

    invoke-virtual {p1, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string v4, "com.samsung.android.settings.biometrics.SuwBiometricsRotationGuide"

    invoke-virtual {p1, p2, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    :try_start_0
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 p2, 0x3f2

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo p1, "startBiometricsRotationGuide : Activity Not Found !"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_3

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string p2, "There is no enrolled face. Run startFaceRegister!!"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.samsung.android.biometrics.app.setting"

    const-string v7, "com.samsung.android.biometrics.app.setting.face.FaceEnrollActivity"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "gk_pw_handle"

    iget-wide v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v6, "hw_auth_token"

    iget-object v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v6, "challenge"

    iget-wide v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    invoke-virtual {p2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v6, "sensor_id"

    iget v7, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "face_enroll_retry"

    invoke-virtual {p2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x20000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-boolean p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {p2, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget v4, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    sget-boolean v5, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->IS_SUPPORT_FACE_DAEMON_DETECT_OPEN_EYES:Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v5, "face_wear_glasses"

    invoke-static {p1, v5, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-ne p1, v2, :cond_5

    move p1, v2

    goto :goto_2

    :cond_5
    move p1, v3

    :goto_2
    invoke-virtual {p2, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_1
    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 p1, 0x3ec

    invoke-virtual {p0, p2, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    const-string/jumbo p1, "runRegister : Activity Not Found !"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_3
    return-void
.end method

.method public final startFaceSettings(Landroid/content/Context;)V
    .locals 6

    const-string v0, "FcstFaceLockSettings"

    const-string/jumbo v1, "startFaceSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsBiometricsSettingsDestroy:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string p1, "mIsBiometricsSettingsDestroy is set!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const-string/jumbo p0, "startFragment : context is null"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, ":settings:fragment_args_key"

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "gk_pw_handle"

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "isAfw"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    if-eqz v1, :cond_2

    const-string v3, "hw_auth_token"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v1, "challenge"

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string/jumbo v1, "sensor_id"

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/4 v3, 0x1

    or-int/2addr v1, v3

    iput v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsSecured:Z

    const-string/jumbo v4, "need_fmm_popup"

    if-nez v1, :cond_3

    const-string v1, "lock_screen_face"

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getMandatoryBiometricsDelayTimeState(Landroid/content/Context;)Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;->GRACE_PERIOD:Lcom/samsung/android/settings/theftprotection/timer/ProtectionTimerService$TimeDelayState;

    if-ne v1, v2, :cond_4

    const-string/jumbo v1, "skip_mandatory_biometrics"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_4
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mIsFromFragment:Z

    if-eqz v1, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, ":settings:show_fragment_args"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p1, Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 p1, 0x2347

    iput p1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitleResId:I

    iput-object v4, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitleResPackageName:Ljava/lang/String;

    const-string v5, "Face recognition"

    iput-object v5, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mTitle:Ljava/lang/CharSequence;

    const/high16 p1, 0x10000

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->addFlags(I)V

    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :goto_1
    return-void
.end method

.method public final startFaceUsefulFeature()V
    .locals 5

    const-string v0, "Run startFaceUsefulFeature"

    const-string v1, "FcstFaceLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    if-eqz v3, :cond_0

    const-string v3, "com.samsung.android.settings.biometrics.face.SuwFaceUsefulFeature"

    goto :goto_0

    :cond_0
    const-string v3, "com.samsung.android.settings.biometrics.face.FaceUsefulFeature"

    :goto_0
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromSetupWizard"

    iget-boolean v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "gk_pw_handle"

    iget-wide v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string/jumbo v2, "previousStage"

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/16 v2, 0x11

    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3f1

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string/jumbo v0, "startFaceUsefulFeature : Activity Not Found !"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->fromFaceSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method
