.class public final synthetic Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;II)V
    .locals 0

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;->f$1:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;->f$1:I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isLocalStorage(I)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_8

    const-string v1, "getUsageDetailDataByCategory() - domainType : "

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/RepositoryFactory;->getGenerator()Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;->sContext:Landroid/content/Context;

    new-instance v6, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;

    sget-object v7, Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;->sContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;-><init>(Landroid/content/Context;)V

    invoke-static {v5, v6}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->getInstance(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;

    check-cast v4, Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;

    if-nez v4, :cond_0

    goto/16 :goto_3

    :cond_0
    new-instance v5, Lcom/samsung/android/settings/analyzestorage/data/database/repository/abstraction/AbsFileRepository$QueryParams;

    invoke-direct {v5}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/abstraction/AbsFileRepository$QueryParams;-><init>()V

    iget-object v6, v5, Lcom/samsung/android/settings/analyzestorage/data/database/repository/abstraction/AbsFileRepository$QueryParams;->mExtras:Landroid/os/Bundle;

    const-string/jumbo v7, "strCommand"

    const-string v8, "detailedSize"

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "domainType"

    invoke-virtual {v6, v7, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;->query(Lcom/samsung/android/settings/analyzestorage/data/database/repository/abstraction/AbsFileRepository$QueryParams;)Landroid/database/Cursor;

    move-result-object v4

    :try_start_0
    iget-object v5, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_1
    sget-object v1, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->Companion:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType$Companion;

    move-object v5, v4

    check-cast v5, Landroid/database/MatrixCursor;

    invoke-virtual {v5, v3}, Landroid/database/MatrixCursor;->getInt(I)I

    move-result v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->values()[Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    move-result-object v1

    array-length v7, v1

    move v8, v3

    :goto_0
    if-ge v8, v7, :cond_3

    aget-object v9, v1, v8

    invoke-virtual {v9}, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->getType()I

    move-result v10

    if-ne v6, v10, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-nez v9, :cond_4

    sget-object v9, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->INVALID_ITEM:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    :cond_4
    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "usage detail data : ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->getLong(I)J

    move-result-wide v10

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;

    invoke-virtual {v5, v7}, Landroid/database/MatrixCursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v9, v5}, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;Ljava/lang/Long;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_5
    :goto_2
    if-eqz v4, :cond_6

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    :cond_6
    :goto_3
    new-instance v1, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;

    sget-object v4, Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;->TOTAL:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSize(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-direct {v1, v4, v5}, Lcom/samsung/android/settings/analyzestorage/data/model/OverViewItemInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;Ljava/lang/Long;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v1, v2

    goto :goto_9

    :goto_4
    if-eqz v4, :cond_7

    :try_start_1
    invoke-interface {v4}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_7
    :goto_5
    throw p0

    :cond_8
    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/data/constant/DomainType;->isCloud(I)Z

    move-result v2

    if-eqz v2, :cond_c

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;->Companion:Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType$Companion;->fromDomainType(I)Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v2, :cond_a

    const-class v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    monitor-enter v2

    :try_start_2
    sget-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    if-nez v4, :cond_9

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    new-instance v5, Ljava/util/EnumMap;

    const-class v6, Lcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;

    invoke-direct {v5, v6}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v5, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    sput-object v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    :catchall_2
    move-exception p0

    goto :goto_7

    :cond_9
    :goto_6
    monitor-exit v2

    goto :goto_8

    :goto_7
    monitor-exit v2

    throw p0

    :cond_a
    :goto_8
    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->sInstance:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager;->accountInfoMap:Ljava/util/Map;

    check-cast v2, Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;

    if-eqz v2, :cond_b

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SettingsCloudAccountManager$AccountInfo;->quotaInfo:Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;

    iget-object v4, v2, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->additionalUsageInfo:[J

    iget-wide v5, v2, Lcom/samsung/android/settings/analyzestorage/presenter/account/QuotaInfo;->totalSize:J

    invoke-virtual {v0, v4, v1, v5, v6}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->formatCloudDetailData([JLcom/samsung/android/settings/analyzestorage/presenter/constant/CloudConstants$CloudType;J)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_9

    :cond_b
    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getCloudUsageDetailData() ] - accountInfo is null "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :cond_c
    :goto_9
    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v2

    iput v3, v2, Landroid/os/Message;->what:I

    iput p0, v2, Landroid/os/Message;->arg1:I

    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;->f$0:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController$$ExternalSyntheticLambda16;->f$1:I

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_d

    goto :goto_a

    :cond_d
    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoadingData:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoading:Ljava/util/Map;

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V

    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
