.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;
.super Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;
.source "DLCLogSender.java"


# instance fields
.field private binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)V

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender$1;

    invoke-direct {v1, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender$1;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;)V

    invoke-direct {v0, p1, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;-><init>(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->sendRegisterRequestToDLC()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->sendAll()V

    return-void
.end method

.method private sendAll()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->manager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->get()Ljava/util/Queue;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->executor:Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;

    iget-object v4, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    iget-object v5, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-direct {v3, v4, v5, v6, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/SendLogTask;-><init>(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;Lcom/samsung/context/sdk/samsunganalytics/Configuration;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskCallback;)V

    invoke-interface {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/internal/executor/Executor;->execute(Lcom/samsung/context/sdk/samsunganalytics/internal/executor/AsyncTaskClient;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public send(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->insert(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->isBindToDLC()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->getDlcService()Lcom/sec/spp/push/dlc/api/IDlcService;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->sendAll()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->binder:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCBinder;->sendRegisterRequestToDLC()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public sendSync(Ljava/util/Map;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    const-string v0, "DLCLogSender"

    const-string v1, "not support sync api"

    invoke-static {v0, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/DLC/DLCLogSender;->send(Ljava/util/Map;)I

    const/16 v0, -0x64

    return v0
.end method

.method protected setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/BaseLogSender;->setCommonParamToLog(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "do"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "dm"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "v"

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
