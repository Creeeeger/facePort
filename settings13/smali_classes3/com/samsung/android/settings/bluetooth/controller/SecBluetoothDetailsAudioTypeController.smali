.class public Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SecBluetoothDetailsAudioTypeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# instance fields
.field mAdvancedContainer:Landroidx/preference/PreferenceGroup;

.field private mAudioTypePreference:Landroidx/preference/Preference;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected final mFragment:Landroidx/preference/PreferenceFragmentCompat;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mScreenId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Landroidx/lifecycle/Lifecycle;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 89
    iput-object p3, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 90
    iput-object p4, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 91
    invoke-virtual {p4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 92
    iput-object p2, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    .line 93
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$string;->screen_device_profiles_setting:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mScreenId:Ljava/lang/String;

    if-eqz p5, :cond_0

    .line 96
    invoke-virtual {p5, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private getAudioTypeInt()I
    .locals 2

    .line 210
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result p0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAudioTypeInt :: audioType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsAudioTypeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getAudioTypeString()Ljava/lang/String;
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->semGetAudioType()I

    move-result v0

    .line 196
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAudioTypeString :: audioType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecBluetoothDetailsAudioTypeController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 205
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_audio_type_others:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 202
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_audio_type_speaker:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 200
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->sec_bluetooth_audio_type_headphones:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private isSupportVolumeMonitorEarSafety()Z
    .locals 1

    .line 243
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_AUDIO_CONFIG_VOLUMEMONITOR_STAGE"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSupportVolumeMonitorFloatingFeature()Z
    .locals 1

    .line 238
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v0, "SEC_FLOATING_FEATURE_AUDIO_SUPPORT_VOLUME_MONITOR"

    invoke-virtual {p0, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "DSP"

    .line 239
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "FW"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private onStartFragment(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
    .locals 2

    .line 225
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 226
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    const-string v1, "device_address"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/SettingsActivity;

    if-eqz p1, :cond_0

    .line 229
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mFragment:Landroidx/preference/PreferenceFragmentCompat;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const/16 p0, 0x18

    .line 230
    invoke-virtual {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 231
    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 233
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    :cond_0
    return-void
.end method

.method private setPreference(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 178
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 179
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1, p3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 181
    iget-object p2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/android/settings/R$color;->bt_device_icon_tint_color:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p4, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 182
    invoke-virtual {p1, p4}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 185
    :cond_2
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "bluetooth_audio_type"

    .line 102
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    .line 103
    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 105
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->initPreference(Landroidx/preference/PreferenceScreen;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 112
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_audio_type"

    return-object p0
.end method

.method protected initPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    const-string v0, "bluetooth_pref_audio_type"

    .line 172
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mAudioTypePreference:Landroidx/preference/Preference;

    .line 174
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->getAudioTypeString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->setPreference(Landroidx/preference/Preference;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->isSupportVolumeMonitorFloatingFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->isSupportVolumeMonitorEarSafety()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public onDestroy()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string p0, "SecBluetoothDetailsAudioTypeController"

    const-string v0, "onDestroy"

    .line 152
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->isAvailable()Z

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceClick :: key = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SecBluetoothDetailsAudioTypeController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bluetooth_pref_audio_type"

    .line 162
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 163
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->event_device_profiles_setting_audio_type:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 164
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->getAudioTypeInt()I

    move-result v0

    .line 165
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mScreenId:Ljava/lang/String;

    int-to-long v2, v0

    invoke-static {v1, p1, v2, v3}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    .line 166
    iget-object p1, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-class v0, Lcom/samsung/android/settings/bluetooth/fragment/BluetoothAudioTypeFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->onStartFragment(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    const-string v0, "SecBluetoothDetailsAudioTypeController"

    const-string v1, "onResume"

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 133
    iget-object p0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mAdvancedContainer:Landroidx/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 140
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->mAudioTypePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/controller/SecBluetoothDetailsAudioTypeController;->getAudioTypeString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
