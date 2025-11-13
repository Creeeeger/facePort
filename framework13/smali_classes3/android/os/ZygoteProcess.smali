.class public Landroid/os/ZygoteProcess;
.super Ljava/lang/Object;
.source "ZygoteProcess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/ZygoteProcess$ZygoteState;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_USAP_FLAGS:[Ljava/lang/String;

.field private static final greylist-max-o LOG_TAG:Ljava/lang/String; = "ZygoteProcess"

.field private static final blacklist USAP_POOL_ENABLED_DEFAULT:Ljava/lang/String; = "false"

.field private static final blacklist ZYGOTE_CONNECT_RETRY_DELAY_MS:I = 0x32

.field private static final blacklist ZYGOTE_CONNECT_TIMEOUT_MS:I = 0x4e20

.field static final greylist-max-o ZYGOTE_RETRY_MILLIS:I = 0x1f4


# instance fields
.field private blacklist mApiDenylistExemptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mHiddenApiAccessLogSampleRate:I

.field private blacklist mHiddenApiAccessStatslogSampleRate:I

.field private blacklist mIsFirstPropCheck:Z

.field private blacklist mLastPropCheckTimestamp:J

.field private final greylist-max-o mLock:Ljava/lang/Object;

.field private blacklist mUsapPoolEnabled:Z

.field private final blacklist mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mUsapPoolSupported:Z

.field private final blacklist mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

.field private final blacklist mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

.field private greylist-max-o primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

.field private greylist-max-o secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smgetAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;
    .locals 0

    invoke-static {p0, p1}, Landroid/os/ZygoteProcess;->getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .locals 10

    .line 563
    const-string v0, "--query-abi-list"

    const-string v1, "--get-pid"

    const-string v2, "--preload-default"

    const-string v3, "--preload-package"

    const-string v4, "--preload-app"

    const-string v5, "--start-child-zygote"

    const-string v6, "--set-api-denylist-exemptions"

    const-string v7, "--hidden-api-log-sampling-rate"

    const-string v8, "--hidden-api-statslog-sampling-rate"

    const-string v9, "--invoke-with"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/os/ZygoteProcess;->INVALID_USAP_FLAGS:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 4

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 854
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    .line 855
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    .line 117
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "zygote"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 120
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "zygote_secondary"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 124
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "usap_pool_primary"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

    .line 127
    new-instance v1, Landroid/net/LocalSocketAddress;

    sget-object v2, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    const-string/jumbo v3, "usap_pool_secondary"

    invoke-direct {v1, v3, v2}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 133
    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    .line 134
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)V
    .locals 3
    .param p1, "primarySocketAddress"    # Landroid/net/LocalSocketAddress;
    .param p2, "secondarySocketAddress"    # Landroid/net/LocalSocketAddress;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 256
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    .line 263
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 300
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 854
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    .line 855
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    .line 138
    iput-object p1, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    .line 139
    iput-object p2, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 141
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

    .line 142
    iput-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 146
    iput-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    .line 147
    return-void
.end method

