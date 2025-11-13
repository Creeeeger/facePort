.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onPreEnroll(J)V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    :cond_1
    iput-wide p1, v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    if-eqz v2, :cond_2

    iget-wide v3, v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    move-wide v5, p1

    iget v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->requestGatekeeperHat(JJI)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez v2, :cond_3

    const-string v2, "FcstFaceSettings"

    const-string/jumbo v3, "token is NULL!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    const v3, 0x7f14214a

    invoke-virtual {v0, v3}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v2, v4, v3, v5}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    const-string v1, "FaceSettings_unlock_switch"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method
