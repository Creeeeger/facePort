.class public Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;
.super Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;
.source "BiometricsDisclaimerWithConfirmLock.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mContinueButton:Landroid/widget/Button;

.field private mFaceManager:Landroid/hardware/face/FaceManager;

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mIsRequestChallenge:Z

.field private mLayoutView:Landroid/view/View;

.field private mUserId:I


# direct methods
.method public static synthetic $r8$lambda$5EaMBdjfILORsDokAE-jqLfFwiQ(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public static synthetic $r8$lambda$bPEBGDp-n1khSVo1ny4T8Amd1aI(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;Landroid/content/Intent;IIJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContext:Landroid/content/Context;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mFaceManager:Landroid/hardware/face/FaceManager;

    .line 31
    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method private synthetic lambda$onActivityResult$0(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 86
    iput p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSensorId:I

    .line 87
    iput-wide p4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mChallenge:J

    .line 88
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    .line 89
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 91
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const-string p1, "BiometricsDisclaimerWithConfirmLock"

    const-string p3, "CONFIRM_REQUEST: token = NULL"

    .line 92
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContext:Landroid/content/Context;

    check-cast p1, Landroid/app/Activity;

    sget p3, Lcom/android/settings/R$string;->sec_face_error_message_sensor_error:I

    .line 94
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 93
    invoke-static {p1, p0, p2}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsHelper;->showFaceSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContinueButton:Landroid/widget/Button;

    if-eqz p0, :cond_1

    .line 97
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$onActivityResult$1(Landroid/content/Intent;IIJ)V
    .locals 0

    .line 103
    iput p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mSensorId:I

    .line 104
    iput-wide p4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mChallenge:J

    .line 105
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContext:Landroid/content/Context;

    iget p3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    invoke-static {p2, p1, p3, p4, p5}, Lcom/android/settings/biometrics/BiometricUtils;->requestGatekeeperHat(Landroid/content/Context;Landroid/content/Intent;IJ)[B

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    .line 106
    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContext:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/android/settings/biometrics/BiometricUtils;->removeGatekeeperPasswordHandle(Landroid/content/Context;Landroid/content/Intent;)V

    .line 108
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    const/4 p2, 0x1

    if-nez p1, :cond_0

    const-string p1, "BiometricsDisclaimerWithConfirmLock"

    const-string p3, "CONFIRM_REQUEST: token = NULL"

    .line 109
    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget p1, Lcom/android/settings/R$string;->sec_fingerprint_error_message_sensor_error:I

    .line 111
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-static {p0, p1, p2}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsUtils;->showSensorErrorDialog(Landroid/app/Activity;Ljava/lang/String;Z)V

    goto :goto_0

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContinueButton:Landroid/widget/Button;

    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {p0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private launchConfirmLock()V
    .locals 6

    const-string v0, "BiometricsDisclaimerWithConfirmLock"

    const-string v1, "launchConfirmLock"

    .line 126
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget v1, Lcom/android/settings/R$id;->continue_button:I

    invoke-virtual {p0, v1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContinueButton:Landroid/widget/Button;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 130
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 133
    :cond_0
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;)V

    const/16 v3, 0x3e8

    .line 134
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    const/4 v4, 0x0

    .line 135
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 136
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestGatekeeperPasswordHandle(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 137
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setForegroundOnly(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object v3

    .line 138
    invoke-virtual {v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setReturnCredentials(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 140
    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    const/16 v5, -0x2710

    if-eq v3, v5, :cond_1

    .line 141
    invoke-virtual {v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setUserId(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 145
    :cond_1
    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 146
    invoke-virtual {v1, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setKnoxWorkProfileSecurity(Z)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    .line 150
    :cond_2
    iput-boolean v4, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    .line 152
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->show()Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Fail launchConfirmationActivity!"

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    .line 155
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 156
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    return-void
.end method

.method private setDisclaimerInvisible()V
    .locals 1

    .line 161
    sget v0, Lcom/android/settings/R$id;->biometrics_disclaimer:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mLayoutView:Landroid/view/View;

    .line 162
    iget-boolean p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mIsRequestChallenge:Z

    if-nez p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x4

    .line 163
    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 73
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult : requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " data is NULL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BiometricsDisclaimerWithConfirmLock"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_4

    const/4 p1, -0x1

    if-ne p2, p1, :cond_3

    .line 78
    iput-boolean v2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    .line 79
    iput-boolean v1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mIsRequestChallenge:Z

    .line 80
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mLayoutView:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_1
    iget p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 p2, 0x100

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mFaceManager:Landroid/hardware/face/FaceManager;

    if-eqz p2, :cond_2

    .line 85
    iget p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;Landroid/content/Intent;)V

    invoke-virtual {p2, p1, v0}, Landroid/hardware/face/FaceManager;->generateChallenge(ILandroid/hardware/face/FaceManager$GenerateChallengeCallback;)V

    goto :goto_1

    :cond_2
    if-ne p1, v1, :cond_4

    .line 100
    iget-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz p1, :cond_4

    .line 102
    iget p2, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    new-instance v0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p3}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;Landroid/content/Intent;)V

    invoke-virtual {p1, p2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->generateChallenge(ILandroid/hardware/fingerprint/FingerprintManager$GenerateChallengeCallback;)V

    goto :goto_1

    .line 119
    :cond_3
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setResult(I)V

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_4
    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->setDisclaimerInvisible()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iput-object p0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mContext:Landroid/content/Context;

    .line 43
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 44
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mUserId:I

    .line 45
    iget p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mRequestBiometricsType:I

    const/16 v0, 0x100

    if-ne p1, v0, :cond_0

    .line 46
    invoke-static {p0}, Lcom/android/settings/Utils;->getFaceManagerOrNull(Landroid/content/Context;)Landroid/hardware/face/FaceManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mFaceManager:Landroid/hardware/face/FaceManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 48
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->setDisclaimerInvisible()V

    .line 64
    iget-object v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mToken:[B

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->mIsWaitConfirmLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->mIsRequestChallenge:Z

    if-nez v0, :cond_0

    .line 65
    invoke-direct {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerWithConfirmLock;->launchConfirmLock()V

    .line 68
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/settings/biometrics/BiometricsDisclaimerActivity;->onResume()V

    return-void
.end method
