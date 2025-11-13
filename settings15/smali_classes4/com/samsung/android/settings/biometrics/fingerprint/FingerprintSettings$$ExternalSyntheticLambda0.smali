.class public final synthetic Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    iput-boolean p2, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onChallengeGenerated(IIJ)V
    .locals 6

    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;

    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings$$ExternalSyntheticLambda0;->f$1:Z

    invoke-virtual {p1}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    iput-wide p3, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mChallenge:J

    iget-object v0, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwProvider:Lcom/android/settings/biometrics/GatekeeperPasswordProvider;

    if-eqz v0, :cond_1

    iget-wide v1, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mGkPwHandle:J

    iget v5, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mUserId:I

    move-wide v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/biometrics/GatekeeperPasswordProvider;->requestGatekeeperHat(JJI)[B

    move-result-object p2

    iput-object p2, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    :cond_1
    iget-object p2, p1, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->mToken:[B

    if-nez p2, :cond_2

    const-string p0, "FpstFingerprintSettings"

    const-string/jumbo p2, "token is NULL!"

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    const p2, 0x7f14214a

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    if-eqz p0, :cond_3

    const-string p0, "fingerprint_settings_set_screen_lock"

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettings;->runRegister$1(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
