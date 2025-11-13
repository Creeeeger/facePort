.class public final Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final sExecutionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final sSessionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public final mSessionArgsMap:Landroid/util/SparseArray;

.field public final mTaskMap:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->sSessionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->sExecutionIdGenerator:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mTaskMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mSessionArgsMap:Landroid/util/SparseArray;

    return-void
.end method

.method public static createTask(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;)Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;
    .locals 4

    instance-of v0, p1, Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AnalyzeStorageLoaderTask;

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;

    const-string v2, "fileInfoRepository"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;)V

    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "AnalyzeStorageLoaderTask - page info: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AnalyzeStorageLoaderTask"

    invoke-static {v2, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AppDataLoaderTask;

    const-string v2, "appInfoRepository"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "There is no loader task for "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    if-eqz p0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    const-string/jumbo p0, "pageInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public final finishExecution(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/Reference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "finishExecution ] task : "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", task id : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->id:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", taskMap size : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mTaskMap:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DataLoader"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final getTask(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;)Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;
    .locals 6

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;->mLoaderParams:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;

    iget v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->loadExecutionId:I

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getTask ] sessionId : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->loadExecutionId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", loader : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string/jumbo v4, "pageInfo"

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mTaskMap size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DataLoader"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;->mRepository:Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;

    if-ltz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mTaskMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/Reference;

    if-nez v2, :cond_0

    move-object v2, v5

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

    :goto_0
    if-nez v2, :cond_1

    const-string v2, "getTask ] task : null"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->createTask(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;)Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->mTaskMap:Landroid/util/SparseArray;

    new-instance p1, Ljava/lang/ref/SoftReference;

    invoke-direct {p1, v2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "getTask ] task : "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->loadExecutionId:I

    iput p0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->id:I

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    if-eqz p0, :cond_2

    iput-object p0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-boolean p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->forceUpdate:Z

    iput-boolean p0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->needRefresh:Z

    goto :goto_1

    :cond_2
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5

    :cond_3
    invoke-static {v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;->createTask(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;)Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;

    move-result-object v2

    :goto_1
    return-object v2

    :cond_4
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v5
.end method

.method public final startTask(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;)V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;)V

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "data-loader-thread-"

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$SessionArgs;->mLoaderParams:Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;

    iget p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->sessionId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->sMainHandler:Landroid/os/Handler;

    :try_start_0
    new-instance p1, Ljava/lang/Thread;

    invoke-direct {p1, v0, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo p2, "runOnWorkThread() ] OutOfMemoryError : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ThreadExecutor"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$$ExternalSyntheticLambda2;->run()V

    :goto_0
    return-void
.end method
