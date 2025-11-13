.class public final Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

.field public final synthetic this$0$1:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0$1:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    return-void
.end method


# virtual methods
.method public final refreshEntityHeader()V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0$1:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/widget/EntityHeaderController;->mLabel:Ljava/lang/CharSequence;

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mInManageNetwork:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsEphemeral()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    iput-object v1, v0, Lcom/android/settings/widget/EntityHeaderController;->mSummary:Ljava/lang/CharSequence;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$000(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mHeaderInsetPref:Lcom/samsung/android/settings/widget/SecInsetCategoryPreference;

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public final refreshIpAddress()V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, v1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$400(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object p0

    sget-object v2, Lcom/android/settings/Utils;->sBuilder:Ljava/lang/StringBuilder;

    const-class v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v2

    const-string v3, ""

    const-string v4, "\n"

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    const-string v6, "connectivity"

    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v2}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v5, v3

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v5}, Landroidx/compose/ui/text/input/EditProcessor$generateBatchErrorMessage$1$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/LinkAddress;

    invoke-virtual {v5}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    invoke-virtual {v5}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v5, v4}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_3
    :goto_1
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8

    iget-object p0, v1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    if-nez p0, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLinkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_6

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_5

    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_7
    iget-object v0, v1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p0, v1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_4

    :cond_8
    :goto_3
    iget-object p0, v1, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIpAddressPref:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final refreshPage()V
    .locals 16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->$r8$classId:I

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    const-string v5, "WifiDetailsPrefCtrl"

    const-string v6, "Update UI!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshEntityHeader()V

    iget-object v6, v0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0$1:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object v7, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSecurityPref:Landroidx/preference/Preference;

    iget-object v8, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    :goto_0
    iget-object v9, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v9, v8}, Lcom/android/wifitrackerlib/WifiEntry;->semGetSecurityString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v7, :cond_1

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$msetIdPasswordPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V

    :cond_1
    iget-object v7, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v7, :cond_2

    iget-object v7, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasspointPref:Landroidx/preference/Preference;

    invoke-static {v6}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$200(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f141bda

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget-object v10, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v10, v10, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v10

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v7, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasspointPref:Landroidx/preference/Preference;

    iget-object v8, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v8}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    invoke-virtual {v7, v8}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_1

    :cond_2
    iget-object v7, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mPasspointPref:Landroidx/preference/Preference;

    invoke-virtual {v7, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_1
    packed-switch v2, :pswitch_data_0

    iget-boolean v7, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mInManageNetwork:Z

    if-eqz v7, :cond_a

    iget-object v7, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v7, :cond_a

    iget-object v8, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    sget-object v10, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworkLocations()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v7}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_5

    const-string v11, "WPA_PSK"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    const-string v13, "SAE"

    if-nez v12, :cond_3

    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    :cond_3
    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10, v7, v13}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_4
    invoke-virtual {v10, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v10, v7, v11}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_5
    :goto_2
    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    const-wide v11, 0x408f400000000000L    # 1000.0

    if-nez v7, :cond_6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v10

    invoke-direct {v7, v8, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    new-instance v7, Landroid/util/Pair;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    const-string v14, "latitude"

    invoke-interface {v13, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Double;

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map;

    const-string v10, "longitude"

    invoke-interface {v8, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-direct {v7, v13, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_3
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    iput-wide v13, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLatitude:D

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    iput-wide v7, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLongitude:D

    iget-object v7, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRouterLocation:Landroidx/preference/Preference;

    iget-wide v13, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLatitude:D

    move v10, v2

    iget-wide v1, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mLongitude:D

    cmpl-double v15, v13, v11

    const-string v8, "SemWifiUtils"

    if-eqz v15, :cond_9

    cmpl-double v11, v1, v11

    if-nez v11, :cond_7

    goto :goto_5

    :cond_7
    const-wide v11, -0x3fa9800000000000L    # -90.0

    cmpl-double v11, v13, v11

    if-ltz v11, :cond_8

    const-wide v11, 0x4056800000000000L    # 90.0

    cmpg-double v11, v13, v11

    if-gtz v11, :cond_8

    const-wide v11, -0x3f99800000000000L    # -180.0

    cmpl-double v11, v1, v11

    if-ltz v11, :cond_8

    const-wide v11, 0x4066800000000000L    # 180.0

    cmpg-double v1, v1, v11

    if-gtz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_6

    :cond_8
    const-string v1, "Invalid location information. Hide LocationPref"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move v1, v3

    goto :goto_6

    :cond_9
    :goto_5
    const-string v1, "There is no location information. Hide LocationPref"

    invoke-static {v8, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :goto_6
    invoke-virtual {v7, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_7

    :cond_a
    move v10, v2

    goto :goto_7

    :pswitch_0
    move v10, v2

    iget-object v1, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRouterLocation:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_7
    invoke-virtual {v9}, Lcom/android/wifitrackerlib/WifiEntry;->getMacAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v9}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v2

    if-eqz v2, :cond_b

    goto :goto_9

    :cond_b
    const-string v2, "02:00:00:00:00:00"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v1, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    const v2, 0x7f140c9c

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_8

    :cond_c
    iget-object v2, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_8
    iget-object v1, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    goto :goto_a

    :cond_d
    :goto_9
    iget-object v1, v6, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mMacAddressPref:Landroidx/preference/Preference;

    invoke-virtual {v1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshIpAddress()V

    packed-switch v10, :pswitch_data_1

    const/4 v1, -0x1

    iput v1, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshRssiViews$com$samsung$android$settings$wifi$details$WifiDetailPreferenceController$Viewer()V

    goto :goto_b

    :pswitch_1
    iget-object v1, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mWifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {v1}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v1

    const-string/jumbo v2, "refreshRssiViews ::  signalLevel : "

    const-string v3, ", mRssiSignalLevel : "

    invoke-static {v1, v2, v3}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    invoke-static {v2, v3, v5}, Landroidx/preference/Preference$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    iget v2, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    if-ne v1, v2, :cond_e

    goto :goto_b

    :cond_e
    iput v1, v4, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->refreshRssiViews$com$samsung$android$settings$wifi$details$WifiDetailPreferenceController$Viewer()V

    :goto_b
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final refreshRssiViews$com$samsung$android$settings$wifi$details$WifiDetailPreferenceController$Viewer()V
    .locals 5

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0$1:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mEntityHeaderController:Lcom/android/settings/widget/EntityHeaderController;

    iget v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mRssiSignalLevel:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->mIconInjector:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, v2, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$IconInjector;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->getWifiIconResource(I)I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070e52

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v4

    if-ne v3, v2, :cond_1

    if-eq v4, v2, :cond_3

    :cond_1
    instance-of v3, v1, Landroid/graphics/drawable/VectorDrawable;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    invoke-static {v1, v2, v2}, Lcom/android/settings/Utils;->createBitmap(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    move-object v1, v2

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$100(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/content/Context;)Lcom/android/settingslib/widget/LayoutPreference;

    return-void
.end method
