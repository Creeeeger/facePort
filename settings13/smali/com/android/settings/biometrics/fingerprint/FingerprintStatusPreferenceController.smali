.class public Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;
.super Lcom/android/settings/biometrics/BiometricStatusPreferenceController;
.source "FingerprintStatusPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final KEY_FINGERPRINT_SETTINGS:Ljava/lang/String; = "fingerprint_settings"


# instance fields
.field protected final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mFingerprintStatusUtils:Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;

.field mPreference:Lcom/android/settingslib/RestrictedPreference;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "fingerprint_settings"

    .line 47
    invoke-direct {p0, p1, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "fingerprint_settings"

    .line 55
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroidx/lifecycle/Lifecycle;)V
    .locals 2

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 60
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 61
    new-instance v0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->getUserId()I

    move-result v1

    invoke-direct {v0, p1, p2, v1}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;-><init>(Landroid/content/Context;Landroid/hardware/fingerprint/FingerprintManager;I)V

    iput-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintStatusUtils:Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;

    if-eqz p3, :cond_0

    .line 65
    invoke-virtual {p3, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private updateStateInternal()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintStatusUtils:Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->getDisablingAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->updateStateInternal(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
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

.method protected getSettingsClassName()Ljava/lang/String;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintStatusUtils:Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->getSettingsClassName()Ljava/lang/String;

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

.method protected getSummaryText()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintStatusUtils:Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->getSummary()Ljava/lang/String;

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

.method protected isDeviceSupported()Z
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintStatusUtils:Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;

    invoke-virtual {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->isAvailable()Z

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

.method public onResume()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->updateStateInternal()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method protected setSummaryColor(Landroidx/preference/Preference;)V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mFingerprintStatusUtils:Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;

    invoke-virtual {v0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusUtils;->hasEnrolled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->basic_primary_color:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    goto :goto_0

    .line 107
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$color;->basic_secondary_text_color_dimmed:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->seslSetSummaryColor(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/biometrics/BiometricStatusPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 90
    invoke-direct {p0}, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->updateStateInternal()V

    return-void
.end method

.method updateStateInternal(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 119
    iget-object p0, p0, Lcom/android/settings/biometrics/fingerprint/FingerprintStatusPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz p0, :cond_0

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
