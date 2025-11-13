.class Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;
.super Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConnectedViewer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 1

    .line 515
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V

    return-void
.end method


# virtual methods
.method public refreshGatewayAndSubnet()V
    .locals 3

    .line 574
    sget-boolean v0, Lcom/android/settings/Utils;->SHOW_DETAILED_AP_INFO:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 580
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->gateway:Ljava/lang/String;

    .line 581
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 582
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmGatewayPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 583
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmGatewayPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 586
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->subnetMask:Ljava/lang/String;

    .line 587
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 588
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmSubnetPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 589
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmSubnetPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_2
    return-void

    .line 575
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmGatewayPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 576
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmSubnetPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public refreshIpAddress()V
    .locals 6

    .line 551
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$400(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->getWifiIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 553
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 559
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 561
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmLinkProperties(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/LinkProperties;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-string v3, ""

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/LinkAddress;

    .line 562
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet4Address;

    if-eqz v5, :cond_2

    .line 563
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 564
    :cond_2
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v5

    instance-of v5, v5, Ljava/net/Inet6Address;

    if-eqz v5, :cond_1

    .line 565
    invoke-virtual {v4}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 568
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmIpAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 569
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmIpAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void

    .line 554
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmIpAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public refreshRouterLocation()V
    .locals 1

    .line 546
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmRouterLocation(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method refreshRssiViews()V
    .locals 3

    .line 519
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiEntry(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/android/wifitrackerlib/WifiEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v0

    .line 520
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshRssiViews ::  signalLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mRssiSignalLevel : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v2}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmRssiSignalLevel(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WifiDetailsPrefCtrl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmRssiSignalLevel(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 525
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fputmRssiSignalLevel(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    .line 526
    invoke-super {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshRssiViews()V

    return-void
.end method

.method public refreshWifiSpeed()V
    .locals 12

    .line 531
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiInfo(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ge v0, v1, :cond_1

    .line 533
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiSpeedPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$200(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->wifi_link_speed:I

    new-array v6, v2, [Ljava/lang/Object;

    .line 534
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    .line 533
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->setSummary(Ljava/lang/String;)V

    goto :goto_1

    .line 536
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiSpeedPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    move-result-object v1

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v4}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->access$300(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/settings/R$string;->wifi_link_speed_Gbps:I

    new-array v6, v2, [Ljava/lang/Object;

    new-instance v7, Ljava/text/DecimalFormat;

    const-string v8, "#.#"

    invoke-direct {v7, v8}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    int-to-double v8, v0

    const-wide v10, 0x408f400000000000L    # 1000.0

    div-double/2addr v8, v10

    .line 538
    invoke-virtual {v7, v8, v9}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    .line 536
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->setSummary(Ljava/lang/String;)V

    .line 540
    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiSpeedPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;->setLocation(I)V

    .line 541
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$ConnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiSpeedPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    move-result-object p0

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p0, v2}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
