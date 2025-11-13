.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SntpClient$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final greylist-max-o DBG:Z = true

.field private static final greylist-max-o NTP_LEAP_NOSYNC:I = 0x3

.field private static final greylist-max-o NTP_MODE_BROADCAST:I = 0x5

.field private static final greylist-max-o NTP_MODE_CLIENT:I = 0x3

.field private static final greylist-max-o NTP_MODE_SERVER:I = 0x4

.field private static final greylist-max-o NTP_PACKET_SIZE:I = 0x30

.field private static final greylist-max-o NTP_STRATUM_DEATH:I = 0x0

.field private static final greylist-max-o NTP_STRATUM_MAX:I = 0xf

.field private static final greylist-max-o NTP_VERSION:I = 0x3

.field private static final greylist-max-o ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final greylist-max-o RECEIVE_TIME_OFFSET:I = 0x20

.field private static final greylist-max-o REFERENCE_TIME_OFFSET:I = 0x10

.field public static final blacklist STANDARD_NTP_PORT:I = 0x7b

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SntpClient"

.field private static final greylist-max-o TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private blacklist mClockOffset:J

.field private greylist-max-o mNtpTime:J

.field private greylist-max-o mNtpTimeReference:J

.field private final blacklist mRandom:Ljava/util/Random;

.field private greylist-max-o mRoundTripTime:J

.field private blacklist mServerSocketAddress:Ljava/net/InetSocketAddress;

