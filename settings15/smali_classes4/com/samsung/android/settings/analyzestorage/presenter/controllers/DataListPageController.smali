.class public abstract Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;
.implements Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;


# instance fields
.field public mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

.field public mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;


# virtual methods
.method public final loadListItem(Z)V
    .locals 4

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->setLoadingData(Z)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;

    invoke-direct {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;-><init>()V

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    iget v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mSessionId:I

    iput v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->sessionId:I

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string v2, "<set-?>"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iput-boolean p1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->forceUpdate:Z

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/RepositoryFactory;->getGenerator()Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;->sContext:Landroid/content/Context;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;->sContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/AnalyzeStorageFileInfoRepositoryImpl;->getInstance(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/external/database/datasource/MediaProviderDataSource;)Lcom/samsung/android/settings/analyzestorage/data/database/repository/AnalyzeStorageFileInfoRepository;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    invoke-virtual {v0, p1, v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->loadListItem(Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;)V

    return-void
.end method

.method public onCleared()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sCallbackListener:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemCount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->onCleared()V

    return-void
.end method

.method public final onLoadFinished(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;)V
    .locals 10

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    iget-boolean v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mCancelLoad:Z

    if-eqz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-boolean v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->success:Z

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;->mExceptionListener:Lcom/samsung/android/settings/analyzestorage/presenter/exception/ExceptionListener;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->turnOffLoading()V

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "handleExceptionOnLoadFinished() ] to display an error message. mErrorType : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->errorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;->mExceptionListener:Lcom/samsung/android/settings/analyzestorage/presenter/exception/ExceptionListener;

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->errorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/ui/exception/ExceptionHandler;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "errorType"

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->groupInfo:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->getAppDataList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    const-string v6, "childCount"

    invoke-virtual {v2, v6, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    move v6, v4

    goto :goto_0

    :cond_2
    move v2, v5

    move v6, v2

    :goto_0
    iget-object v7, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "onLoadFinished() ] mSuccess : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v9, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->success:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " , existGroup : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " , total items count : "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    :goto_1
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , this : "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mCancelLoad:Z

    if-eqz p0, :cond_4

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->finishLoadingState()V

    goto/16 :goto_2

    :cond_4
    iget p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->loadExecutionId:I

    iget v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoadExecutionId:I

    if-ne p0, v2, :cond_8

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->groupInfo:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    if-nez p0, :cond_5

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string p1, "loadExpandableListGroupAllFiles - empty data"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->setEmptyList(Z)V

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->finishLoadingState()V

    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mGroupInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1, p0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setListItems(Ljava/util/List;)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->getAppDataList()Ljava/util/List;

    move-result-object p0

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->groupInfo:Landroid/os/Bundle;

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mGroupInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    move-object p0, v0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-virtual {p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setListItems(Ljava/util/List;)V

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->finishLoadingState()V

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mGroupInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    if-eqz p1, :cond_7

    invoke-virtual {p0, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->setLoadingData(Z)V

    const-string/jumbo v2, "size"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mListItemTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    :cond_7
    invoke-virtual {v1, v5}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->setEmptyList(Z)V

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string/jumbo p1, "selected_path"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadGroupListFiles ] result.mLoadExecutionId : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->loadExecutionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " mListLoading.getLoadExecutionId() : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoadExecutionId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    return-void
.end method

.method public final onResult(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mIsCleared:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResult() ] : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mMenuType:I

    invoke-static {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/MenuType;->getMenuName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mIsSuccess:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mNeedRefresh:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , false , 0 , this : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->menu:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->result(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;->mExceptionListener:Lcom/samsung/android/settings/analyzestorage/presenter/exception/ExceptionListener;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/exception/ExceptionHandler;

    invoke-virtual {v0, p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->showOpResult(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;Lcom/samsung/android/settings/analyzestorage/ui/exception/ExceptionHandler;)V

    :cond_1
    return-void
.end method
