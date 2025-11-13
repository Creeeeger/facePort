.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
.source "DMALogSender.java"


# instance fields
.field private dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

.field private dmaStatus:I

.field private isReset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 1

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    const/4 p2, 0x0

    .line 23
    iput-boolean p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->isReset:Z

    .line 24
    iput p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    .line 30
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 31
    new-instance p2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;

    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V

    invoke-direct {p2, p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    .line 39
    invoke-virtual {p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->bind()Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendAll()V

    return-void
.end method

.method private sendAll()V
    .locals 6

    .line 81
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 82
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->get()Ljava/util/Queue;

    move-result-object v0

    .line 85
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    .line 87
    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->getDmaInterface()Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-direct {v2, v3, v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;-><init>(Lcom/sec/android/diagmonagent/sa/IDMAInterface;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    .line 86
    invoke-interface {v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public send(Ljava/util/Map;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 45
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 46
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 47
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "tcType"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 48
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v2

    const-string v3, "tid"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->getLogType(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v2

    const-string v3, "logType"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ts"

    .line 50
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "timeStamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 51
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->makeBodyString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "body"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTaskV2;

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTaskV2;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    invoke-interface {p1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    return v1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenfail()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, -0x8

    return p0

    .line 57
    :cond_1
    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    if-eqz v0, :cond_2

    return v0

    .line 60
    :cond_2
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->insert(Ljava/util/Map;)V

    .line 61
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind()Z

    move-result p1

    if-nez p1, :cond_3

    .line 62
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->bind()Z

    goto :goto_0

    .line 63
    :cond_3
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->getDmaInterface()Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 64
    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendAll()V

    .line 65
    iget-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->isReset:Z

    if-eqz p1, :cond_4

    .line 66
    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendCommon()V

    .line 67
    iput-boolean v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->isReset:Z

    .line 72
    :cond_4
    :goto_0
    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    return p0
.end method

.method public sendCommon()V
    .locals 8

    .line 94
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->isEnableUseInAppLogging()Z

    move-result v0

    .line 95
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getTrackingId()Ljava/lang/String;

    move-result-object v1

    .line 97
    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;

    invoke-direct {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;-><init>()V

    .line 98
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 99
    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->deviceInfo:Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/device/DeviceInfo;->getAppVersionName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "av"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getVersion()Ljava/lang/String;

    move-result-object v4

    const-string v5, "uv"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;

    invoke-virtual {v2, v3, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    .line 104
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 105
    iget-object v7, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v7}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 106
    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    const-string v7, "auid"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getAuidType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v7, "at"

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    invoke-virtual {v2, v6, v4}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Delimiter$Depth;)Ljava/lang/String;

    move-result-object v5

    .line 111
    :cond_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_1

    .line 112
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v4, "tcType"

    invoke-virtual {v2, v4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "tid"

    .line 114
    invoke-virtual {v2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    .line 115
    invoke-virtual {v2, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "did"

    .line 116
    invoke-virtual {v2, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTaskV2;

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTaskV2;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    invoke-interface {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    goto :goto_0

    .line 120
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->getDmaInterface()Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    move-result-object v2

    invoke-interface {v2, v0, v1, v3, v5}, Lcom/sec/android/diagmonagent/sa/IDMAInterface;->sendCommon(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 122
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogException(Ljava/lang/Class;Ljava/lang/Exception;)V

    const/16 v0, -0x9

    .line 123
    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    :goto_0
    return-void
.end method

.method public sendSync(Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 77
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->send(Ljava/util/Map;)I

    move-result p0

    return p0
.end method
