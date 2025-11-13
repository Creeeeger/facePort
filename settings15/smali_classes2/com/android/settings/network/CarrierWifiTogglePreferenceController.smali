.class public Lcom/android/settings/network/CarrierWifiTogglePreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;


# static fields
.field protected static final CARRIER_WIFI_NETWORK_PREF_KEY:Ljava/lang/String; = "carrier_wifi_network"

.field protected static final CARRIER_WIFI_TOGGLE_PREF_KEY:Ljava/lang/String; = "carrier_wifi_toggle"

.field private static final TAG:Ljava/lang/String; = "CarrierWifiTogglePreferenceController"


# instance fields
.field protected mCarrierNetworkPreference:Landroidx/preference/Preference;

.field protected final mContext:Landroid/content/Context;

.field protected mIsCarrierProvisionWifiEnabled:Z

.field protected mSubId:I

.field protected mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "carrier_wifi_network"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mCarrierNetworkPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->updateCarrierNetworkPreference()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    iget-boolean p0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mIsCarrierProvisionWifiEnabled:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCarrierNetworkSsid()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/MergedCarrierEntry;->getSsid()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public getSliceHighlightMenuRes()I
    .locals 0

    const p0, 0x7f1417c9

    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V

    return-void
.end method

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 1

    iput p2, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mSubId:I

    new-instance p2, Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget-object v0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p2, p1, v0, p0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;-><init>(Landroidx/lifecycle/Lifecycle;Landroid/content/Context;Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;)V

    iput-object p2, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget p1, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mSubId:I

    invoke-virtual {p2, p1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkProvisionEnabled(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mIsCarrierProvisionWifiEnabled:Z

    return-void
.end method

.method public isCarrierNetworkActive()Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkActive()Z

    move-result p0

    return p0
.end method

.method public isChecked()Z
    .locals 3

    iget-object p0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->mWifiPickerTracker:Lcom/android/wifitrackerlib/WifiPickerTracker;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker;->getMergedCarrierEntry()Lcom/android/wifitrackerlib/MergedCarrierEntry;

    move-result-object p0

    const-string v0, "WifiPickerTrackerHelper"

    if-nez p0, :cond_0

    const-string p0, "Failed to get MergedCarrierEntry to query enabled status"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget p0, p0, Lcom/android/wifitrackerlib/MergedCarrierEntry;->mSubscriptionId:I

    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Landroid/net/wifi/WifiManager;->isCarrierNetworkOffloadEnabled(IZ)Z

    move-result p0

    const-string v1, "isCarrierNetworkEnabled:"

    invoke-static {v1, v0, p0}, Landroidx/apppickerview/widget/AbsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return p0
.end method

.method public bridge synthetic isControllable()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->isControllable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;

    move-result-object p0

    return-object p0
.end method

.method public onNumSavedNetworksChanged()V
    .locals 0

    return-void
.end method

.method public onNumSavedSubscriptionsChanged()V
    .locals 0

    return-void
.end method

.method public bridge synthetic onScanRequested()V
    .locals 0

    return-void
.end method

.method public onWifiEntriesChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->updateCarrierNetworkPreference()V

    return-void
.end method

.method public onWifiEntriesChanged(I)V
    .locals 0

    invoke-interface {p0}, Lcom/android/wifitrackerlib/WifiPickerTracker$WifiPickerTrackerCallback;->onWifiEntriesChanged()V

    return-void
.end method

.method public onWifiStateChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->updateCarrierNetworkPreference()V

    return-void
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z

    move-result p0

    return p0
.end method

.method public setChecked(Z)Z
    .locals 0

    iget-object p0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->setCarrierNetworkEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public updateCarrierNetworkPreference()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mCarrierNetworkPreference:Landroidx/preference/Preference;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->getAvailabilityStatus()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->isCarrierNetworkActive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mCarrierNetworkPreference:Landroidx/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    iget-object v0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mCarrierNetworkPreference:Landroidx/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->getCarrierNetworkSsid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/settings/network/CarrierWifiTogglePreferenceController;->mCarrierNetworkPreference:Landroidx/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
