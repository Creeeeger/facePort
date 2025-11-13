.class public Landroid/app/servertransaction/TransactionExecutor;
.super Ljava/lang/Object;
.source "TransactionExecutor.java"


# static fields
.field private static final greylist-max-o DEBUG_RESOLVER:Z = false

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TransactionExecutor"


# instance fields
.field private final greylist-max-o mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

.field private final greylist-max-o mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

.field private final greylist-max-o mTransactionHandler:Landroid/app/ClientTransactionHandler;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/app/ClientTransactionHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/servertransaction/PendingTransactionActions;

    invoke-direct {v0}, Landroid/app/servertransaction/PendingTransactionActions;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    new-instance v0, Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-direct {v0}, Landroid/app/servertransaction/TransactionExecutorHelper;-><init>()V

    iput-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    iput-object p1, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    return-void
.end method

.method private blacklist cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V
    .locals 2

    invoke-virtual {p1}, Landroid/app/ActivityThread$ActivityClientRecord;->getLifecycleState()I

    move-result v0

    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-virtual {v1, v0, p2, p3}, Landroid/app/servertransaction/TransactionExecutorHelper;->getLifecyclePath(IIZ)Landroid/util/IntArray;

    move-result-object v1

    invoke-direct {p0, p1, v1, p4}, Landroid/app/servertransaction/TransactionExecutor;->performLifecycleSequence(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/util/IntArray;Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method private blacklist executeLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .locals 4

    invoke-virtual {p2}, Landroid/app/servertransaction/ActivityLifecycleItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v1, v0}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v2}, Landroid/app/ClientTransactionHandler;->getActivitiesToBeDestroyed()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p2, :cond_0

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v2, v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v2

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3, p1}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v2, v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v2, v3}, Landroid/app/servertransaction/ActivityLifecycleItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    return-void
.end method

.method private greylist-max-o executeLifecycleState(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Landroid/app/servertransaction/TransactionExecutor;->executeLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    return-void
.end method

.method private blacklist executeNonLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ClientTransactionItem;Z)V
    .locals 6

    invoke-virtual {p2}, Landroid/app/servertransaction/ClientTransactionItem;->getActivityToken()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v1, v0}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v2}, Landroid/app/ClientTransactionHandler;->getActivitiesToBeDestroyed()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip pre-destroyed transaction item:\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TransactionExecutor"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v2

    invoke-virtual {p2}, Landroid/app/servertransaction/ClientTransactionItem;->shouldHaveDefinedPreExecutionState()Z

    move-result v3

    const/4 v4, -0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mHelper:Landroid/app/servertransaction/TransactionExecutorHelper;

    invoke-virtual {v3, v1, v2}, Landroid/app/servertransaction/TransactionExecutorHelper;->getClosestPreExecutionState(Landroid/app/ActivityThread$ActivityClientRecord;I)I

    move-result v3

    if-eq v3, v4, :cond_1

    invoke-virtual {p0, v1, v3, p1}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/ClientTransaction;)V

    :cond_1
    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v3, v5}, Landroid/app/servertransaction/ClientTransactionItem;->execute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {p2, v3, v5}, Landroid/app/servertransaction/ClientTransactionItem;->postExecute(Landroid/app/ClientTransactionHandler;Landroid/app/servertransaction/PendingTransactionActions;)V

    if-nez v1, :cond_2

    iget-object v3, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v3, v0}, Landroid/app/ClientTransactionHandler;->getActivityClient(Landroid/os/IBinder;)Landroid/app/ActivityThread$ActivityClientRecord;

    move-result-object v1

    :cond_2
    if-eq v2, v4, :cond_3

    if-eqz v1, :cond_3

    invoke-direct {p0, v1, v2, p3, p1}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V

    :cond_3
    return-void
.end method

