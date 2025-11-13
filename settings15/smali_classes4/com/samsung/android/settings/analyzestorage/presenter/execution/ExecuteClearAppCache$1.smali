.class Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/domain/usecase/userinteraction/UserInteractionDialog$Callback;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

.field final synthetic val$menuType:I

.field final synthetic val$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->val$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->val$executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iput p4, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->val$menuType:I

    iput-object p5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->val$context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onOk()V
    .locals 13

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->val$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mFileOperationArgs:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;->mSelectedApps:Ljava/util/List;

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache;->mSuccessList:Ljava/util/List;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iget-object v11, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->val$params:Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object v7, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->val$executable:Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;

    iget v8, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->val$menuType:I

    new-instance v12, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda0;

    move-object v1, v12

    move-object v2, p0

    move-object v5, v11

    move-object v6, v0

    move-object v9, v10

    invoke-direct/range {v1 .. v9}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;ILjava/util/concurrent/atomic/AtomicInteger;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Ljava/util/List;Lcom/samsung/android/settings/analyzestorage/presenter/execution/IExecutable;ILjava/util/concurrent/ScheduledExecutorService;)V

    iget-object v1, v11, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mProgressListener:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;

    iget-object v2, v11, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mFileOperationArgs:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;

    invoke-interface {v1, v2}, Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;->onPrepareProgress(Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1;->val$context:Landroid/content/Context;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3, v2, v12}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda1;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecuteClearAppCache$1$$ExternalSyntheticLambda0;)V

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v10, v4, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    const-wide/16 v3, 0x32

    add-long/2addr v1, v3

    long-to-int v1, v1

    goto :goto_1

    :cond_2
    return-void
.end method
