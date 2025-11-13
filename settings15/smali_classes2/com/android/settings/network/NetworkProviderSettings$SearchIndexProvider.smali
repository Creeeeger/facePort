.class Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkProviderSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchIndexProvider"
.end annotation


# instance fields
.field public final mWifiRestriction:Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f1700f4

    invoke-direct {p0, v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    new-instance v0, Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;

    return-void
.end method

.method public constructor <init>(ILcom/android/settings/network/NetworkProviderSettings$WifiRestriction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;

    return-void
.end method


# virtual methods
.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/network/NetworkProviderSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/network/NetworkProviderSettings$WifiRestriction;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->isChangeWifiStateAllowed(Landroid/content/Context;)Z

    move-result p0

    :goto_0
    if-nez p0, :cond_1

    const-string p0, "main_toggle_wifi"

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const-class p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_2

    return-object v0

    :cond_2
    invoke-static {p1, p0}, Lcom/android/settingslib/wifi/WifiSavedConfigUtils;->getAllConfigsCount(Landroid/content/Context;Landroid/net/wifi/WifiManager;)I

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "saved_networks"

    move-object v2, v0

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const-string p0, "add_wifi_network"

    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_5

    const-string p0, "non_carrier_data_usage"

    move-object p1, v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method
