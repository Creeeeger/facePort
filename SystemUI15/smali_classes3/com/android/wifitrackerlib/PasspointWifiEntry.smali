.class public final Lcom/android/wifitrackerlib/PasspointWifiEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;


# instance fields
.field public final mCurrentHomeScanResults:Ljava/util/List;

.field public final mCurrentRoamingScanResults:Ljava/util/List;

.field public final mFqdn:Ljava/lang/String;

.field public final mFriendlyName:Ljava/lang/String;

.field public final mKey:Ljava/lang/String;

.field public mMeteredOverride:I

.field public mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

.field public mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public mShouldAutoOpenCaptivePortal:Z

.field public final mShowBandSummary:Z

.field public mSubscriptionExpirationTimeInMillis:J

.field public final mTargetScanResults:Ljava/util/List;

.field public mTargetSecurityTypes:Ljava/util/List;

.field public final mUniqueId:Ljava/lang/String;

.field public mWifiConfig:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p3, p5, p6}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/os/Handler;Landroid/net/wifi/WifiManager;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    const/16 p1, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShowBandSummary:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mTargetScanResults:Ljava/util/List;

    iput p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    const-string p2, "Cannot construct with null WifiConfiguration!"

    invoke-static {p4, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p4}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result p2

    if-eqz p2, :cond_1

    iput-object p4, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p4}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mUniqueId:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mKey:Ljava/lang/String;

    iget-object p2, p4, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFqdn:Ljava/lang/String;

    const-string p3, "Cannot construct with null WifiConfiguration FQDN!"

    invoke-static {p2, p3}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object p3, p2, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFriendlyName:Ljava/lang/String;

    iget p3, p2, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 p4, -0x1

    if-eq p3, p4, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-boolean p2, p2, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iput-boolean p1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given WifiConfiguration is not for Passpoint!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/os/Handler;Landroid/net/wifi/hotspot2/PasspointConfiguration;Landroid/net/wifi/WifiManager;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/os/Handler;Landroid/net/wifi/WifiManager;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    const/16 p1, 0xb

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/16 p2, 0xc

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShowBandSummary:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mTargetScanResults:Ljava/util/List;

    iput p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    const-string p2, "Cannot construct with null PasspointConfiguration!"

    invoke-static {p3, p2}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mUniqueId:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mKey:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFqdn:Ljava/lang/String;

    const-string p4, "Cannot construct with null PasspointConfiguration FQDN!"

    invoke-static {p2, p4}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {p3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getSubscriptionExpirationTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSubscriptionExpirationTimeInMillis:J

    iget-object p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getMeteredOverride()I

    move-result p2

    iput p2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I

    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isShowBandInfoOn(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    :cond_0
    iput-boolean p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShowBandSummary:Z

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    const-string/jumbo p1, "wifi"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V

    return-void
.end method

.method public static uniqueIdToPasspointWifiEntryKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "Cannot create key with null unique id!"

    invoke-static {p0, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "PasspointWifiEntry:"

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final declared-synchronized canConnect()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isExpired()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/OsuWifiEntry;->canConnect()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :cond_1
    :try_start_1
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    move v1, v2

    :cond_2
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final canDisconnect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final declared-synchronized canSetAutoJoinEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    monitor-exit p0

    return v0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized canSignIn()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {p1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;->onFailure(I)V

    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->stopRestrictingAutoJoinToSubscriptionId()V

    new-instance p1, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "sem_wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    :cond_2
    iget-object p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget v0, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    const-string v1, "REL"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VanillaIceCream"

    invoke-virtual {v2, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    sget-object v0, Lcom/android/wifi/flags/Flags;->FEATURE_FLAGS:Lcom/android/wifi/flags/FeatureFlagsImpl;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mUniqueId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointUniqueId()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getPasspointFqdn()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFqdn:Ljava/lang/String;

    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized getConnectedState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-super {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized getNetworkSelectionDescription()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final getSecurity()I
    .locals 0

    const/4 p0, 0x3

    return p0
.end method

.method public final getSecurityString()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v0, 0x7f131570

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getSecurityTypes()Ljava/util/List;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSsid()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getStandardString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v0

    invoke-static {v0, v1}, Lcom/android/wifitrackerlib/Utils;->getStandardString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/wifitrackerlib/Utils;->getStandardString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {v1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v1

    invoke-static {v1, v0}, Lcom/android/wifitrackerlib/Utils;->getStandardString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mTargetScanResults:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentHomeScanResults:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mTargetScanResults:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mCurrentRoamingScanResults:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v0, ""
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSummary(Z)Ljava/lang/String;
    .locals 6

    const-string v0, "getConnectedState() returned unknown state: "

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/util/StringJoiner;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v3, 0x7f13154b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isExpired()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_3

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShowBandSummary:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->setBand(I)V

    :cond_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBand:I

    invoke-static {v2, v0}, Lcom/android/wifitrackerlib/Utils;->getBandString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    monitor-exit p0

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mOsuWifiEntry:Lcom/android/wifitrackerlib/OsuWifiEntry;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/wifitrackerlib/OsuWifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto/16 :goto_3

    :cond_2
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v0, 0x7f131563

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto/16 :goto_3

    :cond_3
    if-eqz v2, :cond_6

    const/4 p1, 0x1

    if-eq v2, p1, :cond_5

    if-eq v2, v4, :cond_4

    const-string p1, "PasspointWifiEntry"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v3, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {p1, v0, v3, v5}, Lcom/android/wifitrackerlib/Utils;->getConnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {p1, v0}, Lcom/android/wifitrackerlib/Utils;->getConnectingDescription(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {p1, v0, v3}, Lcom/android/wifitrackerlib/Utils;->getDisconnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShowBandSummary:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-ne v2, v4, :cond_7

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->setBand(I)V

    :cond_7
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBand:I

    invoke-static {v2, v0}, Lcom/android/wifitrackerlib/Utils;->getBandString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    monitor-exit p0

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_8
    :goto_2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->isSubscription()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v0, :cond_a

    :cond_9
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {v1, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result p1

    if-ne p1, v4, :cond_b

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/wifitrackerlib/Utils;->getWarningDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v1, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_b
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->getConnectedState()I

    move-result p1

    if-nez p1, :cond_e

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/wifitrackerlib/Utils;->getAutoConnectDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v0, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, p0, v2}, Lcom/android/wifitrackerlib/Utils;->getCarrierNetworkOffloadDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual {v1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_4

    :cond_c
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v1, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_4

    :cond_d
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {v1, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_e
    :goto_4
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v1, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_f
    invoke-virtual {v1}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFriendlyName:Ljava/lang/String;

    return-object p0
.end method

.method public final declared-synchronized getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isAutoJoinEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->isAutojoinEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isExpired()Z
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSubscriptionExpirationTimeInMillis:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mSubscriptionExpirationTimeInMillis:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isMetered()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mMeteredOverride:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :try_start_2
    monitor-exit p0

    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    monitor-exit p0

    goto :goto_0

    :cond_1
    monitor-exit p0

    move v3, v1

    :goto_0
    if-eq v3, v2, :cond_2

    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    move v1, v2

    :cond_3
    monitor-exit p0

    return v1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit p0

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isSaved()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isSubscription()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized isSuggestion()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1, p2}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mShouldAutoOpenCaptivePortal:Z

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/PasspointWifiEntry;->canSignIn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const-class p2, Landroid/net/ConnectivityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "["

    const-string v2, "]"

    const-string v3, "]["

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FQDN:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFqdn:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FriendlyName:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mFriendlyName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    const-string v2, "UniqueId:"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mPasspointConfig:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v2}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/android/wifitrackerlib/WifiEntry;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized updateSecurityTypes()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wifitrackerlib/PasspointWifiEntry;->mTargetSecurityTypes:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw v0
.end method
