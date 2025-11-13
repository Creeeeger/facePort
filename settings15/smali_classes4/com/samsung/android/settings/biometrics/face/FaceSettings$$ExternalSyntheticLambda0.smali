.class public final synthetic Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/face/FaceManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/face/FaceSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onGenerateChallengeResult(IIJ)V
    .locals 7

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/face/FaceSettings;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {p2}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    iput-wide p3, p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    iget-object v1, p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    if-eqz v1, :cond_1

    iget-wide v2, p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mGkPwHandle:J

    iget v6, p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mUserId:I

    move-wide v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->requestGatekeeperHat(JJI)[B

    move-result-object p1

    iput-object p1, p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    :cond_1
    iget-object p1, p2, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->mToken:[B

    if-nez p1, :cond_2

    const-string p0, "FcstFaceSettings"

    const-string/jumbo p1, "token is NULL!"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const p1, 0x7f14214a

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p0, p2, p1, p3}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    const-string p0, "FaceSettings_unlock_switch"

    invoke-virtual {p2, p0}, Lcom/samsung/android/settings/biometrics/face/FaceSettings;->runRegister(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
