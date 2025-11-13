.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "WifiApConfigurePowerSavingModeController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final BUNDLE_KEY_POWER_SAVING_MODE_SWITCH_VALUE:Ljava/lang/String; = "bundle_key_power_saving_mode_switch_value"

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "power_saving_mode"

.field private static final TAG:Ljava/lang/String; = "WifiApConfigurePowerSavingModeController"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

.field private mWifiApEditSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 40
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->TAG:Ljava/lang/String;

    const-string v1, "displayPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "power_saving_mode"

    .line 41
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    .line 42
    sget v0, Lcom/android/settings/R$string;->wifi_ap_power_save:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->wifi_ap_power_save_hint:I

    invoke-static {v0, v1}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 44
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isPowerSavingModeSupported(Landroid/content/Context;)Z

    move-result p0

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
    .locals 2

    .line 62
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->TAG:Ljava/lang/String;

    const-string v1, "isChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->isControllable()Z

    move-result p0

    return p0
.end method

.method public isPowerSavingModeModified()Z
    .locals 4

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isPowerSavingModeEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->isChecked()Z

    move-result p0

    .line 78
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Power Saving Mode States Old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", new: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 83
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is Power Saving Mode State modified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/samsung/android/settings/cube/Controllable;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bundle_key_power_saving_mode_switch_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 106
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 107
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string v0, "bundle_key_power_saving_mode_switch_value"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onStateChanged(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/samsung/android/settings/cube/Controllable;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public savePowerSavingModeSwitchState()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->isPowerSavingModeModified()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating new Power Saving Mode value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->isChecked()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setPowerSavingModeIsEnabled(Landroid/content/Context;Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 68
    sget-object p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-wide/16 p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    const-string v0, "TETH_012"

    const-string v1, "8023"

    .line 69
    invoke-static {v0, v1, p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigurePowerSavingModeController;->mWifiApEditSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
