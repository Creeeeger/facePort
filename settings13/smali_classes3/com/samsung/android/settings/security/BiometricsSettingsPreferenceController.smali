.class public Lcom/samsung/android/settings/security/BiometricsSettingsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BiometricsSettingsPreferenceController.java"


# static fields
.field private static final KEY_BIOMETRICS:Ljava/lang/String; = "sec_biometrics_preference"

.field private static final LOG_TAG:Ljava/lang/String; = "BiometricsSettingsPreferenceController"


# instance fields
.field private final mFaceSettingsPreferenceController:Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

.field private final mFingerprintSettingsPreferenceController:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "sec_biometrics_preference"

    .line 23
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/security/BiometricsSettingsPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 29
    new-instance p2, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/security/BiometricsSettingsPreferenceController;->mFaceSettingsPreferenceController:Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

    .line 30
    new-instance p2, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;

    invoke-direct {p2, p1}, Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/android/settings/security/BiometricsSettingsPreferenceController;->mFingerprintSettingsPreferenceController:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    const/16 v0, 0x10

    .line 36
    invoke-static {v0}, Lcom/samsung/android/settings/knox/KnoxUtils;->checkKnoxCustomSettingsHiddenItem(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "BiometricsSettingsPreferenceController"

    const-string v0, "CONDITIONALLY_UNAVAILABLE 2"

    .line 37
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    return p0

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/security/BiometricsSettingsPreferenceController;->mFaceSettingsPreferenceController:Lcom/samsung/android/settings/biometrics/face/FaceSettingsPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/settings/security/BiometricsSettingsPreferenceController;->mFingerprintSettingsPreferenceController:Lcom/samsung/android/settings/biometrics/fingerprint/FingerprintSettingsPreferenceController;

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getValue()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->ignoreUserInteraction()V

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
