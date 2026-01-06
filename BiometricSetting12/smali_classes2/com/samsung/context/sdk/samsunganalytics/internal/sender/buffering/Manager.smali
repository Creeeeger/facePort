.class public Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;
.super Ljava/lang/Object;
.source "Manager.java"


# static fields
.field private static instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;


# instance fields
.field private dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

.field private queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

.field private useDatabase:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;ZI)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;ZI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    :cond_0
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-direct {v0, p3}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    iput-boolean p2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    return-void
.end method

.method private constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-direct {v0, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;
    .locals 6

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    if-nez v0, :cond_3

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getQueueSize()I

    move-result v1

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/internal/policy/PolicyUtils;->getSenderType()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-static {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Preferences;->getPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "lgt"

    const-string v5, ""

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "rtb"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/samsung/context/sdk/samsunganalytics/Configuration;->getDbOpenHelper()Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-direct {v4, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;I)V

    sput-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    goto :goto_0

    :cond_0
    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    const/4 v5, 0x1

    invoke-direct {v4, p0, v5, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;ZI)V

    sput-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    :goto_0
    goto :goto_1

    :cond_1
    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-direct {v4, p0, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;ZI)V

    sput-object v4, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    :goto_1
    goto :goto_2

    :cond_2
    new-instance v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    invoke-direct {v2, p0, v3, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;ZI)V

    sput-object v2, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_3
    :goto_3
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/Boolean;I)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;
    .locals 3

    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    if-nez v0, :cond_1

    const-class v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;ZI)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;-><init>(Landroid/content/Context;ZI)V

    sput-object v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_1
    sget-object v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->instance:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    return-object v0
.end method

.method private mergeQueueToDb()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->getAll()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->getAll()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    iget-object v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->getAll()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public delete()V
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Utils;->getDaysAgo(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->delete(J)V

    :cond_0
    return-void
.end method

.method public disableDatabaseBuffering()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    return-void
.end method

.method public enableDatabaseBuffering(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->enableDatabaseBuffering(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;)V

    return-void
.end method

.method public enableDatabaseBuffering(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V
    .locals 1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Lcom/samsung/context/sdk/samsunganalytics/DBOpenHelper;)V

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->enableDatabaseBuffering(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;)V

    return-void
.end method

.method public enableDatabaseBuffering(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-direct {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->mergeQueueToDb()V

    return-void
.end method

.method public get()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->get(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/util/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->delete()V

    if-gtz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->selectAll()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->selectSome(I)Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->getAll()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get log from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v2, :cond_2

    const-string v2, "Database "

    goto :goto_1

    :cond_2
    const-string v2, "Queue "

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/util/Debug;->LogENG(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public getDataSize()J
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->getDataSize()J

    move-result-wide v0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->getDataSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V
    .locals 1

    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;-><init>(JLjava/lang/String;Lcom/samsung/context/sdk/samsunganalytics/internal/sender/LogType;)V

    invoke-virtual {p0, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    return-void
.end method

.method public insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->isEmpty()Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    invoke-virtual {v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public isEnabledDatabaseBuffering()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    return v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->delete(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public remove(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    invoke-virtual {v0, p1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->delete(Ljava/util/List;)V

    :cond_1
    return-void
.end method
