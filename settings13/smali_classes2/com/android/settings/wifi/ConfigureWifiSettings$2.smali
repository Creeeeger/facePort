.class Lcom/android/settings/wifi/ConfigureWifiSettings$2;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "ConfigureWifiSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/ConfigureWifiSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 152
    invoke-direct {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 162
    new-instance v0, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;

    invoke-direct {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;-><init>(Landroid/content/Context;)V

    const-string/jumbo p1, "wifi_cloud_sa"

    .line 164
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "wifi_cloud_sync"

    .line 165
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "tencent_wifi_security_detection"

    .line 166
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "wifi_network_diagnostics"

    .line 167
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "notify_open_networks"

    .line 168
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string p1, "MobileWIPS"

    .line 169
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "wifi_hs20_profile"

    .line 170
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "wifi_hs20_list"

    .line 171
    invoke-virtual {v0, p1}, Lcom/samsung/android/settings/wifi/advanced/WifiFeatureUtils;->getKeyIfUnsupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 179
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 180
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 182
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    const-string/jumbo v1, "wifi_cloud_sa"

    if-eqz v0, :cond_0

    .line 183
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 184
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 186
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_with_galaxy_jpn:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 187
    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 188
    sget v1, Lcom/android/settings/R$string;->wifi_menu_advanced_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 189
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sign_in_galaxy_acount:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 190
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 191
    :cond_0
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    sget-object v2, Lcom/android/settings/wifi/ConfigureWifiSettings;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v0, v2, :cond_1

    .line 192
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 193
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 195
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_with_account_vzw:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 196
    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 197
    sget v1, Lcom/android/settings/R$string;->wifi_menu_advanced_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 198
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sign_in_sacount:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 199
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/settings/Utils;->isJapanModel()Z

    move-result v0

    const-string/jumbo v1, "wifi_cloud_sync"

    if-eqz v0, :cond_2

    .line 203
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 204
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 206
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_with_galaxy_jpn:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 207
    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 208
    sget v1, Lcom/android/settings/R$string;->wifi_menu_advanced_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 209
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_auto_sync_disabled:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 210
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_2
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    sget-object v2, Lcom/android/settings/wifi/ConfigureWifiSettings;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v0, v2, :cond_3

    .line 212
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 213
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 215
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_sync_with_account_vzw:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 216
    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 217
    sget v1, Lcom/android/settings/R$string;->wifi_menu_advanced_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 218
    sget v1, Lcom/android/settings/R$string;->sec_bluetooth_advanced_auto_sync_disabled:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 219
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    :cond_3
    :goto_1
    sget-object v0, Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;->VZW:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    sget-object v1, Lcom/android/settings/wifi/ConfigureWifiSettings;->mOpBranding:Lcom/samsung/android/wifi/SemOpBrandingLoader$SemVendor;

    if-ne v0, v1, :cond_4

    .line 223
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v1, "notify_open_networks"

    .line 224
    iput-object v1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 226
    sget v1, Lcom/android/settings/R$string;->wifi_notify_open_networks_vzw:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 227
    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 228
    sget v1, Lcom/android/settings/R$string;->wifi_menu_advanced_button:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 229
    sget v1, Lcom/android/settings/R$string;->wifi_notify_open_networks_summary_vzw:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 230
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    :cond_4
    invoke-static {}, Lcom/android/settings/Utils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 234
    new-instance v0, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string p1, "install_credentials"

    .line 235
    iput-object p1, v0, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 237
    sget p1, Lcom/android/settings/R$string;->wifi_install_network_certificates:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 238
    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 239
    sget p1, Lcom/android/settings/R$string;->wifi_menu_advanced_button:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 240
    sget p1, Lcom/android/settings/R$string;->wifi_install_network_credentials_summary_tablet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settingslib/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    .line 241
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object p2
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 1

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$bool;->config_show_wifi_settings:I

    .line 155
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
