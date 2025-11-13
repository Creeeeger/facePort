.class public Lcom/android/settingslib/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/wifi/WifiUtils$InternetIconInjector;
    }
.end annotation


# static fields
.field static final ACTION_WIFI_DIALOG:Ljava/lang/String; = "com.android.settings.WIFI_DIALOG"

.field static final EXTRA_CHOSEN_WIFI_ENTRY_KEY:Ljava/lang/String; = "key_chosen_wifientry_key"

.field static final EXTRA_CONNECT_FOR_CALLER:Ljava/lang/String; = "connect_for_caller"

.field static final NO_INTERNET_WIFI_PIE:[I

.field static final WIFI_PIE:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 90
    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    new-array v0, v0, [I

    .line 98
    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_0:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_1:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_2:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_3:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget v1, Lcom/android/settingslib/R$drawable;->ic_no_internet_wifi_signal_4:I

    const/4 v2, 0x4

    aput v1, v0, v2

    sput-object v0, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    return-void

    :array_0
    .array-data 4
        0x10805b0
        0x10805b1
        0x10805b2
        0x10805b3
        0x10805b4
    .end array-data
.end method

.method public static getInternetIconResource(IZ)I
    .locals 4

    const-string v0, "Wi-Fi level is out of range! level:"

    const-string v1, "WifiUtils"

    if-gez p0, :cond_0

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    goto :goto_0

    .line 328
    :cond_0
    sget-object v2, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    array-length v3, v2

    if-lt p0, v3, :cond_1

    .line 329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    array-length p0, v2

    add-int/lit8 p0, p0, -0x1

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 332
    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->NO_INTERNET_WIFI_PIE:[I

    aget p0, p1, p0

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/android/settingslib/wifi/WifiUtils;->WIFI_PIE:[I

    aget p0, p1, p0

    :goto_1
    return p0
.end method

.method private static getSpecificApSpeed(Landroid/net/wifi/ScanResult;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/wifi/TimestampedScoredNetwork;",
            ">;)I"
        }
    .end annotation

    .line 298
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 304
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/TimestampedScoredNetwork;->getScore()Landroid/net/ScoredNetwork;

    move-result-object p1

    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {p1, p0}, Landroid/net/ScoredNetwork;->calculateBadge(I)I

    move-result p0

    return p0
.end method

.method static getVisibilityStatus(Lcom/android/settingslib/wifi/AccessPoint;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_1

    if-eqz v1, :cond_1

    const-string v6, " standard = "

    .line 173
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " rssi="

    .line 174
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    .line 175
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " score="

    .line 176
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getScore()I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeed()I

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, " speed="

    .line 178
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v6, 0x1

    new-array v8, v6, [Ljava/lang/Object;

    .line 180
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSuccessfulTxPacketsPerSecond()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v9, " tx=%.1f,"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v6, [Ljava/lang/Object;

    .line 181
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getRetriedTxPacketsPerSecond()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v9, "%.1f,"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v8, v6, [Ljava/lang/Object;

    .line 182
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getLostTxPacketsPerSecond()D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v9

    aput-object v9, v8, v7

    const-string v9, "%.1f "

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v6, v6, [Ljava/lang/Object;

    .line 183
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getSuccessfulRxPacketsPerSecond()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v6, v7

    const-string/jumbo v1, "rx=%.1f"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 197
    invoke-virtual/range {p0 .. p0}, Lcom/android/settingslib/wifi/AccessPoint;->getScanResults()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/16 v6, -0x7f

    move v10, v6

    move v11, v7

    move v12, v11

    move v13, v12

    move v7, v10

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/net/wifi/ScanResult;

    if-nez v14, :cond_2

    goto :goto_0

    .line 201
    :cond_2
    iget v15, v14, Landroid/net/wifi/ScanResult;->frequency:I

    move-object/from16 v16, v1

    const/16 v1, 0x1324

    move-object/from16 v17, v2

    const/4 v2, 0x0

    if-lt v15, v1, :cond_4

    const/16 v1, 0x170c

    if-gt v15, v1, :cond_4

    add-int/lit8 v12, v12, 0x1

    .line 206
    iget v1, v14, Landroid/net/wifi/ScanResult;->level:I

    if-le v1, v7, :cond_3

    move v7, v1

    :cond_3
    const/4 v1, 0x4

    if-gt v12, v1, :cond_8

    .line 211
    invoke-static {v0, v14, v2, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    const/16 v1, 0x960

    if-lt v15, v1, :cond_6

    const/16 v1, 0x9c4

    if-gt v15, v1, :cond_6

    add-int/lit8 v11, v11, 0x1

    .line 219
    iget v1, v14, Landroid/net/wifi/ScanResult;->level:I

    if-le v1, v6, :cond_5

    move v6, v1

    :cond_5
    const/4 v1, 0x4

    if-gt v11, v1, :cond_8

    .line 224
    invoke-static {v0, v14, v2, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    const v1, 0xe3d0

    if-lt v15, v1, :cond_8

    const v1, 0x11238

    if-gt v15, v1, :cond_8

    add-int/lit8 v13, v13, 0x1

    .line 232
    iget v1, v14, Landroid/net/wifi/ScanResult;->level:I

    if-le v1, v10, :cond_7

    move v10, v1

    :cond_7
    const/4 v1, 0x4

    if-gt v13, v1, :cond_8

    .line 237
    invoke-static {v0, v14, v2, v8, v9}, Lcom/android/settingslib/wifi/WifiUtils;->verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_1
    move-object/from16 v1, v16

    move-object/from16 v2, v17

    goto :goto_0

    :cond_9
    move-object/from16 v17, v2

    const-string v0, " ["

    move-object/from16 v1, v17

    .line 242
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    const-string/jumbo v2, "max="

    const-string v8, ")"

    const-string v9, "("

    if-lez v11, :cond_b

    .line 244
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v14, 0x4

    if-le v11, v14, :cond_a

    .line 246
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    :cond_a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    const-string v3, ";"

    .line 250
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v12, :cond_d

    .line 252
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x4

    if-le v12, v6, :cond_c

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    :cond_c
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    :cond_d
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-lez v13, :cond_f

    .line 260
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    if-le v13, v3, :cond_e

    .line 262
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    :cond_e
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    const-string v0, "]"

    .line 269
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getWifiTetherSummaryForConnectedDevices(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    .line 395
    new-instance v0, Landroid/icu/text/MessageFormat;

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settingslib/R$string;->wifi_tether_connected_summary:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 397
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/icu/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 398
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "count"

    invoke-interface {p0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    invoke-virtual {v0, p0}, Landroid/icu/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static verboseScanResultSummary(Lcom/android/settingslib/wifi/AccessPoint;Landroid/net/wifi/ScanResult;Ljava/lang/String;J)Ljava/lang/String;
    .locals 3

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " \n{"

    .line 278
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    iget-object v1, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "*"

    .line 280
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string p2, "="

    .line 282
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    .line 283
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/net/wifi/ScanResult;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 284
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getScoredNetworkCache()Ljava/util/Map;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/settingslib/wifi/WifiUtils;->getSpecificApSpeed(Landroid/net/wifi/ScanResult;Ljava/util/Map;)I

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {p0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSpeedLabel(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    :cond_1
    iget-wide p0, p1, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v1, 0x3e8

    div-long/2addr p0, v1

    sub-long/2addr p3, p0

    long-to-int p0, p3

    div-int/lit16 p0, p0, 0x3e8

    .line 290
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "s"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 291
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
