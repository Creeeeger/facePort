.class public Lcom/android/wifitrackerlib/StandardWifiEntry;
.super Lcom/android/wifitrackerlib/WifiEntry;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public mHasAddConfigUserRestriction:Z

.field public mIsAdminRestricted:Z

.field public final mIsEnhancedOpenSupported:Z

.field public mIsUserShareable:Z

.field public final mIsWpa3SaeSupported:Z

.field public final mIsWpa3SuiteBSupported:Z

.field public final mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

.field public final mMatchingScanResults:Ljava/util/Map;

.field public final mMatchingWifiConfigs:Ljava/util/Map;

.field public mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

.field public final mShowBandSummary:Z

.field public final mTargetScanResults:Ljava/util/List;

.field public final mTargetSecurityTypes:Ljava/util/List;

.field public mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/wifitrackerlib/WifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/os/Handler;Landroid/net/wifi/WifiManager;Z)V

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    new-instance p2, Landroid/util/ArrayMap;

    invoke-direct {p2}, Landroid/util/ArrayMap;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsUserShareable:Z

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mHasAddConfigUserRestriction:Z

    iput-object p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget p4, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported:I

    const/4 p5, -0x1

    if-ne p4, p5, :cond_0

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isWpa3SaeSupported()Z

    move-result p3

    sput p3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported:I

    :cond_0
    sget p3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SaeSupported:I

    const/4 p4, 0x1

    if-ne p3, p4, :cond_1

    move p3, p4

    goto :goto_0

    :cond_1
    move p3, p2

    :goto_0
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SaeSupported:Z

    iget-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    if-ne v0, p5, :cond_2

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isWpa3SuiteBSupported()Z

    move-result p3

    sput p3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    :cond_2
    sget p3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3SuiteBSupported:I

    if-ne p3, p4, :cond_3

    move p3, p4

    goto :goto_1

    :cond_3
    move p3, p2

    :goto_1
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SuiteBSupported:Z

    iget-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    sget v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3OweSupported:I

    if-ne v0, p5, :cond_4

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-virtual {p3}, Landroid/net/wifi/WifiManager;->isEnhancedOpenSupported()Z

    move-result p3

    sput p3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3OweSupported:I

    :cond_4
    sget p3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWpa3OweSupported:I

    if-ne p3, p4, :cond_5

    move p3, p4

    goto :goto_2

    :cond_5
    move p3, p2

    :goto_2
    iput-boolean p3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsEnhancedOpenSupported:Z

    iget-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isWifiDeveloperOptionOn(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_6

    iget-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isShowBandInfoOn(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_6

    move p2, p4

    :cond_6
    iput-boolean p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShowBandSummary:Z

    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p2, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->$r8$clinit:I

    const-string/jumbo p2, "wifi"

    invoke-virtual {p3, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    iget-object p2, p1, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mUserManager:Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mUserManager:Landroid/os/UserManager;

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSecurityTypes()V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateAdminRestrictions()V

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Ljava/util/List;Ljava/util/List;Landroid/net/wifi/WifiManager;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/wifitrackerlib/WifiTrackerInjector;",
            "Landroid/os/Handler;",
            "Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;",
            "Landroid/net/wifi/WifiManager;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p6

    move v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/os/Handler;Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;Landroid/net/wifi/WifiManager;Z)V

    if-eqz p4, :cond_0

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateConfig(Ljava/util/List;)V

    :cond_0
    if-eqz p5, :cond_1

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0, p5}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateScanResultInfo(Ljava/util/List;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized canConnect()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_9

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->hasAdminRestrictions()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_8

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_2

    monitor-exit p0

    return v3

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const-class v4, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v1, :cond_4

    monitor-exit p0

    return v3

    :cond_4
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierId()I

    move-result v1

    iget-object v4, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v4, v4, Landroid/net/wifi/WifiConfiguration;->carrierId:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v1, v4, :cond_5

    monitor-exit p0

    return v3

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_6
    monitor-exit p0

    return v2

    :cond_7
    :goto_0
    monitor-exit p0

    return v2

    :cond_8
    monitor-exit p0

    return v3

    :cond_9
    :goto_1
    monitor-exit p0

    return v2

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final canDisconnect()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

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

.method public canSetAutoJoinEnabled()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

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

.method public canSetMeteredChoice()Z
    .locals 0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized canShare()Z
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-boolean v0, v0, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mIsDemoMode:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    sget v2, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mUserManager:Landroid/os/UserManager;

    const-string v3, "no_sharing_admin_configured_wifi"

    iget v4, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/net/wifi/WifiConfiguration;->creatorUid:I

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->creatorName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v2}, Lcom/android/wifitrackerlib/Utils;->isDeviceOrProfileOwner(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_3

    const/4 v4, 0x4

    if-eq v2, v4, :cond_3

    const/4 v4, 0x6

    if-eq v2, v4, :cond_3

    goto :goto_0

    :cond_3
    monitor-exit p0

    return v3

    :cond_4
    monitor-exit p0

    return v1

    :goto_1
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

.method public declared-synchronized connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "\""

    const-string v3, "\""

    const-string v4, "\""

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->stopRestrictingAutoJoinToSubscriptionId()V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result v5

    if-eqz v5, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object v2, v2, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object v2, v2, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v6}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v2}, Lcom/android/wifitrackerlib/Utils;->shouldSetHiddenSsid(Ljava/lang/String;Landroid/net/wifi/WifiManager;)Z

    move-result v0

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    new-instance v0, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {v0, v2}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v2, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {v2, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSemWifiManager$2()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    iget v2, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object v2, v2, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object v2, v2, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/android/wifitrackerlib/Utils;->shouldSetHiddenSsid(Ljava/lang/String;Landroid/net/wifi/WifiManager;)Z

    move-result v0

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_4

    :cond_1
    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance p1, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {p1}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object v2, v2, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object v2, v2, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {v0, v1}, Lcom/android/wifitrackerlib/Utils;->shouldSetHiddenSsid(Ljava/lang/String;Landroid/net/wifi/WifiManager;)Z

    move-result v0

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    new-instance v0, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {v0, p1, v1}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    iput-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSemWifiManager$2()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object v0

    iget v1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    if-eqz p1, :cond_b

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda4;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_3

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    sget-object v3, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    iget-object v2, v2, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Landroid/net/wifi/WifiEnterpriseConfig;->isAuthenticationSimBased()Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v3, v3, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const-string/jumbo v4, "telephony_subscription_service"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    if-nez v2, :cond_5

    :cond_4
    :goto_1
    move v0, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v4, -0x1

    if-ne v3, v4, :cond_7

    goto :goto_2

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v2, v3}, Lcom/android/wifitrackerlib/Utils$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    :goto_2
    if-nez v0, :cond_9

    if-eqz p1, :cond_8

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, v1}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda4;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    monitor-exit p0

    return-void

    :cond_9
    :try_start_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    if-gez p1, :cond_a

    const-string p1, "StandardWifiEntry"

    const-string v0, "failed to connect - invalid network ID"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_2
    new-instance p1, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p1, v0}, Lcom/samsung/android/wifitrackerlib/WifiIssueDetectorUtil;->reportConnectNetwork(Landroid/net/wifi/WifiConfiguration;)V

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;

    invoke-direct {v1, p0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectActionListener;-><init>(Lcom/android/wifitrackerlib/WifiEntry;)V

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSemWifiManager$2()Lcom/samsung/android/wifi/SemWifiManager;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget v1, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/wifi/SemWifiManager;->notifyConnect(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_b
    :goto_3
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isPasspointAp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isOsuAp()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v2, v3, :cond_1

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getBandString()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBand:I

    invoke-static {v1, v0}, Lcom/android/wifitrackerlib/Utils;->getBandString(ILandroid/content/Context;)Ljava/lang/String;

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

.method public final getBandSummary$1(ILandroid/net/wifi/WifiInfo;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->setBand(I)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getBandString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getBandString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    check-cast p2, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/ScanResult;

    sget-object v2, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    const-class v2, Lcom/android/wifitrackerlib/Utils;

    monitor-enter v2

    :try_start_0
    new-instance v3, Ljava/util/StringJoiner;

    const-string v4, " + "

    invoke-direct {v3, v4}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v4

    sget v5, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    const/16 v5, 0x8

    if-ne v4, v5, :cond_6

    invoke-virtual {p2}, Landroid/net/wifi/ScanResult;->getAffiliatedMloLinks()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/MloLink;

    invoke-virtual {v4}, Landroid/net/wifi/MloLink;->getBand()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    if-eq v4, v0, :cond_5

    if-eq v4, v5, :cond_3

    const/16 v6, 0x10

    if-eq v4, v6, :cond_2

    const/4 v6, -0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x3

    goto :goto_1

    :cond_3
    move v6, v0

    goto :goto_1

    :cond_4
    move v6, v1

    :cond_5
    :goto_1
    invoke-static {v6, p1}, Lcom/android/wifitrackerlib/Utils;->getBandString(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_6
    invoke-virtual {v3}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getBandString()Ljava/lang/String;

    move-result-object p1

    :cond_7
    return-object p1

    :goto_2
    monitor-exit v2

    throw p0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getMeteredChoice()I
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getNetworkSelectionDescription(Landroid/net/wifi/WifiConfiguration;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getScanResultDescription()Ljava/lang/String;
    .locals 3

    const-string v0, "["

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x960

    const/16 v2, 0x9c4

    invoke-virtual {p0, v0, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1324

    const/16 v2, 0x170c

    invoke-virtual {p0, v0, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x1725

    const/16 v2, 0x1bd5

    invoke-virtual {p0, v0, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0xe3d0

    const v2, 0x11238

    invoke-virtual {p0, v0, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getScanResultDescription(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getScanResultDescription(II)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1, p2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda0;-><init>(II)V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance p2, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-static {p2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_0

    const-string p1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    if-le p2, v1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v1, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-interface {p2, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/OptionalInt;->getAsInt()I

    move-result p2

    const-string v1, "max="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    new-instance p2, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, v0, v1, v2}, Lcom/android/wifitrackerlib/StandardWifiEntry$$ExternalSyntheticLambda3;-><init>(Lcom/android/wifitrackerlib/StandardWifiEntry;Ljava/lang/StringBuilder;J)V

    invoke-interface {p1, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getSecurityString()Ljava/lang/String;
    .locals 5

    const-string v0, "Couldn\'t get string for security types: "

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x9

    const/4 v4, 0x0

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v3, :cond_1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f131576

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_1
    :try_start_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f131571

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_2
    :try_start_3
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f131577

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f131572

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_4
    :try_start_5
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f131579

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_5
    :try_start_6
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f13157b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-object v0

    :pswitch_6
    :try_start_7
    const-string v0, ""
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_8
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f131573

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_0
    :try_start_9
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f1314fd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_a
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f131578

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_4
    :try_start_b
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v1, 0x7f131575

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_5
    :try_start_c
    const-string v1, "StandardWifiEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_1
    monitor-exit p0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final declared-synchronized getSecurityTypes()Ljava/util/List;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

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

.method public final getSemWifiManager$2()Lcom/samsung/android/wifi/SemWifiManager;
    .locals 2

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sem_wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wifi/SemWifiManager;

    iput-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mSemWifiManager:Lcom/samsung/android/wifi/SemWifiManager;

    return-object p0
.end method

.method public final getSsid()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    return-object p0
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
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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
    const-string v0, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :goto_0
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSummary(Z)Ljava/lang/String;
    .locals 10

    const-string p1, "getConnectedState() returned unknown state: "

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->hasAdminRestrictions()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v0, 0x7f131529

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto/16 :goto_7

    :cond_0
    :try_start_1
    new-instance v0, Ljava/util/StringJoiner;

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    const v2, 0x7f13154b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v4, :cond_1

    const-string v5, "StandardWifiEntry"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-static {p1, v5, v6, v7}, Lcom/android/wifitrackerlib/Utils;->getConnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiInfo;Landroid/net/wifi/WifiConfiguration;Landroid/net/NetworkCapabilities;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-static {p1, v5}, Lcom/android/wifitrackerlib/Utils;->getConnectingDescription(Landroid/content/Context;Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {p1, v5, v6}, Lcom/android/wifitrackerlib/Utils;->getDisconnectedDescription(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-boolean v5, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mShowBandSummary:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0, v1, v5}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getBandSummary$1(ILandroid/net/wifi/WifiInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    sget-object v5, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p1, v5, :cond_6

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_5
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    if-ne p1, v4, :cond_7

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/wifitrackerlib/Utils;->getWarningDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_7
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean v5, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkScoringUiEnabled:Z

    if-eqz v5, :cond_14

    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    sget-object v6, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x5

    if-eqz v5, :cond_e

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v9

    if-nez v9, :cond_e

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v9

    if-nez v9, :cond_e

    iget-object v9, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v9, :cond_8

    iget v9, v9, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    goto :goto_1

    :cond_8
    move v9, v7

    :goto_1
    if-eq v9, v8, :cond_e

    iget p1, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    if-ne p1, v4, :cond_9

    goto :goto_2

    :cond_9
    iget p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    if-eq p1, v8, :cond_d

    const/16 v9, 0xa

    if-eq p1, v9, :cond_c

    const/16 v9, 0x14

    if-eq p1, v9, :cond_b

    const/16 v9, 0x1e

    if-eq p1, v9, :cond_a

    goto :goto_2

    :cond_a
    const p1, 0x7f13154a

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_b
    const p1, 0x7f131546

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_c
    const p1, 0x7f131548

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_d
    const p1, 0x7f131549

    invoke-virtual {v5, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :cond_e
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-virtual {v0, v6}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_f
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v6

    if-nez v6, :cond_13

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v6

    if-nez v6, :cond_13

    iget v6, v5, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    if-eqz v6, :cond_13

    iget-object v5, v5, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    if-eqz v5, :cond_10

    iget v7, v5, Lcom/samsung/android/wifi/SemWifiConfiguration;->networkDisableReason:I

    :cond_10
    if-ne v7, v8, :cond_11

    goto :goto_3

    :cond_11
    if-ne v6, v3, :cond_12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f1314ba

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_12
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f1314bd

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_13
    :goto_3
    const-string p1, ""

    :goto_4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_14

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_14
    if-nez v1, :cond_17

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean p1, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    if-eqz p1, :cond_16

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-static {p1, p0, v1}, Lcom/android/wifitrackerlib/Utils;->getCarrierNetworkOffloadDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;Landroid/net/wifi/WifiManager;)Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {v1, p0}, Lcom/android/wifitrackerlib/Utils;->getAutoConnectDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_5

    :cond_15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_17

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_5

    :cond_16
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/wifitrackerlib/Utils;->getAutoConnectDescription(Landroid/content/Context;Lcom/android/wifitrackerlib/WifiEntry;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_17
    :goto_5
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    const-string v1, ""

    if-eqz p1, :cond_1b

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSetMeteredChoice()Z

    move-result v5

    if-nez v5, :cond_18

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getMeteredChoice()I

    move-result v5

    if-eq v5, v3, :cond_18

    goto :goto_6

    :cond_18
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getMeteredChoice()I

    move-result v5

    const v6, 0x7f13155f

    if-ne v5, v3, :cond_19

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_19
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getMeteredChoice()I

    move-result v3

    if-ne v3, v4, :cond_1a

    const v1, 0x7f131586

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    :cond_1a
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isMetered()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1b
    :goto_6
    invoke-virtual {v0}, Ljava/util/StringJoiner;->length()I

    move-result p1

    if-eqz p1, :cond_1c

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    new-instance p1, Ljava/util/StringJoiner;

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    move-object v0, p1

    :cond_1c
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-static {p0, p1}, Lcom/android/wifitrackerlib/Utils;->getVerboseLoggingDescription(Lcom/android/wifitrackerlib/WifiEntry;Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1d

    invoke-virtual {v0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1d
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    :goto_7
    monitor-exit p0

    throw p1
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object p0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    return-object p0
.end method

.method public declared-synchronized getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized hasAdminRestrictions()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mHasAddConfigUserRestriction:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSaved()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->isSuggestion()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    :cond_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_2
    monitor-exit p0

    const/4 p0, 0x0

    return p0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isAutoJoinEnabled()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_1
    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->allowAutojoin:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isMetered()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getMeteredChoice()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredHint:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSaved()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;
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

.method public declared-synchronized isSuggestion()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

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

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->canSignIn()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized semUpdateScores(Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    iget-object v3, p1, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p1, Lcom/samsung/android/wifitrackerlib/WifiQoSScoredCache;->mCache:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_1
    if-eqz v2, :cond_0

    :try_start_2
    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-object v3, v3, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->qosScoredNetworkCache:Ljava/util/Map;

    iget-object v1, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized semUpdateSemWifiConfig(Ljava/util/Map;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object v0

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wifi/SemWifiConfiguration;

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown()Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal()Z

    iput-object p1, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized shouldEditBeforeConnect()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionStatus()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->hasEverConnected()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v2

    if-gtz v2, :cond_3

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v2

    if-gtz v2, :cond_3

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getDisableReasonCounter(I)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    monitor-exit p0

    return v1

    :cond_3
    :goto_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public final updateAdminRestrictions()V
    .locals 6

    sget v0, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mUserManager:Landroid/os/UserManager;

    if-eqz v0, :cond_0

    const-string v1, "no_add_wifi_config"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mHasAddConfigUserRestriction:Z

    :cond_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMinimumRequiredWifiSecurityLevel()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    const/4 v5, -0x1

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    move v4, v5

    goto :goto_1

    :pswitch_1
    const/4 v4, 0x3

    goto :goto_1

    :pswitch_2
    const/4 v4, 0x2

    goto :goto_1

    :pswitch_3
    move v4, v2

    goto :goto_1

    :pswitch_4
    move v4, v1

    :goto_1
    if-ne v4, v5, :cond_2

    goto :goto_0

    :cond_2
    if-gt v0, v4, :cond_1

    goto :goto_2

    :cond_3
    iput-boolean v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    return-void

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    sget v3, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getWifiSsidPolicy()Landroid/app/admin/WifiSsidPolicy;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getPolicyType()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/admin/WifiSsidPolicy;->getSsids()Ljava/util/Set;

    move-result-object v0

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iput-boolean v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    return-void

    :cond_5
    if-ne v3, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    return-void

    :cond_6
    iput-boolean v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsAdminRestricted:Z

    return-void

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

.method public final declared-synchronized updateConfig(Ljava/util/List;)V
    .locals 9

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object v1, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    check-cast v2, Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget-object v4, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {v2}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v0

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_5

    const/4 v7, 0x5

    if-eq v6, v7, :cond_4

    const/4 v7, 0x6

    if-eq v6, v7, :cond_3

    move v6, v3

    goto :goto_2

    :cond_3
    iget-boolean v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsEnhancedOpenSupported:Z

    goto :goto_2

    :cond_4
    iget-boolean v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SuiteBSupported:Z

    goto :goto_2

    :cond_5
    iget-boolean v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SaeSupported:Z

    :goto_2
    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attempted to update with wrong security! Expected one of: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", Actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to update with wrong SSID! Expected: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSecurityTypes()V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateTargetScanResultInfo()V

    iget-object p1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p1, :cond_9

    goto :goto_4

    :cond_9
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->carrierId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean p1, p1, Landroid/net/wifi/WifiConfiguration;->fromWifiNetworkSuggestion:Z

    if-eqz p1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v3, 0x0

    :goto_3
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iput-boolean v3, p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCarrierNetwork:Z

    :goto_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateScanResultInfo(Ljava/util/List;)V
    .locals 9

    const/4 v0, 0x1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    const/4 v2, 0x0

    iput v2, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    iput-boolean v2, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    const/4 v3, -0x1

    iput v3, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSsid:Ljava/lang/String;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/ScanResult;

    iget-object v6, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0, v5}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateFlags(Landroid/net/wifi/ScanResult;)V

    iget v5, v5, Landroid/net/wifi/ScanResult;->frequency:I

    if-ge v4, v5, :cond_1

    invoke-virtual {p0, v5}, Lcom/android/wifitrackerlib/WifiEntry;->setBand(I)V

    iput v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mFrequency:I

    move v4, v5

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempted to update with wrong SSID! Expected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Actual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v5, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ScanResult: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    sget-object v4, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3}, Landroid/net/wifi/ScanResult;->getSecurityTypes()[I

    move-result-object v5

    array-length v6, v5

    move v7, v2

    :goto_2
    if-ge v7, v6, :cond_5

    aget v8, v5, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v7, v0

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    move-object v7, v1

    check-cast v7, Landroid/util/ArraySet;

    invoke-virtual {v7, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x4

    if-eq v6, v7, :cond_9

    const/4 v7, 0x5

    if-eq v6, v7, :cond_8

    const/4 v7, 0x6

    if-eq v6, v7, :cond_7

    move v6, v0

    goto :goto_4

    :cond_7
    iget-boolean v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsEnhancedOpenSupported:Z

    goto :goto_4

    :cond_8
    iget-boolean v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SuiteBSupported:Z

    goto :goto_4

    :cond_9
    iget-boolean v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mIsWpa3SaeSupported:Z

    :goto_4
    if-nez v6, :cond_a

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    iget-object v6, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    check-cast v6, Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateSecurityTypes()V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/StandardWifiEntry;->updateTargetScanResultInfo()V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized updateSecurityTypes()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getCurrentSecurityType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-boolean v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mIsTargetingNewNetworks:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_4
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mKey:Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;

    iget-object v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$StandardWifiEntryKey;->mScanResultKey:Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;

    iget-object v1, v1, Lcom/android/wifitrackerlib/StandardWifiEntry$ScanResultKey;->mSecurityTypes:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingWifiConfigs:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-static {v1}, Lcom/android/wifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetSecurityTypes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mMatchingScanResults:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateTargetScanResultInfo()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/StandardWifiEntry;->mTargetScanResults:Ljava/util/List;

    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getBestScanResultByLevel(Ljava/util/List;)Landroid/net/wifi/ScanResult;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->updateBestRssi(Landroid/net/wifi/ScanResult;)V

    iget-object v1, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBssid:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    invoke-static {v0}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->calculateSignalLevel(I)I

    move-result v0

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    if-ne v0, v1, :cond_2

    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    :cond_2
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->semUpdateQoSInformation()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw v0
.end method
