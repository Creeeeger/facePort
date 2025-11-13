.class Lcom/android/settings/datausage/DataUsageSummary$10;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1143
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getDynamicRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
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

    .line 1178
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1181
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/search/BaseSearchIndexProvider;->getDynamicRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    .line 1184
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object p2

    .line 1185
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1186
    invoke-interface {p2, p1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->isSupportATTMobileDataAndRoaming(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 1188
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    const-string p2, "CscFeature_SmartManager_ConfigSubFeatures"

    const-string v0, "UDS"

    .line 1189
    invoke-static {p2, v0}, Lcom/android/settings/datausage/DataUsageSummary;->-$$Nest$smgetSubFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "com.samsung.android.uds.SHOW_UDS_ACTIVITY"

    .line 1190
    invoke-static {p1, p2}, Lcom/android/settings/Utils;->isIntentAvailable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1191
    new-instance p2, Lcom/android/settingslib/search/SearchIndexableRaw;

    invoke-direct {p2, p1}, Lcom/android/settingslib/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "ultra_data_saver"

    .line 1192
    iput-object v0, p2, Landroid/provider/SearchIndexableData;->key:Ljava/lang/String;

    .line 1193
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->ultra_data_saving_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 1194
    invoke-static {p1, v1}, Lcom/android/settings/Utils;->getKeywordForSearch(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 1195
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->data_usage_summary_title:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p2, Lcom/android/settingslib/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 1196
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object p0
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 8
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

    .line 1205
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    const-string/jumbo v0, "usage_category"

    .line 1208
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "wifi_category"

    .line 1209
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "mobile_category"

    .line 1210
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "ethernet_category"

    .line 1211
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "roaming_category"

    .line 1212
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1214
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v1

    const-string/jumbo v2, "mobile_data_only"

    const-string v3, "data_usage_enable"

    if-eqz v1, :cond_0

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1215
    :cond_0
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1216
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "cellular_data_usage"

    .line 1217
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "billing_preference"

    .line 1218
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1219
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    const-string/jumbo v0, "user"

    .line 1222
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1223
    invoke-static {p1}, Lcom/samsung/android/settings/Rune;->isSupportFeatureDataUsageMobileDataOnlyApps(Landroid/content/Context;)Z

    move-result v1

    const-string v4, "confirm_at_boot"

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1224
    :cond_2
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1229
    :cond_3
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasWifiRadio(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string/jumbo v1, "wifi_data_usage"

    .line 1230
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    const/4 v1, 0x0

    .line 1233
    invoke-static {v1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isRoamingArea(I)Z

    move-result v2

    if-nez v2, :cond_5

    const-string/jumbo v2, "roaming_data_usage"

    .line 1234
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_5
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result v2

    .line 1239
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_6

    move v2, v1

    .line 1246
    :cond_6
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportPco()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1247
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "background_data_by_pco"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v7, :cond_7

    move v1, v7

    :cond_7
    if-eqz v2, :cond_8

    .line 1250
    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageUtils;->hasSim(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    const-string/jumbo v0, "restrict_background"

    .line 1251
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1257
    :cond_9
    invoke-static {}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isSupportBootPopup()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1258
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1261
    :cond_a
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getDataUsageFeatureProvider()Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;

    move-result-object v0

    .line 1262
    invoke-interface {v0, p1}, Lcom/samsung/android/settings/datausage/DataUsageFeatureProvider;->isSupportATTMobileDataAndRoaming(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string/jumbo v0, "mobile_data_att"

    .line 1263
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "roaming_att"

    .line 1264
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_b
    invoke-static {p1}, Lcom/samsung/android/settings/connection/ConnectionsUtils;->isOverseaArea(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 1268
    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1269
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    return-object p0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 1149
    invoke-static {}, Lcom/samsung/android/settings/datausage/DataUsageUtilsCHN;->supportSmartManagerForChina()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1152
    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1153
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1154
    sget v0, Lcom/android/settings/R$xml;->data_usage:I

    iput v0, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1155
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1157
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1158
    sget v0, Lcom/android/settings/R$xml;->data_usage_cellular:I

    iput v0, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1159
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1161
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1162
    sget v0, Lcom/android/settings/R$xml;->sec_data_usage_roaming:I

    iput v0, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1163
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1165
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1166
    sget v0, Lcom/android/settings/R$xml;->data_usage_wifi:I

    iput v0, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1167
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1169
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1170
    sget p1, Lcom/android/settings/R$xml;->sec_data_usage_att:I

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1171
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
