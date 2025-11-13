.class public Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothMaxConnectedAudioDevicesPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final MAX_CONNECTED_AUDIO_DEVICES_PROPERTY:Ljava/lang/String; = "persist.bluetooth.maxconnectedaudiodevices"


# instance fields
.field private mDefaultMaxConnectedAudioDevices:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "com.android.bluetooth"

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 43
    iput v1, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    .line 49
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p1

    const-string v1, "config_bluetooth_max_connected_audio_devices"

    const-string v2, "integer"

    .line 51
    invoke-virtual {p1, v1, v2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 55
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 67
    iget-object p1, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Landroidx/preference/ListPreference;

    .line 68
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    .line 69
    aget-object v2, v0, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->mDefaultMaxConnectedAudioDevices:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    .line 70
    invoke-virtual {p1, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_max_connected_audio_devices"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 2

    .line 112
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const-string/jumbo v0, "persist.bluetooth.maxconnectedaudiodevices"

    const-string v1, ""

    .line 113
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 75
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 76
    move-object v0, p1

    check-cast v0, Landroidx/preference/ListPreference;

    .line 77
    invoke-virtual {v0, p2}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_0

    const-string p2, ""

    :cond_0
    const-string/jumbo v0, "persist.bluetooth.maxconnectedaudiodevices"

    .line 81
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p1}, Lcom/android/settings/development/BluetoothMaxConnectedAudioDevicesPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 4

    .line 88
    check-cast p1, Landroidx/preference/ListPreference;

    .line 89
    invoke-virtual {p1}, Landroidx/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p0

    const-string/jumbo v0, "persist.bluetooth.maxconnectedaudiodevices"

    .line 90
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 93
    invoke-virtual {p1, v1}, Landroidx/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    const-string v1, ""

    .line 96
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v3, v1

    .line 100
    :cond_1
    :goto_0
    invoke-virtual {p1, v3}, Landroidx/preference/ListPreference;->setValueIndex(I)V

    .line 101
    aget-object p0, p0, v3

    invoke-virtual {p1, p0}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
