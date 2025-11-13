.class Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;
.super Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;
.source "WifiDetailPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DisconnectedViewer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 1

    .line 476
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer-IA;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;-><init>(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)V

    return-void
.end method


# virtual methods
.method public refreshGatewayAndSubnet()V
    .locals 2

    .line 507
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmGatewayPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 508
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmSubnetPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public refreshIpAddress()V
    .locals 1

    .line 502
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmIpAddressPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public refreshRouterLocation()V
    .locals 5

    .line 491
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmInManageNetwork(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiConfig(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmSemWifiManager(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiConfig(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    .line 493
    invoke-static {v0, v1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->getNetworkLocation(Lcom/samsung/android/wifi/SemWifiManager;Landroid/net/wifi/WifiConfiguration;)Landroid/util/Pair;

    move-result-object v0

    .line 494
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fputmLatitude(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;D)V

    .line 495
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fputmLongitude(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;D)V

    .line 496
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmRouterLocation(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Landroidx/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmLatitude(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)D

    move-result-wide v1

    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmLongitude(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isValidLocation(DD)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method refreshRssiViews()V
    .locals 2

    .line 485
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fputmRssiSignalLevel(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;I)V

    .line 486
    invoke-super {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$Viewer;->refreshRssiViews()V

    return-void
.end method

.method refreshWifiSpeed()V
    .locals 1

    .line 480
    iget-object p0, p0, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController$DisconnectedViewer;->this$0:Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p0}, Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;->-$$Nest$fgetmWifiSpeedPref(Lcom/samsung/android/settings/wifi/details/WifiDetailPreferenceController;)Lcom/samsung/android/settings/wifi/details/WifiNetworkDetailPreference;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method
