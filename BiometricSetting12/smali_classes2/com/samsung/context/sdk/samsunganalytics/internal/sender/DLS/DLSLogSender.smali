.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
.source "DLSLogSender.java"


# static fields
.field public static final DB_SELECT_LIMIT:I = 0xc8


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->context:Landroid/content/Context;

    return-object v0
.end method

.method private checkAvailableLogging(I)I
    .locals 4

    const-string v0, "DLS Sender"

    const/4 v1, -0x4

    if-ne p1, v1, :cond_0

    const-string v2, "Network unavailable."

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->isPolicyExpired(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "policy expired. request policy"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x6

    return v0

    :cond_1
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getRestrictedNetworkType()I

    move-result v2

    if-ne v2, p1, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network unavailable by restrict option:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private flushBufferedLogs(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)I
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;",
            ")I"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v2}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->context:Landroid/content/Context;

    invoke-static {v3, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getRemainingQuota(Landroid/content/Context;I)I

    move-result v3

    const v4, 0xc800

    if-le v4, v3, :cond_0

    move v4, v3

    :cond_0
    move v9, v4

    const/4 v3, 0x0

    move v10, v3

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getType()Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v4

    if-eq v4, p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v4, v10

    if-le v4, v9, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    array-length v4, v4

    add-int/2addr v10, v4

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p3}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->remove(Ljava/util/List;)V

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    const/16 v5, 0xc8

    invoke-virtual {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->get(I)Ljava/util/Queue;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    goto :goto_1

    :cond_4
    :goto_2
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, -0x1

    return v3

    :cond_5
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->remove(Ljava/util/List;)V

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, v2

    move v7, v10

    move-object v8, p4

    invoke-direct/range {v3 .. v8}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->sendSum(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send packet : num("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") size("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DLSLogSender"

    invoke-static {v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    return v2
.end method

.method private getNetworkType()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->context:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    return v2

    :cond_1
    :goto_0
    const/4 v2, -0x4

    return v2
.end method

.method private sendOne(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;Z)I
    .locals 5

    if-nez p2, :cond_0

    const/16 v0, -0x64

    return v0

    :cond_0
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->context:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->hasQuota(Landroid/content/Context;II)I

    move-result v1

    if-eqz v1, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->context:Landroid/content/Context;

    invoke-static {v2, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->useQuota(Landroid/content/Context;II)V

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getNetworkTimeoutInMilliSeconds()I

    move-result v4

    invoke-direct {v2, p2, v3, v4, p3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    if-eqz p4, :cond_2

    const-string v3, "sync send"

    invoke-static {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->run()V

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;->onFinish()I

    move-result v3

    return v3

    :cond_2
    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    invoke-interface {v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    const/4 v3, 0x0

    return v3
.end method

.method private sendSum(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;I",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->context:Landroid/content/Context;

    invoke-static {v0, p1, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->useQuota(Landroid/content/Context;II)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    new-instance v7, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v4

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getNetworkTimeoutInMilliSeconds()I

    move-result v5

    move-object v1, v7

    move-object v2, p2

    move-object v3, p3

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSAPIClient;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Ljava/lang/String;ILcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    invoke-interface {v0, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    return-void
.end method


# virtual methods
.method public send(Ljava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->checkAvailableLogging(I)I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->insert(Ljava/util/Map;)V

    const/4 v2, -0x6

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-static {v2, v3, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getPolicy(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;)V

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->delete()V

    :cond_0
    return v1

    :cond_1
    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;

    invoke-direct {v2, p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;I)V

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    const-string v4, "ts"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->makeBodyString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->getLogType(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->sendOne(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;Z)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_2

    return v1

    :cond_2
    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    const/16 v6, 0xc8

    invoke-virtual {v5, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->get(I)Ljava/util/Queue;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->isEnabledDatabaseBuffering()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->UIX:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-direct {p0, v0, v3, v5, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->flushBufferedLogs(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)I

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->DEVICE:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-direct {p0, v0, v3, v5, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->flushBufferedLogs(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;Ljava/util/Queue;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)I

    goto :goto_1

    :cond_3
    :goto_0
    invoke-interface {v5}, Ljava/util/Queue;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-interface {v5}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-direct {p0, v0, v6, v2, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->sendOne(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;Z)I

    move-result v1

    if-ne v1, v3, :cond_4

    return v1

    :cond_4
    goto :goto_0

    :cond_5
    :goto_1
    return v1
.end method

.method public sendSync(Ljava/util/Map;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->getNetworkType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->checkAvailableLogging(I)I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/4 v3, -0x6

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->context:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-static {v3, v4, v5, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->makeGetPolicyClient(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;->run()V

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/GetPolicyClient;->onFinish()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get policy sync "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    if-eqz v1, :cond_0

    return v1

    :cond_0
    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    const-string v4, "ts"

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->makeBodyString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->getLogType(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    const/4 v4, 0x1

    invoke-direct {p0, v0, v3, v2, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLS/DLSLogSender;->sendOne(ILcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;Z)I

    move-result v2

    return v2
.end method
