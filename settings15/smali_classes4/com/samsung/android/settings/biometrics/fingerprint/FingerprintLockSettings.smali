.class public Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;
.super Landroid/app/Activity;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public key:Ljava/lang/String;

.field public mChallenge:J

.field public mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

.field public mDisplayKnoxName:Ljava/lang/String;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mFromSetupwizard:Z

.field public mGkPwHandle:J

.field public mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

.field public mHasEnrolledFingerprint:Z

.field public mIntent:Landroid/content/Intent;

.field public mIsAfw:Z

.field public mIsBiometricsSettingsDestroy:Z

.field public mIsFromBiometricsMenu:Z

.field public mIsFromFragment:Z

.field public mIsFromKnoxFingerprintPlus:Z

.field public mIsFromKnoxSetCases:Z

.field public mIsFromKnoxSetupWizard:Z

.field public mIsFromKnoxTwoStep:Z

.field public mIsFromTip:Z

.field public mIsLockTypeSet:Z

.field public mIsOneLock:Z

.field public mIsRunRegister:Z

.field public mIsSecured:Z

.field public mKeepSessionAndActivity:I

.field public mKnoxIdentifyOnlyFingerprint:Z

.field public mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public mMaxEnrolledFingerprint:Z

.field public mOnlyIdentifyFingerprint:Z

.field public mPreviousStage:Ljava/lang/String;

.field public mSelectedFingerIndex:I

.field public mSkipMandatoryBiometrics:Z

