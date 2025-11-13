.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda0;->f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v0, "1045"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreferenceByConfig()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    const-string v0, "1046"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    const/4 v0, 0x1

    const-string v1, "WifiNetworkConfigPrefCtrl"

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v3}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiConfiguration;

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-ne v2, v5, :cond_1

    goto :goto_0

    :cond_2
    const-string v2, "getWifiConfigurationForNetworkId return null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_3

    move-object p1, v4

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "saveConfig mIpAssignment : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mProxySettings : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/net/IpConfiguration;

    invoke-direct {v1}, Landroid/net/IpConfiguration;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, v2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, "any"

    iput-object v1, p1, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :cond_4
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$2;-><init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;)V

    invoke-virtual {v1, p1, v2}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1, p1}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateConfig(Landroid/net/wifi/WifiConfiguration;)V

    goto/16 :goto_4

    :cond_5
    new-instance p1, Landroid/net/IpConfiguration;

    invoke-direct {p1}, Landroid/net/IpConfiguration;-><init>()V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p1, v2}, Landroid/net/IpConfiguration;->setIpAssignment(Landroid/net/IpConfiguration$IpAssignment;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p1, v2}, Landroid/net/IpConfiguration;->setProxySettings(Landroid/net/IpConfiguration$ProxySettings;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-virtual {p1, v2}, Landroid/net/IpConfiguration;->setStaticIpConfiguration(Landroid/net/StaticIpConfiguration;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v2}, Landroid/net/IpConfiguration;->setHttpProxy(Landroid/net/ProxyInfo;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "sem_wifi"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v4, :cond_9

    iget v5, v4, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-nez v6, :cond_7

    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v9, 0x8

    invoke-virtual {v6, v9}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, v4, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v6, v7}, Ljava/util/BitSet;->get(I)Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v4, :cond_8

    aget-object v4, v4, v7

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_8

    :goto_1
    move v7, v0

    goto :goto_3

    :cond_7
    :goto_2
    iget-object v4, v4, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v8, :cond_8

    goto :goto_1

    :cond_8
    :goto_3
    const-string/jumbo v4, "updateNetwork"

    invoke-static {v5, v4, v3, v2}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil$ReportUtil;->getReportDataForWifiManagerApi(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "hasPassword"

    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v3, 0x69

    invoke-virtual {p1, v3, v2}, Lcom/samsung/android/wifi/SemWifiManager;->reportIssue(ILandroid/os/Bundle;)V

    :cond_9
    iget-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v2}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    const-string/jumbo p1, "save mTempConfig is SAVE FOR CONNECT"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_a
    const-string/jumbo p1, "save mTempConfig is null"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updatePreferenceByConfig()V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
