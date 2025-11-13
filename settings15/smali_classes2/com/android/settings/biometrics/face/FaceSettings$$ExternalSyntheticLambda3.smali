.class public final synthetic Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/hardware/face/FaceManager$GenerateChallengeCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/settings/biometrics/face/FaceSettings;

.field public final synthetic f$1:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/biometrics/face/FaceSettings;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/biometrics/face/FaceSettings;

    iput-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final onGenerateChallengeResult(IIJ)V
    .locals 2

    iget-object p2, p0, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;->f$0:Lcom/android/settings/biometrics/face/FaceSettings;

    iget-object p0, p0, Lcom/android/settings/biometrics/face/FaceSettings$$ExternalSyntheticLambda3;->f$1:Landroid/content/Intent;

    sget-object v0, Lcom/android/settings/biometrics/face/FaceSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p2, Lcom/android/settings/biometrics/face/FaceSettings;->mUserId:I

    invoke-static {v0, p0, v1, p3, p4}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object v0

    iput-object v0, p2, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    iput p1, p2, Lcom/android/settings/biometrics/face/FaceSettings;->mSensorId:I

    iput-wide p3, p2, Lcom/android/settings/biometrics/face/FaceSettings;->mChallenge:J

    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p0, p2, Lcom/android/settings/biometrics/face/FaceSettings;->mAttentionController:Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;

    iget-object p1, p2, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsAttentionPreferenceController;->setToken([B)V

    iget-object p0, p2, Lcom/android/settings/biometrics/face/FaceSettings;->mEnrollController:Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;

    iget-object p1, p2, Lcom/android/settings/biometrics/face/FaceSettings;->mToken:[B

    invoke-virtual {p0, p1}, Lcom/android/settings/biometrics/face/FaceSettingsEnrollButtonPreferenceController;->setToken([B)V

    const/4 p0, 0x0

    iput-boolean p0, p2, Lcom/android/settings/biometrics/face/FaceSettings;->mConfirmingPassword:Z

    return-void
.end method
