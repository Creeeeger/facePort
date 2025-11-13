.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/util/NtpTrustedTime$NtpConnectionInfo;,
        Landroid/util/NtpTrustedTime$TimeResult;
    }
.end annotation


# static fields
.field private static final greylist-max-o LOGD:Z = true

.field private static final greylist-max-o TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static greylist-max-o sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private final blacklist mConnectivityManagerSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mHostnameForTests:Ljava/lang/String;

.field private blacklist mPortForTests:Ljava/lang/Integer;

.field private volatile blacklist mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

.field private blacklist mTimeoutForTests:Ljava/time/Duration;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/util/NtpTrustedTime;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Landroid/util/NtpTrustedTime$1;

    invoke-direct {v0, p0}, Landroid/util/NtpTrustedTime$1;-><init>(Landroid/util/NtpTrustedTime;)V

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mConnectivityManagerSupplier:Ljava/util/function/Supplier;

    .line 159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    .line 160
    return-void
.end method

.method public static declared-synchronized greylist getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Landroid/util/NtpTrustedTime;

    monitor-enter v0

    .line 164
    :try_start_0
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v1, :cond_0

    .line 165
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 166
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Landroid/util/NtpTrustedTime;

    invoke-direct {v2, v1}, Landroid/util/NtpTrustedTime;-><init>(Landroid/content/Context;)V

    sput-object v2, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 168
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_0
    sget-object v1, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 163
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .locals 7

    .line 416
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 418
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 421
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mHostnameForTests:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 422
    iget-object v2, p0, Landroid/util/NtpTrustedTime;->mHostnameForTests:Ljava/lang/String;

    .local v2, "hostname":Ljava/lang/String;
    goto :goto_0

    .line 424
    .end local v2    # "hostname":Ljava/lang/String;
    :cond_0
    nop

    .line 425
    const-string/jumbo v2, "ntp_server"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 426
    .local v2, "serverGlobalSetting":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 427
    move-object v3, v2

    .local v3, "hostname":Ljava/lang/String;
    goto :goto_0

    .line 429
    .end local v3    # "hostname":Ljava/lang/String;
    :cond_1
    const v3, 0x1040376

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 434
    .local v2, "hostname":Ljava/lang/String;
    :goto_0
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mPortForTests:Ljava/lang/Integer;

    if-eqz v3, :cond_2

    .line 435
    iget-object v3, p0, Landroid/util/NtpTrustedTime;->mPortForTests:Ljava/lang/Integer;

    .local v3, "port":Ljava/lang/Integer;
    goto :goto_1

    .line 437
    .end local v3    # "port":Ljava/lang/Integer;
    :cond_2
    const/16 v3, 0x7b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 441
    .restart local v3    # "port":Ljava/lang/Integer;
    :goto_1
    iget-object v4, p0, Landroid/util/NtpTrustedTime;->mTimeoutForTests:Ljava/time/Duration;

    if-eqz v4, :cond_3

    .line 442
    invoke-virtual {v4}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    long-to-int v4, v4

    .local v4, "timeoutMillis":I
    goto :goto_2

    .line 444
    .end local v4    # "timeoutMillis":I
    :cond_3
    const v4, 0x10e00f4

    .line 445
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 446
    .local v4, "defaultTimeoutMillis":I
    const-string/jumbo v5, "ntp_timeout"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    move v4, v5

    .line 449
    .local v4, "timeoutMillis":I
    :goto_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_3

    .line 450
    :cond_4
    new-instance v5, Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v2, v6, v4}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;-><init>(Ljava/lang/String;II)V

    .line 449
    :goto_3
    return-object v5
.end method


