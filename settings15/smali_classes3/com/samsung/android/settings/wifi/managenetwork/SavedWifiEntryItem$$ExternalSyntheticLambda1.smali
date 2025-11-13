.class public final synthetic Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 7

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem$$ExternalSyntheticLambda1;->f$0:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;

    iget p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x1

    :goto_0
    const/4 v1, 0x0

    const-string v5, "WIFI_220"

    const-string v6, "1266"

    invoke-static {v3, v4, v5, v6, v1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-boolean v3, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsRemovable:Z

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v3

    if-ne v3, v2, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/settings/wifi/WifiDevicePolicyManager;->canModifyNetwork(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "key_chosen_wifientry_key"

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "key_chosen_wifientry_config"

    invoke-virtual {v2, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "manage_network"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mContext:Landroid/content/Context;

    invoke-direct {p1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailsFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    iget-object v0, p1, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mDestinationName:Ljava/lang/String;

    const/16 p0, 0x67

    iput p0, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mSourceMetricsCategory:I

    iput-object v2, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mArguments:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_1

    :cond_3
    iget-boolean p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mIsChecked:Z

    xor-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntryItem;->mListener:Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;

    iget p1, p0, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->mMode:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/managenetwork/SavedWifiEntrySettings;->updateComponentsStatus(I)V

    :goto_1
    return-void
.end method
