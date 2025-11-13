.class public Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;
.super Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;
.source "SecSoundRingtoneController.java"

# interfaces
.implements Lcom/android/settings/development/OnActivityResultListener;


# static fields
.field public static final DOCUMENTS_UI_POLICY:Ljava/lang/String; = "DocumentsUIPolicy"

.field public static final DOCUMENTS_UI_POLICY_DEFAULT:I = 0x0

.field public static final DOCUMENTS_UI_POLICY_SEC:I = 0x1

.field private static final KEY:Ljava/lang/String; = "ringtone"

.field private static final REQUEST_AUDIO_RINGTONE:I = 0x1

.field private static final REQUEST_AUDIO_RINGTONE_2:I = 0x2


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;

.field private mPreference:Lcom/android/settings/DefaultRingtonePreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "ringtone"

    .line 61
    invoke-direct {p0, p1, p3, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    .line 62
    iput-object p2, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    .line 63
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    const-string p2, "ringtone"

    .line 55
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 56
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 89
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/DefaultRingtonePreference;

    iput-object p1, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 73
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    return v1

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->shouldShowRingtoneVolume()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/samsung/android/settings/Rune;->supportSoftphone()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 77
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SimUtils;->isMultiSimEnabled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v1

    :cond_3
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

    const-string p0, "ringtone"

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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p0, :cond_0

    .line 150
    invoke-virtual {p0}, Landroidx/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 7

    .line 157
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/provider/MediaStore;->getVolumeName(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "title"

    .line 159
    invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "highlight_offset"

    .line 160
    invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    iget-object v6, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v6, v3, v2}, Lcom/samsung/android/settings/as/utils/SoundUtils;->checkRingtoneVolumeType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    .line 163
    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getControlType()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 164
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 165
    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatusForControl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0

    :cond_0
    if-ne v2, v1, :cond_1

    .line 170
    new-instance v1, Lcom/samsung/android/settings/cube/ControlValue$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/core/SecCustomPreferenceController;->getControlType()I

    move-result v6

    invoke-direct {v1, v2, v6}, Lcom/samsung/android/settings/cube/ControlValue$Builder;-><init>(Ljava/lang/String;I)V

    .line 171
    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setUri(Landroid/net/Uri;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v4, v5}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatusForControl()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getStatusCode()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;

    move-result-object p0

    .line 177
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->build()Lcom/samsung/android/settings/cube/ControlValue;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 124
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0xfab

    .line 126
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/settings/as/logging/LoggingWrapper;->insertEventLogging(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/DefaultRingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 130
    iget-object v0, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    iget-object v1, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    invoke-virtual {v1}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SoundSettings"

    const-string v2, "handlePreferenceTreeClick"

    .line 132
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 134
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/as/utils/SoundUtils;->showToEnableSecSoundPickerDialog(Landroid/content/Context;)V

    :goto_0
    return p1

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

.method public isControllable()Z
    .locals 0

    const/4 p0, 0x1

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

    .line 110
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

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-eq p2, v1, :cond_0

    return v0

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p0, :cond_1

    .line 117
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/DefaultRingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    :cond_1
    return v0
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->setUpdateRingtoneType(I)V

    .line 97
    invoke-super {p0}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->onResume()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setValue(Lcom/samsung/android/settings/cube/ControlValue;)Lcom/samsung/android/settings/cube/ControlResult;
    .locals 10

    .line 184
    new-instance v0, Lcom/samsung/android/settings/cube/ControlResult$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/cube/ControlResult$Builder;-><init>(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getUri()Landroid/net/Uri;

    move-result-object v1

    .line 188
    invoke-virtual {p1}, Lcom/samsung/android/settings/cube/ControlValue;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, " )"

    const-string v4, "SoundSettings"

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v1, :cond_0

    .line 190
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setValue ( TYPE_RINGTONE, uri = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0, v2, v5}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->setActualRingtoneUri(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    const-string v2, "highlight_offset"

    .line 196
    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/cube/ControlValue;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 198
    :try_start_0
    new-instance v7, Landroid/media/RingtoneManager;

    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 199
    invoke-virtual {v7, v1, v5}, Landroid/media/RingtoneManager;->addCustomExternalRingtone(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 201
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 202
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "bookmark"

    .line 203
    invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v8, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v1, v7, v9, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 206
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 207
    invoke-virtual {v1, v2, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 208
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_2

    .line 211
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setValue ( TYPE_RINGTONE, custom uri = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0, v5, v1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Unable to add new ringtone"

    .line 216
    invoke-static {v4, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    move v5, v6

    :goto_0
    if-eqz v5, :cond_3

    .line 220
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->SUCCESS:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    goto :goto_1

    :cond_3
    sget-object p0, Lcom/samsung/android/settings/cube/ControlResult$ResultCode;->FAIL:Lcom/samsung/android/settings/cube/ControlResult$ResultCode;

    :goto_1
    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->setResult(Lcom/samsung/android/settings/cube/ControlResult$ResultCode;)Lcom/samsung/android/settings/cube/ControlResult$Builder;

    .line 221
    invoke-virtual {v0}, Lcom/samsung/android/settings/cube/ControlResult$Builder;->build()Lcom/samsung/android/settings/cube/ControlResult;

    move-result-object p0

    return-object p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 102
    invoke-super {p0, p1}, Lcom/samsung/android/settings/as/audio/SecSoundSettingPrefController;->updateState(Landroidx/preference/Preference;)V

    .line 103
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundRingtoneController;->mPreference:Lcom/android/settings/DefaultRingtonePreference;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 104
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
