.class public Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "SecSoundDefaultVolumeController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final KEY_VOLUME_CONTROL:Ljava/lang/String; = "volume_key_control"


# instance fields
.field private mPreference:Landroidx/preference/Preference;

.field private final mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

.field private mSwitchPref:Landroidx/preference/SecSwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcom/samsung/android/media/SemSoundAssistantManager;

    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/samsung/android/media/SemSoundAssistantManager;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "volume_key_control"

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iput-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->mPreference:Landroidx/preference/Preference;

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->mSwitchPref:Landroidx/preference/SecSwitchPreference;

    if-eqz p1, :cond_1

    .line 98
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_volume_key_control_title_tts:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 98
    invoke-virtual {p1, p0}, Landroidx/preference/SecSwitchPreference;->setContentDescriptionTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p0

    const-string v1, "hide"

    invoke-static {v0, p0, v1}, Lcom/samsung/android/settings/as/utils/WorkUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
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

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "volume_key_control"

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    .line 115
    sget p0, Lcom/android/settings/R$string;->menu_key_sound:I

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->getStatusText()Ljava/lang/String;

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

.method public isChecked()Z
    .locals 1

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeMode(I)Z

    move-result p0

    return p0
.end method

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onResume()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 59
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/media/SemSoundAssistantManager;->setVolumeMode(IZ)V

    const/16 p0, 0x150

    const/16 v1, 0x1c57

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 66
    :goto_0
    invoke-static {p0, v1, v2, v3}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(IIJ)V

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 76
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "grayout"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/as/utils/WorkUtils;->isApplicationRestricted(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 77
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {p1, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 82
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->mSemSoundAssistantManager:Lcom/samsung/android/media/SemSoundAssistantManager;

    if-eqz p1, :cond_1

    .line 83
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundDefaultVolumeController;->mSwitchPref:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p1, v1}, Lcom/samsung/android/media/SemSoundAssistantManager;->getVolumeMode(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
