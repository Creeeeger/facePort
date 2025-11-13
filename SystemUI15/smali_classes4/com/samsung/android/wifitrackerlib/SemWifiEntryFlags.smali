.class public final Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static isBlockedUnSecureWifiAutoJoin:I = -0x1

.field public static isShowBandSummaryOn:I = -0x1

.field public static isWepAllowed:I = -0x1

.field public static isWifiDeveloperOptionOn:I = -0x1

.field public static isWpa3OweSupported:I = -0x1

.field public static isWpa3SaeSupported:I = -0x1

.field public static isWpa3SuiteBSupported:I = -0x1


# instance fields
.field public has6EStandard:Z

.field public isCarrierNetwork:Z

.field public isOpenRoamingNetwork:Z

.field public isSamsungMobileHotspot:Z

.field public networkScoringUiEnabled:Z

.field public networkType:I

.field public passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public final qosScoredNetworkCache:Ljava/util/Map;

.field public semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

.field public staCount:I

.field public wifiStandard:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->qosScoredNetworkCache:Ljava/util/Map;

    return-void
.end method

.method public static isShowBandInfoOn(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isShowBandSummaryOn:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sec_wifi_developer_show_band"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    sput p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isShowBandSummaryOn:I

    :cond_1
    sget p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isShowBandSummaryOn:I

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public static isWepAllowed(Landroid/content/Context;)Z
    .locals 8

    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SemWifiUtils.isWepAllowed"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/HandlerExecutor;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Lcom/samsung/android/wifitrackerlib/SemWifiUtils$Mutable;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v2, v3}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils$Mutable;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/samsung/android/wifitrackerlib/SemWifiUtils$Mutable;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v3, v4}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils$Mutable;-><init>(Ljava/lang/Object;)V

    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    new-instance v4, Lcom/samsung/android/wifitrackerlib/SemWifiUtils$1;

    invoke-direct {v4, v0, v3, v2}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils$1;-><init>(Ljava/lang/Object;Lcom/samsung/android/wifitrackerlib/SemWifiUtils$Mutable;Lcom/samsung/android/wifitrackerlib/SemWifiUtils$Mutable;)V

    invoke-virtual {p0, v1, v4}, Landroid/net/wifi/WifiManager;->queryWepAllowed(Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    monitor-enter v0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x2710

    add-long/2addr v6, v4

    :goto_0
    iget-object p0, v2, Lcom/samsung/android/wifitrackerlib/SemWifiUtils$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    cmp-long p0, v4, v6

    if-gez p0, :cond_0

    sub-long v4, v6, v4

    :try_start_1
    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, v3, Lcom/samsung/android/wifitrackerlib/SemWifiUtils$Mutable;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    sput p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed:I

    goto :goto_2

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWepAllowed:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    goto :goto_3

    :cond_2
    const/4 v0, 0x0

    :goto_3
    return v0
.end method

.method public static isWifiDeveloperOptionOn(Landroid/content/Context;)Z
    .locals 4

    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "sem_wifi_developer_option_visible"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_0

    move p0, v3

    goto :goto_0

    :cond_0
    move p0, v2

    :goto_0
    sput p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn:I

    :cond_1
    sget p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn:I

    if-ne p0, v3, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method
