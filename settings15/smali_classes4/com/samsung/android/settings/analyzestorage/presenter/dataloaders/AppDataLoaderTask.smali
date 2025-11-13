.class public final Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AppDataLoaderTask;
.super Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final loadInBackground(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;)V
    .locals 3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->repository:Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;

    invoke-interface {p0}, Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;->getAppInfoList()Ljava/util/List;

    move-result-object p0

    const-string v0, "getAppInfoList(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->data:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    if-lez p0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "childCount"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->groupInfo:Landroid/os/Bundle;

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->data:Ljava/util/List;

    if-eqz p0, :cond_1

    iput-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->appDataList:Ljava/util/List;

    return-void

    :cond_1
    const-string p0, "data"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0
.end method
