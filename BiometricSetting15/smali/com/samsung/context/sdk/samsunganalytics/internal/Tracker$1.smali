.class public final Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"

# interfaces
.implements Lcom/samsung/context/sdk/samsunganalytics/internal/Callback;


# instance fields
.field public final synthetic this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public isAgreement()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "samsung_errorlog_agree"

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    const/4 v0, 0x1

    .line 17
    if-ne p0, v0, :cond_0

    .line 18
    .line 19
    move v1, v0

    .line 20
    :cond_0
    return v1
.end method

.method public onResult(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker$1;->this$0:Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;

    .line 10
    .line 11
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->configuration:Lcom/samsung/context/sdk/samsunganalytics/Configuration;

    .line 19
    .line 20
    invoke-static {p1, v0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->getInstance(Landroid/content/Context;Lcom/samsung/context/sdk/samsunganalytics/Configuration;)Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/Tracker;->mContext:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    .line 30
    .line 31
    invoke-direct {v0, p0}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    const/4 p0, 0x1

    .line 35
    iput-boolean p0, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->useDatabase:Z

    .line 36
    .line 37
    iput-object v0, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    .line 38
    .line 39
    iget-object p0, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->queueManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->logQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->logQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;

    .line 66
    .line 67
    iget-object v2, p1, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/Manager;->dbManager:Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;

    .line 68
    .line 69
    invoke-virtual {v2, v1}, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/database/DbManager;->insert(Lcom/samsung/context/sdk/samsunganalytics/internal/sender/SimpleLog;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    iget-object p0, p0, Lcom/samsung/context/sdk/samsunganalytics/internal/sender/buffering/queue/QueueManager;->logQueue:Ljava/util/concurrent/LinkedBlockingQueue;

    .line 74
    .line 75
    invoke-virtual {p0}, Ljava/util/concurrent/LinkedBlockingQueue;->clear()V

    .line 76
    .line 77
    .line 78
    :cond_1
    return-void
.end method
