.class public Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SecSoundCarrierRingtoneController.java"

# interfaces
.implements Lcom/android/settings/development/OnActivityResultListener;


# static fields
.field private static final KEY:Ljava/lang/String; = "carrierringtone"

.field private static final REQUEST_CODE_WIFI_SETUP_ACTIVITY:I = 0x3

.field private static final TAG:Ljava/lang/String; = "SecSoundCarrierRingtoneController"


# instance fields
.field private mFragment:Lcom/android/settings/SettingsPreferenceFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;)V
    .locals 1

    const-string v0, "carrierringtone"

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    iput-object p2, p0, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    return-void
.end method

.method private getCarrierRingtoneURI()Ljava/lang/String;
    .locals 0

    .line 123
    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SKT_RINGTONE:Z

    if-eqz p0, :cond_0

    const-string p0, "http://www.tcoloring.com"

    return-object p0

    .line 125
    :cond_0
    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_KT_RINGTONE:Z

    if-eqz p0, :cond_1

    const-string p0, "http://ringtoyou.kt.com"

    return-object p0

    .line 127
    :cond_1
    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_LGU_RINGTONE:Z

    if-eqz p0, :cond_2

    const-string p0, "http://www.musicbellring.com"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private isSupportCarrierRingtone()Z
    .locals 0

    .line 135
    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SKT_RINGTONE:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_KT_RINGTONE:Z

    if-nez p0, :cond_0

    sget-boolean p0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_LGU_RINGTONE:Z

    if-eqz p0, :cond_1

    .line 137
    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isLDUModel()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 2

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;->isSupportCarrierRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p0, :cond_0

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

    const-string p0, "carrierringtone"

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 91
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 92
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 93
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.samsung.settings.PICK_WIFI_NETWORK"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "extra_prefs_show_button_bar"

    .line 94
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "wifi_enable_next_on_connect"

    .line 95
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 96
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->back_button_label:I

    .line 97
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "extra_prefs_set_back_text"

    .line 96
    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 100
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SecSoundCarrierRingtoneController"

    const-string v1, "handlePreferenceTreeClick"

    .line 102
    invoke-static {p1, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0

    .line 106
    :cond_0
    new-instance p1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;->getCarrierRingtoneURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 108
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 109
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    :try_start_1
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    return v0

    :cond_1
    :goto_0
    return v1

    :cond_2
    return v0
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
    .locals 1

    const/4 p3, 0x0

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/as/utils/SoundUtils;->isNetworkConnected(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;->getCarrierRingtoneURI()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 77
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 79
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/settings/as/audio/SecSoundCarrierRingtoneController;->mFragment:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return p3
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

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 59
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_SKT_RINGTONE:Z

    if-eqz v0, :cond_0

    .line 60
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_tcoloring:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 61
    :cond_0
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_KT_RINGTONE:Z

    if-eqz v0, :cond_1

    .line 62
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_ringtoyou:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 63
    :cond_1
    sget-boolean v0, Lcom/samsung/android/settings/as/rune/AudioRune;->SUPPORT_LGU_RINGTONE:Z

    if-eqz v0, :cond_2

    .line 64
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->sec_musicbellring:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 65
    sget v0, Lcom/android/settings/R$string;->sec_musicbellring_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_0

    :cond_2
    const-string p0, ""

    .line 67
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