.method private blacklist performLifecycleSequence(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/util/IntArray;Landroid/app/servertransaction/ClientTransaction;)V
    .locals 13

    move-object v0, p0

    move-object v8, p1

    move-object v9, p2

    invoke-virtual {p2}, Landroid/util/IntArray;->size()I

    move-result v10

    const/4 v1, 0x0

    move v11, v1

    :goto_0
    if-ge v11, v10, :cond_0

    invoke-virtual {p2, v11}, Landroid/util/IntArray;->get(I)I

    move-result v12

    const/4 v1, 0x0

    const/4 v2, 0x0

    packed-switch v12, :pswitch_data_0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected lifecycle state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-virtual {v1, p1, v2}, Landroid/app/ClientTransactionHandler;->performRestartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Z)V

    goto :goto_1

    :pswitch_1
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "performLifecycleSequence. cycling to:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v10, -0x1

    invoke-virtual {p2, v4}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v2, v3}, Landroid/app/ClientTransactionHandler;->handleDestroyActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZLjava/lang/String;)V

    goto :goto_1

    :pswitch_2
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const-string v4, "LIFECYCLER_STOP_ACTIVITY"

    invoke-virtual {v1, p1, v3, v2, v4}, Landroid/app/ClientTransactionHandler;->handleStopActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ZLjava/lang/String;)V

    goto :goto_1

    :pswitch_3
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v6, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const-string v7, "LIFECYCLER_PAUSE_ACTIVITY"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Landroid/app/ClientTransactionHandler;->handlePauseActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLandroid/app/servertransaction/PendingTransactionActions;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_4
    iget-object v1, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-boolean v4, v8, Landroid/app/ActivityThread$ActivityClientRecord;->isForward:Z

    const/4 v5, 0x0

    const-string v6, "LIFECYCLER_RESUME_ACTIVITY"

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/app/ClientTransactionHandler;->handleResumeActivity(Landroid/app/ActivityThread$ActivityClientRecord;ZZZLjava/lang/String;)V

    goto :goto_1

    :pswitch_5
    iget-object v2, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v2, p1, v3, v1}, Landroid/app/ClientTransactionHandler;->handleStartActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;Landroid/app/ActivityOptions$SceneTransitionInfo;)V

    goto :goto_1

    :pswitch_6
    iget-object v2, v0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    iget-object v3, v0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    const/4 v4, -0x1

    invoke-virtual {v2, p1, v3, v4, v1}, Landroid/app/ClientTransactionHandler;->handleLaunchActivity(Landroid/app/ActivityThread$ActivityClientRecord;Landroid/app/servertransaction/PendingTransactionActions;ILandroid/content/Intent;)Landroid/app/Activity;

    nop

    :goto_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;ILandroid/app/servertransaction/ClientTransaction;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Landroid/app/servertransaction/TransactionExecutor;->cycleToPath(Landroid/app/ActivityThread$ActivityClientRecord;IZLandroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method public greylist-max-o execute(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 6

    const-string v0, "clientTransactionExecuted"

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getTransactionItems()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/servertransaction/TransactionExecutor;->executeTransactionItems(Landroid/app/servertransaction/ClientTransaction;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/app/servertransaction/TransactionExecutor;->executeCallbacks(Landroid/app/servertransaction/ClientTransaction;)V

    invoke-direct {p0, p1}, Landroid/app/servertransaction/TransactionExecutor;->executeLifecycleState(Landroid/app/servertransaction/ClientTransaction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    iget-object v0, p0, Landroid/app/servertransaction/TransactionExecutor;->mPendingActions:Landroid/app/servertransaction/PendingTransactionActions;

    invoke-virtual {v0}, Landroid/app/servertransaction/PendingTransactionActions;->clear()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "TransactionExecutor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to execute the transaction: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/app/servertransaction/TransactionExecutor;->mTransactionHandler:Landroid/app/ClientTransactionHandler;

    invoke-static {p1, v5}, Landroid/app/servertransaction/TransactionExecutorHelper;->transactionToString(Landroid/app/servertransaction/ClientTransaction;Landroid/app/ClientTransactionHandler;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public greylist-max-o executeCallbacks(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getCallbacks()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getLifecycleStateRequest()Landroid/app/servertransaction/ActivityLifecycleItem;

    move-result-object v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/servertransaction/ActivityLifecycleItem;->getTargetState()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    nop

    invoke-static {p1}, Landroid/app/servertransaction/TransactionExecutorHelper;->lastCallbackRequestingState(Landroid/app/servertransaction/ClientTransaction;)I

    move-result v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_3

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v7}, Landroid/app/servertransaction/ClientTransactionItem;->getPostExecutionState()I

    move-result v8

    if-eq v8, v2, :cond_2

    if-ne v6, v4, :cond_2

    if-ne v3, v8, :cond_2

    const/4 v9, 0x1

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    :goto_2
    invoke-direct {p0, p1, v7, v9}, Landroid/app/servertransaction/TransactionExecutor;->executeNonLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ClientTransactionItem;Z)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    return-void

    :cond_4
    :goto_3
    return-void
.end method

.method public blacklist executeTransactionItems(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 5

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getTransactionItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/servertransaction/ClientTransactionItem;

    invoke-virtual {v3}, Landroid/app/servertransaction/ClientTransactionItem;->isActivityLifecycleItem()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Landroid/app/servertransaction/ActivityLifecycleItem;

    invoke-direct {p0, p1, v4}, Landroid/app/servertransaction/TransactionExecutor;->executeLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ActivityLifecycleItem;)V

    goto :goto_1

    :cond_0
    nop

    invoke-static {v0, v2}, Landroid/app/servertransaction/TransactionExecutorHelper;->shouldExcludeLastLifecycleState(Ljava/util/List;I)Z

    move-result v4

    invoke-direct {p0, p1, v3, v4}, Landroid/app/servertransaction/TransactionExecutor;->executeNonLifecycleItem(Landroid/app/servertransaction/ClientTransaction;Landroid/app/servertransaction/ClientTransactionItem;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
