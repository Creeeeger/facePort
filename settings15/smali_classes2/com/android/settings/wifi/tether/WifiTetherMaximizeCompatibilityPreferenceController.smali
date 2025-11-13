.class public final Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mIsChecked:Z

.field mShouldHidePreference:Z


# virtual methods
.method public final getPreferenceKey()Ljava/lang/String;
    .locals 0

    const-string p0, "wifi_tether_maximize_compatibility"

    return-object p0
.end method

.method public final isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mShouldHidePreference:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public isMaximizeCompatibilityEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isBridgedApConcurrencySupported()Z

    move-result p0

    const-string v2, "WifiTetherMaximizeCompatibilityPref"

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->isBridgedModeOpportunisticShutdownEnabled()Z

    move-result p0

    const-string v0, "isBridgedModeOpportunisticShutdownEnabled:"

    invoke-static {v0, v2, p0}, Lcom/android/settings/AirplaneModeEnabler$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    xor-int/2addr p0, v3

    return p0

    :cond_2
    invoke-virtual {v0}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result p0

    const-string v0, "getBand:"

    invoke-static {p0, v0, v2}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    if-ne p0, v3, :cond_3

    move v1, v3

    :cond_3
    return v1
.end method

.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mIsChecked:Z

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final updateDisplay$1()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->is5GHzBandSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_0
    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherMaximizeCompatibilityPreferenceController;->mIsChecked:Z

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isBridgedApConcurrencySupported()Z

    move-result p0

    if-eqz p0, :cond_4

    const p0, 0x7f143585

    goto :goto_1

    :cond_4
    const p0, 0x7f143586

    :goto_1
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method
