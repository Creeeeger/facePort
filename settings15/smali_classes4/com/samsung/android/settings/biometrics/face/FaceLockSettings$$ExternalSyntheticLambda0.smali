.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/face/FaceManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onGenerateChallengeResult(IIJ)V
    .locals 8

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings$$ExternalSyntheticLambda0;->f$1:Z

    sget v0, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->$r8$clinit:I

    invoke-virtual {p2}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mSensorId:I

    iput-wide p3, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    iget-object p3, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string/jumbo p4, "sensor_id"

    invoke-virtual {p3, p4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p1, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string p3, "challenge"

    iget-wide v0, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    invoke-virtual {p1, p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v2, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    if-eqz v2, :cond_1

    iget-wide v3, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mGkPwHandle:J

    iget-wide v5, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mChallenge:J

    iget v7, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mUserId:I

    invoke-virtual/range {v2 .. v7}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->requestGatekeeperHat(JJI)[B

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    :cond_1
    iget-object p1, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mToken:[B

    const/4 p3, 0x1

    const-string p4, "FcstFaceLockSettings"

    if-nez p1, :cond_2

    const-string/jumbo p0, "token is NULL!"

    invoke-static {p4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->mContext:Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;

    const p1, 0x7f14214a

    invoke-virtual {p2, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p2, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->result_intent:Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-eqz p0, :cond_3

    const-string/jumbo p0, "startFaceRegister"

    invoke-static {p4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    invoke-virtual {p2, p0, p3}, Lcom/samsung/android/settings/biometrics/face/FaceLockSettings;->startFaceRegister(ZZ)V

    :cond_3
    :goto_0
    return-void
.end method
