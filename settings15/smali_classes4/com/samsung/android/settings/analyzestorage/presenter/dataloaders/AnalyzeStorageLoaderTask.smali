.class public final Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AnalyzeStorageLoaderTask;
.super Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public groupInfo:Landroid/os/Bundle;

.field public start:J


# virtual methods
.method public final loadInBackground(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;)V
    .locals 13

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string v2, "asType"

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const-string v2, "AnalyzeStorageLoaderTask"

    const-string v3, "[Performance Test] Analyze storage > Duplicate files start"

    invoke-static {v2, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AnalyzeStorageLoaderTask;->start:J

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string v3, "asType"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "calling_package"

    const-string v6, "com.android.settings"

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v5, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->needRefresh:Z

    const-string/jumbo v6, "needDbUpdate"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "loadListItem()] call type : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AnalyzeStorageLoaderTask"

    invoke-static {v6, v5}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    const/4 v7, 0x0

    if-eqz v5, :cond_9

    const-string v8, "content://myfiles/"

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    const-string v9, "GET_AS_SIZE"

    invoke-static {v5, v8, v9, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/ContentResolverWrapper;->call(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "size"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "loadListItem()] type : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", size : "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v4

    :cond_1
    iput-object v7, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AnalyzeStorageLoaderTask;->groupInfo:Landroid/os/Bundle;

    iput-object v7, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->groupInfo:Landroid/os/Bundle;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AnalyzeStorageLoaderTask;->groupInfo:Landroid/os/Bundle;

    if-eqz v3, :cond_7

    const-string/jumbo v4, "size"

    const-wide/16 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, v5

    if-eqz v3, :cond_7

    new-array v2, v0, [Lcom/samsung/android/settings/analyzestorage/data/model/AnalyzeStorageFileInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AbsDataLoaderTask;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string v4, "asType"

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sDefaultGenerator:Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;

    invoke-direct {v4, v3}, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;-><init>([Ljava/lang/Object;)V

    const-class v3, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;

    monitor-enter v3

    :try_start_0
    sget-object v5, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sGeneratorMap:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_4

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sGeneratorSupplierList:Ljava/util/List;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/function/Supplier;

    invoke-interface {v7}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;

    if-eqz v7, :cond_2

    invoke-interface {v7}, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;->supportDomainType()[I

    move-result-object v8

    array-length v9, v8

    move v10, v6

    :goto_0
    if-ge v10, v9, :cond_2

    aget v11, v8, v10

    sget-object v12, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sGeneratorMap:Landroid/util/SparseArray;

    invoke-virtual {v12, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/2addr v10, v0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sDefaultGeneratorSupplier:Ljava/util/function/Supplier;

    invoke-interface {v5}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;

    sput-object v5, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sDefaultGenerator:Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;

    :cond_4
    sget-object v5, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sGeneratorMap:Landroid/util/SparseArray;

    const/16 v7, 0x132

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;

    invoke-static {v5}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v5

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory;->sDefaultGenerator:Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;

    invoke-virtual {v5, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    if-eqz v5, :cond_6

    :try_start_1
    invoke-interface {v5, v4}, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;->checkArgs(Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;)V
    :try_end_1
    .catch Lcom/samsung/android/settings/analyzestorage/domain/exception/UnsupportedArgsException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-interface {v5, v4}, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$FileInfoGenerator;->create(Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;)Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object v4, v3

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;

    invoke-virtual {v4}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->getExt()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->setExt(Ljava/lang/String;)V

    aput-object v3, v2, v6

    invoke-static {v2}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Abnormal Arguments Pattern (306 , true , "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v4, Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfoFactory$Args;->mArgsPattern:I

    const-string v1, ")"

    invoke-static {p1, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Unsupported Arguments for 306"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "There is no FileInfo generator for 306"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :goto_1
    monitor-exit v3

    throw p0

    :cond_7
    :goto_2
    iput-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->appDataList:Ljava/util/List;

    if-ne v1, v0, :cond_8

    const-string p1, "AnalyzeStorageLoaderTask"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/AnalyzeStorageLoaderTask;->start:J

    sub-long/2addr v0, v2

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v2, "[Performance Test] Analyze storage > Duplicate files end , time = "

    invoke-direct {p0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void

    :cond_9
    const-string p0, "context"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v7
.end method
