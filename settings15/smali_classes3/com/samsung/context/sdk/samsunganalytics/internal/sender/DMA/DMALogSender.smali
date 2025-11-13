.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

.field public dmaStatus:I

.field public isReset:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->isReset:Z

    iput p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;)V

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean p2, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    iput-boolean p2, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind:Z

    iput-object p1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->context:Landroid/content/Context;

    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;

    invoke-direct {p1, v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender$1;)V

    iput-object p1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->serviceConnection:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder$1;

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->bind()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final send(Ljava/util/Map;)I
    .locals 6

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_7

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    move-result v1

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v4, "sendCommonSuccess"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendCommon()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    invoke-static {v1, v0, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->addAppCommonData(Landroid/content/Context;Landroid/content/ContentValues;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    :cond_1
    :goto_0
    check-cast p1, Ljava/util/HashMap;

    const-string v1, "pd"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    const-string v1, "ps"

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const-string v1, "is"

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string/jumbo v4, "tcType"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, v3, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->userAgreement:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->isAgreement()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "agree"

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget-object v2, v3, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    const-string/jumbo v3, "tid"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->getLogType(Ljava/util/Map;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v2

    const-string v3, "logType"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "ts"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    const-string/jumbo v3, "timeStamp"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;

    sget-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {p1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "body"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->isSendingAppCommonSupported(Landroid/content/Context;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_6

    const/4 p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "networkType"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "isSummary"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_6
    new-instance p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTaskV2;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-direct {p1, v1, v2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTaskV2;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->executor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iget-boolean v1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isTokenFail:Z

    if-eqz v1, :cond_8

    const/4 p0, -0x8

    return p0

    :cond_8
    iget v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    if-eqz v1, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->insert(Ljava/util/Map;)V

    iget-boolean p1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->isBind:Z

    if-nez p1, :cond_a

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->bind()V

    goto :goto_1

    :cond_a
    iget-object p1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendAll()V

    iget-boolean p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->isReset:Z

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->sendCommon()V

    iput-boolean v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->isReset:Z

    :cond_b
    :goto_1
    iget p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    return p0
.end method

.method public final sendAll()V
    .locals 4

    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->get(I)Ljava/util/Queue;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iget-object v2, v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v3, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    iput-object v2, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iput-object v2, v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->executor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final sendCommon()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/sec/android/diagmonagent/common/util/CommonUtils;->getPackageVersion(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "av"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->version:Ljava/lang/String;

    const-string/jumbo v4, "uv"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v3, "v"

    const-string v4, "6.05.068"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;->ONE_DEPTH:Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;

    invoke-static {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const/4 v5, 0x0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "auid"

    invoke-virtual {v4, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, v0, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->auidType:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "at"

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->makeDelimiterString(Ljava/util/Map;Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils$Depth;)Ljava/lang/String;

    move-result-object v5

    :cond_0
    sget v0, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->senderType:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string/jumbo v4, "tcType"

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v3, "tid"

    invoke-virtual {v0, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "data"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "did"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTaskV2;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->context:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTaskV2;-><init>(Landroid/content/Context;ILandroid/content/ContentValues;)V

    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->executor:Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/sec/android/diagmonagent/common/util/executor/SingleThreadExecutor;->execute(Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;)V

    goto :goto_0

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaBinder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;

    iget-object v0, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMABinder;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    check-cast v0, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;

    invoke-virtual {v0, v1, v2, v5}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;->sendCommon(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to send app common"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    const/16 v0, -0x9

    iput v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/DMALogSender;->dmaStatus:I

    :goto_0
    return-void
.end method

.method public final setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;
    .locals 2

    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "tz"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method
