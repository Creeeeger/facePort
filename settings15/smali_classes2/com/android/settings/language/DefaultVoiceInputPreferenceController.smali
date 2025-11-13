.class public final Lcom/android/settings/language/DefaultVoiceInputPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHelper:Lcom/android/settings/language/VoiceInputHelper;

.field public mPreference:Landroidx/preference/Preference;

.field public mScreen:Landroidx/preference/PreferenceScreen;


# virtual methods
.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v0, "voice_input_settings"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public final getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 11

    iget-object v0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/language/VoiceInputHelper;

    iget-object v1, v0, Lcom/android/settings/language/VoiceInputHelper;->mCurrentRecognizer:Landroid/content/ComponentName;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    return-object v2

    :cond_1
    iget-object v0, v0, Lcom/android/settings/language/VoiceInputHelper;->mAvailableRecognizerInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;

    iget-object v4, v3, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mKey:Ljava/lang/String;

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v0, Lcom/android/settings/language/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object v6, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v9, v3, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mComponentName:Landroid/content/ComponentName;

    iget v8, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->mUserId:I

    const/4 v10, 0x0

    move-object v5, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;I)V

    iput-object v3, v0, Lcom/android/settings/language/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;

    return-object v0

    :cond_3
    return-object v2
.end method

.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "voice_input_settings"

    return-object p0
.end method

.method public final getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    check-cast p0, Lcom/android/settings/language/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;

    iget-object p0, p0, Lcom/android/settings/language/DefaultVoiceInputPicker$VoiceInputDefaultAppInfo;->mInfo:Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;

    iget-object v0, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mSettings:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/settings/language/VoiceInputHelper$RecognizerInfo;->mSettings:Landroid/content/ComponentName;

    invoke-virtual {p1, p0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    :cond_1
    :goto_0
    return-object p1
.end method

.method public final isAvailable()Z
    .locals 1

    iget-object p0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.voice_recognizers"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->updatePreference$4$1()V

    return-void
.end method

.method public final updatePreference$4$1()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mHelper:Lcom/android/settings/language/VoiceInputHelper;

    invoke-virtual {v0}, Lcom/android/settings/language/VoiceInputHelper;->buildUi()V

    invoke-virtual {p0}, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    const-string v1, "voice_input_settings"

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    iget-object p0, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public final updateState(Landroidx/preference/Preference;)V
    .locals 0

    iget-object p1, p0, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroidx/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/language/DefaultVoiceInputPreferenceController;->updatePreference$4$1()V

    return-void
.end method
