.class public abstract Lcom/android/wifitrackerlib/WifiEntry;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final TITLE_COMPARATOR:Ljava/util/Comparator;

.field public static final WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;

.field public static final WIFI_PICKER_COMPARATOR_ALPHABETICAL:Ljava/util/Comparator;

.field public static final WIFI_PICKER_COMPARATOR_HIGH_FREQUENCY:Ljava/util/Comparator;

.field public static final WIFI_PICKER_COMPARATOR_RSSI:Ljava/util/Comparator;


# instance fields
.field public mBand:I

.field public mBssid:Ljava/lang/String;

.field public final mCallbackHandler:Landroid/os/Handler;

.field public mCalledConnect:Z

.field public mCalledDisconnect:Z

.field public mConnectCallback:Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;

.field public mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

.field public mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

.field public final mContext:Landroid/content/Context;

.field public mDefaultNetwork:Landroid/net/Network;

.field public mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public mDisconnectCallback:Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;

.field public mForgetCallback:Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;

.field public mFrequency:I

.field public final mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

.field public mLevel:I

.field public mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

.field public final mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

.field public final mManageSubscriptionAction:Ljava/util/Optional;

.field public mNetwork:Landroid/net/Network;

.field public mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field public mNetworkInfo:Landroid/net/NetworkInfo;

.field public mRssi:I

.field public final mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

.field public mSpeed:I

.field public mWifiInfo:Landroid/net/wifi/WifiInfo;

