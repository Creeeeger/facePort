.class public Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BluetoothA2dpHwOffloadPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/BluetoothServiceConnectionListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field protected mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

.field mChanged:Z

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mChanged:Z

    .line 55
    iput-object p2, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "bluetooth_disable_a2dp_hw_offload"

    return-object p0
.end method

.method public isDefaultValue()Z
    .locals 1

    const-string/jumbo p0, "persist.bluetooth.a2dp_offload.disabled"

    const/4 v0, 0x0

    .line 157
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onBluetoothCodecUpdated()V
    .locals 0

    return-void
.end method

.method public onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 2

    const-string v0, "DevSettingsA2dpOffload"

    const-string/jumbo v1, "onBluetoothServiceConnected"

    .line 95
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iput-object p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public onBluetoothServiceDisconnected()V
    .locals 2

    const-string v0, "DevSettingsA2dpOffload"

    const-string/jumbo v1, "onBluetoothServiceDisconnected"

    .line 108
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "DevSettingsA2dpOffload"

    const-string/jumbo v1, "onDestroy"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 115
    iput-object v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-void
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    .line 140
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchEnabled()V

    const-string/jumbo v0, "persist.bluetooth.a2dp_offload.disabled"

    const/4 v1, 0x0

    .line 145
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 146
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onHwOffloadDialogCanceled()V
    .locals 1

    const/4 v0, 0x0

    .line 182
    iput-boolean v0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mChanged:Z

    return-void
.end method

.method public onHwOffloadDialogConfirmed()V
    .locals 2

    .line 166
    iget-boolean p0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mChanged:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    const-string/jumbo v0, "persist.bluetooth.a2dp_offload.disabled"

    .line 170
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 v1, p0, 0x1

    .line 171
    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    xor-int/lit8 p0, p0, 0x1

    .line 174
    invoke-static {p0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.bluetooth.leaudio_offload.disabled"

    .line 173
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mChanged:Z

    const-string/jumbo p2, "persist.bluetooth.a2dp_offload.disabled"

    const/4 v0, 0x0

    .line 69
    invoke-static {p2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, p1

    .line 70
    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object p0, p0, Lcom/android/settings/development/BluetoothA2dpHwOffloadPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothA2dp;->setA2dpOffloadMode()V

    :cond_0
    return p1
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    const-string/jumbo p1, "persist.bluetooth.a2dp_offload.disabled"

    const/4 v0, 0x0

    .line 85
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 86
    iget-object p0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
