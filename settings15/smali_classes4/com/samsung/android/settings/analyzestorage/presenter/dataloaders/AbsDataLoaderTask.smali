.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public id:I

.field public needRefresh:Z

.field public pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public final repository:Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;)V
    .locals 1

    const-string v0, "dataInfoRepository"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->loadExecutionId:I

    iput v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->id:I

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-boolean p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->forceUpdate:Z

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->needRefresh:Z

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->repository:Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;

    return-void

    :cond_0
    const-string/jumbo p0, "pageInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method


# virtual methods
.method public final doInBackground()Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;
    .locals 4

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;

    invoke-direct {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->success:Z

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->id:I

    iput v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->loadExecutionId:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->groupInfo:Landroid/os/Bundle;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->loadInBackground(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;)V
    :try_end_0
    .catch Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->success:Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->getExceptionType()Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    move-result-object v1

    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->errorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->extras:Landroid/os/Bundle;

    const-string v2, "message"

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->getDetailMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->getInt(I)I

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->extras:Landroid/os/Bundle;

    const-string v3, "messageRes"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->extras:Landroid/os/Bundle;

    const-string v2, "details"

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->getDetailMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->errorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "doInBackground() - LOAD_FILES : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "AbsDataLoaderTask"

    invoke-static {v1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public abstract loadInBackground(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;)V
.end method