.field private final blacklist mSystemTimeSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist <init>()V
    .locals 2

    new-instance v0, Landroid/net/SntpClient$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroid/net/SntpClient$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {}, Landroid/net/SntpClient;->defaultRandom()Ljava/util/Random;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Landroid/net/SntpClient;-><init>(Ljava/util/function/Supplier;Ljava/util/Random;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/util/function/Supplier;Ljava/util/Random;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/time/Instant;",
            ">;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Supplier;

    iput-object v0, p0, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Random;

    iput-object v0, p0, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    return-void
.end method

.method public static blacklist calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;
    .locals 3

    invoke-static {p0, p1}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v0

    invoke-static {p3, p2}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sntp/Duration64;->plus(Landroid/net/sntp/Duration64;)Ljava/time/Duration;

    move-result-object v0

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/time/Duration;->dividedBy(J)Ljava/time/Duration;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SntpClient$InvalidServerReplyException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_5

    const/16 v0, 0xf

    if-gt p2, v0, :cond_5

    invoke-virtual {p5, p6}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p3, v0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Landroid/net/sntp/Timestamp64;->ZERO:Landroid/net/sntp/Timestamp64;

    invoke-virtual {p4, v0}, Landroid/net/sntp/Timestamp64;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero referenceTimestamp"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "zero transmitTimestamp"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "originateTimestamp != randomizedRequestTimestamp"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Landroid/net/SntpClient$InvalidServerReplyException;

    const-string/jumbo v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SntpClient$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist defaultRandom()Ljava/util/Random;
    .locals 4

    :try_start_0
    invoke-static {}, Ljava/security/SecureRandom;->getInstanceStrong()Ljava/security/SecureRandom;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SntpClient"

    const-string v2, "Unable to access SecureRandom"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private blacklist readTimeStamp([BI)Landroid/net/sntp/Timestamp64;
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide v0

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Landroid/net/SntpClient;->readUnsigned32([BI)J

    move-result-wide v2

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/net/sntp/Timestamp64;->fromComponents(JI)Landroid/net/sntp/Timestamp64;

    move-result-object v3

    return-object v3
.end method

.method private blacklist readUnsigned32([BI)J
    .locals 9

    add-int/lit8 v0, p2, 0x1

    aget-byte p2, p1, p2

    and-int/lit16 p2, p2, 0xff

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v4, p2, 0x18

    shl-int/lit8 v5, v0, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v3

    int-to-long v5, v4

    const-wide v7, 0xffffffffL

    and-long/2addr v5, v7

    return-wide v5
.end method

.method private blacklist writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V
    .locals 5

    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getEraSeconds()J

    move-result-wide v0

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x18

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 p2, v2, 0x1

    const/16 v3, 0x10

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v2, p2, 0x1

    const/16 v3, 0x8

    ushr-long v3, v0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, p1, p2

    add-int/lit8 p2, v2, 0x1

    long-to-int v3, v0

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    invoke-virtual {p3}, Landroid/net/sntp/Timestamp64;->getFractionBits()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v4, v2, 0x18

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    add-int/lit8 p2, v3, 0x1

    ushr-int/lit8 v4, v2, 0x10

    int-to-byte v4, v4

    aput-byte v4, p1, v3

    add-int/lit8 v3, p2, 0x1

    ushr-int/lit8 v4, v2, 0x8

    int-to-byte v4, v4

    aput-byte v4, p1, p2

    int-to-byte p2, v2

    aput-byte p2, p1, v3

    return-void
.end method


# virtual methods
.method public blacklist getClockOffset()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mClockOffset:J

    return-wide v0
.end method

.method public greylist getNtpTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public greylist getNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public greylist getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public blacklist getServerSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/SntpClient;->mServerSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public greylist requestTime(Ljava/lang/String;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SntpClient"

    const-string v1, "Shame on you for calling the hidden API requestTime()!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestTime(Ljava/lang/String;IILandroid/net/Network;)Z
    .locals 6

    const-string v0, "SntpClient"

    :try_start_0
    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager$EDMProxyServiceHelper;->getService()Landroid/sec/enterprise/IEDMProxy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->shallForceNtpMdmValues()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getNtpServer()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1}, Landroid/sec/enterprise/IEDMProxy;->getNtpTimeout()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    move-object p1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "host set by MDM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v3, :cond_1

    move p3, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "timeout set by MDM: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Remote Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p4}, Landroid/net/Network;->getPrivateDnsBypassingCopy()Landroid/net/Network;

    move-result-object v1

    :try_start_1
    invoke-virtual {v1, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    invoke-virtual {p0, v4, p2, p3, v1}, Landroid/net/SntpClient;->requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v4
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    goto :goto_2

    :catch_1
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown host: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/net/UnknownHostException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string/jumbo v2, "request time failed"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .locals 39

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v4, "SntpClient"

    const/4 v5, 0x0

    const/16 v0, -0xbf

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v6

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v5, v0

    move-object/from16 v8, p4

    :try_start_1
    invoke-virtual {v8, v5}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    move/from16 v9, p3

    invoke-virtual {v5, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v10, Ljava/net/DatagramPacket;

    array-length v11, v0

    invoke-direct {v10, v0, v11, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v11, 0x1b

    aput-byte v11, v0, v7

    iget-object v11, v1, Landroid/net/SntpClient;->mSystemTimeSupplier:Ljava/util/function/Supplier;

    invoke-interface {v11}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/time/Instant;

    invoke-static {v11}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v12

    iget-object v13, v1, Landroid/net/SntpClient;->mRandom:Ljava/util/Random;

    invoke-virtual {v12, v13}, Landroid/net/sntp/Timestamp64;->randomizeSubMillis(Ljava/util/Random;)Landroid/net/sntp/Timestamp64;

    move-result-object v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    move-wide/from16 v21, v14

    const/16 v14, 0x28

    invoke-direct {v1, v0, v14, v13}, Landroid/net/SntpClient;->writeTimeStamp([BILandroid/net/sntp/Timestamp64;)V

    invoke-virtual {v5, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v15, Ljava/net/DatagramPacket;

    array-length v14, v0

    invoke-direct {v15, v0, v14}, Ljava/net/DatagramPacket;-><init>([BI)V

    invoke-virtual {v5, v15}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v17

    move-wide/from16 v23, v17

    move-wide/from16 v7, v23

    move-object/from16 v23, v10

    sub-long v9, v7, v21

    invoke-virtual {v11, v9, v10}, Ljava/time/Instant;->plusMillis(J)Ljava/time/Instant;

    move-result-object v9

    invoke-static {v9}, Landroid/net/sntp/Timestamp64;->fromInstant(Ljava/time/Instant;)Landroid/net/sntp/Timestamp64;

    move-result-object v10

    const/4 v14, 0x0

    aget-byte v17, v0, v14

    shr-int/lit8 v17, v17, 0x6

    and-int/lit8 v14, v17, 0x3

    int-to-byte v14, v14

    const/16 v17, 0x0

    aget-byte v18, v0, v17

    move-object/from16 v24, v11

    and-int/lit8 v11, v18, 0x7

    int-to-byte v11, v11

    const/16 v25, 0x1

    move/from16 v17, v14

    aget-byte v14, v0, v25

    and-int/lit16 v14, v14, 0xff

    move/from16 v19, v14

    const/16 v14, 0x10

    invoke-direct {v1, v0, v14}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v18

    const/16 v14, 0x18

    invoke-direct {v1, v0, v14}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v20

    const/16 v14, 0x20

    invoke-direct {v1, v0, v14}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v14

    move-object/from16 v26, v14

    const/16 v14, 0x28

    invoke-direct {v1, v0, v14}, Landroid/net/SntpClient;->readTimeStamp([BI)Landroid/net/sntp/Timestamp64;

    move-result-object v14

    move-object/from16 v28, v0

    move-object/from16 v29, v14

    move/from16 v27, v19

    move-object/from16 v0, v26

    move/from16 v26, v17

    move/from16 v14, v26

    move-object/from16 v30, v15

    move v15, v11

    move/from16 v16, v27

    move-object/from16 v17, v29

    move-object/from16 v19, v13

    invoke-static/range {v14 .. v20}, Landroid/net/SntpClient;->checkValidServerReply(BBILandroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)V

    sub-long v14, v7, v21

    nop

    move/from16 v16, v11

    move-object/from16 v11, v29

    invoke-static {v0, v11}, Landroid/net/sntp/Duration64;->between(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Landroid/net/sntp/Duration64;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/net/sntp/Duration64;->toDuration()Ljava/time/Duration;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/time/Duration;->toMillis()J

    move-result-wide v31
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v19, v5

    move/from16 v17, v6

    sub-long v5, v14, v31

    :try_start_2
    invoke-static {v12, v0, v11, v10}, Landroid/net/SntpClient;->calculateClockOffset(Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;Landroid/net/sntp/Timestamp64;)Ljava/time/Duration;

    move-result-object v29

    move-object/from16 v33, v29

    invoke-virtual/range {v33 .. v33}, Ljava/time/Duration;->toMillis()J

    move-result-wide v34

    move-wide/from16 v36, v34

    nop

    move-object/from16 v29, v0

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v34, v10

    move-object/from16 v35, v11

    move-wide/from16 v10, v36

    invoke-static {v0, v5, v6, v10, v11}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v12

    const-string/jumbo v12, "round trip: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, "ms, clock offset: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v12, "ms"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v10, v1, Landroid/net/SntpClient;->mClockOffset:J

    move-object/from16 v0, v33

    invoke-virtual {v9, v0}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v12

    move-object/from16 v33, v9

    move-wide/from16 v37, v10

    invoke-virtual {v12}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v9

    iput-wide v9, v1, Landroid/net/SntpClient;->mNtpTime:J

    iput-wide v7, v1, Landroid/net/SntpClient;->mNtpTimeReference:J

    iput-wide v5, v1, Landroid/net/SntpClient;->mRoundTripTime:J

    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v2, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v9, v1, Landroid/net/SntpClient;->mServerSocketAddress:Ljava/net/InetSocketAddress;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-virtual/range {v19 .. v19}, Ljava/net/DatagramSocket;->close()V

    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    nop

    return v25

    :catchall_0
    move-exception v0

    move-object/from16 v5, v19

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v5, v19

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v17, v6

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v19, v5

    move/from16 v17, v6

    goto :goto_0

    :catchall_2
    move-exception v0

    move/from16 v17, v6

    goto :goto_1

    :catch_2
    move-exception v0

    move/from16 v17, v6

    :goto_0
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "request time failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    nop

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v4, 0x0

    return v4

    :catchall_3
    move-exception v0

    :goto_1
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    invoke-static/range {v17 .. v17}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method
