.class Lcom/android/internal/os/ZygoteServer;
.super Ljava/lang/Object;
.source "ZygoteServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final blacklist INVALID_TIMESTAMP:I = -0x1

.field public static final blacklist TAG:Ljava/lang/String; = "ZygoteServer"


# instance fields
.field private blacklist mCloseSocketFd:Z

.field private blacklist mIsFirstPropertyCheck:Z

.field private blacklist mIsForkChild:Z

.field private blacklist mLastPropCheckTimestamp:J

.field private blacklist mUsapPoolEnabled:Z

.field private final blacklist mUsapPoolEventFD:Ljava/io/FileDescriptor;

.field private blacklist mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

.field private blacklist mUsapPoolRefillDelayMs:I

.field private blacklist mUsapPoolRefillThreshold:I

.field private blacklist mUsapPoolRefillTriggerTimestamp:J

.field private blacklist mUsapPoolSizeMax:I

.field private blacklist mUsapPoolSizeMin:I

.field private final blacklist mUsapPoolSocket:Landroid/net/LocalServerSocket;

.field private final blacklist mUsapPoolSupported:Z

.field private blacklist mZygoteSocket:Landroid/net/LocalServerSocket;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 0

    return-void
.end method

.method constructor blacklist <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    return-void
.end method

.method constructor blacklist <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolEventFD()Ljava/io/FileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    if-eqz p1, :cond_0

    const-string/jumbo v1, "zygote"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    nop

    const-string/jumbo v1, "usap_pool_primary"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "zygote_secondary"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    nop

    const-string/jumbo v1, "usap_pool_secondary"

    invoke-static {v1}, Lcom/android/internal/os/Zygote;->createManagedSocketFromInitSocket(Ljava/lang/String;)Landroid/net/LocalServerSocket;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    return-void
.end method

.method private blacklist acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/internal/os/ZygoteServer;->createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "IOException during accept()"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist fetchUsapPoolPolicyProps()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    if-eqz v0, :cond_0

    nop

    const-string/jumbo v0, "usap_pool_size_max"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v2, 0x64

    invoke-static {v0, v2}, Ljava/lang/Integer;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    nop

    const-string/jumbo v0, "usap_pool_size_min"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0, v2}, Ljava/lang/Integer;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    nop

    const-string/jumbo v0, "usap_refill_threshold"

    invoke-static {v0, v2}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    invoke-static {v0, v3}, Ljava/lang/Integer;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    const-string/jumbo v0, "usap_pool_refill_delay_ms"

    const/16 v3, 0xbb8

    invoke-static {v0, v3}, Lcom/android/internal/os/ZygoteConfig;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    iget v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iget v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    if-lt v0, v3, :cond_0

    const-string v0, "ZygoteServer"

    const-string v3, "The max size of the USAP pool must be greater than the minimum size.  Restoring default values."

    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    iput v2, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    iget v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    :cond_0
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsIfUnfetched()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    :cond_0
    return-void
.end method

.method private blacklist fetchUsapPoolPolicyPropsWithMinInterval()V
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0xea60

    cmp-long v2, v2, v4

    if-ltz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mIsFirstPropertyCheck:Z

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mLastPropCheckTimestamp:J

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyProps()V

    :cond_1
    return-void
.end method

.method private blacklist resetUsapRefillState()V
    .locals 2

    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    return-void
.end method


# virtual methods
.method blacklist closeServerSocket()V
    .locals 3

    const-string v0, "ZygoteServer"

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v2}, Landroid/net/LocalServerSocket;->close()V

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Zygote:  error closing descriptor"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Zygote:  error closing sockets"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    nop

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    return-void
.end method

