.class public Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;
.super Ljava/lang/Object;
.source "ConnectionsItem.java"

# interfaces
.implements Lcom/samsung/android/settings/eternal/provider/items/Recoverable;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mPrivateDnsMode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ConnectionsItem"

    .line 74
    iput-object v0, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public followRestoreSkipPolicy(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Z
    .locals 0

    .line 307
    invoke-virtual {p1}, Lcom/samsung/android/lib/episode/Scene;->getKey()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/Settings/Connections/Nfc"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public getTestScenes(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/samsung/android/lib/episode/Scene;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/Scene$Builder;
    .locals 8

    const-string p3, "ConnectionsItem"

    .line 99
    new-instance v0, Lcom/samsung/android/lib/episode/Scene$Builder;

    invoke-direct {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    .line 103
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x1

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v3, "/Settings/Connections/LocationMethod"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v6

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Aggressive"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "/Settings/Connections/WiFi/Advanced/AutoWifi"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "/Settings/Connections/PrivateDnsSpecifier"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/IndividualApps"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "/Settings/Connections/NearbyScanning"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "/Settings/Connections/WiFi/Advanced/WifiPowerSavingMode"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "/Settings/Connections/WiFi/Intelligent/RealtimeDataPriorityMode"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "/Settings/Connections/WiFi/Advanced/Hotspot20/Enabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "/Settings/Connections/LocationWifiScan"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "/Settings/Connections/Location"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_1

    :sswitch_b
    const-string v3, "/Settings/Connections/Uwb"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xf

    goto :goto_1

    :sswitch_c
    const-string v3, "/Settings/Connections/Nfc"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xe

    goto :goto_1

    :sswitch_d
    const-string v3, "/Settings/Connections/WiFi/Intelligent/SwitchToBetterWifi"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xc

    goto :goto_1

    :sswitch_e
    const-string v3, "/Settings/Connections/PrivateDnsMode"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0x11

    goto :goto_1

    :sswitch_f
    const-string v3, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Enabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_10
    const-string v3, "/Settings/Connections/WiFi/Advanced/ShowNetworkInfo/Enabled"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xa

    goto :goto_1

    :sswitch_11
    const-string v3, "/Settings/Connections/WiFi/Advanced/WIPS"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_12
    const-string v3, "/Settings/Connections/LocationBluetoothScan"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move v3, v5

    :goto_1
    const-string v7, "private_dns_mode"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_18

    .line 266
    :pswitch_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "private_dns_specifier"

    invoke-static {p2, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 267
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mPrivateDnsMode:Ljava/lang/String;

    const-string p0, "hostname"

    .line 268
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 269
    invoke-virtual {v0, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 272
    :cond_1
    invoke-virtual {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 262
    :pswitch_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mPrivateDnsMode:Ljava/lang/String;

    .line 263
    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 256
    :pswitch_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "nearby_scanning_enabled"

    invoke-static {p0, p1, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 258
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne v6, p0, :cond_2

    goto :goto_2

    :cond_2
    move v6, v2

    .line 259
    :goto_2
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 242
    :pswitch_3
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string p2, "android.hardware.uwb"

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    if-ne p0, v6, :cond_3

    .line 244
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "uwb_enabled"

    invoke-static {p0, p1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    move p1, v6

    goto :goto_3

    :cond_3
    move p0, v2

    move p1, p0

    .line 246
    :goto_3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne p1, p0, :cond_4

    goto :goto_4

    :cond_4
    move v6, v2

    .line 247
    :goto_4
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 230
    :pswitch_4
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz p1, :cond_19

    .line 232
    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    const-string p1, "beam"

    .line 233
    iget-object p2, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result p2

    if-eqz p2, :cond_5

    move p2, v6

    goto :goto_5

    :cond_5
    move p2, v2

    :goto_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 234
    iget-object p1, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->isSecureNfcSupported()Z

    move-result p1

    if-eqz p1, :cond_19

    const-string p1, "securenfc"

    .line 235
    iget-object p0, p0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p0}, Landroid/nfc/NfcAdapter;->isSecureNfcEnabled()Z

    move-result p0

    if-eqz p0, :cond_6

    goto :goto_6

    :cond_6
    move v6, v2

    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->addAttribute(Ljava/lang/String;Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    :pswitch_5
    const-string p0, "sem_wifi_ape_enabled"

    .line 225
    invoke-static {v1, p0, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 226
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne p0, v6, :cond_7

    goto :goto_7

    :cond_7
    move v6, v2

    .line 227
    :goto_7
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    :pswitch_6
    const-string p0, "sem_wifi_switch_to_better_wifi_enabled"

    .line 219
    invoke-static {v1, p0, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 220
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne p0, v6, :cond_8

    goto :goto_8

    :cond_8
    move v6, v2

    .line 221
    :goto_8
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 205
    :pswitch_7
    new-instance p0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {p0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 207
    invoke-virtual {p0}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide p0

    const-wide/32 v3, 0x43d478

    cmp-long p0, p0, v3

    if-ltz p0, :cond_9

    .line 209
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string p1, "CscFeature_Wifi_DisableDefaultMWIPS"

    .line 210
    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_9

    move p0, v6

    goto :goto_9

    :cond_9
    move p0, v2

    :goto_9
    const-string p1, "wifi_mwips"

    .line 213
    invoke-static {v1, p1, p0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 214
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne p1, p0, :cond_a

    goto :goto_a

    :cond_a
    move v6, v2

    .line 215
    :goto_a
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 196
    :pswitch_8
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string p1, "CscFeature_Common_SupportComcastWifi"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    move p1, v2

    goto :goto_b

    :cond_b
    move p1, v6

    :goto_b
    const-string p2, "sem_wifi_network_rating_scorer_enabled"

    if-eqz p0, :cond_c

    move p0, v2

    goto :goto_c

    :cond_c
    move p0, v6

    .line 199
    :goto_c
    invoke-static {v1, p2, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 200
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne p0, p1, :cond_d

    goto :goto_d

    :cond_d
    move v6, v2

    .line 201
    :goto_d
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 185
    :pswitch_9
    const-class p0, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 186
    invoke-static {}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getInstance()Lcom/samsung/android/wifi/SemOpBrandingLoader;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemOpBrandingLoader;->getMenuStatusForPasspoint()Ljava/lang/String;

    move-result-object p1

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_e

    const-string p2, "DEFAULT_OFF"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_e

    move p1, v2

    goto :goto_e

    :cond_e
    move p1, v6

    .line 191
    :goto_e
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiPasspointEnabled()Z

    move-result p0

    if-eqz p0, :cond_f

    move p0, v6

    goto :goto_f

    :cond_f
    move p0, v2

    .line 192
    :goto_f
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne p1, p0, :cond_10

    goto :goto_10

    :cond_10
    move v6, v2

    .line 193
    :goto_10
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    :pswitch_a
    const-string p0, "wifi_adps_enable"

    .line 180
    invoke-static {v1, p0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 181
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-nez p0, :cond_11

    goto :goto_11

    :cond_11
    move v6, v2

    .line 182
    :goto_11
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 171
    :pswitch_b
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p0

    const-string p1, "CscFeature_Wifi_EnableAutoWifi"

    invoke-virtual {p0, p1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_12

    move p1, v6

    goto :goto_12

    :cond_12
    move p1, v2

    :goto_12
    const-string p2, "sem_auto_wifi_control_enabled"

    if-eqz p0, :cond_13

    move p0, v6

    goto :goto_13

    :cond_13
    move p0, v2

    .line 174
    :goto_13
    invoke-static {v1, p2, p0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 175
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-ne p1, p0, :cond_14

    goto :goto_14

    :cond_14
    move v6, v2

    .line 176
    :goto_14
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    :pswitch_c
    const-string p0, "wifi_switch_for_individual_apps_enabled"

    .line 166
    invoke-static {v1, p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 168
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    .line 150
    :pswitch_d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    .line 159
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    .line 160
    invoke-virtual {v0, v2}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto/16 :goto_19

    :pswitch_e
    const-string p0, "wifi_watchdog_poor_network_test_enabled"

    .line 137
    invoke-static {v1, p0, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v5, :cond_15

    goto :goto_15

    :cond_15
    add-int/lit8 v5, p0, 0x2

    :goto_15
    const-string p0, "DEFAULT_ON"

    .line 145
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object p1

    const-string p2, "CscFeature_Wifi_ConfigSnsStatus"

    invoke-virtual {p1, p2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    move p0, v6

    goto :goto_16

    :cond_16
    move p0, v2

    .line 146
    :goto_16
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    if-le v5, v6, :cond_17

    add-int/lit8 v5, v5, -0x2

    :cond_17
    if-ne p0, v5, :cond_18

    goto :goto_17

    :cond_18
    move v6, v2

    .line 147
    :goto_17
    invoke-virtual {v0, v6}, Lcom/samsung/android/lib/episode/Scene$Builder;->setDefault(Z)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_19

    :pswitch_f
    const-string p0, "ble_scan_always_enabled"

    .line 123
    invoke-static {v1, p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 125
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_19

    :pswitch_10
    const-string p0, "wifi_scan_always_enabled"

    .line 117
    invoke-static {v1, p0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_19

    :pswitch_11
    const-string p0, "location_providers_allowed"

    .line 111
    invoke-static {v1, p0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 113
    invoke-virtual {v0, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_19

    :pswitch_12
    const-string p0, "location_mode"

    .line 105
    invoke-static {v1, p0, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    .line 107
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/lib/episode/Scene$Builder;->setValue(Ljava/lang/Object;)Lcom/samsung/android/lib/episode/Scene$Builder;

    goto :goto_19

    .line 275
    :goto_18
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "unknown key : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_19

    :catch_0
    move-exception p0

    .line 279
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-virtual {p0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_19
    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7a935241 -> :sswitch_12
        -0x780a8be1 -> :sswitch_11
        -0x66411259 -> :sswitch_10
        -0x446158e9 -> :sswitch_f
        -0x3670eda0 -> :sswitch_e
        -0x138a3a51 -> :sswitch_d
        -0x89bf4ec -> :sswitch_c
        -0x89bd897 -> :sswitch_b
        0x6eb7ec -> :sswitch_a
        0xcfc73e -> :sswitch_9
        0x7705cb5 -> :sswitch_8
        0x1cbf57d7 -> :sswitch_7
        0x2d09c1a3 -> :sswitch_6
        0x35514b47 -> :sswitch_5
        0x35aff415 -> :sswitch_4
        0x4bcd5321 -> :sswitch_3
        0x532acc4e -> :sswitch_2
        0x5718286e -> :sswitch_1
        0x57b2d3ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isOpenable(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public isValid(Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/Scene;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public open(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public sendIWCMessage(Landroid/content/Context;II)V
    .locals 0

    const-string p0, "sem_wifi"

    .line 314
    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 315
    invoke-virtual {p0, p2, p3}, Lcom/samsung/android/wifi/SemWifiManager;->restoreIWCSettingsValue(II)V

    return-void
.end method

.method public setValue(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/lib/episode/Scene;Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/lib/episode/SceneResult;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "ConnectionsItem"

    .line 320
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 321
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/lib/episode/Scene;->getValue()Ljava/lang/String;

    move-result-object v6

    .line 322
    new-instance v7, Lcom/samsung/android/lib/episode/SceneResult$Builder;

    invoke-direct {v7, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;-><init>(Ljava/lang/String;)V

    .line 323
    sget-object v8, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_OK:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v7, v8}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    const/4 v8, 0x0

    .line 326
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->hashCode()I

    move-result v9

    const/4 v10, 0x4

    const/4 v11, 0x5

    const/4 v12, 0x2

    const/4 v13, 0x3

    const/4 v14, -0x1

    const/4 v15, 0x1

    sparse-switch v9, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v9, "/Settings/Connections/LocationMethod"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v15

    goto/16 :goto_1

    :sswitch_1
    const-string v9, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Aggressive"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v11

    goto/16 :goto_1

    :sswitch_2
    const-string v9, "/Settings/Connections/WiFi/Advanced/AutoWifi"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto/16 :goto_1

    :sswitch_3
    const-string v9, "/Settings/Connections/PrivateDnsSpecifier"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x12

    goto/16 :goto_1

    :sswitch_4
    const-string v9, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/IndividualApps"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto/16 :goto_1

    :sswitch_5
    const-string v9, "/Settings/Connections/NearbyScanning"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x10

    goto/16 :goto_1

    :sswitch_6
    const-string v9, "/Settings/Connections/WiFi/Advanced/WifiPowerSavingMode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_7
    const-string v9, "/Settings/Connections/WiFi/Intelligent/RealtimeDataPriorityMode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xd

    goto/16 :goto_1

    :sswitch_8
    const-string v9, "/Settings/Connections/WiFi/Advanced/Hotspot20/Enabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_9
    const-string v9, "/Settings/Connections/LocationWifiScan"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v12

    goto/16 :goto_1

    :sswitch_a
    const-string v9, "/Settings/Connections/Location"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v8

    goto :goto_1

    :sswitch_b
    const-string v9, "/Settings/Connections/Uwb"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xf

    goto :goto_1

    :sswitch_c
    const-string v9, "/Settings/Connections/Nfc"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xe

    goto :goto_1

    :sswitch_d
    const-string v9, "/Settings/Connections/WiFi/Intelligent/SwitchToBetterWifi"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xc

    goto :goto_1

    :sswitch_e
    const-string v9, "/Settings/Connections/PrivateDnsMode"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x11

    goto :goto_1

    :sswitch_f
    const-string v9, "/Settings/Connections/WiFi/Advanced/SwitchToMobileData/Enabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v10

    goto :goto_1

    :sswitch_10
    const-string v9, "/Settings/Connections/WiFi/Advanced/ShowNetworkInfo/Enabled"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    goto :goto_1

    :sswitch_11
    const-string v9, "/Settings/Connections/WiFi/Advanced/WIPS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    goto :goto_1

    :sswitch_12
    const-string v9, "/Settings/Connections/LocationBluetoothScan"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v13

    goto :goto_1

    :cond_0
    :goto_0
    move v2, v14

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_8

    .line 536
    :pswitch_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_8

    :cond_1
    const-string v0, "private_dns_specifier"

    .line 539
    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_8

    :pswitch_1
    const-string v0, "private_dns_mode"

    .line 533
    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_8

    :pswitch_2
    const-string v0, "nearby_scanning_enabled"

    .line 530
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 511
    :pswitch_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 512
    invoke-virtual/range {p3 .. p3}, Lcom/samsung/android/lib/episode/Scene;->isDefault()Z

    move-result v2

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v6, "android.hardware.uwb"

    invoke-virtual {v3, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "uwb_enabled"

    if-ne v3, v15, :cond_4

    .line 514
    :try_start_1
    const-class v3, Landroid/uwb/UwbManager;

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/uwb/UwbManager;

    if-ne v2, v15, :cond_2

    if-nez v0, :cond_2

    .line 518
    invoke-static {v5, v6, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 519
    invoke-virtual {v1, v15}, Landroid/uwb/UwbManager;->setUwbEnabled(Z)V

    goto/16 :goto_8

    .line 521
    :cond_2
    invoke-static {v5, v6, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v0, v15, :cond_3

    goto :goto_2

    :cond_3
    move v15, v8

    .line 522
    :goto_2
    invoke-virtual {v1, v15}, Landroid/uwb/UwbManager;->setUwbEnabled(Z)V

    goto/16 :goto_8

    .line 526
    :cond_4
    invoke-static {v5, v6, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 433
    :pswitch_4
    invoke-static/range {p1 .. p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v2

    iput-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez v2, :cond_5

    .line 436
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 437
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_8

    .line 440
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRestoreViaFastTrack = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/lib/episode/SourceInfo;->isRestoreViaFastTrack()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/samsung/android/settings/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-virtual/range {p4 .. p4}, Lcom/samsung/android/lib/episode/SourceInfo;->isRestoreViaFastTrack()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 442
    new-instance v2, Landroid/content/Intent;

    const-string v5, "com.samsung.android.nfc.action.FAST_TRACK_RESTORE"

    invoke-direct {v2, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 446
    :cond_6
    iget-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v15, :cond_8

    .line 447
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v2

    if-nez v2, :cond_7

    .line 448
    iget-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_3

    .line 451
    :cond_7
    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 452
    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto :goto_3

    .line 454
    :cond_8
    iget-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v2

    if-ne v2, v11, :cond_9

    .line 455
    iget-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->readerEnable()Z

    :cond_9
    :goto_3
    const-string v2, "beam"

    .line 459
    invoke-virtual {v3, v2, v14}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    const-string v5, "securenfc"

    .line 460
    invoke-virtual {v3, v5, v14}, Lcom/samsung/android/lib/episode/Scene;->getAttributeInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v2, v15, :cond_a

    .line 462
    iget-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->enableNdefPush()Z

    goto :goto_4

    :cond_a
    if-nez v2, :cond_b

    .line 464
    iget-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    goto :goto_4

    .line 467
    :cond_b
    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v2

    sget-object v5, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 468
    invoke-virtual {v2, v5}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 470
    :goto_4
    iget-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2}, Landroid/nfc/NfcAdapter;->isSecureNfcSupported()Z

    move-result v2

    if-eqz v2, :cond_e

    if-ne v3, v15, :cond_c

    .line 472
    iget-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v15}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    goto :goto_5

    :cond_c
    if-nez v3, :cond_d

    .line 474
    iget-object v2, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v2, v8}, Landroid/nfc/NfcAdapter;->enableSecureNfc(Z)Z

    goto :goto_5

    .line 477
    :cond_d
    sget-object v2, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v7, v2}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 478
    invoke-virtual {v2, v3}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    .line 482
    :cond_e
    :goto_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v15, :cond_10

    .line 484
    invoke-static/range {p1 .. p1}, Lcom/samsung/android/settings/Rune;->isGpFelicaSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v1

    if-nez v1, :cond_f

    .line 485
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto/16 :goto_8

    .line 488
    :cond_f
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 489
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_8

    :cond_10
    if-ne v2, v11, :cond_1f

    .line 493
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_NFC_ConfigReaderModeUI"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KOREA"

    .line 495
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string v2, "CHINA"

    .line 496
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_6

    .line 499
    :cond_11
    invoke-static {}, Lcom/samsung/android/settings/Rune;->isFaver3Supported()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 500
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto/16 :goto_8

    .line 503
    :cond_12
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->INVALID_DATA:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 504
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_8

    .line 497
    :cond_13
    :goto_6
    iget-object v1, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disableNdefPush()Z

    .line 498
    iget-object v0, v0, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->readerDisable()Z

    goto/16 :goto_8

    :pswitch_5
    const-string v0, "sem_wifi_ape_enabled"

    .line 430
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_6
    const-string v0, "sem_wifi_switch_to_better_wifi_enabled"

    .line 427
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_7
    const-string v0, "wifi_mwips"

    .line 424
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v15, :cond_14

    move v12, v13

    :cond_14
    invoke-static {v5, v0, v12}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_8
    const-string v0, "sem_wifi_network_rating_scorer_enabled"

    .line 421
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 417
    :pswitch_9
    const-class v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 418
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v15, :cond_16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v13, :cond_15

    goto :goto_7

    :cond_15
    move v15, v8

    :cond_16
    :goto_7
    invoke-virtual {v0, v15}, Landroid/net/wifi/WifiManager;->setWifiPasspointEnabled(Z)V

    goto/16 :goto_8

    :pswitch_a
    const-string v0, "wifi_adps_enable"

    .line 414
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :pswitch_b
    const-string v0, "sem_auto_wifi_control_enabled"

    .line 411
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 403
    :pswitch_c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v14, :cond_17

    .line 404
    sget-object v0, Lcom/samsung/android/lib/episode/SceneResult$ResultType;->RESULT_FAIL:Lcom/samsung/android/lib/episode/SceneResult$ResultType;

    invoke-virtual {v7, v0}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setResult(Lcom/samsung/android/lib/episode/SceneResult$ResultType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/lib/episode/SceneResult$ErrorType;->NOT_SUPPORTED:Lcom/samsung/android/lib/episode/SceneResult$ErrorType;

    .line 405
    invoke-virtual {v0, v1}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->setErrorType(Lcom/samsung/android/lib/episode/SceneResult$ErrorType;)Lcom/samsung/android/lib/episode/SceneResult$Builder;

    goto/16 :goto_8

    :cond_17
    const-string v0, "wifi_switch_for_individual_apps_enabled"

    .line 408
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 387
    :pswitch_d
    invoke-static {}, Lcom/samsung/android/settings/Rune;->readSalesCode()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v14, :cond_1f

    const-string v3, "vzw"

    .line 390
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_18

    goto/16 :goto_8

    .line 397
    :cond_18
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 396
    invoke-virtual {v0, v1, v12, v2}, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->sendIWCMessage(Landroid/content/Context;II)V

    const-string v0, "wifi_watchdog_poor_network_aggressive_mode_on"

    .line 400
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    .line 344
    :pswitch_e
    invoke-static {}, Lcom/samsung/android/settings/knox/KnoxUtils;->isApplicationRestricted()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "wifi_watchdog_poor_network_test_enabled"

    if-eqz v2, :cond_1a

    .line 345
    :try_start_2
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v15, :cond_19

    add-int/lit8 v0, v0, -0x2

    .line 347
    :cond_19
    invoke-static {v5, v3, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_8

    :cond_1a
    const-string v2, "wifi_num_of_switch_to_mobile_data_toggle"

    .line 350
    invoke-static {v5, v2, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1b

    .line 353
    invoke-virtual {v0, v1, v11, v2}, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->sendIWCMessage(Landroid/content/Context;II)V

    goto :goto_8

    .line 359
    :cond_1b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v14, :cond_1c

    goto :goto_8

    .line 363
    :cond_1c
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 364
    invoke-static {v5, v3, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 367
    invoke-virtual {v0, v1, v15, v2}, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->sendIWCMessage(Landroid/content/Context;II)V

    if-ne v2, v13, :cond_1d

    .line 373
    invoke-virtual {v0, v1, v13, v14}, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->sendIWCMessage(Landroid/content/Context;II)V

    :cond_1d
    if-nez v6, :cond_1f

    if-eq v2, v13, :cond_1e

    if-ne v2, v15, :cond_1f

    .line 377
    :cond_1e
    invoke-virtual {v0, v1, v10, v14}, Lcom/samsung/android/settings/eternal/provider/items/ConnectionsItem;->sendIWCMessage(Landroid/content/Context;II)V

    .line 379
    invoke-static {v5, v3, v15}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :pswitch_f
    const-string v0, "ble_scan_always_enabled"

    .line 340
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :pswitch_10
    const-string v0, "wifi_scan_always_enabled"

    .line 336
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_8

    :pswitch_11
    const-string v0, "location_providers_allowed"

    .line 332
    invoke-static {v5, v0, v6}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_8

    :pswitch_12
    const-string v0, "location_mode"

    .line 328
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v5, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_8

    :catch_0
    move-exception v0

    .line 545
    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/settings/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_1f
    :goto_8
    invoke-virtual {v7}, Lcom/samsung/android/lib/episode/SceneResult$Builder;->build()Lcom/samsung/android/lib/episode/SceneResult;

    move-result-object v0

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x7a935241 -> :sswitch_12
        -0x780a8be1 -> :sswitch_11
        -0x66411259 -> :sswitch_10
        -0x446158e9 -> :sswitch_f
        -0x3670eda0 -> :sswitch_e
        -0x138a3a51 -> :sswitch_d
        -0x89bf4ec -> :sswitch_c
        -0x89bd897 -> :sswitch_b
        0x6eb7ec -> :sswitch_a
        0xcfc73e -> :sswitch_9
        0x7705cb5 -> :sswitch_8
        0x1cbf57d7 -> :sswitch_7
        0x2d09c1a3 -> :sswitch_6
        0x35514b47 -> :sswitch_5
        0x35aff415 -> :sswitch_4
        0x4bcd5321 -> :sswitch_3
        0x532acc4e -> :sswitch_2
        0x5718286e -> :sswitch_1
        0x57b2d3ed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
