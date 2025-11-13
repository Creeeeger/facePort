.class final Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;
.super Landroid/util/NtpTrustedTime;
.source "NtpTrustedTime.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/NtpTrustedTime;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NtpTrustedTimeImpl"
.end annotation


# instance fields
.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/Context;Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private declared-synchronized blacklist getConnectivityManager()Landroid/net/ConnectivityManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_1

    const-string v0, "NtpTrustedTime"

    const-string v1, "getConnectivityManager: no ConnectivityManager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static blacklist saturatedCast(J)I
    .locals 2

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    return v0

    :cond_0
    const-wide/32 v0, -0x80000000

    cmp-long v0, p0, v0

    if-gez v0, :cond_1

    const/high16 v0, -0x80000000

    return v0

    :cond_1
    long-to-int v0, p0

    return v0
.end method


# virtual methods
.method public blacklist getDefaultNetwork()Landroid/net/Network;
    .locals 2

    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    return-object v1
.end method

.method public blacklist getNtpConfigInternal()Landroid/util/NtpTrustedTime$NtpConfig;
    .locals 12

    iget-object v0, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    const-string/jumbo v2, "ntp_server"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpServerSetting(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_0

    move-object v4, v3

    goto/16 :goto_2

    :cond_0
    nop

    const v4, 0x1070132

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "ro.csc.countryiso_code"

    const-string v6, ""

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "persist.sys.timezone"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "CN"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const v7, 0x1070135

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const-string v7, "HK"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const v7, 0x1070138

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_2
    const-string v7, "TW"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const v7, 0x1070139

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_3
    const-string v7, "Asia"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    const v7, 0x1070134

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_4
    const-string v7, "Europe"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    const v7, 0x1070137

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_5
    const-string v7, "America"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6

    const v7, 0x1070133

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_6
    const v7, 0x1070136

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    :goto_0
    :try_start_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    array-length v8, v4

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_7

    aget-object v10, v4, v9

    invoke-static {v10}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->parseNtpUriStrict(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_7
    nop

    move-object v4, v7

    goto :goto_2

    :catch_0
    move-exception v7

    const/4 v8, 0x0

    move-object v4, v8

    :goto_2
    nop

    const v5, 0x10e010a

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    const-string/jumbo v6, "ntp_timeout"

    invoke-static {v0, v6, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v6

    if-nez v4, :cond_8

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    new-instance v7, Landroid/util/NtpTrustedTime$NtpConfig;

    invoke-direct {v7, v4, v6}, Landroid/util/NtpTrustedTime$NtpConfig;-><init>(Ljava/util/List;Ljava/time/Duration;)V

    :goto_3
    return-object v7
.end method

.method public blacklist isNetworkConnected(Landroid/net/Network;)Z
    .locals 5

    invoke-direct {p0}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    :goto_0
    const-string v3, "NtpTrustedTime"

    const-string v4, "getNetwork: no connectivity"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public blacklist queryNtpServer(Landroid/net/Network;Ljava/net/URI;Ljava/time/Duration;)Landroid/util/NtpTrustedTime$TimeResult;
    .locals 15

    new-instance v0, Landroid/net/SntpClient;

    invoke-direct {v0}, Landroid/net/SntpClient;-><init>()V

    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->getPort()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const/16 v2, 0x7b

    goto :goto_0

    :cond_0
    invoke-virtual/range {p2 .. p2}, Ljava/net/URI;->getPort()I

    move-result v2

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result v3

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IILandroid/net/Network;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v5

    const-wide/16 v7, 0x2

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Landroid/util/NtpTrustedTime$NtpTrustedTimeImpl;->saturatedCast(J)I

    move-result v5

    invoke-virtual {v0}, Landroid/net/SntpClient;->getServerSocketAddress()Ljava/net/InetSocketAddress;

    move-result-object v6

    new-instance v14, Landroid/util/NtpTrustedTime$TimeResult;

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v8

    invoke-virtual {v0}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v10

    move-object v7, v14

    move v12, v5

    move-object v13, v6

    invoke-direct/range {v7 .. v13}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJILjava/net/InetSocketAddress;)V

    return-object v14

    :cond_1
    const/4 v5, 0x0

    return-object v5
.end method
