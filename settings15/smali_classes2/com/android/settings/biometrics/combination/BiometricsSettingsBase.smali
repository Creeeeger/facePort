.class public abstract Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field static final CONFIRM_REQUEST:I = 0x7d1

.field static final RETRY_PREFERENCE_BUNDLE:Ljava/lang/String; = "retry_preference_bundle"

.field static final RETRY_PREFERENCE_KEY:Ljava/lang/String; = "retry_preference_key"


# instance fields
.field public mConfirmCredential:Z

.field public mDoNotFinishActivity:Z

.field public mFaceManager:Landroid/hardware/face/FaceManager;

.field public final mFaceOrFingerprintPreferenceLauncher:Landroidx/activity/result/ActivityResultLauncher;

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public mGkPwHandle:J

.field public mRetryPreferenceExtra:Landroid/os/Bundle;

.field public mRetryPreferenceKey:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    new-instance v0, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/activity/result/contract/ActivityResultContracts$StartActivityForResult;-><init>(I)V

    new-instance v1, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;)V

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->registerForActivityResult(Landroidx/activity/result/contract/ActivityResultContract;Landroidx/activity/result/ActivityResultCallback;)Landroidx/activity/result/ActivityResultLauncher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceOrFingerprintPreferenceLauncher:Landroidx/activity/result/ActivityResultLauncher;

    return-void
.end method


# virtual methods
.method public abstract getFacePreferenceKey()Ljava/lang/String;
.end method

.method public abstract getFingerprintPreferenceKey()Ljava/lang/String;
.end method

.method public abstract getUnlockPhonePreferenceKey()Ljava/lang/String;
.end method

.method public getUseAnyBiometricSummary()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/face/FaceManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    const v1, 0x7f140659

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    const v1, 0x7f14065c

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    const v1, 0x7f14065f

    :cond_4
    :goto_2
    if-nez v1, :cond_5

    const-string p0, ""

    goto :goto_3

    :cond_5
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    return-object p0
.end method

.method public abstract getUseInAppsPreferenceKey()Ljava/lang/String;
.end method

.method public launchChooseOrConfirmLock()V
    .locals 4

    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v1, 0x7d1

    iput v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestCode:I

    const v1, 0x7f142996

    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mTitle:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mRequestGatekeeperPasswordHandle:Z

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mForegroundOnly:Z

    iput-boolean v1, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mReturnCredentials:Z

    iget v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    const/16 v3, -0x2710

    if-eq v2, v3, :cond_0

    iput v2, v0, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->mUserId:I

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/settings/biometrics/BiometricUtils;->getChooseLockIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    const-string v2, "hide_insecure_options"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "request_gk_pw_handle"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "for_biometrics"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "page_transition_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    if-eq v1, v3, :cond_1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_1
    const/16 v1, 0x7d2

    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0x7d1

    if-eq p1, v0, :cond_0

    const/16 v0, 0x7d2

    if-ne p1, v0, :cond_7

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    iput-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Password not confirmed."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p3}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    iget-object p2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x7f0100db

    const v0, 0x7f0100dc

    invoke-virtual {p2, p3, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    iget-object p2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    iget-object p3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p3, ".retryPreferenceKey, fail to find "

    invoke-static {p3, p2, p1}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v0}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :cond_4
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onRetryPreferenceTreeClick(Landroidx/preference/Preference;Z)Z

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Data null or GK PW missing."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_6
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    :cond_7
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->containsGatekeeperPasswordHandle(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/biometrics/BiometricUtils;->getGatekeeperPasswordHandle(Landroid/content/Intent;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "confirm_credential"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    const-string v0, "do_not_finish_activity"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    const-string v0, "retry_preference_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    const-string v0, "retry_preference_bundle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    const-string v0, "request_gk_pw_handle"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    :cond_1
    iget-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    const/4 v0, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    if-nez p1, :cond_2

    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->launchChooseOrConfirmLock()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUnlockPhonePreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseAnyBiometricSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getUseInAppsPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/hardware/face/FaceManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/face/FaceSensorPropertiesInternal;

    iget v4, v4, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    if-eq v4, v0, :cond_5

    if-ne v4, v3, :cond_4

    :cond_5
    move v1, v0

    goto :goto_0

    :cond_6
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    iget v5, v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorStrength:I

    if-eq v5, v0, :cond_9

    if-ne v5, v3, :cond_7

    goto :goto_1

    :cond_8
    move v0, v2

    :cond_9
    :goto_1
    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    const v2, 0x7f140659

    goto :goto_2

    :cond_a
    if-eqz v1, :cond_b

    const v2, 0x7f14065c

    goto :goto_2

    :cond_b
    if-eqz v0, :cond_c

    const v2, 0x7f14065f

    :cond_c
    :goto_2
    if-nez v2, :cond_d

    const-string p0, ""

    goto :goto_3

    :cond_d
    invoke-virtual {p0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_e
    return-void
.end method

.method public final onFaceOrFingerprintPreferenceTreeClick(Landroidx/preference/Preference;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/dashboard/DashboardFragment;->getPreferenceControllers()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of v3, v2, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;

    iget-object v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceOrFingerprintPreferenceLauncher:Landroidx/activity/result/ActivityResultLauncher;

    invoke-virtual {v2, p1, v3}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->setPreferenceTreeClickLauncher(Landroidx/preference/Preference;Landroidx/activity/result/ActivityResultLauncher;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, p1}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->writePreferenceClickMetric(Landroidx/preference/Preference;)V

    :cond_2
    const/4 p0, 0x0

    invoke-virtual {v2, p1, p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->setPreferenceTreeClickLauncher(Landroidx/preference/Preference;Landroidx/activity/result/ActivityResultLauncher;)Z

    :cond_3
    return-void
.end method

.method public final onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onRetryPreferenceTreeClick(Landroidx/preference/Preference;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    :cond_0
    return-void
.end method

.method public onRetryPreferenceTreeClick(Landroidx/preference/Preference;Z)Z
    .locals 5

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getFacePreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    iput-boolean v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFaceManager:Landroid/hardware/face/FaceManager;

    iget v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    new-instance v4, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroid/content/Context;Landroidx/preference/Preference;Z)V

    invoke-virtual {v0, v2, v4}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->getFingerprintPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    new-instance v4, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0, v1, p1, p2}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroid/content/Context;Landroidx/preference/Preference;Z)V

    invoke-virtual {v0, v2, v4}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    return v3

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "confirm_credential"

    iget-boolean v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "do_not_finish_activity"

    iget-boolean v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-wide v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const-string v2, "request_gk_pw_handle"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "retry_preference_key"

    iget-object v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "retry_preference_bundle"

    iget-object p0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method public final onStop()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onStop()V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    new-instance v3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->removeGatekeeperPasswordHandle(J)V

    const-string v0, "BiometricUtils"

    const-string v1, "Removed handle"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method public requestGatekeeperHat(Landroid/content/Context;JIJ)[B
    .locals 6

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    move-wide v1, p2

    move-wide v3, p5

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils;->verifyGatekeeperPasswordHandle(JJI)Lcom/android/internal/widget/VerifyCredentialResponse;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->isMatched()Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "BiometricUtils"

    const-string p1, "Unable to request Gatekeeper HAT"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/widget/VerifyCredentialResponse;->getGatekeeperHAT()[B

    move-result-object p0

    :goto_0
    return-object p0
.end method
