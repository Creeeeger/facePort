.class public Lcom/android/wifitrackerlib/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final defaultSsidList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$95_ebnvl2VXVMOndznuyQ0oCkTw(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->lambda$isSimPresent$1(ILandroid/telephony/SubscriptionInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yrwKQyTBu7eDuDAc8u_W5DCtIec(Landroid/net/wifi/ScanResult;)I
    .locals 0

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->lambda$getBestScanResultByLevel$0(Landroid/net/wifi/ScanResult;)I

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 8

    const-string v0, "linksys"

    const-string/jumbo v1, "netgear"

    const-string v2, "dlink"

    const-string/jumbo v3, "wireless"

    const-string v4, "2wire"

    const-string v5, "iptime"

    const-string v6, "iptime_5g"

    const-string/jumbo v7, "sm_base_17f_5g-1"

    .line 556
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    .line 557
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    return-void
.end method

.method public static convertSecurityTypeToDpmWifiSecurity(I)I
    .locals 0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, -0x1

    return p0

    :pswitch_1
    const/4 p0, 0x3

    return p0

    :pswitch_2
    const/4 p0, 0x2

    return p0

    :pswitch_3
    const/4 p0, 0x1

    return p0

    :pswitch_4
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private static createPackageContextAsUser(ILandroid/content/Context;)Landroid/content/Context;
    .locals 2

    .line 1027
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 1028
    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    .line 1027
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 263
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 266
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method static getAutoConnectDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 509
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSetAutoJoinEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 517
    :cond_1
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)",
            "Landroid/net/wifi/ScanResult;"
        }
    .end annotation

    .line 86
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 88
    :cond_0
    new-instance v0, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/ScanResult;

    return-object p0
.end method

.method static getCarrierNameForSubId(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    :cond_0
    const-string/jumbo v1, "phone"

    .line 707
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_1

    return-object v0

    .line 709
    :cond_1
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 713
    :cond_2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimCarrierIdName()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 717
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getCarrierNetworkOffloadDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiManager;)Ljava/lang/String;
    .locals 2

    .line 1221
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    const-string v1, ""

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 1222
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->semIsCarrierNetwork()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 1226
    :cond_0
    iget p1, v0, Landroid/net/wifi/WifiConfiguration;->subscriptionId:I

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->isCarrierNetworkOffloadEnabled(IZ)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1227
    :cond_1
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_auto_reconnect_disabled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    :goto_0
    return-object v1
.end method

