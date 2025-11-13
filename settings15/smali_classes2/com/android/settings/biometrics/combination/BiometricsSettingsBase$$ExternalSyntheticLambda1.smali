.class public final synthetic Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Landroidx/preference/Preference;

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;Landroid/content/Context;Landroidx/preference/Preference;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;

    iput-object p2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    iput-boolean p4, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;->f$3:Z

    return-void
.end method


# virtual methods
.method public final onGenerateChallengeResult(IIJ)V
    .locals 8

    iget-object p2, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;->f$0:Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;

    iget-object v1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;->f$2:Landroidx/preference/Preference;

    iget-boolean p0, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase$$ExternalSyntheticLambda1;->f$3:Z

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-wide v2, p2, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mGkPwHandle:J

    iget v4, p2, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    move-object v0, p2

    move-wide v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->requestGatekeeperHat(Landroid/content/Context;JIJ)[B

    move-result-object v0

    invoke-virtual {v7}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    const-string v0, "sensor_id"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "challenge"

    invoke-virtual {v1, p1, p3, p4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {p2, v7}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onFaceOrFingerprintPreferenceTreeClick(Landroidx/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    if-eqz p0, :cond_1

    invoke-virtual {v7}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceKey:Ljava/lang/String;

    invoke-virtual {v7}, Landroidx/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    iput-object p0, p2, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mRetryPreferenceExtra:Landroid/os/Bundle;

    const/4 p0, 0x1

    iput-boolean p0, p2, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mConfirmCredential:Z

    invoke-virtual {p2}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->launchChooseOrConfirmLock()V

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p3, "face generateChallenge fail"

    invoke-static {p0, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    iput-boolean p0, p2, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mDoNotFinishActivity:Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2}, Lcom/android/settings/dashboard/DashboardFragment;->getLogTag()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Stop during generating face unlock challenge because activity is null or finishing"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
