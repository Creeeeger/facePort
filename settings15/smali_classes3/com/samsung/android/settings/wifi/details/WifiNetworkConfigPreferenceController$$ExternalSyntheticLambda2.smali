.class public final synthetic Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget p1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;->$r8$classId:I

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController$$ExternalSyntheticLambda2;->f$0:Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    packed-switch p1, :pswitch_data_0

    const-string p1, "WifiNetworkConfigPrefCtrl"

    const-string v0, "mProxySettingsDropDownListeners called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    :cond_0
    if-ne p1, v1, :cond_1

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    :cond_1
    if-ne p1, v0, :cond_2

    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    :goto_0
    invoke-virtual {v2}, Landroid/net/IpConfiguration$ProxySettings;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "proxy_type"

    invoke-virtual {p2, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "1027"

    invoke-static {v2, v4, p2, v3}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->initProxySettingOverride()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setProxyConfigFields()V

    if-nez p1, :cond_3

    sget-object p2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_4

    sget-object p2, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_1

    :cond_4
    if-ne p1, v0, :cond_5

    sget-object p2, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    :goto_1
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateProxyPreference(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->enableSaveIfAppropriate()V

    return v1

    :pswitch_0
    const-string p1, "WifiNetworkConfigPrefCtrl"

    const-string v0, "mIpSettingsDropDownListeners called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x1

    if-nez p1, :cond_6

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_2

    :cond_6
    if-ne p1, v0, :cond_7

    sget-object v1, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    :goto_2
    invoke-virtual {v1}, Landroid/net/IpConfiguration$IpAssignment;->name()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ip_settings_type"

    invoke-virtual {p2, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mSAScreenId:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "1027"

    invoke-static {v1, v3, p2, v2}, Lcom/samsung/android/settings/logging/SALogging;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->getIpConfiguration()Landroid/net/IpConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/IpConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    :cond_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->setIpConfigFields()V

    iput-boolean v0, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mAutoGenFirstTime:Z

    if-nez p1, :cond_9

    sget-object p2, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_3

    :cond_9
    if-ne p1, v0, :cond_a

    sget-object p2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_3

    :cond_a
    iget-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    :goto_3
    iput-object p2, p0, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateIpPreference(I)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->updateBottomMode(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/details/WifiNetworkConfigPreferenceController;->enableSaveIfAppropriate()V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
