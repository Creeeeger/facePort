.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mCancelLoad:Z

.field public final mIsEmptyList:Landroidx/lifecycle/MutableLiveData;

.field public final mListItemInterface:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

.field public mLoadExecutionId:I

.field public final mLoader:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

.field public final mLoading:Landroidx/lifecycle/MutableLiveData;

.field public final mSessionId:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoading:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v1}, Landroidx/lifecycle/LiveData;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mIsEmptyList:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mCancelLoad:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoadExecutionId:I

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->sSessionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$DataLoaderHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoader:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->sSessionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    iput v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mSessionId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mListItemInterface:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public final clear()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mCancelLoad:Z

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoader:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mSessionId:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    monitor-enter v2

    :try_start_0
    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mSessionArgsMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoadExecutionId:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoader:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->finishExecution(I)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final finishLoadingState()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->turnOffLoading()V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoader:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoadExecutionId:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->finishExecution(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoadExecutionId:I

    return-void
.end method

.method public final loadListItem(Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoader:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->sExecutionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    iput v1, p2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->loadExecutionId:I

    iput v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoadExecutionId:I

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoader:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;

    if-nez p1, :cond_0

    const-string p0, "DataLoader"

    const-string p1, "execute() : fileInfoRepository is null"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v0, "DataLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "execute():"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->sessionId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;

    invoke-direct {v0, p1, p2, p3}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;-><init>(Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;)V

    :try_start_1
    const-class p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;

    monitor-enter p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    iget-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mSessionArgsMap:Landroid/util/SparseArray;

    iget p2, p2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->sessionId:I

    invoke-virtual {p3, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->getTask(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;)Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->startTask(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1

    :cond_1
    invoke-static {p2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->createTask(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;)Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnWorkThread(Ljava/lang/Runnable;)V

    :goto_1
    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final setEmptyList(Z)V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mIsEmptyList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final turnOffLoading()V
    .locals 2

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoading:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
