.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;
.super Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Z)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager$ChallengeCallback;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onPreEnroll(J)V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget-boolean v1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;->f$1:Z

    sget v2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x1

    iput v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    :cond_1
    iput-wide p1, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo v3, "sensor_id"

    iget v4, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v3, "challenge"

    iget-wide v4, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    if-eqz v2, :cond_2

    iget-wide v3, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    iget-wide v5, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    iget v7, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->requestGatekeeperHat(JJI)[B

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const/4 v3, 0x1

    const-string v4, "FcstFaceLockSettings"

    if-nez v2, :cond_3

    const-string/jumbo v5, "token is NULL!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const v6, 0x7f14214a

    invoke-virtual {v0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v7, v6, v3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v6, "hw_auth_token"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "startFaceRegister"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    :cond_4
    :goto_0
    return-void
.end method
