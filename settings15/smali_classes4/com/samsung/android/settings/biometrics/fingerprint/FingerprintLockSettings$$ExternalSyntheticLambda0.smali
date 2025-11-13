.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IIJ)V
    .locals 7

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings$$ExternalSyntheticLambda0;->f$1:Z

    sget p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->$r8$clinit:I

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p3, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    iget-object p2, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string v0, "challenge"

    invoke-virtual {p2, v0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v1, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    if-eqz v1, :cond_1

    iget-wide v2, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mGkPwHandle:J

    iget-wide v4, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mChallenge:J

    iget v6, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mUserId:I

    invoke-virtual/range {v1 .. v6}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->requestGatekeeperHat(JJI)[B

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    :cond_1
    iget-object p2, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->mToken:[B

    if-nez p2, :cond_2

    const-string p0, "FpstFingerprintLockSettings"

    const-string/jumbo p2, "token is NULL!"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const p0, 0x7f14214a

    invoke-virtual {p1, p0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    sget-boolean p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->SUB_DISPLAY_IS_LARGE_SCREEN:Z

    const p2, 0x7f1423bf

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p1, p2, p0, p3}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    iget-object p3, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->result_intent:Landroid/content/Intent;

    const-string p4, "hw_auth_token"

    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintLockSettings;->runRegister()V

    :cond_3
    :goto_0
    return-void
.end method