.field public final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v2, 0x7

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    sget-object v2, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR:Ljava/util/Comparator;

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR_ALPHABETICAL:Ljava/util/Comparator;

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/16 v3, 0xb

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/16 v3, 0xc

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR_RSSI:Ljava/util/Comparator;

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/16 v1, 0xd

    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/16 v3, 0xe

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v3, 0x1

    invoke-direct {v1, v3}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wifitrackerlib/WifiEntry;->WIFI_PICKER_COMPARATOR_HIGH_FREQUENCY:Ljava/util/Comparator;

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda4;-><init>(I)V

    invoke-static {v0, v2}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/wifitrackerlib/WifiEntry;->TITLE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/android/wifitrackerlib/WifiTrackerInjector;Landroid/os/Handler;Landroid/net/wifi/WifiManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x7f

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mManageSubscriptionAction:Ljava/util/Optional;

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mFrequency:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBssid:Ljava/lang/String;

    const-string v0, "Cannot construct with null injector!"

    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "Cannot construct with null handler!"

    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v0, "Cannot construct with null WifiManager!"

    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mInjector:Lcom/android/wifitrackerlib/WifiTrackerInjector;

    iget-object p1, p1, Lcom/android/wifitrackerlib/WifiTrackerInjector;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    iput-object p3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiManager:Landroid/net/wifi/WifiManager;

    new-instance p1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    invoke-direct {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    new-instance p1, Lcom/samsung/android/wifitrackerlib/LogUtils;

    invoke-direct {p1}, Lcom/samsung/android/wifitrackerlib/LogUtils;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    return-void
.end method


# virtual methods
.method public abstract canConnect()Z
.end method

.method public canDisconnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canEasyConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canForget()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetMeteredChoice()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSetPrivacy()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canShare()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canSignIn()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final checkWifi6EStandard(II)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/16 v0, 0x1725

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1bd5

    if-gt p1, v0, :cond_1

    const/4 p1, 0x6

    if-lt p2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "invalid Wi-Fi 6E network "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " standard:"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiEntry."

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized clearConnectionInfo()V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    iget-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledDisconnect:Z

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public abstract connect(Lcom/android/wifitrackerlib/WifiEntry$ConnectCallback;)V
.end method

.method public abstract connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z
.end method

.method public disconnect(Lcom/android/wifitrackerlib/WifiEntry$DisconnectCallback;)V
    .locals 0

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/android/wifitrackerlib/WifiEntry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    check-cast p1, Lcom/android/wifitrackerlib/WifiEntry;

    invoke-virtual {p1}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final declared-synchronized forceUpdateNetworkInfo(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public forget(Lcom/android/wifitrackerlib/WifiEntry$ForgetCallback;)V
    .locals 0

    return-void
.end method

.method public getBandString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getCertificateInfo()Lcom/android/wifitrackerlib/WifiEntry$CertificateInfo;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final declared-synchronized getConnectedInfo()Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {v1, v0}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>(Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getConnectedState()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    sget-object v2, Lcom/android/wifitrackerlib/WifiEntry$1;->$SwitchMap$android$net$NetworkInfo$DetailedState:[I

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v0

    aget v0, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    packed-switch v0, :pswitch_data_0

    monitor-exit p0

    return v1

    :pswitch_0
    monitor-exit p0

    const/4 p0, 0x2

    return p0

    :pswitch_1
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public getLevel()I
    .locals 0

    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    return p0
.end method

.method public abstract getMacAddress()Ljava/lang/String;
.end method

.method public getMeteredChoice()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getNetworkSelectionDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getPrivacy()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getScanResultDescription()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecurity$1()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/android/wifitrackerlib/Utils;->getSingleSecurityTypeFromMultipleSecurityTypes(Ljava/util/List;)I

    move-result p0

    const/4 v0, 0x3

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x7

    return p0

    :pswitch_3
    const/4 p0, 0x4

    return p0

    :pswitch_4
    const/4 p0, 0x6

    return p0

    :pswitch_5
    const/4 p0, 0x5

    return p0

    :pswitch_6
    return v0

    :pswitch_7
    const/4 p0, 0x2

    return p0

    :pswitch_8
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getSecurityString(Z)Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getSecurityTypes()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public abstract getSsid()Ljava/lang/String;
.end method

.method public getStandardString()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public abstract getSummary(Z)Ljava/lang/String;
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasAdminRestrictions()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized hasInternetAccess()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    const/16 v1, 0x10

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

.method public final hashCode()I
    .locals 0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isAutoJoinEnabled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized isDefaultNetwork()Z
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetwork:Landroid/net/Network;

    invoke-virtual {v0, v2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    :cond_2
    :try_start_3
    sget v0, Landroidx/core/os/BuildCompat;->$r8$clinit:I

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0}, Landroid/net/NetworkCapabilities;->getUnderlyingNetworks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public isExpired()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized isLowQuality()Z
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isDefaultNetwork()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public isMetered()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final declared-synchronized isPrimaryNetwork()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isPrimary()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :cond_2
    monitor-exit p0

    return v1

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public isSaved()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSubscription()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSuggestion()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final notifyOnUpdated()V
    .locals 2

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/WifiEntry;I)V

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public final declared-synchronized onDefaultNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetwork:Landroid/net/Network;

    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onDefaultNetworkLost()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetwork:Landroid/net/Network;

    iput-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mDefaultNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onNetworkCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Lcom/android/wifitrackerlib/Utils;->getWifiInfo(Landroid/net/NetworkCapabilities;)Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, p2}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->onNetworkLost(Landroid/net/Network;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, v0}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNetworkLost(Landroid/net/Network;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->clearConnectionInfo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPrimaryWifiInfoChanged(Landroid/net/wifi/WifiInfo;Landroid/net/NetworkInfo;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->connectionInfoMatches(Landroid/net/wifi/WifiInfo;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    iput-object p2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->updateWifiInfo(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public onUpdated()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method public semCanShowPassword()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semGetAllScanResult()Ljava/util/List;
    .locals 0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final semGetBssid()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBssid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getWifiConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->BSSID:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBssid:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public semGetFrequency(Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final semGetHighestSecurity()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityTypes()Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/android/wifitrackerlib/Utils;->defaultSsidList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_0

    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p0, v2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move p0, v1

    goto :goto_0

    :cond_2
    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v0

    goto :goto_0

    :cond_3
    const/4 p0, -0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    move v1, v5

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x7

    goto :goto_1

    :pswitch_2
    move v1, v2

    goto :goto_1

    :pswitch_3
    const/4 v1, 0x5

    goto :goto_1

    :pswitch_4
    const/4 v1, 0x3

    goto :goto_1

    :pswitch_5
    move v1, v3

    goto :goto_1

    :pswitch_6
    move v1, v4

    :goto_1
    :pswitch_7
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public semGetSecurityString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public semIs6GHzOnly()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semIsAdminRestricted()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final semIsEphemeral()Z
    .locals 1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetworkInfo:Landroid/net/NetworkInfo;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p0

    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public semIsMobileHotspot()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final semIsWifi6ENetwork()Z
    .locals 2

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/android/wifitrackerlib/WifiEntry;->checkWifi6EStandard(II)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget-boolean p0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    return p0
.end method

.method public final semIsWifi6Network()Z
    .locals 4

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x6

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    move-result p0

    if-ne p0, v3, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget p0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    if-lt p0, v3, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public semMatches(Landroid/net/wifi/WifiConfiguration;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public semUpdateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    return-void
.end method

.method public final semUpdateFlags(Landroid/net/wifi/ScanResult;)V
    .locals 12

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getWifiStandard()I

    move-result v0

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget v2, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->wifiStandard:I

    iget-boolean v2, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    if-nez v2, :cond_1

    iget v2, p1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-virtual {p0, v2, v0}, Lcom/android/wifitrackerlib/WifiEntry;->checkWifi6EStandard(II)Z

    move-result v0

    iput-boolean v0, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->has6EStandard:Z

    :cond_1
    invoke-virtual {p1}, Landroid/net/wifi/ScanResult;->getInformationElements()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/ScanResult$InformationElement;

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getId()I

    move-result v3

    const/16 v4, 0xb

    const/4 v5, 0x0

    const-string v6, " BufferUnderflowException ie:"

    iget-object v7, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLog:Lcom/samsung/android/wifitrackerlib/LogUtils;

    const-string v8, "WifiEntry."

    if-eq v3, v4, :cond_d

    const/4 v4, 0x1

    const/16 v9, 0x32

    const/16 v10, 0x8

    if-eq v3, v9, :cond_8

    const/16 v5, 0xdd

    if-eq v3, v5, :cond_7

    const/16 v5, 0xf4

    if-eq v3, v5, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v5

    if-nez v5, :cond_4

    return-void

    :cond_4
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v9, v5, [B

    if-gt v5, v10, :cond_6

    if-ge v5, v4, :cond_5

    goto :goto_1

    :cond_5
    :try_start_0
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    :goto_1
    return-void

    :cond_7
    :try_start_1
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    const v5, 0xffffff

    and-int/2addr v5, v2

    const v9, 0x321600

    if-ne v5, v9, :cond_2

    ushr-int/lit8 v2, v2, 0x18

    const/16 v5, 0x80

    if-ne v2, v5, :cond_2

    iput-boolean v4, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isSamsungMobileHotspot:Z
    :try_end_1
    .catch Ljava/nio/BufferUnderflowException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v9

    if-nez v9, :cond_9

    return-void

    :cond_9
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v9

    new-array v11, v9, [B

    if-gt v9, v10, :cond_c

    if-ge v9, v4, :cond_a

    goto :goto_3

    :cond_a
    :try_start_2
    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v10, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    :goto_2
    if-ge v5, v9, :cond_2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->get()B

    move-result v10

    and-int/lit8 v10, v10, 0x7f

    const/16 v11, 0x7b

    if-ne v10, v11, :cond_b

    iput-boolean v4, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isH2EOnlyNetwork:Z
    :try_end_2
    .catch Ljava/nio/BufferUnderflowException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    :goto_3
    return-void

    :cond_d
    :try_start_3
    iget v4, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->staCount:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v2}, Landroid/net/wifi/ScanResult$InformationElement;->getBytes()Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v5, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const v5, 0xffff

    and-int/2addr v2, v5

    add-int/2addr v4, v2

    iput v4, v1, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->staCount:I
    :try_end_3
    .catch Ljava/nio/BufferUnderflowException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_0

    :catch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-virtual {v7, v4}, Lcom/samsung/android/wifitrackerlib/LogUtils;->getPrintableLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    return-void
.end method

.method public final semUpdateFlags(Landroid/net/wifi/hotspot2/PasspointConfiguration;)V
    .locals 3

    iget-object p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->getHomeSp()Landroid/net/wifi/hotspot2/pps/HomeSp;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFqdn()Ljava/lang/String;

    move-result-object v1

    const-string v2, "samsung.openroaming.net"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OpenRoaming"

    invoke-virtual {v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->getFriendlyName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isOpenRoamingNetwork:Z

    :cond_1
    iput-object p1, p0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->passpointConfiguration:Landroid/net/wifi/hotspot2/PasspointConfiguration;

    return-void
.end method

.method public final semUpdateFlags(Lcom/samsung/android/wifi/SemWifiConfiguration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isLockDown()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isLocked:Z

    invoke-virtual {p1}, Lcom/samsung/android/wifi/SemWifiConfiguration;->isCaptivePortal()Z

    move-result v1

    iput-boolean v1, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCaptivePortal:Z

    iput-object p1, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->semConfig:Lcom/samsung/android/wifi/SemWifiConfiguration;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isLocked:Z

    iput-boolean p1, v0, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->isCaptivePortal:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V

    return-void
.end method

.method public final semUpdateQoSInformation()V
    .locals 14

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSemFlags:Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;

    iget v3, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    iget-object v4, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->qosScoredNetworkCache:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    iget-object v4, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->qosScoredNetworkCache:Ljava/util/Map;

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x5

    const/16 v10, 0xa

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;

    iget v11, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    iget-object v8, v8, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;->levels:[I

    const/16 v12, -0x37

    if-lt v11, v12, :cond_2

    const/4 v12, 0x2

    aget v8, v8, v12

    goto :goto_1

    :cond_2
    const/16 v13, -0x41

    if-ge v11, v12, :cond_3

    if-lt v11, v13, :cond_3

    aget v8, v8, v0

    goto :goto_1

    :cond_3
    if-ge v11, v13, :cond_4

    const/16 v12, -0x4b

    if-lt v11, v12, :cond_4

    aget v8, v8, v5

    goto :goto_1

    :cond_4
    const/4 v8, -0x1

    :goto_1
    if-ne v8, v10, :cond_5

    const/16 v10, -0x47

    if-gt v11, v10, :cond_5

    goto :goto_2

    :cond_5
    move v9, v8

    :goto_2
    if-lez v9, :cond_1

    add-int/2addr v6, v0

    add-int/2addr v7, v9

    goto :goto_0

    :cond_6
    if-nez v6, :cond_7

    move v7, v5

    goto :goto_3

    :cond_7
    div-int/2addr v7, v6

    :goto_3
    iget-object v0, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->qosScoredNetworkCache:Ljava/util/Map;

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;

    iget-object v6, v4, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;->bssid:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBssid:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    iget v4, v4, Lcom/samsung/android/wifitrackerlib/WifiScoredNetwork;->networkType:I

    iput v4, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    goto :goto_4

    :cond_9
    const-string v0, "WifiEntry."

    if-eqz v7, :cond_a

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget v8, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v4, v6, v8}, [Ljava/lang/Object;

    move-result-object v4

    const-string v6, "%s generated fallback speed is: %d networkType: %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    sget-object v4, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v7, :cond_b

    goto :goto_5

    :cond_b
    const/4 v4, 0x7

    if-ge v7, v4, :cond_c

    move v5, v9

    goto :goto_5

    :cond_c
    const/16 v4, 0xf

    if-ge v7, v4, :cond_d

    move v5, v10

    goto :goto_5

    :cond_d
    const/16 v4, 0x19

    if-ge v7, v4, :cond_e

    const/16 v5, 0x14

    goto :goto_5

    :cond_e
    const/16 v5, 0x1e

    :goto_5
    iput v5, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    if-ne v1, v5, :cond_f

    iget v1, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    if-eq v3, v1, :cond_10

    :cond_f
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getSsid()Ljava/lang/String;

    move-result-object v1

    iget p0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mSpeed:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    iget v2, v2, Lcom/samsung/android/wifitrackerlib/SemWifiEntryFlags;->networkType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s: Set speed to %d and NetworkType %s. set by Network Samsung QoS."

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return-void
.end method

.method public setAutoJoinEnabled(Z)V
    .locals 0

    return-void
.end method

.method public final setBand(I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBand:I

    const/16 v0, 0x1324

    if-lt p1, v0, :cond_0

    const/16 v0, 0x170c

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBand:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x1725

    if-lt p1, v0, :cond_1

    const/16 v0, 0x1bd5

    if-ge p1, v0, :cond_1

    const/4 p1, 0x2

    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBand:I

    goto :goto_0

    :cond_1
    const v0, 0xe3d0

    if-lt p1, v0, :cond_2

    const v0, 0x11238

    if-ge p1, v0, :cond_2

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mBand:I

    :cond_2
    :goto_0
    return-void
.end method

.method public final declared-synchronized setListener(Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mListener:Lcom/android/wifitrackerlib/WifiEntry$WifiEntryCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMeteredChoice(I)V
    .locals 0

    return-void
.end method

.method public setPrivacy(I)V
    .locals 0

    return-void
.end method

.method public shouldEditBeforeConnect()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final shouldShowXLevelIcon()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isLowQuality()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public signIn()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/StringJoiner;

    const-string v1, "["

    const-string v2, "]"

    const-string v3, "]["

    invoke-direct {v0, v3, v1, v2}, Ljava/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSummary(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Level:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldShowXLevelIcon()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "!"

    goto :goto_0

    :cond_0
    const-string v3, ""

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    invoke-virtual {p0, v1}, Lcom/android/wifitrackerlib/WifiEntry;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    const-string v1, "Connected"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    goto :goto_1

    :cond_2
    if-ne v2, v1, :cond_3

    const-string v1, "Connecting..."

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->hasInternetAccess()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Internet"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isDefaultNetwork()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Default"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_5
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isPrimaryNetwork()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Primary"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_6
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isLowQuality()Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "LowQuality"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_7
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "Saved"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_8
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "Subscription"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_9
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "Suggestion"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_a
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isMetered()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Metered"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_b
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSaved()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSuggestion()Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isSubscription()Z

    move-result v1

    if-eqz v1, :cond_d

    :cond_c
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isAutoJoinEnabled()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "AutoJoinDisabled"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_d
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->isExpired()Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "Expired"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_e
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->canSignIn()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "SignIn"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_f
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->shouldEditBeforeConnect()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "EditBeforeConnect"

    invoke-virtual {v0, v1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_10
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->hasAdminRestrictions()Z

    move-result p0

    if-eqz p0, :cond_11

    const-string p0, "AdminRestricted"

    invoke-virtual {v0, p0}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    :cond_11
    invoke-virtual {v0}, Ljava/util/StringJoiner;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateBestRssi(Landroid/net/wifi/ScanResult;)V
    .locals 2

    iget p1, p1, Landroid/net/wifi/ScanResult;->level:I

    const/16 v0, -0x7f

    if-eq p1, v0, :cond_0

    iget v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    if-eq v1, v0, :cond_0

    add-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    :goto_0
    return-void
.end method

.method public final declared-synchronized updateConnectivityReport(Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;->getNetwork()Landroid/net/Network;

    move-result-object v0

    iget-object v1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectivityReport:Landroid/net/ConnectivityDiagnosticsManager$ConnectivityReport;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
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

.method public final declared-synchronized updateLinkProperties(Landroid/net/Network;Landroid/net/LinkProperties;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mNetwork:Landroid/net/Network;

    invoke-virtual {p1, v0}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {p1}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x4

    :try_start_2
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    invoke-static {v2}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iget-object v3, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/wifitrackerlib/Utils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_3
    :try_start_3
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet6Address;

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    iput-object p1, v0, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->ipv6Addresses:Ljava/util/List;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/RouteInfo;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    instance-of v1, v1, Ljava/net/Inet4Address;

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {v0}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_6
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance v0, Lcom/android/settings/wifi/details2/WifiDetailPreferenceController2$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->dnsServers:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->notifyOnUpdated()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0

    throw p1

    :array_0
    .array-data 1
        -0x1t
        -0x1t
        -0x1t
        -0x1t
    .end array-data
.end method

.method public updateSecurityTypes()V
    .locals 0

    return-void
.end method

.method public final declared-synchronized updateWifiInfo(Landroid/net/wifi/WifiInfo;)V
    .locals 2

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->updateSecurityTypes()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result p1

    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mRssi:I

    const/16 v0, -0x7f

    if-eq p1, v0, :cond_1

    invoke-static {p1}, Lcom/samsung/android/wifitrackerlib/SemWifiUtils;->calculateSignalLevel(I)I

    move-result p1

    iput p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mLevel:I

    :cond_1
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->getConnectedState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCalledConnect:Z

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mCallbackHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/wifitrackerlib/WifiEntry$$ExternalSyntheticLambda0;-><init>(Lcom/android/wifitrackerlib/WifiEntry;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    if-nez p1, :cond_3

    new-instance p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    invoke-direct {p1}, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;-><init>()V

    iput-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    :cond_3
    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v0

    iput v0, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->frequencyMhz:I

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v0

    iput v0, p1, Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;->linkSpeedMbps:I

    iget-object p1, p0, Lcom/android/wifitrackerlib/WifiEntry;->mConnectedInfo:Lcom/android/wifitrackerlib/WifiEntry$ConnectedInfo;

    iget-object v0, p0, Lcom/android/wifitrackerlib/WifiEntry;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getWifiStandard()I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    invoke-virtual {p0}, Lcom/android/wifitrackerlib/WifiEntry;->updateSecurityTypes()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_0
    monitor-exit p0

    throw p1
.end method