.method static getConnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Landroid/net/NetworkCapabilities;ZZ)Ljava/lang/String;
    .locals 1

    .line 278
    new-instance p4, Ljava/util/StringJoiner;

    sget p5, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_summary_separator:I

    invoke-virtual {p0, p5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-direct {p4, p5}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    const/4 p5, 0x0

    if-eqz p2, :cond_5

    .line 286
    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-nez v0, :cond_0

    iget-boolean v0, p2, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-eqz v0, :cond_5

    :cond_0
    if-eqz p1, :cond_1

    .line 291
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRequestingPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 292
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 303
    invoke-static {p0, p2}, Lcom/android/wifitrackerlib/Utils;->getSubIdForConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I

    move-result p2

    invoke-static {p0, p2}, Lcom/android/wifitrackerlib/Utils;->getCarrierNameForSubId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p2

    .line 305
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_2

    .line 307
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    .line 310
    :goto_1
    invoke-static {p0, p3, p5}, Lcom/android/wifitrackerlib/Utils;->getCurrentNetworkCapabilitiesInformation(Landroid/content/Context;Landroid/net/NetworkCapabilities;Z)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    .line 313
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_3

    return-object p3

    .line 316
    :cond_3
    sget p3, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_connected_via_app:I

    const/4 p4, 0x1

    new-array p4, p4, [Ljava/lang/Object;

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move-object p2, p1

    :goto_2
    aput-object p2, p4, p5

    invoke-virtual {p0, p3, p4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 334
    :cond_5
    invoke-static {p0, p3, p5}, Lcom/android/wifitrackerlib/Utils;->getCurrentNetworkCapabilitiesInformation(Landroid/content/Context;Landroid/net/NetworkCapabilities;Z)Ljava/lang/String;

    move-result-object p1

    .line 335
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 336
    invoke-virtual {p4, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 340
    :cond_6
    invoke-virtual {p4}, Ljava/util/StringJoiner;->length()I

    move-result p1

    if-nez p1, :cond_7

    .line 341
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/wifitrackerlib/R$array;->wifitrackerlib_wifi_status:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    .line 342
    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    return-object p0

    .line 345
    :cond_7
    invoke-virtual {p4}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getConnectingDescription(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 359
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/wifitrackerlib/R$array;->wifitrackerlib_wifi_status:I

    .line 360
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 365
    sget-object p1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {p1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result p1

    .line 368
    array-length v1, p0

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    aget-object v0, p0, p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method static getCurrentNetworkCapabilitiesInformation(Landroid/content/Context;Landroid/net/NetworkCapabilities;Z)Ljava/lang/String;
    .locals 6

    const-string p2, ""

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_5

    const-string v1, "connectivity"

    .line 1172
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 1173
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworks()[Landroid/net/Network;

    move-result-object v2

    .line 1175
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_4

    aget-object v5, v2, v4

    if-nez v5, :cond_1

    goto :goto_1

    .line 1178
    :cond_1
    invoke-virtual {v1, v5}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_1

    .line 1180
    :cond_2
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v5, 0x6

    .line 1181
    invoke-virtual {p1, v5}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    if-nez p1, :cond_5

    return-object p2

    :cond_5
    const-string/jumbo v1, "sem_wifi"

    .line 1189
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiManager;

    const/16 v2, 0x11

    .line 1191
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1192
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_sign_in_to_the_network:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1193
    :cond_6
    invoke-static {}, Lcom/samsung/wifitrackerlib/WcmUtils;->isWcmSupported()Z

    move-result v2

    if-nez v2, :cond_9

    const/16 v2, 0x18

    .line 1194
    invoke-virtual {p1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const/16 v0, 0x10

    .line 1208
    invoke-virtual {p1, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 1209
    invoke-virtual {p1}, Landroid/net/NetworkCapabilities;->isPrivateDnsBroken()Z

    move-result p1

    if-eqz p1, :cond_8

    return-object p2

    .line 1213
    :cond_8
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_internet_may_not_be_available:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1195
    :cond_9
    :goto_3
    invoke-static {}, Lcom/samsung/wifitrackerlib/WcmUtils;->isWcmSupported()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1196
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_internet_may_not_be_available:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1197
    :cond_a
    invoke-static {v1}, Lcom/samsung/wifitrackerlib/WcmUtils;->getSnsEverQualityTested(Lcom/samsung/android/wifi/SemWifiManager;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1198
    invoke-static {v1}, Lcom/samsung/wifitrackerlib/WcmUtils;->getSnsCurrentMode(Lcom/samsung/android/wifi/SemWifiManager;)I

    move-result p1

    if-eq p1, v0, :cond_d

    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    :cond_b
    return-object p2

    .line 1203
    :cond_c
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_reconnecting:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1201
    :cond_d
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_internet_may_not_be_available:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1206
    :cond_e
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_connected_checking_quality:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getDeviceOwner(Landroid/content/Context;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/os/UserHandle;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 1045
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 1046
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1051
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 1052
    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    if-nez p0, :cond_1

    goto :goto_0

    .line 1058
    :cond_1
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 1062
    :cond_2
    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v1, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_3
    :goto_0
    return-object v0

    :catch_0
    move-exception p0

    .line 1054
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDeviceOwner error - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getDisconnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    if-eqz p0, :cond_13

    if-nez p1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 1276
    invoke-static {p0, p1, v1}, Lcom/android/wifitrackerlib/Utils;->getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)Lcom/samsung/android/wifi/SemWifiConfiguration;

    move-result-object v2

    .line 1277
    invoke-virtual {p2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1278
    sget p1, Lcom/android/wifitrackerlib/R$string;->available_using_samsung_account:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1279
    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 1280
    sget p2, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_available_via_app:I

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array p2, v4, [Ljava/lang/Object;

    .line 1281
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object p1, p2, v1

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1282
    :cond_2
    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-nez v3, :cond_12

    iget-boolean v3, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSpecifier:Z

    if-eqz v3, :cond_3

    goto/16 :goto_1

    .line 1291
    :cond_3
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    if-eqz v1, :cond_a

    .line 1294
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    .line 1295
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1328
    :pswitch_1
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_disabled_transition_disable_indication:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1326
    :pswitch_2
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_connection_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1304
    :pswitch_3
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_incorrect_password:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    if-nez v2, :cond_4

    goto/16 :goto_2

    .line 1309
    :cond_4
    iget p1, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-ne p1, v4, :cond_5

    .line 1311
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_connection_blocked_by_another_network:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 p2, 0x5

    if-ne p1, p2, :cond_6

    .line 1314
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_disabled_captive_portal:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 p2, 0x6

    if-eq p1, p2, :cond_9

    const/4 p2, 0x7

    if-ne p1, p2, :cond_7

    goto :goto_0

    .line 1318
    :cond_7
    iget-wide p1, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByWcm:J

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-nez p1, :cond_8

    iget-wide p1, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->disableTimeByEle:J

    cmp-long p1, p1, v3

    if-eqz p1, :cond_13

    .line 1319
    :cond_8
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1317
    :cond_9
    :goto_0
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1324
    :pswitch_5
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1306
    :pswitch_6
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_couldnt_get_ip_address:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1302
    :pswitch_7
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_connection_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_a
    if-eqz v2, :cond_f

    .line 1333
    iget v1, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eqz v1, :cond_f

    .line 1335
    invoke-virtual {p2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getSemDisableReason()I

    move-result p2

    const/4 v1, 0x2

    if-eq p2, v1, :cond_d

    const/4 v1, 0x3

    if-eq p2, v1, :cond_b

    const/16 v1, 0xb

    if-eq p2, v1, :cond_d

    goto/16 :goto_2

    .line 1345
    :cond_b
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 1346
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result p1

    if-nez p1, :cond_c

    .line 1347
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_incorrect_password:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1349
    :cond_c
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_connection_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1338
    :cond_d
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result p2

    if-nez p2, :cond_e

    .line 1339
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->isEnterpriseNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 1340
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_incorrect_password:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1342
    :cond_e
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_tips_ap_guide_connection_failed:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1355
    :cond_f
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getRecentFailureReason()I

    move-result p1

    const/16 p2, 0x11

    if-eq p1, p2, :cond_11

    const/16 p2, 0x3eb

    if-eq p1, p2, :cond_10

    packed-switch p1, :pswitch_data_1

    goto :goto_2

    .line 1374
    :pswitch_8
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_network_not_found:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1371
    :pswitch_9
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_mbo_oce_assoc_disallowed_insufficient_rssi:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1367
    :pswitch_a
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_mbo_assoc_disallowed_max_num_sta_associated:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1364
    :pswitch_b
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_mbo_assoc_disallowed_cannot_connect:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1360
    :cond_10
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_poor_channel_conditions:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1357
    :cond_11
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_ap_unable_to_handle_new_sta:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1285
    :cond_12
    :goto_1
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getSuggestionOrSpecifierLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p1

    .line 1286
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_13

    .line 1287
    sget p2, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_available_via_app:I

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_13
    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3ed
        :pswitch_b
        :pswitch_a
        :pswitch_b
        :pswitch_b
        :pswitch_9
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public static getEapDisableReasonForSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I
    .locals 4

    const-string/jumbo v0, "sem_wifi"

    .line 1409
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    .line 1410
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1411
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1415
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 1416
    iget-object v2, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    iget-object v3, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    if-eqz v1, :cond_1

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method static getHighestSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 241
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 242
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 243
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const/4 v0, 0x6

    .line 244
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x4

    .line 247
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    const/16 v0, 0x9

    .line 250
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method static getImsiProtectionDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/CharSequence;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_3

    if-eqz p1, :cond_3

    .line 786
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->isSimCredential(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 787
    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->isServerCertUsedNetwork(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 791
    :cond_0
    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 793
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    goto :goto_0

    .line 795
    :cond_1
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getSubIdForConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    :goto_0
    if-eq p1, v2, :cond_3

    .line 798
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->isImsiPrivacyProtectionProvided(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    .line 803
    :cond_2
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_imsi_protection_warning:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    sget v0, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_help_url_imsi_protection:I

    .line 805
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "url"

    .line 803
    invoke-static {p0, p1, v1, v0}, Lcom/android/wifitrackerlib/NonSdkApiWrapper;->linkifyAnnotation(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    return-object v0
.end method

.method static getMeteredDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 525
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->canSetMeteredChoice()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 526
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    move-result v1

    if-eq v1, v2, :cond_1

    return-object v0

    .line 530
    :cond_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 531
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_metered_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 532
    :cond_2
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getMeteredChoice()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 533
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_unmetered_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 535
    :cond_3
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isMetered()Z

    move-result p1

    if-eqz p1, :cond_4

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_metered_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public static getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;
    .locals 2

    .line 989
    invoke-virtual {p0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object p0

    .line 990
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->maskRawAddress([BI)V

    .line 994
    :try_start_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 996
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNetworkPart error - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    .line 604
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    .line 607
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v1

    const-string v2, " "

    if-eqz v1, :cond_2

    .line 608
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkStatusString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 609
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_1

    .line 610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 611
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 612
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v4}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ")"

    .line 614
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    :cond_2
    invoke-static {}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getMaxNetworkSelectionDisableReason()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-gt v3, v1, :cond_4

    .line 620
    invoke-virtual {p0, v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    .line 624
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 625
    invoke-static {v3}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReasonString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "="

    .line 626
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 627
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 629
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getNetworkTypeDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1259
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_2

    .line 1260
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result p1

    if-nez p1, :cond_2

    iget p1, p2, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    if-eqz p1, :cond_2

    .line 1262
    invoke-virtual {p2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getSemDisableReason()I

    move-result p1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_1

    .line 1265
    :cond_0
    iget p1, p2, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 1266
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_disabled_captive_portal:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1267
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_disabled_no_internet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method static getSecurityTypesFromScanResult(Landroid/net/wifi/ScanResult;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/ScanResult;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    invoke-virtual {p0}, Landroid/net/wifi/ScanResult;->getSecurityTypes()[I

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, p0, v2

    .line 97
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/WifiConfiguration;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    new-array p0, v3, [Ljava/lang/Integer;

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 168
    :cond_0
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0xd

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-array p0, v3, [Ljava/lang/Integer;

    const/4 v0, 0x7

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 170
    :cond_1
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0xa

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-array p0, v3, [Ljava/lang/Integer;

    const/4 v0, 0x5

    .line 171
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 172
    :cond_2
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_3

    new-array p0, v3, [Ljava/lang/Integer;

    const/4 v0, 0x6

    .line 173
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 174
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_4

    new-array p0, v3, [Ljava/lang/Integer;

    .line 175
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 176
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    new-array p0, v3, [Ljava/lang/Integer;

    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 178
    :cond_5
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 179
    iget-boolean v0, p0, Landroid/net/wifi/WifiConfiguration;->requirePmf:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedPairwiseCiphers:Ljava/util/BitSet;

    .line 180
    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    .line 181
    invoke-virtual {p0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_6

    new-array p0, v3, [Ljava/lang/Integer;

    .line 182
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_6
    new-array p0, v1, [Ljava/lang/Integer;

    const/4 v0, 0x3

    .line 186
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v3

    .line 185
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 188
    :cond_7
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_8

    new-array p0, v3, [Ljava/lang/Integer;

    .line 189
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 190
    :cond_8
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 191
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    if-eqz v0, :cond_a

    move v0, v2

    .line 192
    :goto_0
    iget-object v1, p0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    array-length v4, v1

    if-ge v0, v4, :cond_a

    .line 193
    aget-object v1, v1, v0

    if-eqz v1, :cond_9

    new-array p0, v3, [Ljava/lang/Integer;

    .line 194
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_a
    new-array p0, v3, [Ljava/lang/Integer;

    .line 199
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p0, v2

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getSemWifiConfiguration(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Z)Lcom/samsung/android/wifi/SemWifiConfiguration;
    .locals 4

    const-string/jumbo v0, "sem_wifi"

    .line 1383
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/wifi/SemWifiManager;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1387
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 1388
    invoke-virtual {p0}, Lcom/samsung/android/wifi/SemWifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1389
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 1396
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    .line 1397
    iget-object v3, v2, Lcom/samsung/android/wifi/SemWifiConfiguration;->configKey:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return-object v2

    :cond_3
    if-nez p2, :cond_4

    return-object v0

    .line 1403
    :cond_4
    new-instance p2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {p2, p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 1404
    invoke-virtual {p0, p2}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    return-object p2

    :cond_5
    :goto_0
    if-nez p2, :cond_6

    return-object v0

    .line 1391
    :cond_6
    new-instance p2, Lcom/samsung/android/wifi/SemWifiConfiguration;

    invoke-direct {p2, p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;-><init>(Ljava/lang/String;)V

    .line 1392
    invoke-virtual {p0, p2}, Lcom/samsung/android/wifi/SemWifiManager;->addOrUpdateNetwork(Lcom/samsung/android/wifi/SemWifiConfiguration;)Z

    return-object p2
.end method

.method static getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .line 214
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 215
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 216
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 217
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 220
    :cond_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x3

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method static getSpeedDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_5

    if-eqz p1, :cond_5

    .line 1233
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_5

    .line 1234
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_5

    .line 1235
    invoke-virtual {p2}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getSemDisableReason()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_5

    iget p2, p2, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    const/4 v1, 0x2

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 1240
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSpeed()I

    move-result p1

    if-eq p1, v2, :cond_4

    const/16 p2, 0xa

    if-eq p1, p2, :cond_3

    const/16 p2, 0x14

    if-eq p1, p2, :cond_2

    const/16 p2, 0x1e

    if-eq p1, p2, :cond_1

    return-object v0

    .line 1243
    :cond_1
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_speed_label_very_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1245
    :cond_2
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_speed_label_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1247
    :cond_3
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_speed_label_okay:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1249
    :cond_4
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_speed_label_slow:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_0
    return-object v0
.end method

.method public static getStandardString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 1161
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_standard_unknown:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1159
    :pswitch_0
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_standard_11be:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1157
    :pswitch_1
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_standard_11ad:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1155
    :pswitch_2
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_standard_11ax:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1153
    :pswitch_3
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_standard_11ac:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1151
    :pswitch_4
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_standard_11n:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1149
    :cond_0
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifitrackerlib_wifi_standard_legacy:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getSubIdForConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I
    .locals 5

    .line 739
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const-string/jumbo v0, "telephony_subscription_service"

    .line 743
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    if-nez p0, :cond_1

    return v1

    .line 748
    :cond_1
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 749
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 754
    :cond_2
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 755
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 756
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v3

    iget v4, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    if-ne v3, v4, :cond_3

    .line 757
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v1, v0, :cond_3

    :cond_4
    :goto_0
    return v1
.end method

.method private static getSuggestionOrSpecifierLabel(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 426
    :cond_0
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getSubIdForConfig(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 425
    invoke-static {p0, v0}, Lcom/android/wifitrackerlib/Utils;->getCarrierNameForSubId(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 427
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    .line 430
    :cond_1
    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/wifitrackerlib/Utils;->getAppLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 431
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    return-object p0

    .line 435
    :cond_2
    iget-object p0, p1, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method static getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;
    .locals 2

    .line 563
    invoke-static {}, Lcom/android/wifitrackerlib/BaseWifiTracker;->isVerboseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, " "

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    .line 570
    invoke-virtual {p1}, Lcom/samsung/wifitrackerlib/SemWifiEntryFlags;->getStatus()Ljava/lang/String;

    move-result-object p1

    .line 571
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 572
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 576
    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiInfoDescription()Ljava/lang/String;

    move-result-object p1

    .line 577
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 578
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 581
    :cond_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getNetworkCapabilityDescription()Ljava/lang/String;

    move-result-object p1

    .line 582
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 583
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 586
    :cond_3
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getScanResultDescription()Ljava/lang/String;

    move-result-object p1

    .line 587
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 588
    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 591
    :cond_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getNetworkSelectionDescription()Ljava/lang/String;

    move-result-object p0

    .line 592
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 593
    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    .line 596
    :cond_5
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    :goto_0
    const-string p0, ""

    return-object p0
.end method

.method static getWarningDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 546
    :cond_0
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v1

    if-nez v1, :cond_1

    .line 547
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_open_warning_summary:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 548
    :cond_1
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurity()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 549
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_wep_warning_summary:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 550
    :cond_2
    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/wifitrackerlib/Utils;->hasDefaultNetworkName(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 551
    sget p1, Lcom/android/wifitrackerlib/R$string;->wifi_default_ssid_warning_summary:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static hasDefaultNetworkName(Ljava/lang/String;)Z
    .locals 1

    .line 559
    sget-object v0, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isDeviceOrProfileOwner(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 1102
    invoke-static {p0, p1, p2}, Lcom/android/wifitrackerlib/Utils;->isDeviceOwner(ILjava/lang/String;Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1103
    invoke-static {p0, p1, p2}, Lcom/android/wifitrackerlib/Utils;->isProfileOwner(ILjava/lang/String;Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDeviceOwner(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1074
    :cond_0
    invoke-static {p2}, Lcom/android/wifitrackerlib/Utils;->getDeviceOwner(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object p2

    if-nez p2, :cond_1

    return v0

    .line 1079
    :cond_1
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/os/UserHandle;

    invoke-static {p0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    iget-object p0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/content/ComponentName;

    .line 1080
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isEnterpriseNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 1

    .line 726
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p0, :cond_0

    .line 727
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isImsiPrivacyProtectionProvided(Landroid/content/Context;I)Z
    .locals 1

    const-string v0, "carrier_config"

    .line 772
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 776
    :cond_0
    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    const-string p1, "imsi_key_availability_int"

    .line 780
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result p0

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isProfileOwner(ILjava/lang/String;Landroid/content/Context;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1093
    :cond_0
    invoke-static {p0, p2}, Lcom/android/wifitrackerlib/Utils;->retrieveDevicePolicyManagerFromUserContext(ILandroid/content/Context;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 1095
    :cond_1
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static isServerCertUsedNetwork(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 721
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p0, :cond_0

    .line 722
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isEapMethodServerCertUsed()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isSimCredential(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    .line 731
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz p0, :cond_0

    .line 732
    invoke-virtual {p0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isSimPresent(Landroid/content/Context;I)Z
    .locals 2

    const-string/jumbo v0, "telephony_subscription_service"

    .line 683
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 686
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 687
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 695
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    .line 696
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_3
    :goto_0
    return v0
.end method

.method private static synthetic lambda$getBestScanResultByLevel$0(Landroid/net/wifi/ScanResult;)I
    .locals 0

    .line 88
    iget p0, p0, Landroid/net/wifi/ScanResult;->level:I

    return p0
.end method

.method private static synthetic lambda$isSimPresent$1(ILandroid/telephony/SubscriptionInfo;)Z
    .locals 0

    .line 696
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static maskRawAddress([BI)V
    .locals 3

    if-ltz p1, :cond_2

    .line 1005
    array-length v0, p0

    mul-int/lit8 v0, v0, 0x8

    if-gt p1, v0, :cond_2

    .line 1010
    div-int/lit8 v0, p1, 0x8

    .line 1011
    rem-int/lit8 p1, p1, 0x8

    const/16 v1, 0xff

    rsub-int/lit8 p1, p1, 0x8

    shl-int p1, v1, p1

    int-to-byte p1, p1

    .line 1014
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-byte v1, p0, v0

    and-int/2addr p1, v1

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    :cond_0
    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 1018
    array-length p1, p0

    if-ge v0, p1, :cond_1

    const/4 p1, 0x0

    .line 1019
    aput-byte p1, p0, v0

    goto :goto_0

    :cond_1
    return-void

    .line 1006
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IP address with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p0, p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bytes has invalid prefix length "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static retrieveDevicePolicyManagerFromUserContext(ILandroid/content/Context;)Landroid/app/admin/DevicePolicyManager;
    .locals 0

    .line 1038
    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->createPackageContextAsUser(ILandroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1040
    :cond_0
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method
