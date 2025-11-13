.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/sec/android/diagmonagent/common/util/executor/AsyncTaskClient;


# instance fields
.field public configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

.field public dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

.field public log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;


# virtual methods
.method public final onFinish()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->log:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 4
    .line 5
    :try_start_0
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DMA/SendLogTask;->dmaInterface:Lcom/sec/android/diagmonagent/sa/IDMAInterface;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    iget-object v5, v1, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->trackingId:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->type:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;->getAbbrev()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v6

    .line 18
    iget-wide v3, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->timestamp:J

    .line 19
    .line 20
    iget-object v7, v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;->data:Ljava/lang/String;

    .line 21
    .line 22
    move-object v2, p0

    .line 23
    check-cast v2, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;

    .line 24
    .line 25
    invoke-virtual/range {v2 .. v7}, Lcom/sec/android/diagmonagent/sa/IDMAInterface$Stub$Proxy;->sendLog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    const-string v1, "failed to send log"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->logwingW(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