.field public mToken:[B

.field public mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

.field public mUnificationProfileId:I

.field public mUserId:I

.field public final result_intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsLockTypeSet:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->key:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRunRegister:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsBiometricsSettingsDestroy:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromTip:Z

    iput-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSkipMandatoryBiometrics:Z

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const/16 v0, -0x2710

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    iput-wide v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    return-void
.end method


# virtual methods
.method public final closeSessionAndFinish()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "closeSessionAndFinish : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const-string v2, "FpstFingerprintLockSettings"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x1

    const-string v1, "fingerprint_entry"

    if-eqz v0, :cond_0

    const-string v0, "closeSessionAndFinish : Keep the Fingerprint session!"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    const-string v3, "fingerprint_register_external"

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "closeSessionAndFinish : remove GatekeeperPasswordHandle"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->removeGatekeeperPasswordHandle(J)V

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_4

    const-string v0, "closeSessionAndFinish : revokeChallenge"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/hardware/fingerprint/FingerprintManager;->revokeChallenge(IJ)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "fingerprint_guide_shown"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_5
    :goto_0
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_6

    const-string p0, "closeSessionAndFinish : Keep the activity!"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_6
    const-string v0, "closeSessionAndFinish : finish activity"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsLockTypeSet:Z

    if-nez v0, :cond_7

    const-string v0, "Skip - startRedactionInterstitial"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v0, "lock_screen_fingerprint"

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string/jumbo v0, "startRedactionInterstitial"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "fromSetupWizard"

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "google_setupwizard_fingerprint"

    iget-object v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

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

    :cond_9
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_2
    return-void
.end method

.method public final fromFingerprintSettings(Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string p1, "fingerprint_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v1, "FingerprintSettings_register"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "fingerprint_settings_set_screen_lock"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "support_web_signin"

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "support_samsung_account"

    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

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

    const-string v0, "FpstFingerprintLockSettings"

    const-string v1, "launchChooseLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/lockscreen/LockUtils;->isLockMenuDisabledByEdm(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

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

    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-static {p0, v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getBiometricsChooseLockGenericIntent(Landroid/content/Context;Z)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v3, "request_gk_pw_handle"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "for_fingerprint"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "hide_insecure_options"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "fromSetupWizard"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v1, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "fingerprint_register_external"

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

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

    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    const/16 v5, -0x2710

    if-eq v4, v5, :cond_1

    const-string v6, "android.intent.extra.USER_ID"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    iget v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    if-eq v4, v5, :cond_2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v5, "unification_profile_id"

    iget v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "unification_profile_credential"

    iget-object v6, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v5, ":settings:show_fragment_args"

    invoke-virtual {v1, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_2
    const/16 v4, 0x11

    :try_start_0
    iput v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v3}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    const/16 v4, 0x3ea

    invoke-virtual {p0, v1, v4, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "Activity Not Found !"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_0
    return-void
.end method

.method public final launchConfirmLock()V
    .locals 4

    const-string v0, "launchConfirmLock"

    const-string v1, "FpstFingerprintLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v2, 0x3ec

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {p0, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getConfirmLockHeader(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mHeader:Ljava/lang/CharSequence;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Fail launchConfirmationActivity!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iput v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_1
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-super/range {p0 .. p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v4, "onActivityResult : requestCode : "

    const-string v5, " resultCode : "

    const-string v6, " data is NULL : "

    invoke-static {v4, v5, v1, v2, v6}, Landroidx/compose/foundation/layout/RowColumnMeasurePolicyKt$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v3, :cond_0

    move v7, v5

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    const-string v8, "FpstFingerprintLockSettings"

    invoke-static {v4, v7, v8}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iput v6, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iput-boolean v6, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRunRegister:Z

    const-string v4, "biometrics_settings_destroy"

    const-string v7, "gk_pw_handle"

    const-wide/16 v9, 0x0

    if-eqz v3, :cond_3

    const-string v11, "intent is not null! Copy the GkPwHandle to result_intent"

    invoke-static {v8, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static/range {p3 .. p3}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v3, v7, v9, v10}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v11

    iput-wide v11, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    iget-object v13, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v13, v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v11

    iput-boolean v11, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsBiometricsSettingsDestroy:Z

    iget-object v12, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v12, v4, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "onActivityResult: BiometricsSettings should be destroyed ="

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v12, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsBiometricsSettingsDestroy:Z

    invoke-static {v11, v12, v8}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v11, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v11, :cond_3

    iget-boolean v11, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    if-eqz v11, :cond_3

    iget v11, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v11}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v11

    if-eqz v11, :cond_2

    iget-object v11, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v12, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v11, v12}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v11

    if-nez v11, :cond_2

    move v11, v5

    goto :goto_1

    :cond_2
    move v11, v6

    :goto_1
    iput-boolean v11, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    :cond_3
    const/16 v11, 0x384

    if-eq v1, v11, :cond_46

    const/4 v11, -0x1

    const-string v12, "knox_fingerprint_entry"

    const v14, 0x7f0100db

    const/16 v15, 0x3fc

    if-eq v1, v15, :cond_41

    const/16 v9, 0x406

    if-eq v1, v9, :cond_3d

    const/16 v9, 0x3ec

    const-string v10, "OneLock case : Launch chooseLockGeneric"

    if-eq v1, v9, :cond_37

    const/16 v9, 0x3ed

    const-string v13, "fingerprint_entry"

    if-eq v1, v9, :cond_30

    const/16 v9, 0x11

    const-string v10, "Fingerprint Registration failed!"

    const-string v14, "fingerIndex"

    const-string/jumbo v15, "previousStage"

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_12

    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_12

    :pswitch_1
    if-ne v2, v11, :cond_f

    if-eqz v3, :cond_4

    invoke-virtual {v3, v15}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "previousStage : "

    invoke-static {v2, v1, v8}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mIsFromKnoxSetCases : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mKnoxIdentifyOnlyFingerprint : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFromKnoxTwoStep : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsFromKnoxSetupWizard : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-static {v1, v2, v8}, Landroidx/appcompat/widget/ActionBarContextView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v1, :cond_9

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-nez v1, :cond_9

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v1, :cond_5

    goto/16 :goto_12

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v1, v2}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v3, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :cond_7
    :goto_2
    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_8

    iput v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_9
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v1, :cond_d

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v1, :cond_a

    goto :goto_3

    :cond_a
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    :cond_b
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    :cond_c
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    invoke-virtual {v1, v14, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_5

    :cond_d
    :goto_3
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_4

    :cond_e
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_5

    :cond_f
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_10

    iput v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_10
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_12

    :pswitch_2
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6

    :cond_11
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_6
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_12

    :pswitch_3
    if-ne v2, v5, :cond_13

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->requestToken(Z)V

    iput-boolean v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsLockTypeSet:Z

    iput v9, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz v1, :cond_12

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/settings/biometrics/SuwBiometricsSetScreenLockActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_7

    :cond_12
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/samsung/android/settings/biometrics/BiometricsSetScreenLockActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_7
    const-string v2, "BIOMETRICS_LOCK_TYPE"

    invoke-virtual {v1, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    const/16 v2, 0x3fc

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_12

    :cond_13
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_12

    :pswitch_4
    const-string v1, "google_setupwizard_fingerprint"

    if-ne v2, v11, :cond_2c

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    sget-boolean v4, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "fingerprint_on_screen_tips"

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string/jumbo v2, "setFingerprintOnScreenTip: true"

    const-string v3, "FpstFingerprintSettingsUtils"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOn()V

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v10, "fingerprint_always_on"

    invoke-static {v2, v10, v11, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const-string v4, "getFingerprintAlwaysOnDbValue : "

    invoke-static {v2, v4, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne v2, v11, :cond_14

    const-string/jumbo v2, "onActivityResult :  alwaysOn value not set"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v2, v3, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintAlwaysOnValue(Landroid/content/Context;IZ)V

    :cond_14
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintAlwaysOnType()V

    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFingerprintScreenOffIconAod()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getFingerprintScreenOffIconAodDbValue(Landroid/content/Context;I)I

    move-result v2

    if-ne v2, v11, :cond_15

    const-string/jumbo v2, "onActivityResult :  screenOff icon for aod value not set"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    const/4 v3, 0x2

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v2, v3, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintScreenOffIconAodValue(Landroid/content/Context;II)V

    :cond_15
    invoke-static {}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->isSupportFasterRecognition()V

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iget-object v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v15, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-eqz v2, :cond_19

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-nez v2, :cond_19

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_17

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v1, :cond_16

    goto/16 :goto_12

    :cond_16
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_8

    :cond_17
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_8
    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_18

    iput v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_e

    :cond_19
    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-nez v2, :cond_2a

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-eqz v2, :cond_1a

    goto/16 :goto_c

    :cond_1a
    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    if-eqz v2, :cond_1c

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_e

    :cond_1b
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto/16 :goto_e

    :cond_1c
    const-string/jumbo v2, "processFingerprintRegistrationResult"

    invoke-static {v8, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    iget v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    invoke-virtual {v2, v14, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v2, v3}, Lcom/samsung/android/settings/security/SecurityUtils;->isFingerprintDisabled(Landroid/content/Context;I)Z

    move-result v2

    const-string v3, "fingerprint_register_external"

    if-nez v2, :cond_1d

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    iget-object v10, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {v4, v2, v10}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    :cond_1d
    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    const-string v4, "lock_screen_fingerprint"

    if-nez v2, :cond_1f

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :cond_1e
    move v1, v5

    goto :goto_9

    :cond_1f
    move v1, v6

    :goto_9
    const-string/jumbo v2, "needFingerprintUsefulFeature : "

    invoke-static {v2, v8, v1}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v2, "android.intent.extra.USER_ID"

    if-eqz v1, :cond_22

    iget v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-nez v1, :cond_22

    const-string v1, "Run startFingerprintUsefulFeature"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz v4, :cond_20

    const-string v4, "com.samsung.android.settings.biometrics.fingerprint.SuwFingerprintUsefulFeature"

    goto :goto_a

    :cond_20
    const-string v4, "com.samsung.android.settings.biometrics.fingerprint.FingerprintUsefulFeature"

    :goto_a
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "fromSetupWizard"

    iget-boolean v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-wide v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    invoke-virtual {v1, v7, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v15, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iput v9, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3f1

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    :catch_0
    const-string/jumbo v1, "startFingerprintUsefulFeature : Activity Not Found !"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_21

    iput v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_22
    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_23

    iput v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_23
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    const-string/jumbo v3, "startFingerprintSettings"

    invoke-static {v8, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsBiometricsSettingsDestroy:Z

    if-eqz v3, :cond_24

    const-string v1, "mIsBiometricsSettingsDestroy is set!"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v6, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_e

    :cond_24
    iget-object v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->semIsTemplateDbCorrupted()Z

    move-result v3

    if-eqz v3, :cond_25

    const-string/jumbo v1, "onCreate DB Corrupt"

    invoke-static {v8, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    new-instance v3, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;

    invoke-direct {v3, v0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$1;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/hardware/fingerprint/FingerprintManager;->removeAll(ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    goto/16 :goto_e

    :cond_25
    if-nez v1, :cond_26

    const-string/jumbo v1, "startFragment : context is null"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    :cond_26
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v8, ":settings:fragment_args_key"

    iget-object v9, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->key:Ljava/lang/String;

    invoke-virtual {v3, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-wide v8, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    invoke-virtual {v3, v7, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v7, "isAfw"

    iget-boolean v8, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    invoke-virtual {v3, v7, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget v7, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v3, v2, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    xor-int/2addr v2, v5

    const-string v7, "fingerprint_registered_from_fingerprint"

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-eqz v2, :cond_27

    const-string v7, "hw_auth_token"

    invoke-virtual {v3, v7, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v2, "challenge"

    iget-wide v7, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    invoke-virtual {v3, v2, v7, v8}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_27
    iput v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    const-string/jumbo v7, "need_fmm_popup"

    if-nez v2, :cond_28

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->needFmmBackupPasswordPopup(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v3, v7, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_b

    :cond_28
    invoke-virtual {v3, v7, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_b
    iget-boolean v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromFragment:Z

    if-eqz v2, :cond_29

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_e

    :cond_29
    new-instance v2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v2, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, v2, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object v1, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    iput-object v3, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    const/16 v1, 0x2347

    iput v1, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    const/4 v1, 0x0

    const v3, 0x7f140646

    invoke-virtual {v2, v3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(ILjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_e

    :cond_2a
    :goto_c
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_d

    :cond_2b
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_d
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    goto :goto_e

    :cond_2c
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2d

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_12

    :cond_2d
    if-ne v2, v5, :cond_2e

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const-string v1, "Register fingerprint is closed. Restart runRegister!"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_12

    :cond_2e
    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_2f

    iput v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_2f
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_12

    :cond_30
    if-ne v2, v11, :cond_33

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0, v6, v6}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_f

    :cond_31
    const v1, 0x7f0100dc

    invoke-virtual {v0, v14, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_f
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    if-eqz v1, :cond_32

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_12

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_12

    :cond_33
    const-string/jumbo v1, "onActivityResult: Finish the activity!"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz v1, :cond_34

    const v1, 0x7f0100d9

    const v3, 0x7f0100da

    invoke-virtual {v0, v1, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_34
    const/16 v1, 0xb

    if-ne v2, v1, :cond_35

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    goto :goto_10

    :cond_35
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    :goto_10
    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_36

    iput v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_36
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_12

    :cond_37
    if-ne v2, v11, :cond_3b

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v1, :cond_3b

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_38

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v1, :cond_38

    const-string v1, "CONFIRM_REQUEST : GK_PW_Handle is 0."

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_12

    :cond_38
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v1, :cond_39

    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->requestToken(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_12

    :cond_39
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v1, :cond_3a

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    if-eqz v1, :cond_3a

    invoke-static {v8, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_12

    :cond_3a
    invoke-virtual {v0, v5}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->requestToken(Z)V

    goto/16 :goto_12

    :cond_3b
    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_3c

    iput v5, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_3c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_12

    :cond_3d
    if-ne v2, v11, :cond_40

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isMandatoryBiometricsAccessible(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3f

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_3e

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_12

    :cond_3e
    invoke-virtual {v0, v6}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->requestToken(Z)V

    goto/16 :goto_12

    :cond_3f
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_12

    :cond_40
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_12

    :cond_41
    if-ne v2, v11, :cond_45

    const v1, 0x7f0100dc

    invoke-virtual {v0, v14, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_42

    const-string v1, "CHOOSE_LOCK_GENERIC_REQUEST : GK_PW_Handle is 0."

    invoke-static {v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto :goto_12

    :cond_42
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v12, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "Fingerprint already registered for KNOX!"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v3, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v11, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_12

    :cond_43
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    return-void

    :cond_44
    const-string v1, "There is no fingerprint. Start fingerprint registration."

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto :goto_12

    :cond_45
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_12

    :cond_46
    if-ne v2, v5, :cond_48

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string/jumbo v0, "recognizeFingerprint"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_47
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    :goto_11
    const-string v0, "KNOXNOTICE_REQUEST_CODE got RESULT_FINISHED"

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_48
    const-string v1, "KNOXNOTICE_REQUEST_CODE got RESULT_FAILED"

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    invoke-virtual {v0, v6, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_12
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ef
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onConfigurationChanged : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const-string v2, "FpstFingerprintLockSettings"

    invoke-static {v0, v1, v2}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "fingerprint_register_external"

    const-string v3, "FingerprintSettings_register"

    const/4 v6, 0x3

    const/4 v7, 0x1

    const-string v8, "google_setupwizard_fingerprint"

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v11, "FpstFingerprintLockSettings"

    const-string/jumbo v12, "onCreate"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    if-eqz v1, :cond_0

    const-string/jumbo v12, "waitingForRegistration"

    invoke-virtual {v1, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRunRegister:Z

    :cond_0
    const-string v1, "initFingerprintLockSettings"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v12, "previousStage"

    invoke-virtual {v1, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string v1, "mPreviousStage is null."

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v12, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-direct {v1, v12}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v1, :cond_3

    const-string v1, "FingerprintManager is null"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->showSensorErrorDialog()V

    goto :goto_0

    :cond_3
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v12, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v13

    invoke-virtual {v1, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    const/16 v12, -0x2710

    if-ne v1, v12, :cond_4

    const-string v1, "User ID is USER_NULL."

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->showSensorErrorDialog()V

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_4
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v13, "from_biometric_fragment"

    invoke-virtual {v1, v13, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromFragment:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v13, "onlyIdentify"

    invoke-virtual {v1, v13, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v13, "isAfw"

    invoke-virtual {v1, v13, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v13, "fingerIndex"

    invoke-virtual {v1, v13, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v13, ":settings:fragment_args_key"

    invoke-virtual {v1, v13}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    invoke-virtual {v1, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->key:Ljava/lang/String;

    :cond_5
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v13, "hw_auth_token"

    invoke-virtual {v1, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v13, "challenge"

    const-wide/16 v14, 0x0

    invoke-virtual {v1, v13, v14, v15}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "mKnoxIdentifyOnly"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKnoxIdentifyOnlyFingerprint:Z

    new-instance v1, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-object v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v4}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;-><init>(Lcom/android/internal/widget/LockPatternUtils;)V

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string v13, "gk_pw_handle"

    invoke-virtual {v1, v13, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "fromSetupWizard"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iput-boolean v7, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    :cond_6
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "fromTip"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromTip:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "fromBiometricsMenu"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromBiometricsMenu:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v1, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I

    move-result v1

    iget-object v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result v4

    if-ne v1, v4, :cond_7

    move v1, v7

    goto :goto_1

    :cond_7
    move v1, v10

    :goto_1
    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "skip_mandatory_biometrics"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSkipMandatoryBiometrics:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "isFromKnoxFingerprintPlus"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "is_knox"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "is_knox_two_step"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "isFromKnoxSetupWizard"

    invoke-virtual {v1, v4, v10}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    iget v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_8

    move v1, v7

    goto :goto_2

    :cond_8
    move v1, v10

    :goto_2
    iput-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v4, "displayKnoxName"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[KNOX FINGERPRINT] : init, mIsFromKnoxSetupWizard:"

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mDisplayKnoxName:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mDisplayKnoxName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", mIsFromKnoxSetCases:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mIsFromKnoxTwoStep:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    const-string v5, "mUserId : "

    invoke-static {v1, v4, v11, v5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[previousStage] = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "[isSecured] = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    const-string v5, "[fromSetupwizard] = "

    invoke-static {v1, v4, v11, v5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    const-string v5, "[hasEnrolledFingerprint] = "

    invoke-static {v1, v4, v11, v5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    const-string v5, "[maxEnrolledFingerprint] = "

    invoke-static {v1, v4, v11, v5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    const-string v5, "[mSelectedFingerIndex]"

    invoke-static {v1, v4, v11, v5}, Lcom/android/settings/MainClearConfirm$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    invoke-static {v1, v4, v11}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "unification_profile_id"

    invoke-virtual {v1, v4, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string/jumbo v4, "unification_profile_credential"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/widget/LockscreenCredential;

    iput-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileCredential:Lcom/android/internal/widget/LockscreenCredential;

    iget v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSelectedFingerIndex:I

    if-nez v1, :cond_a

    invoke-virtual {v0, v10}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v1

    if-eqz v1, :cond_9

    iput v7, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_a
    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;

    iget-object v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-direct {v1, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;->getAvailabilityStatus()I

    move-result v1

    if-ne v1, v6, :cond_b

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    const v2, 0x7f142408

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    const-string v1, "Fingerprints is not available."

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "always_finish_activities"

    invoke-static {v1, v4, v10}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1411f9

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f1423d4

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1423bf

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1, v7}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_c
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    const/4 v4, 0x5

    if-eq v1, v4, :cond_3f

    const/4 v5, 0x6

    if-ne v1, v5, :cond_d

    goto/16 :goto_b

    :cond_d
    invoke-static {}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isPopupWindowMode()Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x7f1423c0

    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_e
    const v1, 0x7f140646

    invoke-static {v0, v1, v11}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    return-void

    :cond_f
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-static {v1}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isMandatoryBiometricEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mSkipMandatoryBiometrics:Z

    if-nez v1, :cond_12

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    iget v4, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_10

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    invoke-static {v1, v4}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getEnrolledFingerNumber(Landroid/hardware/fingerprint/FingerprintManager;I)I

    move-result v3

    invoke-static {v1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->getMaxFingerEnroll(Landroid/hardware/fingerprint/FingerprintManager;)I

    move-result v1

    if-ne v3, v1, :cond_11

    const-string v1, "external register request, already fingerprint fully registered"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_3

    :cond_11
    const/16 v1, 0x11

    iput v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget-object v3, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v1, v7, v2}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->getMandatoryBiometricIntentForBiometricsSetting(Landroid/content/Context;IZ)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x406

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_3
    return-void

    :cond_12
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v13, "recognizeFingerprint"

    const-string v4, "[KNOX FINGERPRINT] : START recognizeFingerprint() in FingerExist"

    const-string v5, "There is no fingerprint. Register fingerprint!"

    const-string v6, "This is wrong case!"

    const-string/jumbo v9, "startBiometricsDisclaimer() :mIsSecured is false"

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v17

    sparse-switch v17, :sswitch_data_0

    :goto_4
    const/16 v16, -0x1

    goto/16 :goto_6

    :sswitch_0
    const-string v2, "fingerprint_settings_set_screen_lock"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    goto :goto_4

    :cond_13
    const/16 v1, 0x9

    goto :goto_5

    :sswitch_1
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    goto :goto_4

    :cond_14
    const/16 v1, 0x8

    goto :goto_5

    :sswitch_2
    const-string/jumbo v2, "support_web_signin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_4

    :cond_15
    const/4 v1, 0x7

    goto :goto_5

    :sswitch_3
    const-string v2, "lock_screen_fingerprint"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_4

    :cond_16
    const/16 v16, 0x6

    goto :goto_6

    :sswitch_4
    const-string v2, "knox_fingerprint_entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_4

    :cond_17
    const/16 v16, 0x5

    goto :goto_6

    :sswitch_5
    const-string v2, "lock_screen_pin_pattern_password_upgragde"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_18

    goto :goto_4

    :cond_18
    const/4 v1, 0x4

    goto :goto_5

    :sswitch_6
    const-string v2, "fingerprint_entry"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_4

    :cond_19
    const/16 v16, 0x3

    goto :goto_6

    :sswitch_7
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a

    goto :goto_4

    :cond_1a
    const/4 v1, 0x2

    :goto_5
    move/from16 v16, v1

    goto :goto_6

    :sswitch_8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1b

    goto :goto_4

    :cond_1b
    move/from16 v16, v7

    goto :goto_6

    :sswitch_9
    const-string/jumbo v2, "support_samsung_account"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_4

    :cond_1c
    move/from16 v16, v10

    :goto_6
    packed-switch v16, :pswitch_data_0

    const-string v1, "This is wrong previousStage case! Finish the Activity"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_a

    :pswitch_0
    const-string v1, "Google Setupwizard - Fingerprint"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v1, :cond_1d

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_a

    :cond_1d
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v1, :cond_1f

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_1e

    const-string v1, "launchConfirmLock() : Token is null"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_a

    :cond_1e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_a

    :cond_1f
    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_a

    :pswitch_1
    const-string v1, "LockScreen - Fingerprint"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUnificationProfileId:I

    if-eq v1, v12, :cond_20

    const-string/jumbo v1, "startBiometricsDisclaimer() : enabling one lock case"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_a

    :cond_20
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v1, :cond_23

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v1, :cond_22

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_21

    const-string v1, "KEY_LOCK_SCREEN_FINGERPRINT: GK_PW_Handle is 0."

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_a

    :cond_21
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_a

    :cond_22
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_a

    :cond_23
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_24

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_a

    :cond_24
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-eqz v1, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_a

    :cond_25
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v1, :cond_26

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-nez v1, :cond_26

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_a

    :cond_26
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v1, :cond_28

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v1, :cond_28

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v1, :cond_27

    goto :goto_7

    :cond_27
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_a

    :cond_28
    :goto_7
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_2
    const-string v1, "KEY_KNOX_FINGERPRINT_SETTINGS_ENTRY"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsOneLock:Z

    if-eqz v1, :cond_29

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_a

    :cond_29
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v11, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v1, :cond_2d

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v1, :cond_2d

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-nez v1, :cond_2a

    goto :goto_8

    :cond_2a
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_2c

    const-string v1, "FingerprintLockSettings() : mIsSecured is TRUE"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_2b

    const-string v1, "KEY_KNOX_FINGERPRINT_SETTINGS_ENTRY: GK_PW_Handle is 0."

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_a

    :cond_2b
    const-string/jumbo v1, "startFingerprintRegister"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_a

    :cond_2c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_a

    :cond_2d
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_a

    :cond_2e
    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_a

    :cond_2f
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-eqz v1, :cond_30

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto/16 :goto_a

    :cond_30
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v1, :cond_31

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-nez v1, :cond_31

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegisterForKnox()V

    goto/16 :goto_a

    :cond_31
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    if-nez v1, :cond_33

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    if-nez v1, :cond_33

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mOnlyIdentifyFingerprint:Z

    if-eqz v1, :cond_32

    goto :goto_9

    :cond_32
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_a

    :cond_33
    :goto_9
    invoke-static {v11, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    :pswitch_3
    const-string v1, "LockScreen - OS Upgrade with P/P/P"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v1, :cond_34

    iget-object v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->setFingerprintLock(ILandroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)V

    goto/16 :goto_a

    :cond_34
    const-string v1, "Wrong case! At this point, Fingerprint must be exist!"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_a

    :pswitch_4
    const-string v1, "FingerprintSettings - Entry"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v1, :cond_36

    const v1, 0x7f150331

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTheme(I)V

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_35

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto/16 :goto_a

    :cond_35
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto/16 :goto_a

    :cond_36
    const-string/jumbo v1, "startBiometricsDisclaimer() : no enrolled fingerprint"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_a

    :pswitch_5
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v1, :cond_37

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto/16 :goto_a

    :cond_37
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v1, :cond_3a

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_38

    const-string v1, "Launch ConfirmLock : GkPWHandle is 0."

    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto :goto_a

    :cond_38
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v1, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto :goto_a

    :cond_39
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto :goto_a

    :cond_3a
    const-string v1, "This is wrong case! All fingerprint already enrolled"

    invoke-static {v11, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v10, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto :goto_a

    :pswitch_6
    const-string v1, "FingerprintSettings"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-nez v1, :cond_3b

    invoke-static {v11, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchChooseLock()V

    goto :goto_a

    :cond_3b
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mMaxEnrolledFingerprint:Z

    if-nez v1, :cond_3e

    iget-wide v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    cmp-long v1, v1, v14

    if-nez v1, :cond_3c

    const-string v1, "launchConfirmLock() : GkPwHandle is 0L"

    invoke-static {v11, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->launchConfirmLock()V

    goto :goto_a

    :cond_3c
    iget-boolean v1, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-nez v1, :cond_3d

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->startBiometricsDisclaimer()V

    goto :goto_a

    :cond_3d
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    goto :goto_a

    :cond_3e
    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    invoke-virtual {v0, v10}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_a
    return-void

    :cond_3f
    :goto_b
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isEnabledBiometricsMenuInDexMode(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_40

    const v1, 0x7f14214c

    goto :goto_c

    :cond_40
    const v1, 0x7f142127

    :goto_c
    invoke-static {v0, v1, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

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

.method public final onDestroy()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public final onPause()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string p0, "FpstFingerprintLockSettings"

    const-string/jumbo v0, "onResume"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "waitingForRegistration"

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRunRegister:Z

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStop()V
    .locals 2

    const-string v0, "FpstFingerprintLockSettings"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method

.method public final requestToken(Z)V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez v1, :cond_0

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    new-instance v2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;Z)V

    invoke-virtual {v0, v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    :cond_0
    return-void
.end method

.method public final runRegister()V
    .locals 8

    const-string/jumbo v0, "runRegister hasEnrolledFingerprints "

    const-string v1, "FpstFingerprintLockSettings"

    const-string/jumbo v2, "runRegister"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRunRegister:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsRunRegister:Z

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->fromFingerprintSettings(Z)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    sget-boolean v5, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const-string v5, "FpstFingerprintSettingsUtils"

    if-eqz v4, :cond_2

    invoke-static {v4}, Lcom/samsung/android/settings/security/SecurityUtils;->ConnectedMobileKeypad(Landroid/content/Context;)Z

    move-result v4

    goto :goto_0

    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "isNotAvailableFingerprintWithMobileKeyboard : config = google_touch_display_ultrasonic context = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v4, v3

    :goto_0
    if-eqz v4, :cond_3

    const-string v0, "Mobile keyboard attached"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    const v1, 0x7f1423ba

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const v2, 0x7f1423e2

    invoke-virtual {p0, v2, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_3

    :cond_3
    const v4, 0x7f140646

    invoke-static {p0, v4, v1}, Lcom/samsung/android/settings/security/SecurityUtils;->isNotAvailableBiometricsWithDexAndMultiWindow(Landroid/app/Activity;ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_3

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    if-eqz v4, :cond_5

    const-string v6, "display"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManager;

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "any_screen_running"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_7

    goto :goto_1

    :cond_6
    const-string v2, "isOneHandedMode : context = null"

    invoke-static {v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    move v2, v3

    :goto_1
    if-eqz v2, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    const v1, 0x7f1423d7

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    goto/16 :goto_3

    :cond_8
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-class v4, Lcom/samsung/android/settings/biometrics/fingerprint/RegisterFingerprint;

    invoke-virtual {v2, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v4, "previousStage"

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "fromSetupWizard"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "gk_pw_handle"

    iget-wide v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "hw_auth_token"

    iget-object v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v4, "challenge"

    iget-wide v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    invoke-virtual {v2, v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v4, "android.intent.extra.USER_ID"

    iget v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "isAfw"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsAfw:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "isFromKnoxSetupWizard"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetupWizard:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "isFromKnoxFingerprintPlus"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "is_knox"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxSetCases:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "is_knox_two_step"

    iget-boolean v5, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIntent:Landroid/content/Intent;

    const-string v5, "fromKnoxKeyguard"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->sendSALogging()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    iput v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mHasEnrolledFingerprint:Z

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxFingerprintPlus:Z

    if-nez v0, :cond_9

    const/16 v0, 0x3e9

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_9
    iget v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x3f0

    invoke-virtual {p0, v2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3

    :cond_a
    new-instance v0, Landroid/os/UserHandle;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v1, 0x3e8

    invoke-virtual {p0, v2, v1, v0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :cond_b
    :goto_3
    return-void
.end method

.method public final runRegisterForKnox()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromKnoxTwoStep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "FpstFingerprintLockSettings"

    const-string/jumbo v0, "recognizeFingerprint"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    return-void
.end method

.method public final sendSALogging()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromTip:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz v0, :cond_0

    const-string v0, "5"

    goto :goto_0

    :cond_0
    const-string v0, "4"

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz v0, :cond_2

    const-string v0, "1"

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsFromBiometricsMenu:Z

    if-nez v0, :cond_3

    const-string v0, "fingerprint_entry"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "7"

    goto :goto_0

    :cond_3
    const-string v0, "fingerprint_register_external"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "3"

    goto :goto_0

    :cond_4
    const-string v0, "lock_screen_fingerprint"

    iget-object v1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mPreviousStage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "6"

    goto :goto_0

    :cond_5
    const-string v0, "2"

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    const/16 p0, 0x203f

    const/16 v1, 0x2057

    const-wide/16 v2, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IIJLjava/lang/String;)V

    return-void
.end method

.method public final showSensorErrorDialog()V
    .locals 3

    invoke-static {p0}, Lcom/samsung/android/settings/biometrics/BiometricsGenericHelper;->isLightTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    invoke-direct {v1, v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f1423d9

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1423d8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$2;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$2;-><init>(I)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$3;-><init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;I)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public final startBiometricsDisclaimer()V
    .locals 6

    const-string/jumbo v0, "startBiometricsDisclaimer"

    const-string v1, "FpstFingerprintLockSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.settings.biometrics.BiometricsDisclaimerActivity"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.intent.extra.USER_ID"

    iget v3, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "BIOMETRICS_LOCK_TYPE"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "gk_pw_handle"

    iget-wide v4, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mFromSetupwizard:Z

    if-eqz v2, :cond_0

    const-string v2, "fromSetupWizard"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.SuwBiometricsDisclaimerActivity"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mIsSecured:Z

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.samsung.android.settings.biometrics.BiometricsDisclaimerWithConfirmLock"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const/16 v2, 0x11

    :try_start_0
    iput v2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mKeepSessionAndActivity:I

    const/16 v2, 0x3ed

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    const-string/jumbo v0, "startBiometricsDisclaimer : Activity Not Found !"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->closeSessionAndFinish()V

    :goto_1
    return-void
.end method
