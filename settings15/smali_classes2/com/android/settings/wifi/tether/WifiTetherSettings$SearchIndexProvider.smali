.class Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SearchIndexProvider"
.end annotation


# instance fields
.field public final mIsInstantHotspotEnabled:Z

.field public final mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;


# direct methods
.method public constructor <init>()V
    .locals 1

    const v0, 0x7f1702a2

    invoke-direct {p0, v0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-direct {v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-static {}, Lcom/android/settings/wifi/repository/SharedConnectivityRepository;->isDeviceConfigEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mIsInstantHotspotEnabled:Z

    return-void
.end method

.method public constructor <init>(ILcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    iput-boolean p3, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mIsInstantHotspotEnabled:Z

    return-void
.end method


# virtual methods
.method public final createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0

    const/4 p0, 0x0

    invoke-static {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherSettings$$ExternalSyntheticLambda2;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mWifiRestriction:Lcom/android/settings/wifi/tether/WifiTetherSettings$WifiRestriction;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/TetherUtil;->isTetherAvailable(Landroid/content/Context;)Z

    move-result v1

    :goto_0
    const-string v2, "wifi_hotspot_instant"

    if-eqz v1, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "no_wifi_tethering"

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/WifiEnterpriseRestrictionUtils;->hasUserRestrictionFromT(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    :goto_1
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings$SearchIndexProvider;->mIsInstantHotspotEnabled:Z

    if-nez p0, :cond_4

    move-object p0, v0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const-string p0, "WifiEntResUtils"

    const-string p1, "Wi-Fi Tethering isn\'t available due to user restriction."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object p0, v0

    check-cast p0, Ljava/util/ArrayList;

    const-string p1, "wifi_tether_network_name"

    const-string v1, "wifi_tether_security"

    const-string v3, "wifi_tether_network_password"

    const-string v4, "wifi_tether_auto_turn_off"

    invoke-static {p0, p1, v1, v3, v4}, Lcom/android/settings/accessibility/AccessibilitySettings$$ExternalSyntheticOutline0;->m(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "wifi_tether_maximize_compatibility"

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    const-string p0, "wifi_tether_settings_screen"

    move-object p1, v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public final isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    :cond_0
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    :cond_1
    return p0
.end method
