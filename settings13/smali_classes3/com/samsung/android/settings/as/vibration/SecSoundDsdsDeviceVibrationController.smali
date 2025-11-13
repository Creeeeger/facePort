.class public Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;
.super Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;
.source "SecSoundDsdsDeviceVibrationController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "ds_phone_vibration_pattern"


# instance fields
.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mPreference:Landroidx/preference/SecPreferenceScreen;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "ds_phone_vibration_pattern"

    .line 42
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 43
    iput-object p2, p0, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method private isRingtoneHasHaptic(I)Z
    .locals 0

    if-nez p1, :cond_0

    .line 137
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 139
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 p1, 0x80

    invoke-static {p0, p1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 143
    invoke-static {p0}, Landroid/media/RingtoneManager;->hasHapticChannels(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 68
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    iput-object p1, p0, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSoftphone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 54
    invoke-static {v0}, Lcom/android/settings/Utils;->isCMCAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/as/utils/VibUtils;->hasVibrator(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 56
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 57
    sget-boolean p0, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz p0, :cond_2

    return v1

    :cond_2
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

.method public getDeviceVibrationSummary()Ljava/lang/String;
    .locals 15

    .line 91
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "content://com.android.settings.personalvibration.PersonalVibrationProvider/registerinfo"

    const/4 v8, 0x2

    new-array v9, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    const-string v1, ""

    move-object v11, v1

    move v12, v10

    :goto_0
    if-ge v12, v8, :cond_5

    if-nez v12, :cond_0

    const-string v1, "ringtone_vibration_sep_index"

    const-string v2, "sync_vibration_with_ringtone"

    goto :goto_1

    :cond_0
    const-string v1, "ringtone_vibration_sep_index_2"

    const-string v2, "sync_vibration_with_ringtone_2"

    :goto_1
    move-object v13, v2

    const v2, 0xc373

    .line 106
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v14, 0x1

    .line 109
    :try_start_0
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "vibration_pattern=?"

    new-array v5, v14, [Ljava/lang/String;

    .line 110
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v10

    const/4 v6, 0x0

    move-object v1, v0

    .line 109
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 111
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "vibration_name"

    .line 112
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v9, v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    .line 109
    :try_start_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v1

    :try_start_3
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2

    :cond_1
    :goto_3
    if-eqz v1, :cond_2

    .line 114
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 115
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 118
    :cond_2
    :goto_4
    sget-boolean v1, Lcom/samsung/android/settings/as/rune/VibRune;->SUPPORT_SYNC_WITH_HAPTIC:Z

    if-eqz v1, :cond_3

    .line 119
    invoke-static {v0, v13, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v14, :cond_3

    .line 120
    invoke-direct {p0, v12}, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;->isRingtoneHasHaptic(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->sec_vib_picker_sync_with_ringtone:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v9, v12

    .line 125
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2, v12}, Lcom/samsung/android/settings/as/utils/SimUtils;->getSimName(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v9, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-nez v12, :cond_4

    .line 127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_4
    move-object v11, v1

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    :cond_5
    return-object v11
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

    const-string p0, "ds_phone_vibration_pattern"

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
    .locals 1

    .line 150
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/samsung/android/settings/as/vibration/SecDsdsDeviceVibrationSettings;

    .line 152
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 153
    invoke-interface {p0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->sec_vibration_call_title:I

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitleRes(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

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

.method public onPause()V
    .locals 0

    .line 78
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 73
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
    .locals 1

    .line 83
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateState(Landroidx/preference/Preference;)V

    .line 85
    check-cast p1, Landroidx/preference/SecPreferenceScreen;

    .line 86
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;->getDeviceVibrationSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/as/vibration/SecSoundDsdsDeviceVibrationController;->mPreference:Landroidx/preference/SecPreferenceScreen;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/SecPreferenceScreen;->semSetSummaryColorToColorPrimaryDark(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
