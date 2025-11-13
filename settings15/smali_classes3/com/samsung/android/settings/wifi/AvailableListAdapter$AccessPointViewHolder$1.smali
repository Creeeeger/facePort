.class public final Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    return-void
.end method


# virtual methods
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "WifiList.Available"

    const-string p1, "onMenuItemClick but ignored. WifiEntry is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v0, "WifiSettings"

    const/4 v2, 0x1

    if-eq p1, v2, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1, v1}, Lcom/android/wifitrackerlib/WifiEntry;->setAutoJoinEnabled(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "sem_wifi_carrier_network_offload_enabled"

    invoke-static {p0, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v0, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    sget v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->$r8$clinit:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "key_modify_wifientry_key"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v3, Lcom/samsung/android/settings/wifi/details/WifiNetworkModifyFragment;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v3, v1, p1}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string p1, "0122"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_3
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    if-eqz v1, :cond_5

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/scloud/SCloudWifiDataManager;->syncToRemove(Landroid/net/wifi/WifiConfiguration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v1, v1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "onForget"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, v1, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/WifiSettings;->forget$1(Lcom/android/wifitrackerlib/WifiEntry;)V

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string p1, "0121"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return v2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mSAScreenId:Ljava/lang/String;

    const-string v4, "0124"

    invoke-static {v3, v4}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v3, v3, Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v3, :cond_7

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    new-instance v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;)V

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V

    return v2

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object v3, v3, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/samsung/android/settingslib/wifi/WifiWarningDialogController;->getWifiWarningIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v3, "req_type"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extra_type"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ssid"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v2

    :cond_8
    if-eqz p1, :cond_10

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->mListener:Lcom/android/settings/wifi/WifiSettings$6;

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->DBG()Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "onConnect"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object p1, p1, Lcom/android/settings/wifi/WifiSettings$6;->this$0:Lcom/android/settings/wifi/WifiSettings;

    iget-object v3, p1, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->checkToShowRetryForIncorrectPasswordLength(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiSettings;->showConnectFragmentForRetry(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto/16 :goto_2

    :cond_a
    iget-object v3, p1, Lcom/android/settings/wifi/WifiSettings;->mRetryPopupController:Lcom/samsung/android/settings/wifi/WifiRetryPopupController;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/WifiRetryPopupController;->isSecurityTypeSupportRetry(Lcom/android/wifitrackerlib/WifiEntry;)Z

    move-result v3

    if-eqz v3, :cond_b

    move-object v3, p0

    goto :goto_0

    :cond_b
    const/4 v3, 0x0

    :goto_0
    iput-object v3, p1, Lcom/android/settings/wifi/WifiSettings;->mManualConnectingNetwork:Lcom/android/wifitrackerlib/WifiEntry;

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v3, v3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    if-eqz v3, :cond_e

    iget-object v0, p1, Lcom/android/settings/wifi/WifiSettings;->mOpenRoamingSettings:Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/advanced/OpenRoamingSettings;->isUserAllowedOAuthAgreement()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->isValidOpenRoamingToken(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v3, p1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v3, v0, v1}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    goto :goto_1

    :cond_c
    iget-object v0, p1, Lcom/android/settings/wifi/WifiSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f143609

    invoke-static {v0, v1, v0, v2}, Lcom/android/settings/network/apn/ApnPreference$$ExternalSyntheticOutline0;->m(Landroid/content/Context;ILandroid/content/Context;I)V

    goto :goto_1

    :cond_d
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiSettings;->launchOpenRoamingFragment()V

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_f

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v1

    if-nez v1, :cond_f

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v3, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v3, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clear bssid info "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/settings/wifi/WifiSettings;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    iget-object v5, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "any"

    iput-object v0, v1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    :cond_f
    :goto_1
    invoke-virtual {p1, p0}, Lcom/android/settings/wifi/WifiSettings;->connect(Lcom/android/wifitrackerlib/WifiEntry;)V

    goto :goto_2

    :cond_10
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p1, p1, Lcom/samsung/android/settings/wifi/WifiListAdapter;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isAddWifiConfigAllowed(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_11

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder$1;->this$1:Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->this$0:Lcom/samsung/android/settings/wifi/AvailableListAdapter;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/AvailableListAdapter$AccessPointViewHolder;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    sget v0, Lcom/samsung/android/settings/wifi/AvailableListAdapter;->$r8$clinit:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_connect_wifientry_key"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bssid"

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semGetBssid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-class v1, Lcom/samsung/android/settings/wifi/details/WifiNetworkConnectFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v0, p0}, Lcom/samsung/android/settings/wifi/WifiListAdapter;->launchFragment(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    :cond_11
    :goto_2
    return v2
.end method
