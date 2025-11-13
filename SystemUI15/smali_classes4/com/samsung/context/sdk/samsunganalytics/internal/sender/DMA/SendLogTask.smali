.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# instance fields
.field public final configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public final dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

.field public final log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;


# direct methods
.method public constructor <init>(Lcom/sec/android/diagmonagent/sa/IDMAInterface;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    iput-object p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    return-void
.end method


# virtual methods
.method public final onFinish()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    iget-object v1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->type:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    move-result-object v5

    iget-wide v6, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->timestamp:J

    iget-object v8, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->data:Ljava/lang/String;

    move-object v2, p0

    check-cast v2, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v8}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;->sendLog(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to send log"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
