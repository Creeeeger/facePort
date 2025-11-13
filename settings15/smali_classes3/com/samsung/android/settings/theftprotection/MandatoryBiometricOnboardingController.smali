.class public Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPreference:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isPreferenceVisible()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->getMandatoryBiometricStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    if-ne v0, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->hasBiometricStrong(Landroid/content/Context;)Z

    move-result p0

    xor-int/2addr p0, v2

    if-eqz p0, :cond_1

    return v2

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private updateSummary()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->getMandatoryBiometricStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->hasBiometricStrong(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    const v2, 0x7f0607b8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    const v0, 0x7f1416f6

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    iget-object v1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    const v2, 0x7f0607b7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    const v0, 0x7f142f00

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->isSupportBiometricStrong(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getBackupKeys()Ljava/util/List;
    .locals 0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->getMandatoryBiometricStatus(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->hasBiometricStrong(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/theftprotection/TheftProtectionUtils;->startFingerprintLockSettings(Landroid/content/Context;)V

    return v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->handlePreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    return-void
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    sget-object p0, Lcom/samsung/android/settings/cube/Controllable$ControllableType;->NO_INTERACTION:Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->isPreferenceVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    iget-object p1, p0, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    invoke-direct {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->isPreferenceVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/theftprotection/MandatoryBiometricOnboardingController;->updateSummary()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
