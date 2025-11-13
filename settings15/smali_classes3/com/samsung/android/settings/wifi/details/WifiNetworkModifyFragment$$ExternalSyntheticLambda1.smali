.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/settingslib/core/AbstractPreferenceController;

    instance-of p0, p1, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/samsung/android/settings/wifi/details/WifiEapPreferenceController;->updatePreference(Z)V

    goto :goto_0

    :cond_0
    instance-of p0, p1, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;

    iget-object p0, p1, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenPref:Landroidx/preference/SwitchPreferenceCompat;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p1, Lcom/samsung/android/settings/wifi/details/WifiHiddenNetworkPreferenceController;->mHiddenSsid:Z

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    instance-of p0, p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-virtual {p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreference()V

    :cond_3
    :goto_0
    return-void
.end method