# virtual methods
.method public blacklist clearCachedTimeResult()V
    .locals 1

    .line 373
    monitor-enter p0

    .line 374
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 375
    monitor-exit p0

    .line 376
    return-void

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-r currentTimeMillis()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 327
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v0, :cond_0

    .line 330
    const-string v1, "NtpTrustedTime"

    const-string v2, "currentTimeMillis() cache hit"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->currentTimeMillis()J

    move-result-wide v1

    return-wide v1

    .line 328
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Missing authoritative time source"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public blacklist dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 455
    monitor-enter p0

    .line 456
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getNtpConnectionInfo()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Landroid/util/NtpTrustedTime;->getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTimeResult="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 458
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_0

    .line 459
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mTimeResult.getAgeMillis()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 460
    invoke-virtual {v1}, Landroid/util/NtpTrustedTime$TimeResult;->getAgeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 459
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 462
    :cond_0
    monitor-exit p0

    .line 463
    return-void

    .line 462
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-r forceRefresh()Z
    .locals 39

    .line 186
    move-object/from16 v1, p0

    monitor-enter p0

    .line 187
    :try_start_0
    invoke-direct/range {p0 .. p0}, Landroid/util/NtpTrustedTime;->getNtpConnectionInfo()Landroid/util/NtpTrustedTime$NtpConnectionInfo;

    move-result-object v0

    .line 188
    .local v0, "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 190
    const-string v3, "NtpTrustedTime"

    const-string v4, "forceRefresh: invalid server config"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    monitor-exit p0

    return v2

    .line 194
    :cond_0
    iget-object v3, v1, Landroid/util/NtpTrustedTime;->mConnectivityManagerSupplier:Ljava/util/function/Supplier;

    invoke-interface {v3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    .line 195
    .local v3, "connectivityManager":Landroid/net/ConnectivityManager;
    if-nez v3, :cond_1

    .line 196
    const-string v4, "NtpTrustedTime"

    const-string v5, "forceRefresh: no ConnectivityManager"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    monitor-exit p0

    return v2

    .line 199
    :cond_1
    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v4

    .line 200
    .local v4, "network":Landroid/net/Network;
    invoke-virtual {v3, v4}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v5

    .line 211
    .local v5, "ni":Landroid/net/NetworkInfo;
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    goto/16 :goto_3

    .line 216
    :cond_2
    const-string v6, "NtpTrustedTime"

    const-string v7, "forceRefresh() from cache miss"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v6, Landroid/net/SntpClient;

    invoke-direct {v6}, Landroid/net/SntpClient;-><init>()V

    .line 218
    .local v6, "client":Landroid/net/SntpClient;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getServer()Ljava/lang/String;

    move-result-object v7

    .line 219
    .local v7, "serverName":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getPort()I

    move-result v8

    .line 220
    .local v8, "port":I
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$NtpConnectionInfo;->getTimeoutMillis()I

    move-result v9

    .line 235
    .local v9, "timeoutMillis":I
    const-string v10, "NtpTrustedTime"

    const-string v11, "NTP enhanced forceRefresh called."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const-string/jumbo v10, "persist.ril.ntptrustedtime"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 239
    .local v10, "labTest":Ljava/lang/String;
    const-string/jumbo v11, "off"

    invoke-virtual {v11, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 240
    const-string v11, "NtpTrustedTime"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "forceRefresh: persist.ril.ntptrustedtime ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ")"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    monitor-exit p0

    return v2

    .line 246
    :cond_3
    const/4 v11, 0x4

    .line 247
    .local v11, "NTP_LOOP_COUNT":I
    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/String;

    const-string v14, "cn.ntp.org.cn"

    aput-object v14, v13, v2

    const-string v14, "cn.pool.ntp.org"

    const/4 v15, 0x1

    aput-object v14, v13, v15

    const-string v14, "asia.pool.ntp.org"

    const/16 v16, 0x2

    aput-object v14, v13, v16

    const/4 v14, 0x3

    aput-object v7, v13, v14

    .line 248
    .local v13, "ntpChina":[Ljava/lang/String;
    new-array v14, v12, [Ljava/lang/String;

    aput-object v7, v14, v2

    const-string/jumbo v18, "hk.pool.ntp.org"

    aput-object v18, v14, v15

    const-string v18, "asia.pool.ntp.org"

    aput-object v18, v14, v16

    const-string v18, "cn.pool.ntp.org"

    const/16 v17, 0x3

    aput-object v18, v14, v17

    .line 249
    .local v14, "ntpHongKong":[Ljava/lang/String;
    new-array v15, v12, [Ljava/lang/String;

    aput-object v7, v15, v2

    const-string/jumbo v19, "tw.pool.ntp.org"

    const/16 v18, 0x1

    aput-object v19, v15, v18

    const-string v19, "asia.pool.ntp.org"

    aput-object v19, v15, v16

    const-string v19, "cn.pool.ntp.org"

    const/16 v17, 0x3

    aput-object v19, v15, v17

    .line 250
    .local v15, "ntpTaiWan":[Ljava/lang/String;
    new-array v2, v12, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v7, v2, v19

    const-string v20, "asia.pool.ntp.org"

    const/16 v18, 0x1

    aput-object v20, v2, v18

    const-string v20, "2.android.pool.ntp.org"

    aput-object v20, v2, v16

    const-string/jumbo v20, "sg.pool.ntp.org"

    const/16 v17, 0x3

    aput-object v20, v2, v17

    .line 251
    .local v2, "ntpAsia":[Ljava/lang/String;
    move-object/from16 v20, v0

    .end local v0    # "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .local v20, "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    new-array v0, v12, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v7, v0, v19

    const-string v21, "europe.pool.ntp.org"

    const/16 v18, 0x1

    aput-object v21, v0, v18

    const-string v21, "2.android.pool.ntp.org"

    aput-object v21, v0, v16

    const-string v21, "de.pool.ntp.org"

    const/16 v17, 0x3

    aput-object v21, v0, v17

    .line 252
    .local v0, "ntpEurope":[Ljava/lang/String;
    move-object/from16 v21, v3

    .end local v3    # "connectivityManager":Landroid/net/ConnectivityManager;
    .local v21, "connectivityManager":Landroid/net/ConnectivityManager;
    new-array v3, v12, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v7, v3, v19

    const-string/jumbo v22, "north-america.pool.ntp.org"

    const/16 v18, 0x1

    aput-object v22, v3, v18

    const-string v22, "2.android.pool.ntp.org"

    aput-object v22, v3, v16

    const-string/jumbo v22, "us.pool.ntp.org"

    const/16 v17, 0x3

    aput-object v22, v3, v17

    .line 253
    .local v3, "ntpAmerica":[Ljava/lang/String;
    move-object/from16 v22, v5

    .end local v5    # "ni":Landroid/net/NetworkInfo;
    .local v22, "ni":Landroid/net/NetworkInfo;
    new-array v5, v12, [Ljava/lang/String;

    const/16 v19, 0x0

    aput-object v7, v5, v19

    const-string/jumbo v23, "north-america.pool.ntp.org"

    const/16 v18, 0x1

    aput-object v23, v5, v18

    const-string v23, "europe.pool.ntp.org"

    aput-object v23, v5, v16

    const-string v16, "asia.pool.ntp.org"

    const/16 v17, 0x3

    aput-object v16, v5, v17

    .line 254
    .local v5, "ntpEtc":[Ljava/lang/String;
    const-string/jumbo v12, "ro.csc.countryiso_code"

    move-object/from16 v17, v7

    .end local v7    # "serverName":Ljava/lang/String;
    .local v17, "serverName":Ljava/lang/String;
    const-string v7, ""

    invoke-static {v12, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 255
    .local v7, "countyIsoCode":Ljava/lang/String;
    const-string/jumbo v12, "persist.sys.timezone"

    invoke-static {v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 258
    .local v12, "timeZone":Ljava/lang/String;
    move-object/from16 v23, v10

    .end local v10    # "labTest":Ljava/lang/String;
    .local v23, "labTest":Ljava/lang/String;
    const-string v10, "CN"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 259
    move-object v10, v13

    .local v10, "ntpServer":[Ljava/lang/String;
    goto :goto_0

    .line 260
    .end local v10    # "ntpServer":[Ljava/lang/String;
    :cond_4
    const-string v10, "HK"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 261
    move-object v10, v14

    .restart local v10    # "ntpServer":[Ljava/lang/String;
    goto :goto_0

    .line 262
    .end local v10    # "ntpServer":[Ljava/lang/String;
    :cond_5
    const-string v10, "TW"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 263
    move-object v10, v15

    .restart local v10    # "ntpServer":[Ljava/lang/String;
    goto :goto_0

    .line 264
    .end local v10    # "ntpServer":[Ljava/lang/String;
    :cond_6
    const-string v10, "Asia"

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 265
    move-object v10, v2

    .restart local v10    # "ntpServer":[Ljava/lang/String;
    goto :goto_0

    .line 266
    .end local v10    # "ntpServer":[Ljava/lang/String;
    :cond_7
    const-string v10, "Europe"

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 267
    move-object v10, v0

    .restart local v10    # "ntpServer":[Ljava/lang/String;
    goto :goto_0

    .line 268
    .end local v10    # "ntpServer":[Ljava/lang/String;
    :cond_8
    const-string v10, "America"

    invoke-virtual {v12, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 269
    move-object v10, v3

    .restart local v10    # "ntpServer":[Ljava/lang/String;
    goto :goto_0

    .line 271
    .end local v10    # "ntpServer":[Ljava/lang/String;
    :cond_9
    move-object v10, v5

    .line 274
    .restart local v10    # "ntpServer":[Ljava/lang/String;
    :goto_0
    const/16 v24, 0x0

    move-object/from16 v25, v0

    move/from16 v0, v24

    .local v0, "ntpLoop":I
    .local v25, "ntpEurope":[Ljava/lang/String;
    :goto_1
    move-object/from16 v24, v2

    const/4 v2, 0x4

    .end local v2    # "ntpAsia":[Ljava/lang/String;
    .local v24, "ntpAsia":[Ljava/lang/String;
    if-ge v0, v2, :cond_c

    .line 275
    iget-object v2, v1, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    move-object/from16 v26, v3

    .end local v3    # "ntpAmerica":[Ljava/lang/String;
    .local v26, "ntpAmerica":[Ljava/lang/String;
    const-string v3, "auto_time"

    move-object/from16 v27, v5

    const/4 v5, 0x0

    .end local v5    # "ntpEtc":[Ljava/lang/String;
    .local v27, "ntpEtc":[Ljava/lang/String;
    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const/4 v2, 0x0

    .line 276
    .local v2, "autoCheck":Z
    :goto_2
    if-eqz v2, :cond_b

    aget-object v3, v10, v0

    invoke-virtual {v6, v3, v8, v9, v4}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;IILandroid/net/Network;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 277
    invoke-virtual {v6}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v28

    const-wide/16 v30, 0x2

    div-long v37, v28, v30

    .line 278
    .local v37, "ntpCertainty":J
    new-instance v3, Landroid/util/NtpTrustedTime$TimeResult;

    .line 279
    invoke-virtual {v6}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v33

    invoke-virtual {v6}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v35

    move-object/from16 v32, v3

    invoke-direct/range {v32 .. v38}, Landroid/util/NtpTrustedTime$TimeResult;-><init>(JJJ)V

    iput-object v3, v1, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 280
    const-string v3, "NtpTrustedTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v2

    .end local v2    # "autoCheck":Z
    .local v28, "autoCheck":Z
    const-string v2, "NTP update succeed. Server = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v10, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    monitor-exit p0

    const/4 v2, 0x1

    return v2

    .line 276
    .end local v28    # "autoCheck":Z
    .end local v37    # "ntpCertainty":J
    .restart local v2    # "autoCheck":Z
    :cond_b
    move/from16 v28, v2

    const/4 v2, 0x1

    .line 283
    .end local v2    # "autoCheck":Z
    .restart local v28    # "autoCheck":Z
    const-string v3, "NtpTrustedTime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NTP update failed. Server = "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v5, v10, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    nop

    .end local v28    # "autoCheck":Z
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v2, v24

    move-object/from16 v3, v26

    move-object/from16 v5, v27

    goto/16 :goto_1

    .end local v26    # "ntpAmerica":[Ljava/lang/String;
    .end local v27    # "ntpEtc":[Ljava/lang/String;
    .restart local v3    # "ntpAmerica":[Ljava/lang/String;
    .restart local v5    # "ntpEtc":[Ljava/lang/String;
    :cond_c
    move-object/from16 v26, v3

    move-object/from16 v27, v5

    .line 285
    .end local v0    # "ntpLoop":I
    .end local v3    # "ntpAmerica":[Ljava/lang/String;
    .end local v5    # "ntpEtc":[Ljava/lang/String;
    .restart local v26    # "ntpAmerica":[Ljava/lang/String;
    .restart local v27    # "ntpEtc":[Ljava/lang/String;
    const-string v0, "NtpTrustedTime"

    const-string v2, "Finally NTP update failed."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 211
    .end local v6    # "client":Landroid/net/SntpClient;
    .end local v7    # "countyIsoCode":Ljava/lang/String;
    .end local v8    # "port":I
    .end local v9    # "timeoutMillis":I
    .end local v10    # "ntpServer":[Ljava/lang/String;
    .end local v11    # "NTP_LOOP_COUNT":I
    .end local v12    # "timeZone":Ljava/lang/String;
    .end local v13    # "ntpChina":[Ljava/lang/String;
    .end local v14    # "ntpHongKong":[Ljava/lang/String;
    .end local v15    # "ntpTaiWan":[Ljava/lang/String;
    .end local v17    # "serverName":Ljava/lang/String;
    .end local v20    # "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .end local v21    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v22    # "ni":Landroid/net/NetworkInfo;
    .end local v23    # "labTest":Ljava/lang/String;
    .end local v24    # "ntpAsia":[Ljava/lang/String;
    .end local v25    # "ntpEurope":[Ljava/lang/String;
    .end local v26    # "ntpAmerica":[Ljava/lang/String;
    .end local v27    # "ntpEtc":[Ljava/lang/String;
    .local v0, "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .local v3, "connectivityManager":Landroid/net/ConnectivityManager;
    .local v5, "ni":Landroid/net/NetworkInfo;
    :cond_d
    move-object/from16 v20, v0

    move-object/from16 v21, v3

    move-object/from16 v22, v5

    .line 212
    .end local v0    # "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .end local v3    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v5    # "ni":Landroid/net/NetworkInfo;
    .restart local v20    # "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .restart local v21    # "connectivityManager":Landroid/net/ConnectivityManager;
    .restart local v22    # "ni":Landroid/net/NetworkInfo;
    :goto_3
    const-string v0, "NtpTrustedTime"

    const-string v2, "forceRefresh: no connectivity"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    .line 288
    .end local v4    # "network":Landroid/net/Network;
    .end local v20    # "connectionInfo":Landroid/util/NtpTrustedTime$NtpConnectionInfo;
    .end local v21    # "connectivityManager":Landroid/net/ConnectivityManager;
    .end local v22    # "ni":Landroid/net/NetworkInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public greylist-max-o getCacheAge()J
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 310
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 311
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-eqz v0, :cond_0

    .line 312
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v3

    sub-long/2addr v1, v3

    return-wide v1

    .line 314
    :cond_0
    const-wide v1, 0x7fffffffffffffffL

    return-wide v1
.end method

.method public greylist-max-r getCachedNtpTime()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 345
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 347
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getTimeMillis()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public greylist-max-r getCachedNtpTimeReference()J
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 358
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    .line 359
    .local v0, "timeResult":Landroid/util/NtpTrustedTime$TimeResult;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/NtpTrustedTime$TimeResult;->getElapsedRealtimeMillis()J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public blacklist getCachedTimeResult()Landroid/util/NtpTrustedTime$TimeResult;
    .locals 1

    .line 368
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    return-object v0
.end method

.method public greylist-max-r hasCache()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 299
    iget-object v0, p0, Landroid/util/NtpTrustedTime;->mTimeResult:Landroid/util/NtpTrustedTime$TimeResult;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setServerConfigForTests(Ljava/lang/String;Ljava/lang/Integer;Ljava/time/Duration;)V
    .locals 1
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/Integer;
    .param p3, "timeout"    # Ljava/time/Duration;

    .line 177
    monitor-enter p0

    .line 178
    :try_start_0
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mHostnameForTests:Ljava/lang/String;

    .line 179
    iput-object p2, p0, Landroid/util/NtpTrustedTime;->mPortForTests:Ljava/lang/Integer;

    .line 180
    iput-object p3, p0, Landroid/util/NtpTrustedTime;->mTimeoutForTests:Ljava/time/Duration;

    .line 181
    monitor-exit p0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