.method private blacklist attemptConnectionToPrimaryZygote()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1085
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSocketAddress:Landroid/net/LocalSocketAddress;

    .line 1087
    invoke-static {v0, v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    .line 1089
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    .line 1090
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1092
    :cond_1
    return-void
.end method

.method private blacklist attemptConnectionToSecondaryZygote()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1099
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1100
    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    iget-object v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    .line 1101
    invoke-static {v0, v1}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0

    iput-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    .line 1104
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    .line 1105
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1107
    :cond_1
    return-void
.end method

.method private blacklist attemptUsapSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 6
    .param p1, "zygoteState"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "msgStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->getUsapSessionSocket()Landroid/net/LocalSocket;

    move-result-object v0

    .line 501
    .local v0, "usapSessionSocket":Landroid/net/LocalSocket;
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    .line 503
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const/16 v3, 0x100

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 505
    .local v1, "usapWriter":Ljava/io/BufferedWriter;
    new-instance v2, Ljava/io/DataInputStream;

    .line 506
    invoke-virtual {v0}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 508
    .local v2, "usapReader":Ljava/io/DataInputStream;
    invoke-virtual {v1, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 509
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 511
    new-instance v3, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v3}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 512
    .local v3, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    iput v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 514
    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 516
    iget v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ltz v4, :cond_1

    .line 517
    nop

    .line 521
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V

    .line 517
    :cond_0
    return-object v3

    .line 519
    :cond_1
    :try_start_1
    new-instance v4, Landroid/os/ZygoteStartFailedEx;

    const-string v5, "USAP specialization failed"

    invoke-direct {v4, v5}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    .end local v0    # "usapSessionSocket":Landroid/net/LocalSocket;
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .end local p2    # "msgStr":Ljava/lang/String;
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 500
    .end local v1    # "usapWriter":Ljava/io/BufferedWriter;
    .end local v2    # "usapReader":Ljava/io/DataInputStream;
    .end local v3    # "result":Landroid/os/Process$ProcessStartResult;
    .restart local v0    # "usapSessionSocket":Landroid/net/LocalSocket;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .restart local p2    # "msgStr":Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Landroid/net/LocalSocket;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
.end method

.method private blacklist attemptZygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 5
    .param p1, "zygoteState"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "msgStr"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 471
    :try_start_0
    iget-object v0, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    .line 472
    .local v0, "zygoteWriter":Ljava/io/BufferedWriter;
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    .line 474
    .local v1, "zygoteInputStream":Ljava/io/DataInputStream;
    invoke-virtual {v0, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 475
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 480
    new-instance v2, Landroid/os/Process$ProcessStartResult;

    invoke-direct {v2}, Landroid/os/Process$ProcessStartResult;-><init>()V

    .line 481
    .local v2, "result":Landroid/os/Process$ProcessStartResult;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    iput v3, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    .line 482
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v3

    iput-boolean v3, v2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    .line 484
    iget v3, v2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ltz v3, :cond_0

    .line 488
    return-object v2

    .line 485
    :cond_0
    new-instance v3, Landroid/os/ZygoteStartFailedEx;

    const-string v4, "fork() failed"

    invoke-direct {v3, v4}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .end local p2    # "msgStr":Ljava/lang/String;
    throw v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .end local v0    # "zygoteWriter":Ljava/io/BufferedWriter;
    .end local v1    # "zygoteInputStream":Ljava/io/DataInputStream;
    .end local v2    # "result":Landroid/os/Process$ProcessStartResult;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "zygoteState":Landroid/os/ZygoteProcess$ZygoteState;
    .restart local p2    # "msgStr":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 490
    .local v0, "ex":Ljava/io/IOException;
    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IO Exception while communicating with Zygote - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 492
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 491
    const-string v2, "ZygoteProcess"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    invoke-direct {v1, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist bootCompleted(Ljava/lang/String;)V
    .locals 4
    .param p1, "abi"    # Ljava/lang/String;

    .line 945
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 946
    :try_start_1
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 947
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "1\n--boot-completed\n"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 948
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 949
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    .line 950
    nop

    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    monitor-exit v0

    .line 953
    nop

    .line 954
    return-void

    .line 950
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "abi":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 951
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "abi":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 952
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to inform zygote of boot_completed"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist commandSupportedByUsap(Ljava/util/ArrayList;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 583
    .local p0, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 584
    .local v1, "flag":Ljava/lang/String;
    sget-object v2, Landroid/os/ZygoteProcess;->INVALID_USAP_FLAGS:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    .line 585
    .local v6, "badFlag":Ljava/lang/String;
    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 586
    return v4

    .line 584
    .end local v6    # "badFlag":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 589
    :cond_1
    const-string v2, "--nice-name="

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 591
    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 592
    return v4

    .line 595
    .end local v1    # "flag":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 597
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist fetchUsapPoolEnabledProp()Z
    .locals 5

    .line 834
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 836
    .local v0, "origVal":Z
    const-string/jumbo v1, "usap_pool_enabled"

    const-string v2, "false"

    invoke-static {v1, v2}, Lcom/android/internal/os/Zygote;->getConfigurationProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 839
    .local v3, "propertyString":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 840
    nop

    .line 842
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 840
    invoke-static {v1, v2}, Lcom/android/internal/os/Zygote;->getConfigurationPropertyBoolean(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v1

    iput-boolean v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 845
    :cond_0
    iget-boolean v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    if-eq v0, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 847
    .local v1, "valueChanged":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 848
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "usapPoolEnabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "ZygoteProcess"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    :cond_2
    return v1
.end method

.method private blacklist fetchUsapPoolEnabledPropWithMinInterval()Z
    .locals 8

    .line 860
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 862
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 864
    .local v2, "currentTimestamp":J
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    if-nez v0, :cond_2

    iget-wide v4, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    cmp-long v0, v4, v6

    if-ltz v0, :cond_1

    goto :goto_0

    .line 871
    :cond_1
    return v1

    .line 866
    :cond_2
    :goto_0
    iput-boolean v1, p0, Landroid/os/ZygoteProcess;->mIsFirstPropCheck:Z

    .line 867
    iput-wide v2, p0, Landroid/os/ZygoteProcess;->mLastPropCheckTimestamp:J

    .line 868
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->fetchUsapPoolEnabledProp()Z

    move-result v0

    return v0
.end method

.method private static blacklist getAbiList(Ljava/io/BufferedWriter;Ljava/io/DataInputStream;)Ljava/util/List;
    .locals 4
    .param p0, "writer"    # Ljava/io/BufferedWriter;
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/BufferedWriter;",
            "Ljava/io/DataInputStream;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 401
    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 405
    const-string v0, "--query-abi-list"

    invoke-virtual {p0, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->newLine()V

    .line 407
    invoke-virtual {p0}, Ljava/io/BufferedWriter;->flush()V

    .line 410
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 411
    .local v0, "numBytes":I
    new-array v1, v0, [B

    .line 412
    .local v1, "bytes":[B
    invoke-virtual {p1, v1}, Ljava/io/DataInputStream;->readFully([B)V

    .line 414
    new-instance v2, Ljava/lang/String;

    sget-object v3, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 416
    .local v2, "rawList":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method private blacklist informZygotesOfUsapPoolStatus()V
    .locals 6

    .line 1262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1\n--usap-pool-enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    .local v0, "command":Ljava/lang/String;
    iget-object v1, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1266
    :try_start_0
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToPrimaryZygote()V

    .line 1268
    iget-object v2, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1269
    iget-object v2, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1275
    nop

    .line 1277
    :try_start_1
    iget-object v2, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_0

    .line 1279
    :try_start_2
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToSecondaryZygote()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1282
    :try_start_3
    iget-object v2, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1283
    iget-object v2, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1286
    iget-object v2, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1291
    nop

    .line 1294
    goto :goto_0

    .line 1287
    :catch_0
    move-exception v2

    .line 1288
    .local v2, "ioe":Ljava/io/IOException;
    :try_start_4
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "USAP pool state change cause an irrecoverable error"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "command":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    throw v3
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1292
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    :catch_1
    move-exception v2

    .line 1301
    :cond_0
    :goto_0
    :try_start_5
    iget-object v2, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    iget-object v2, v2, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1306
    nop

    .line 1307
    :try_start_6
    monitor-exit v1

    .line 1308
    return-void

    .line 1302
    :catch_2
    move-exception v2

    .line 1303
    .restart local v2    # "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "USAP pool state change cause an irrecoverable error"

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "command":Ljava/lang/String;
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    throw v3

    .line 1307
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "command":Ljava/lang/String;
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 1270
    :catch_3
    move-exception v2

    .line 1271
    .restart local v2    # "ioe":Ljava/io/IOException;
    iget-boolean v3, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    iput-boolean v3, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    .line 1272
    const-string v3, "ZygoteProcess"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to inform zygotes of USAP pool status: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1273
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1272
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    monitor-exit v1

    return-void

    .line 1307
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2
.end method

.method private blacklist maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z
    .locals 6
    .param p1, "state"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "sendIfEmpty"    # Z

    .line 1008
    const/4 v0, 0x0

    const-string v1, "ZygoteProcess"

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    .line 1011
    :cond_0
    const/4 v2, 0x1

    if-nez p2, :cond_1

    iget-object v3, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1012
    return v2

    .line 1016
    :cond_1
    :try_start_0
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    iget-object v4, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1017
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 1018
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v4, "--set-api-denylist-exemptions"

    invoke-virtual {v3, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1019
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->newLine()V

    .line 1020
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1021
    iget-object v4, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    iget-object v5, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1022
    iget-object v4, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v4}, Ljava/io/BufferedWriter;->newLine()V

    .line 1020
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1024
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    .line 1025
    iget-object v3, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v3}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    .line 1026
    .local v3, "status":I
    if-eqz v3, :cond_3

    .line 1027
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to set API denylist exemptions; status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1029
    :cond_3
    return v2

    .line 1030
    .end local v3    # "status":I
    :catch_0
    move-exception v2

    .line 1031
    .local v2, "ioe":Ljava/io/IOException;
    const-string v3, "Failed to set API denylist exemptions"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1032
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 1033
    return v0

    .line 1009
    .end local v2    # "ioe":Ljava/io/IOException;
    :cond_4
    :goto_1
    const-string v2, "Can\'t set API denylist exemptions: no zygote connection"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1010
    return v0
.end method

.method private greylist-max-o maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V
    .locals 4
    .param p1, "state"    # Landroid/os/ZygoteProcess$ZygoteState;

    .line 1038
    const-string v0, "ZygoteProcess"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1043
    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1044
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1045
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--hidden-api-log-sampling-rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1047
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1048
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1049
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1050
    .local v1, "status":I
    if-eqz v1, :cond_1

    .line 1051
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set hidden API log sampling rate; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .end local v1    # "status":I
    :cond_1
    goto :goto_0

    .line 1053
    :catch_0
    move-exception v1

    .line 1054
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Failed to set hidden API log sampling rate"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1056
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1039
    :cond_2
    :goto_1
    return-void
.end method

.method private blacklist maybeSetHiddenApiAccessStatslogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V
    .locals 4
    .param p1, "state"    # Landroid/os/ZygoteProcess$ZygoteState;

    .line 1059
    const-string v0, "ZygoteProcess"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/ZygoteProcess$ZygoteState;->isClosed()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessStatslogSampleRate:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 1064
    :cond_0
    :try_start_0
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1065
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1066
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--hidden-api-statslog-sampling-rate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessStatslogSampleRate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1068
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->newLine()V

    .line 1069
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 1070
    iget-object v1, p1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 1071
    .local v1, "status":I
    if-eqz v1, :cond_1

    .line 1072
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to set hidden API statslog sampling rate; status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1077
    .end local v1    # "status":I
    :cond_1
    goto :goto_0

    .line 1075
    :catch_0
    move-exception v1

    .line 1076
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Failed to set hidden API statslog sampling rate"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1078
    .end local v1    # "ioe":Ljava/io/IOException;
    :goto_0
    return-void

    .line 1060
    :cond_2
    :goto_1
    return-void
.end method

.method private greylist-max-o openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;
    .locals 3
    .param p1, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 1118
    :try_start_0
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToPrimaryZygote()V

    .line 1120
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1121
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    return-object v0

    .line 1124
    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSecondarySocketAddress:Landroid/net/LocalSocketAddress;

    if-eqz v0, :cond_1

    .line 1126
    invoke-direct {p0}, Landroid/os/ZygoteProcess;->attemptConnectionToSecondaryZygote()V

    .line 1128
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-virtual {v0, p1}, Landroid/os/ZygoteProcess$ZygoteState;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1129
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1134
    :cond_1
    nop

    .line 1136
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported zygote ABI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :catch_0
    move-exception v0

    .line 1133
    .local v0, "ioe":Ljava/io/IOException;
    new-instance v1, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Error connecting to zygote"

    invoke-direct {v1, v2, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist policySpecifiesUsapPoolLaunch(I)Z
    .locals 2
    .param p0, "zygotePolicyFlags"    # I

    .line 554
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private blacklist shouldAttemptUsapLaunch(ILjava/util/ArrayList;)Z
    .locals 1
    .param p1, "zygotePolicyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 534
    .local p2, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolSupported:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/os/ZygoteProcess;->mUsapPoolEnabled:Z

    if-eqz v0, :cond_0

    .line 536
    invoke-static {p1}, Landroid/os/ZygoteProcess;->policySpecifiesUsapPoolLaunch(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 537
    invoke-static {p2}, Landroid/os/ZygoteProcess;->commandSupportedByUsap(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 534
    :goto_0
    return v0
.end method

.method private blacklist startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 18
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "mountExternal"    # I
    .param p8, "targetSdkVersion"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "abi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "invokeWith"    # Ljava/lang/String;
    .param p14, "startChildZygote"    # Z
    .param p15, "packageName"    # Ljava/lang/String;
    .param p16, "zygotePolicyFlags"    # I
    .param p17, "isTopApp"    # Z
    .param p18, "disabledCompatChanges"    # [J
    .param p21, "bindMountAppsData"    # Z
    .param p22, "bindMountAppStorageDirs"    # Z
    .param p23, "extraArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 655
    .local p19, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local p20, "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    move/from16 v5, p7

    move-object/from16 v6, p9

    move-object/from16 v7, p11

    move-object/from16 v8, p12

    move-object/from16 v9, p13

    move-object/from16 v10, p15

    move-object/from16 v11, p18

    move-object/from16 v12, p23

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 659
    .local v13, "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "--runtime-args"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 660
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--setuid="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "--setgid="

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p4

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 662
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "--runtime-flags="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p6

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 663
    const/4 v0, 0x1

    if-ne v5, v0, :cond_0

    .line 664
    const-string v0, "--mount-external-default"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 665
    :cond_0
    const/4 v0, 0x2

    if-ne v5, v0, :cond_1

    .line 666
    const-string v0, "--mount-external-installer"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 667
    :cond_1
    const/4 v0, 0x3

    if-ne v5, v0, :cond_2

    .line 668
    const-string v0, "--mount-external-pass-through"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 669
    :cond_2
    const/4 v0, 0x4

    if-ne v5, v0, :cond_3

    .line 670
    const-string v0, "--mount-external-android-writable"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--target-sdk-version="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v5, p8

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 676
    if-eqz v4, :cond_6

    array-length v0, v4

    if-lez v0, :cond_6

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 678
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v5, "--setgroups="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    array-length v5, v4

    .line 681
    .local v5, "sz":I
    const/16 v17, 0x0

    move/from16 v14, v17

    .local v14, "i":I
    :goto_1
    if-ge v14, v5, :cond_5

    .line 682
    if-eqz v14, :cond_4

    .line 683
    move/from16 v17, v5

    const/16 v5, 0x2c

    .end local v5    # "sz":I
    .local v17, "sz":I
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 682
    .end local v17    # "sz":I
    .restart local v5    # "sz":I
    :cond_4
    move/from16 v17, v5

    .line 685
    .end local v5    # "sz":I
    .restart local v17    # "sz":I
    :goto_2
    aget v5, v4, v14

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 681
    add-int/lit8 v14, v14, 0x1

    move/from16 v5, v17

    goto :goto_1

    .end local v17    # "sz":I
    .restart local v5    # "sz":I
    :cond_5
    move/from16 v17, v5

    .line 688
    .end local v5    # "sz":I
    .end local v14    # "i":I
    .restart local v17    # "sz":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 691
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "sz":I
    :cond_6
    if-eqz v2, :cond_7

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--nice-name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 695
    :cond_7
    if-eqz v6, :cond_8

    .line 696
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--seinfo="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_8
    if-eqz v7, :cond_9

    .line 700
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--instruction-set="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 703
    :cond_9
    if-eqz v8, :cond_a

    .line 704
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--app-data-dir="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 707
    :cond_a
    if-eqz v9, :cond_b

    .line 708
    const-string v0, "--invoke-with"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 709
    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 712
    :cond_b
    if-eqz p14, :cond_c

    .line 713
    const-string v0, "--start-child-zygote"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 716
    :cond_c
    if-eqz v10, :cond_d

    .line 717
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--package-name="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 720
    :cond_d
    if-eqz p17, :cond_e

    .line 721
    const-string v0, "--is-top-app"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 723
    :cond_e
    if-eqz p19, :cond_11

    invoke-interface/range {p19 .. p19}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_11

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 725
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v5, "--pkg-data-info-map"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    const-string v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    const/4 v5, 0x0

    .line 728
    .local v5, "started":Z
    invoke-interface/range {p19 .. p19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_10

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/util/Map$Entry;

    .line 729
    .local v17, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-eqz v5, :cond_f

    .line 730
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 729
    :cond_f
    const/16 v4, 0x2c

    .line 732
    :goto_4
    const/4 v5, 0x1

    .line 733
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 734
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 735
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 737
    invoke-interface/range {v17 .. v17}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 738
    .end local v17    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move-object/from16 v4, p5

    goto :goto_3

    .line 739
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "started":Z
    :cond_11
    if-eqz p20, :cond_14

    invoke-interface/range {p20 .. p20}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_14

    .line 742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 743
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v4, "--allowlisted-data-info-map"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 744
    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    const/4 v4, 0x0

    .line 746
    .local v4, "started":Z
    invoke-interface/range {p20 .. p20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_13

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 747
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-eqz v4, :cond_12

    .line 748
    move/from16 v17, v4

    const/16 v4, 0x2c

    .end local v4    # "started":Z
    .local v17, "started":Z
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    .line 747
    .end local v17    # "started":Z
    .restart local v4    # "started":Z
    :cond_12
    move/from16 v17, v4

    const/16 v4, 0x2c

    .line 750
    .end local v4    # "started":Z
    .restart local v17    # "started":Z
    :goto_6
    const/16 v17, 0x1

    .line 751
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 752
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 753
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 755
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 756
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    move/from16 v4, v17

    goto :goto_5

    .line 757
    .end local v17    # "started":Z
    .restart local v4    # "started":Z
    :cond_13
    move/from16 v17, v4

    .end local v4    # "started":Z
    .restart local v17    # "started":Z
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 760
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v17    # "started":Z
    :cond_14
    if-eqz p22, :cond_15

    .line 761
    const-string v0, "--bind-mount-storage-dirs"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 764
    :cond_15
    if-eqz p21, :cond_16

    .line 765
    const-string v0, "--bind-mount-data-dirs"

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 768
    :cond_16
    if-eqz v11, :cond_19

    array-length v0, v11

    if-lez v0, :cond_19

    .line 769
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 770
    .restart local v0    # "sb":Ljava/lang/StringBuilder;
    const-string v4, "--disabled-compat-changes="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    array-length v4, v11

    .line 773
    .local v4, "sz":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_7
    if-ge v5, v4, :cond_18

    .line 774
    if-eqz v5, :cond_17

    .line 775
    const/16 v14, 0x2c

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 774
    :cond_17
    const/16 v14, 0x2c

    .line 777
    :goto_8
    aget-wide v14, v11, v5

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 773
    add-int/lit8 v5, v5, 0x1

    move/from16 v15, p6

    goto :goto_7

    .line 780
    .end local v5    # "i":I
    :cond_18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 783
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v4    # "sz":I
    :cond_19
    move-object/from16 v4, p1

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 785
    if-eqz v12, :cond_1a

    .line 786
    invoke-static {v13, v12}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 789
    :cond_1a
    iget-object v5, v1, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 792
    :try_start_0
    invoke-static {}, Landroid/content/pm/ASKSManager;->hasBlockPolicy()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 794
    invoke-static {v3, v10}, Landroid/content/pm/ASKSManager;->isBlockTarget(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto :goto_9

    .line 796
    :cond_1b
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "should be blocked by signaficant reasons - "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    .end local v13    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "processClass":Ljava/lang/String;
    .end local p2    # "niceName":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "gid":I
    .end local p5    # "gids":[I
    .end local p6    # "runtimeFlags":I
    .end local p7    # "mountExternal":I
    .end local p8    # "targetSdkVersion":I
    .end local p9    # "seInfo":Ljava/lang/String;
    .end local p10    # "abi":Ljava/lang/String;
    .end local p11    # "instructionSet":Ljava/lang/String;
    .end local p12    # "appDataDir":Ljava/lang/String;
    .end local p13    # "invokeWith":Ljava/lang/String;
    .end local p14    # "startChildZygote":Z
    .end local p15    # "packageName":Ljava/lang/String;
    .end local p16    # "zygotePolicyFlags":I
    .end local p17    # "isTopApp":Z
    .end local p18    # "disabledCompatChanges":[J
    .end local p19    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local p20    # "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local p21    # "bindMountAppsData":Z
    .end local p22    # "bindMountAppStorageDirs":Z
    .end local p23    # "extraArgs":[Ljava/lang/String;
    throw v0

    .line 800
    .restart local v13    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "processClass":Ljava/lang/String;
    .restart local p2    # "niceName":Ljava/lang/String;
    .restart local p3    # "uid":I
    .restart local p4    # "gid":I
    .restart local p5    # "gids":[I
    .restart local p6    # "runtimeFlags":I
    .restart local p7    # "mountExternal":I
    .restart local p8    # "targetSdkVersion":I
    .restart local p9    # "seInfo":Ljava/lang/String;
    .restart local p10    # "abi":Ljava/lang/String;
    .restart local p11    # "instructionSet":Ljava/lang/String;
    .restart local p12    # "appDataDir":Ljava/lang/String;
    .restart local p13    # "invokeWith":Ljava/lang/String;
    .restart local p14    # "startChildZygote":Z
    .restart local p15    # "packageName":Ljava/lang/String;
    .restart local p16    # "zygotePolicyFlags":I
    .restart local p17    # "isTopApp":Z
    .restart local p18    # "disabledCompatChanges":[J
    .restart local p19    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local p20    # "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local p21    # "bindMountAppsData":Z
    .restart local p22    # "bindMountAppStorageDirs":Z
    .restart local p23    # "extraArgs":[Ljava/lang/String;
    :cond_1c
    :goto_9
    const-string v0, "DENY"

    invoke-static {v2, v0}, Landroid/content/pm/ASKSManager;->isRestrictedTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1f

    .line 802
    const/4 v14, 0x0

    .line 805
    .local v14, "aasaSeInfo":[B
    :try_start_1
    invoke-static {}, Landroid/content/pm/ASKSManager;->getASKSManager()Landroid/content/pm/IASKSManager;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/pm/IASKSManager;->getSEInfo(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 809
    .end local v14    # "aasaSeInfo":[B
    .local v0, "aasaSeInfo":[B
    goto :goto_a

    .line 807
    .end local v0    # "aasaSeInfo":[B
    .restart local v14    # "aasaSeInfo":[B
    :catch_0
    move-exception v0

    .line 808
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v14, 0x0

    move-object v0, v14

    .line 811
    .end local v14    # "aasaSeInfo":[B
    .local v0, "aasaSeInfo":[B
    :goto_a
    if-eqz v0, :cond_1e

    :try_start_2
    const-string v14, "aasa_blocked"

    new-instance v15, Ljava/lang/String;

    invoke-direct {v15, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_1d

    goto :goto_b

    .line 813
    :cond_1d
    new-instance v14, Landroid/os/ZygoteStartFailedEx;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    .end local v0    # "aasaSeInfo":[B
    .local v16, "aasaSeInfo":[B
    const-string/jumbo v0, "should be restricted by signaficant reasons - "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    .end local v13    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "processClass":Ljava/lang/String;
    .end local p2    # "niceName":Ljava/lang/String;
    .end local p3    # "uid":I
    .end local p4    # "gid":I
    .end local p5    # "gids":[I
    .end local p6    # "runtimeFlags":I
    .end local p7    # "mountExternal":I
    .end local p8    # "targetSdkVersion":I
    .end local p9    # "seInfo":Ljava/lang/String;
    .end local p10    # "abi":Ljava/lang/String;
    .end local p11    # "instructionSet":Ljava/lang/String;
    .end local p12    # "appDataDir":Ljava/lang/String;
    .end local p13    # "invokeWith":Ljava/lang/String;
    .end local p14    # "startChildZygote":Z
    .end local p15    # "packageName":Ljava/lang/String;
    .end local p16    # "zygotePolicyFlags":I
    .end local p17    # "isTopApp":Z
    .end local p18    # "disabledCompatChanges":[J
    .end local p19    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local p20    # "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local p21    # "bindMountAppsData":Z
    .end local p22    # "bindMountAppStorageDirs":Z
    .end local p23    # "extraArgs":[Ljava/lang/String;
    throw v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 811
    .end local v16    # "aasaSeInfo":[B
    .restart local v0    # "aasaSeInfo":[B
    .restart local v13    # "argsForZygote":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "processClass":Ljava/lang/String;
    .restart local p2    # "niceName":Ljava/lang/String;
    .restart local p3    # "uid":I
    .restart local p4    # "gid":I
    .restart local p5    # "gids":[I
    .restart local p6    # "runtimeFlags":I
    .restart local p7    # "mountExternal":I
    .restart local p8    # "targetSdkVersion":I
    .restart local p9    # "seInfo":Ljava/lang/String;
    .restart local p10    # "abi":Ljava/lang/String;
    .restart local p11    # "instructionSet":Ljava/lang/String;
    .restart local p12    # "appDataDir":Ljava/lang/String;
    .restart local p13    # "invokeWith":Ljava/lang/String;
    .restart local p14    # "startChildZygote":Z
    .restart local p15    # "packageName":Ljava/lang/String;
    .restart local p16    # "zygotePolicyFlags":I
    .restart local p17    # "isTopApp":Z
    .restart local p18    # "disabledCompatChanges":[J
    .restart local p19    # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local p20    # "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local p21    # "bindMountAppsData":Z
    .restart local p22    # "bindMountAppStorageDirs":Z
    .restart local p23    # "extraArgs":[Ljava/lang/String;
    :cond_1e
    move-object/from16 v16, v0

    .line 820
    .end local v0    # "aasaSeInfo":[B
    :cond_1f
    :goto_b
    move-object/from16 v14, p10

    :try_start_3
    invoke-direct {v1, v14}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move/from16 v15, p16

    :try_start_4
    invoke-direct {v1, v0, v15, v13}, Landroid/os/ZygoteProcess;->zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;ILjava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 825
    .local v0, "result":Landroid/os/Process$ProcessStartResult;
    const-string v1, "REVOKE"

    invoke-static {v2, v1}, Landroid/content/pm/ASKSManager;->isRestrictedTarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 826
    iget v1, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-static {v1, v2}, Landroid/content/pm/ASKSManager;->addPackageWithPid(ILjava/lang/String;)V

    .line 829
    :cond_20
    monitor-exit v5

    return-object v0

    .line 830
    .end local v0    # "result":Landroid/os/Process$ProcessStartResult;
    :catchall_0
    move-exception v0

    goto :goto_c

    :catchall_1
    move-exception v0

    move-object/from16 v14, p10

    :goto_c
    move/from16 v15, p16

    :goto_d
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_d
.end method

.method public static greylist-max-o waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V
    .locals 6
    .param p0, "zygoteSocketAddress"    # Landroid/net/LocalSocketAddress;

    .line 1237
    const/16 v0, 0x190

    .line 1238
    .local v0, "numRetries":I
    move v1, v0

    .local v1, "n":I
    :goto_0
    const-string v2, "ZygoteProcess"

    if-ltz v1, :cond_0

    .line 1240
    const/4 v3, 0x0

    .line 1241
    :try_start_0
    invoke-static {p0, v3}, Landroid/os/ZygoteProcess$ZygoteState;->connect(Landroid/net/LocalSocketAddress;Landroid/net/LocalSocketAddress;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v3

    .line 1242
    .local v3, "zs":Landroid/os/ZygoteProcess$ZygoteState;
    invoke-virtual {v3}, Landroid/os/ZygoteProcess$ZygoteState;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1243
    return-void

    .line 1244
    .end local v3    # "zs":Landroid/os/ZygoteProcess$ZygoteState;
    :catch_0
    move-exception v3

    .line 1245
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Got error connecting to zygote, retrying. msg= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1246
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1245
    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    .end local v3    # "ioe":Ljava/io/IOException;
    const-wide/16 v2, 0x32

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1251
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_1

    .line 1238
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1253
    .end local v1    # "n":I
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to connect to Zygote through socket "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1254
    invoke-virtual {p0}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1253
    invoke-static {v2, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1255
    return-void
.end method

.method public static greylist-max-o waitForConnectionToZygote(Ljava/lang/String;)V
    .locals 2
    .param p0, "zygoteSocketName"    # Ljava/lang/String;

    .line 1227
    new-instance v0, Landroid/net/LocalSocketAddress;

    sget-object v1, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v0, p0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    .line 1229
    .local v0, "zygoteSocketAddress":Landroid/net/LocalSocketAddress;
    invoke-static {v0}, Landroid/os/ZygoteProcess;->waitForConnectionToZygote(Landroid/net/LocalSocketAddress;)V

    .line 1230
    return-void
.end method

.method private blacklist zygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;ILjava/util/ArrayList;)Landroid/os/Process$ProcessStartResult;
    .locals 4
    .param p1, "zygoteState"    # Landroid/os/ZygoteProcess$ZygoteState;
    .param p2, "zygotePolicyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ZygoteProcess$ZygoteState;",
            "I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;
        }
    .end annotation

    .line 432
    .local p3, "args":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 435
    .local v1, "arg":Ljava/lang/String;
    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_1

    .line 437
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-gez v2, :cond_0

    .line 440
    .end local v1    # "arg":Ljava/lang/String;
    goto :goto_0

    .line 438
    .restart local v1    # "arg":Ljava/lang/String;
    :cond_0
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Embedded carriage returns not allowed"

    invoke-direct {v0, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_1
    new-instance v0, Landroid/os/ZygoteStartFailedEx;

    const-string v2, "Embedded newlines not allowed"

    invoke-direct {v0, v2}, Landroid/os/ZygoteStartFailedEx;-><init>(Ljava/lang/String;)V

    throw v0

    .line 452
    .end local v1    # "arg":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v1, p3}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 454
    .local v0, "msgStr":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Landroid/os/ZygoteProcess;->shouldAttemptUsapLaunch(ILjava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    :try_start_0
    invoke-direct {p0, p1, v0}, Landroid/os/ZygoteProcess;->attemptUsapSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 457
    :catch_0
    move-exception v1

    .line 460
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IO Exception while communicating with USAP pool - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 461
    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 460
    const-string v3, "ZygoteProcess"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v1    # "ex":Ljava/io/IOException;
    :cond_3
    invoke-direct {p0, p1, v0}, Landroid/os/ZygoteProcess;->attemptZygoteSendArgsAndGetResult(Landroid/os/ZygoteProcess$ZygoteState;Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public blacklist bootCompleted()V
    .locals 2

    .line 935
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 936
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->bootCompleted(Ljava/lang/String;)V

    .line 938
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 939
    sget-object v0, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroid/os/ZygoteProcess;->bootCompleted(Ljava/lang/String;)V

    .line 941
    :cond_1
    return-void
.end method

.method public greylist-max-o close()V
    .locals 1

    .line 878
    iget-object v0, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_0

    .line 879
    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 881
    :cond_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    if-eqz v0, :cond_1

    .line 882
    invoke-virtual {v0}, Landroid/os/ZygoteProcess$ZygoteState;->close()V

    .line 884
    :cond_1
    return-void
.end method

.method public greylist-max-o establishZygoteConnectionForAbi(Ljava/lang/String;)V
    .locals 4
    .param p1, "abi"    # Ljava/lang/String;

    .line 893
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 894
    :try_start_1
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    .line 895
    monitor-exit v0

    .line 898
    nop

    .line 899
    return-void

    .line 895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "abi":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_2 .. :try_end_2} :catch_0

    .line 896
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "abi":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 897
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to zygote for abi: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public greylist-max-o getPrimarySocketAddress()Landroid/net/LocalSocketAddress;
    .locals 1

    .line 150
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mZygoteSocketAddress:Landroid/net/LocalSocketAddress;

    return-object v0
.end method

.method public blacklist getZygotePid(Ljava/lang/String;)I
    .locals 6
    .param p1, "abi"    # Ljava/lang/String;

    .line 906
    :try_start_0
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 907
    :try_start_1
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 910
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 912
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 914
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--get-pid"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 915
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 916
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 919
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    .line 920
    .local v2, "numBytes":I
    new-array v3, v2, [B

    .line 921
    .local v3, "bytes":[B
    iget-object v4, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v4, v3}, Ljava/io/DataInputStream;->readFully([B)V

    .line 923
    new-instance v4, Ljava/lang/String;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v4, v3, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    monitor-exit v0

    return v4

    .line 924
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    .end local v2    # "numBytes":I
    .end local v3    # "bytes":[B
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Landroid/os/ZygoteProcess;
    .end local p1    # "abi":Ljava/lang/String;
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 925
    .restart local p0    # "this":Landroid/os/ZygoteProcess;
    .restart local p1    # "abi":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 926
    .local v0, "ex":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failure retrieving pid"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist preloadApp(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)Z
    .locals 6
    .param p1, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1146
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1147
    :try_start_0
    invoke-direct {p0, p2}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 1148
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1149
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1151
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--preload-app"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1152
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1156
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 1157
    .local v2, "parcel":Landroid/os/Parcel;
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1158
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v4

    .line 1159
    .local v4, "encodedParcelData":Ljava/lang/String;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 1160
    iget-object v5, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5, v4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1161
    iget-object v5, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->newLine()V

    .line 1163
    iget-object v5, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v5}, Ljava/io/BufferedWriter;->flush()V

    .line 1165
    iget-object v5, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v5}, Ljava/io/DataInputStream;->readInt()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v3, 0x1

    :cond_0
    monitor-exit v0

    return v3

    .line 1166
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    .end local v2    # "parcel":Landroid/os/Parcel;
    .end local v4    # "encodedParcelData":Ljava/lang/String;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o preloadDefault(Ljava/lang/String;)Z
    .locals 4
    .param p1, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1209
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1210
    :try_start_0
    invoke-direct {p0, p1}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 1212
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1213
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1214
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--preload-default"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1215
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1216
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1218
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1219
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o preloadPackageForAbi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "packagePath"    # Ljava/lang/String;
    .param p2, "libsPath"    # Ljava/lang/String;
    .param p3, "libFileName"    # Ljava/lang/String;
    .param p4, "cacheKey"    # Ljava/lang/String;
    .param p5, "abi"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/ZygoteStartFailedEx;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1176
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1177
    :try_start_0
    invoke-direct {p0, p5}, Landroid/os/ZygoteProcess;->openZygoteSocketIfNeeded(Ljava/lang/String;)Landroid/os/ZygoteProcess$ZygoteState;

    move-result-object v1

    .line 1178
    .local v1, "state":Landroid/os/ZygoteProcess$ZygoteState;
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1179
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1181
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    const-string v3, "--preload-package"

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1182
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1184
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1185
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1187
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p2}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1188
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1190
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1191
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1193
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2, p4}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 1194
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->newLine()V

    .line 1196
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteOutputWriter:Ljava/io/BufferedWriter;

    invoke-virtual {v2}, Ljava/io/BufferedWriter;->flush()V

    .line 1198
    iget-object v2, v1, Landroid/os/ZygoteProcess$ZygoteState;->mZygoteInputStream:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readInt()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0

    return v2

    .line 1199
    .end local v1    # "state":Landroid/os/ZygoteProcess$ZygoteState;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setApiDenylistExemptions(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 966
    .local p1, "exemptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 967
    :try_start_0
    iput-object p1, p0, Landroid/os/ZygoteProcess;->mApiDenylistExemptions:Ljava/util/List;

    .line 968
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    move-result v1

    .line 969
    .local v1, "ok":Z
    if-eqz v1, :cond_0

    .line 970
    iget-object v3, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v3, v2}, Landroid/os/ZygoteProcess;->maybeSetApiDenylistExemptions(Landroid/os/ZygoteProcess$ZygoteState;Z)Z

    move-result v2

    move v1, v2

    .line 972
    :cond_0
    monitor-exit v0

    return v1

    .line 973
    .end local v1    # "ok":Z
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public greylist-max-o setHiddenApiAccessLogSampleRate(I)V
    .locals 2
    .param p1, "rate"    # I

    .line 984
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 985
    :try_start_0
    iput p1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessLogSampleRate:I

    .line 986
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 987
    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessLogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 988
    monitor-exit v0

    .line 989
    return-void

    .line 988
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public blacklist setHiddenApiAccessStatslogSampleRate(I)V
    .locals 2
    .param p1, "rate"    # I

    .line 999
    iget-object v0, p0, Landroid/os/ZygoteProcess;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1000
    :try_start_0
    iput p1, p0, Landroid/os/ZygoteProcess;->mHiddenApiAccessStatslogSampleRate:I

    .line 1001
    iget-object v1, p0, Landroid/os/ZygoteProcess;->primaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessStatslogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1002
    iget-object v1, p0, Landroid/os/ZygoteProcess;->secondaryZygoteState:Landroid/os/ZygoteProcess$ZygoteState;

    invoke-direct {p0, v1}, Landroid/os/ZygoteProcess;->maybeSetHiddenApiAccessStatslogSampleRate(Landroid/os/ZygoteProcess$ZygoteState;)V

    .line 1003
    monitor-exit v0

    .line 1004
    return-void

    .line 1003
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final blacklist start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;
    .locals 25
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "mountExternal"    # I
    .param p8, "targetSdkVersion"    # I
    .param p9, "seInfo"    # Ljava/lang/String;
    .param p10, "abi"    # Ljava/lang/String;
    .param p11, "instructionSet"    # Ljava/lang/String;
    .param p12, "appDataDir"    # Ljava/lang/String;
    .param p13, "invokeWith"    # Ljava/lang/String;
    .param p14, "packageName"    # Ljava/lang/String;
    .param p15, "zygotePolicyFlags"    # I
    .param p16, "isTopApp"    # Z
    .param p17, "disabledCompatChanges"    # [J
    .param p20, "bindMountAppsData"    # Z
    .param p21, "bindMountAppStorageDirs"    # Z
    .param p22, "zygoteArgs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II[IIII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IZ[J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;ZZ[",
            "Ljava/lang/String;",
            ")",
            "Landroid/os/Process$ProcessStartResult;"
        }
    .end annotation

    .line 372
    .local p18, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local p19, "allowlistedDataInfoList":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-direct/range {p0 .. p0}, Landroid/os/ZygoteProcess;->fetchUsapPoolEnabledPropWithMinInterval()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-direct/range {p0 .. p0}, Landroid/os/ZygoteProcess;->informZygotesOfUsapPoolStatus()V

    .line 377
    :cond_0
    const/4 v15, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v16, p14

    move/from16 v17, p15

    move/from16 v18, p16

    move-object/from16 v19, p17

    move-object/from16 v20, p18

    move-object/from16 v21, p19

    move/from16 v22, p20

    move/from16 v23, p21

    move-object/from16 v24, p22

    :try_start_0
    invoke-direct/range {v1 .. v24}, Landroid/os/ZygoteProcess;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 383
    :catch_0
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 384
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    const-string v1, "ZygoteProcess"

    const-string v2, "Starting VM process through Zygote failed"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist startChildZygote(Ljava/lang/String;Ljava/lang/String;II[IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Landroid/os/ChildZygoteProcess;
    .locals 26
    .param p1, "processClass"    # Ljava/lang/String;
    .param p2, "niceName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "gid"    # I
    .param p5, "gids"    # [I
    .param p6, "runtimeFlags"    # I
    .param p7, "seInfo"    # Ljava/lang/String;
    .param p8, "abi"    # Ljava/lang/String;
    .param p9, "acceptedAbiList"    # Ljava/lang/String;
    .param p10, "instructionSet"    # Ljava/lang/String;
    .param p11, "uidRangeStart"    # I
    .param p12, "uidRangeEnd"    # I

    .line 1343
    new-instance v0, Landroid/net/LocalSocketAddress;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, p1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1344
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 1346
    .local v1, "serverAddress":Landroid/net/LocalSocketAddress;
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--zygote-socket="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/LocalSocketAddress;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--abi-list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v12, p9

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--uid-range-start="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v11, p11

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--uid-range-end="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v8, p12

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    move-object/from16 v25, v0

    .line 1355
    .local v25, "extraArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p10

    :try_start_0
    invoke-direct/range {v2 .. v25}, Landroid/os/ZygoteProcess;->startViaZygote(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/ZygoteStartFailedEx; {:try_start_0 .. :try_end_0} :catch_0

    .line 1366
    .local v0, "result":Landroid/os/Process$ProcessStartResult;
    nop

    .line 1368
    new-instance v2, Landroid/os/ChildZygoteProcess;

    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-direct {v2, v1, v3}, Landroid/os/ChildZygoteProcess;-><init>(Landroid/net/LocalSocketAddress;I)V

    return-object v2

    .line 1364
    .end local v0    # "result":Landroid/os/Process$ProcessStartResult;
    :catch_0
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1365
    .local v0, "ex":Landroid/os/ZygoteStartFailedEx;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Starting child-zygote through Zygote failed"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
