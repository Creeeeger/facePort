.class public Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "WifiApConfigureSupportWifi6Controller.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleEventObserver;


# static fields
.field private static final BUNDLE_KEY_SUPPORT_WIFI_6_SWITCH_VALUE:Ljava/lang/String; = "bundle_key_support_wifi_6_switch_value"

.field public static final KEY_PREFERENCE:Ljava/lang/String; = "support_wifi_6_standard"

.field private static final TAG:Ljava/lang/String; = "WifiApConfigureSupportWifi6Controller"


# instance fields
.field private isValueModifiedManually:Z

.field private mContext:Landroid/content/Context;

.field private mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

.field private mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 29
    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isValueModifiedManually:Z

    .line 33
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 39
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->TAG:Ljava/lang/String;

    const-string v1, "displayPreference"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "support_wifi_6_standard"

    .line 40
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SecSwitchPreference;

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    .line 41
    sget v0, Lcom/android/settings/R$string;->wifi_ap_11ax_title:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(I)V

    .line 42
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->wifi_ap_11ax_summary:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 43
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->getWifiApBandConfig(Landroid/content/Context;)Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isSupportWifi6StandardEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApFeatureUtils;->isWifi6StandardSupported(Landroid/content/Context;)Z

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

    .line 63
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->TAG:Ljava/lang/String;

    const-string v1, "isChecked"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

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

.method public isSupportWifi6SwitchStateModified()Z
    .locals 4

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isSupportWifi6StandardEnabled(Landroid/content/Context;)Z

    move-result v0

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isChecked()Z

    move-result p0

    .line 100
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Support Wifi6 Standard States Old: "

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

    .line 105
    :goto_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Support Wifi6 Standard State modified: "

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

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bundle_key_support_wifi_6_switch_value"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 135
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreInstanceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    const-string v0, "bundle_key_support_wifi_6_switch_value"

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

.method public saveSupportWifi6SwitchState()V
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v0

    if-nez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isSupportWifi6SwitchStateModified()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating new Support Wifi6 Standard state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isChecked()Z

    move-result p0

    invoke-static {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->setSupportWifi6StandardIsEnabled(Landroid/content/Context;Z)V

    goto :goto_0

    .line 118
    :cond_0
    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "As 6Ghz is selected NOT Updating new Support Wifi6 Standard state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isChecked()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 4

    .line 69
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v0

    .line 71
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setChecked: isChecked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", wifiApBandConfig(is6Ghz) : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 73
    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isValueModifiedManually:Z

    return p1

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->wifi_ap_turn_on_6GHZ_dependents:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v0
.end method

.method public setHost(Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    return-void
.end method

.method public updateState()V
    .locals 4

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mWifiApConfigureSettings:Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApEditSettings;->getBandPreferenceConfig()Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/mobileap/datamodels/WifiApBandConfig;->isThisBand6Ghz()Z

    move-result v0

    .line 85
    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Updating state: wifiApBandConfig(is6Ghz) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 87
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 88
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->isValueModifiedManually:Z

    if-nez v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mThisSwitchPreference:Landroidx/preference/SecSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/mobileap/configure/WifiApConfigureSupportWifi6Controller;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/mobileap/utils/WifiApSoftApUtils;->isSupportWifi6StandardEnabled(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
