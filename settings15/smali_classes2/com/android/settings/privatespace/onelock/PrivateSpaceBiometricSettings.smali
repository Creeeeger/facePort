.class public Lcom/android/settings/privatespace/onelock/PrivateSpaceBiometricSettings;
.super Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFacePreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "private_space_face_unlock_settings"

    return-object p0
.end method

.method public final getFingerprintPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "private_space_fingerprint_unlock_settings"

    return-object p0
.end method

.method public final getLogTag()Ljava/lang/String;
    .locals 0

    const-string p0, "PSBiometricSettings"

    return-object p0
.end method

.method public final getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7f8

    return p0
.end method

.method public final getPreferenceScreenResId()I
    .locals 0

    const p0, 0x7f17011d

    return p0
.end method

.method public final getUnlockPhonePreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getUseInAppsPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final onAttach(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/Flags;->allowPrivateProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->enableBiometricsToUnlockPrivateSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/multiuser/Flags;->enablePrivateSpaceFeatures()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->onAttach(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getInstance(Landroid/content/Context;)Lcom/android/settings/privatespace/PrivateSpaceMaintainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/privatespace/PrivateSpaceMaintainer;->getPrivateProfileHandle()Landroid/os/UserHandle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    iput p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/biometrics/combination/BiometricsSettingsBase;->mUserId:I

    const-string p0, "PSBiometricSettings"

    const-string p1, "Private profile user handle is not expected to be null."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
