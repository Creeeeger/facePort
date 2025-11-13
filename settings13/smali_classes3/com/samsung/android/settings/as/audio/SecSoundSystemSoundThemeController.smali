.class public Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;
.super Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;
.source "SecSoundSystemSoundThemeController.java"

# interfaces
.implements Lcom/android/settings/development/OnActivityResultListener;


# static fields
.field private static final KEY:Ljava/lang/String; = "system_sound_theme"

.field private static final REQUEST_AUDIO_SYSTEM_SOUND:I = 0x5


# instance fields
.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mPreference:Lcom/android/settings/DefaultRingtonePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "system_sound_theme"

    .line 36
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 38
    iput-object p2, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 59
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p1, :cond_0

    const/16 p0, 0x200

    .line 63
    invoke-virtual {p1, p0}, Lcom/android/settings/RingtonePreference;->setRingtoneType(I)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 48
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SOUND_THEME:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_HIDE_SYSTEM_SOUND_SETTING:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 50
    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasSystemVibrationMenu(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

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

    const-string p0, "system_sound_theme"

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 111
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x150

    const/16 v0, 0x27e2

    .line 113
    invoke-static {p1, v0}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(II)V

    .line 117
    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 118
    iget-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "SoundSettings"

    const-string v1, "handlePreferenceTreeClick"

    .line 121
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 123
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SoundSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const/4 v1, 0x5

    if-ne p1, v1, :cond_2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    const/4 v2, 0x1

    if-eq p2, v2, :cond_0

    return v0

    .line 94
    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v2, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_1
    if-ne p2, v1, :cond_2

    if-eqz p3, :cond_2

    .line 99
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 100
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p1, 0x6

    .line 101
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->setUpdateRingtoneType(I)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateSystemSoundNameAsync()V

    :cond_2
    return v0
.end method

.method public onPause()V
    .locals 0

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x6

    .line 69
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->setUpdateRingtoneType(I)V

    .line 70
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->onResume()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 79
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateState(Landroidx/preference/Preference;)V

    .line 81
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundSystemSoundThemeController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings/RingtonePreference;->semSetSummaryColorToColorPrimaryDark(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