.method protected blacklist createNewConnection(Landroid/net/LocalSocket;Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/ZygoteConnection;-><init>(Landroid/net/LocalSocket;Ljava/lang/String;)V

    return-object v0
.end method

.method blacklist fillUsapPool([IZ)Ljava/lang/Runnable;
    .locals 7

    const-string v0, "Zygote:FillUsapPool"

    const-wide/16 v1, 0x40

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsIfUnfetched()V

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    const-string/jumbo v3, "zygote"

    if-eqz p2, :cond_0

    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    sub-int/2addr v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Priority USAP Pool refill. New USAPs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Delayed USAP Pool refill. New USAPs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Ldalvik/system/ZygoteHooks;->preFork()V

    :goto_1
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSocket:Landroid/net/LocalServerSocket;

    invoke-static {v3, p1, p2}, Lcom/android/internal/os/Zygote;->forkUsap(Landroid/net/LocalServerSocket;[IZ)Ljava/lang/Runnable;

    move-result-object v3

    if-eqz v3, :cond_1

    return-object v3

    :cond_1
    goto :goto_1

    :cond_2
    invoke-static {}, Ldalvik/system/ZygoteHooks;->postForkCommon()V

    invoke-direct {p0}, Lcom/android/internal/os/ZygoteServer;->resetUsapRefillState()V

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    const/4 v1, 0x0

    return-object v1
.end method

.method blacklist getZygoteSocketFileDescriptor()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public blacklist isUsapPoolEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    return v0
.end method

.method blacklist registerServerSocketAtAbstractName(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    if-nez v0, :cond_0

    :try_start_0
    new-instance v0, Landroid/net/LocalServerSocket;

    invoke-direct {v0, p1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mCloseSocketFd:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error binding to abstract socket \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method blacklist runSelectLoop(Ljava/lang/String;)Ljava/lang/Runnable;
    .locals 18

    move-object/from16 v1, p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mZygoteSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/os/ZygoteServer;->fetchUsapPoolPolicyPropsWithMinInterval()V

    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    const/4 v0, 0x0

    iget-boolean v6, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPipeFDs()[I

    move-result-object v0

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/2addr v6, v7

    array-length v8, v0

    add-int/2addr v6, v8

    new-array v6, v6, [Landroid/system/StructPollfd;

    move-object v8, v6

    move-object v6, v0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Landroid/system/StructPollfd;

    move-object v8, v6

    move-object v6, v0

    :goto_1
    const/4 v0, 0x0

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/io/FileDescriptor;

    new-instance v11, Landroid/system/StructPollfd;

    invoke-direct {v11}, Landroid/system/StructPollfd;-><init>()V

    aput-object v11, v8, v0

    aget-object v11, v8, v0

    iput-object v10, v11, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v11, v8, v0

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v11, Landroid/system/StructPollfd;->events:S

    nop

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_1
    move v9, v0

    iget-boolean v10, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    const/4 v11, 0x0

    if-eqz v10, :cond_3

    new-instance v10, Landroid/system/StructPollfd;

    invoke-direct {v10}, Landroid/system/StructPollfd;-><init>()V

    aput-object v10, v8, v0

    aget-object v10, v8, v0

    iget-object v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEventFD:Ljava/io/FileDescriptor;

    iput-object v12, v10, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v10, v8, v0

    sget v12, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v12, v12

    iput-short v12, v10, Landroid/system/StructPollfd;->events:S

    add-int/lit8 v0, v0, 0x1

    nop

    array-length v10, v6

    move v12, v11

    :goto_3
    if-ge v12, v10, :cond_2

    aget v13, v6, v12

    new-instance v14, Ljava/io/FileDescriptor;

    invoke-direct {v14}, Ljava/io/FileDescriptor;-><init>()V

    invoke-virtual {v14, v13}, Ljava/io/FileDescriptor;->setInt$(I)V

    new-instance v15, Landroid/system/StructPollfd;

    invoke-direct {v15}, Landroid/system/StructPollfd;-><init>()V

    aput-object v15, v8, v0

    aget-object v15, v8, v0

    iput-object v14, v15, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    aget-object v15, v8, v0

    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v15, Landroid/system/StructPollfd;->events:S

    nop

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v12, v12, 0x1

    const/4 v7, 0x1

    goto :goto_3

    :cond_2
    move v7, v0

    goto :goto_4

    :cond_3
    move v7, v0

    :goto_4
    iget-wide v12, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    cmp-long v0, v12, v4

    if-nez v0, :cond_4

    const/4 v0, -0x1

    move v10, v0

    goto :goto_5

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    sub-long/2addr v12, v14

    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    int-to-long v14, v0

    cmp-long v0, v12, v14

    if-ltz v0, :cond_5

    const/4 v0, 0x0

    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    sget-object v10, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v10, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    move v10, v0

    goto :goto_5

    :cond_5
    const-wide/16 v14, 0x0

    cmp-long v0, v12, v14

    if-gtz v0, :cond_6

    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    move v10, v0

    goto :goto_5

    :cond_6
    iget v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillDelayMs:I

    int-to-long v14, v0

    sub-long/2addr v14, v12

    long-to-int v0, v14

    move v10, v0

    :goto_5
    :try_start_0
    invoke-static {v8, v10}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_2

    move v12, v0

    nop

    if-nez v12, :cond_7

    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    sget-object v0, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->DELAYED:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    goto/16 :goto_d

    :cond_7
    const/4 v0, 0x0

    move/from16 v17, v7

    move v7, v0

    move/from16 v0, v17

    :goto_6
    add-int/lit8 v13, v0, -0x1

    if-ltz v13, :cond_14

    aget-object v0, v8, v13

    iget-short v0, v0, Landroid/system/StructPollfd;->revents:S

    sget v14, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v0, v14

    if-nez v0, :cond_8

    goto/16 :goto_b

    :cond_8
    if-nez v13, :cond_9

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/os/ZygoteServer;->acceptCommandPeer(Ljava/lang/String;)Lcom/android/internal/os/ZygoteConnection;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_b

    :cond_9
    const-string v14, "ZygoteServer"

    if-ge v13, v9, :cond_10

    :try_start_1
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/os/ZygoteServer;->isUsapPoolEnabled()Z

    move-result v15

    if-nez v15, :cond_a

    invoke-static {}, Ldalvik/system/ZygoteHooks;->isIndefiniteThreadSuspensionSafe()Z

    move-result v15

    if-eqz v15, :cond_a

    const/4 v15, 0x1

    goto :goto_7

    :cond_a
    move v15, v11

    :goto_7
    nop

    invoke-virtual {v0, v1, v15}, Lcom/android/internal/os/ZygoteConnection;->processCommand(Lcom/android/internal/os/ZygoteServer;Z)Ljava/lang/Runnable;

    move-result-object v16

    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_c

    if-eqz v16, :cond_b

    nop

    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-object v16

    :cond_b
    :try_start_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "command == null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_c
    if-nez v16, :cond_e

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->isClosedByPeer()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_d
    :goto_8
    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    goto/16 :goto_b

    :cond_e
    :try_start_3
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "command != null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_9

    :catch_0
    move-exception v0

    :try_start_4
    iget-boolean v4, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    if-nez v4, :cond_f

    const-string v4, "Exception executing zygote command: "

    invoke-static {v14, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/os/ZygoteConnection;

    invoke-virtual {v4}, Lcom/android/internal/os/ZygoteConnection;->closeSocket()V

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    nop

    goto :goto_8

    :cond_f
    const-string v4, "Caught post-fork exception in child process."

    invoke-static {v14, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_9
    iput-boolean v11, v1, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    throw v0

    :cond_10
    const/16 v0, 0x8

    :try_start_5
    new-array v4, v0, [B

    aget-object v5, v8, v13

    iget-object v5, v5, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    array-length v15, v4

    invoke-static {v5, v4, v11, v15}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v5

    if-ne v5, v0, :cond_12

    new-instance v0, Ljava/io/DataInputStream;

    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-direct {v15, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v15}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v14
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    nop

    nop

    if-le v13, v9, :cond_11

    long-to-int v0, v14

    invoke-static {v0}, Lcom/android/internal/os/Zygote;->removeUsapTableEntry(I)Z

    :cond_11
    const/4 v7, 0x1

    move v0, v13

    const-wide/16 v4, -0x1

    goto/16 :goto_6

    :cond_12
    :try_start_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Incomplete read from USAP management FD of size "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    if-ne v13, v9, :cond_13

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read from USAP pool event FD: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to read from USAP reporting pipe: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    nop

    :goto_b
    move v0, v13

    const-wide/16 v4, -0x1

    goto/16 :goto_6

    :cond_14
    if-eqz v7, :cond_16

    invoke-static {}, Lcom/android/internal/os/Zygote;->getUsapPoolCount()I

    move-result v0

    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMin:I

    if-ge v0, v4, :cond_15

    sget-object v4, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    iput-object v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    goto :goto_c

    :cond_15
    iget v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSizeMax:I

    sub-int/2addr v4, v0

    iget v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillThreshold:I

    if-lt v4, v5, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    :cond_16
    :goto_c
    move v7, v13

    :goto_d
    iget-object v0, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v4, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->NONE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-eq v0, v4, :cond_19

    nop

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v5, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/internal/os/ZygoteServer$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    iget-object v5, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillAction:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    sget-object v13, Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;->IMMEDIATE:Lcom/android/internal/os/ZygoteServer$UsapPoolRefillAction;

    if-ne v5, v13, :cond_17

    goto :goto_e

    :cond_17
    move v4, v11

    :goto_e
    nop

    invoke-virtual {v1, v0, v4}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v5

    if-eqz v5, :cond_18

    return-object v5

    :cond_18
    if-eqz v4, :cond_19

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iput-wide v13, v1, Lcom/android/internal/os/ZygoteServer;->mUsapPoolRefillTriggerTimestamp:J

    :cond_19
    const-wide/16 v4, -0x1

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "poll failed"

    invoke-direct {v4, v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method blacklist setForkChild()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mIsForkChild:Z

    return-void
.end method

.method blacklist setUsapPoolStatus(ZLandroid/net/LocalSocket;)Ljava/lang/Runnable;
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolSupported:Z

    const-string v1, "ZygoteServer"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Attempting to enable a USAP pool for a Zygote that doesn\'t support it."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-ne v0, p1, :cond_1

    return-object v2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USAP Pool status change: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz p1, :cond_2

    const-string v3, "ENABLED"

    goto :goto_0

    :cond_2
    const-string v3, "DISABLED"

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/internal/os/ZygoteServer;->mUsapPoolEnabled:Z

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    filled-new-array {v0}, [I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/os/ZygoteServer;->fillUsapPool([IZ)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0

    :cond_3
    invoke-static {}, Lcom/android/internal/os/Zygote;->emptyUsapPool()V

    return-object v2
.end method
