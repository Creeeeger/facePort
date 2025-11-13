.class public Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;
.super Ljava/lang/Object;
.source "WifiBadgeUtils.java"


# static fields
.field private static favoriteNetworkArray:Lorg/json/JSONArray;

.field private static settings:Lorg/json/JSONObject;


# direct methods
.method public static getAddedFavoriteNetworks(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 85
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->getBadgeJSONObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->settings:Lorg/json/JSONObject;

    const-string v0, "added"

    .line 86
    invoke-static {p0, v0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->getArrayOrDefault(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->favoriteNetworkArray:Lorg/json/JSONArray;

    .line 87
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 89
    :goto_0
    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->favoriteNetworkArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 90
    sget-object v1, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->favoriteNetworkArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "config"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    :cond_0
    return-object p0
.end method

.method private static getArrayOrDefault(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 0

    .line 78
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    :goto_1
    return-object p0
.end method

.method private static getBadgeJSONObject(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 1

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sem_auto_wifi_added_removed_list"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 65
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 67
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 71
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    return-object v0
.end method

.method public static hasNewFavoriteNetwork(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "phone"

    .line 98
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 99
    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isAirplaneMode(Landroid/content/Context;)Z

    move-result v1

    .line 100
    invoke-static {v0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isSimCardReady(Landroid/telephony/TelephonyManager;)Z

    move-result v0

    .line 101
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->getBadgeJSONObject(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->settings:Lorg/json/JSONObject;

    const-string v2, "added"

    .line 102
    invoke-static {p0, v2}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->getArrayOrDefault(Lorg/json/JSONObject;Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->favoriteNetworkArray:Lorg/json/JSONArray;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static hasNewIntelligentItem(Landroid/content/Context;)Z
    .locals 1

    .line 178
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->hasNewFavoriteNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/samsung/wifitrackerlib/SemWifiUtils;->isAutoWifiEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 179
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/settings/wifi/intelligent/WifiBadgeUtils;->isNewItemForWips(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isNewItemForWips(Landroid/content/Context;)Z
    .locals 10

    const-string v0, "user"

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 113
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    .line 114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    const-string v1, "WifiBadgeUtils"

    if-eqz v0, :cond_9

    const-string v0, "System User"

    .line 116
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_8

    .line 122
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/settings/Utils;->isSupportMobileWips:Z

    if-nez v0, :cond_1

    goto/16 :goto_6

    .line 127
    :cond_1
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 128
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 129
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v0

    const-wide/32 v4, 0x43d478

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 131
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Wifi_DisableDefaultMWIPS"

    .line 132
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    .line 135
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "wifi_mwips"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_8

    if-nez v0, :cond_3

    goto :goto_6

    .line 140
    :cond_3
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string p0, "content://com.samsung.android.server.wifi.mobilewips/detection"

    .line 141
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 p0, 0x0

    const-string v0, "history_id"

    const-string v1, "seen_time"

    .line 147
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    :try_start_0
    const-string v9, "history_id DESC"

    .line 151
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 153
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v3

    .line 155
    :goto_2
    :try_start_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    if-ge v3, v1, :cond_5

    .line 156
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-nez v1, :cond_4

    move v0, v2

    .line 160
    :cond_4
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    move v3, v0

    goto :goto_3

    :catch_0
    move v3, v0

    goto :goto_5

    :cond_6
    :goto_3
    if-eqz p0, :cond_8

    .line 171
    :goto_4
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 173
    :cond_7
    throw v0

    :catch_1
    :goto_5
    if-eqz p0, :cond_8

    goto :goto_4

    :cond_8
    :goto_6
    return v3

    :cond_9
    const-string p0, "Non System User"

    .line 118
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public static resetBadgedNetwork(Landroid/content/Context;)V
    .locals 2

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sem_auto_wifi_added_removed_list"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
