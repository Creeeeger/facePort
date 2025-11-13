.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;
.implements Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;


# instance fields
.field public final mAppListLoading:Landroidx/lifecycle/MutableLiveData;

.field public final mAppListTotalSizeData:Landroidx/lifecycle/MutableLiveData;

.field public mFreedUpSize:J

.field public final mListItems:Landroidx/lifecycle/MutableLiveData;

.field public final mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

.field public final mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

.field public mNeedLoading:Z

.field public final mPackageBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$1;

.field public final mRefreshHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$2;

.field public mSaAppsType:I

.field public final selectedAppPackageNameList:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/app/Application;IILcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mNeedLoading:Z

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mAppListLoading:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mAppListTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListItems:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->selectedAppPackageNameList:Ljava/util/Set;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mPackageBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$1;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$2;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mRefreshHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$2;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    iget-object p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-direct {p2, p3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    if-eqz p4, :cond_0

    invoke-virtual {p0, p4}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->setPageInfo(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    :goto_0
    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string/jumbo p4, "package"

    invoke-virtual {p3, p4}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string p1, "AppListController"

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final applySort(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "applySort() ] sortType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isAscending : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string/jumbo p1, "updateSort() ] originalListItems is null or empty"

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {p1, p2}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/comparator/ComparatorFactory;->getAppSortComparator(IZ)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setListItems(Ljava/util/List;)V

    return-void
.end method

.method public final createListItemHandler()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string v0, "createListItemHandler() ] ManageStorageListItemHandler "

    invoke-static {p0, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ManageStorageListItemHandler;

    invoke-direct {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;-><init>()V

    return-object p0
.end method

.method public final loadListItem(Z)V
    .locals 3

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadListItem, mSaAppsType : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/domain/thread/ThreadExecutor;->runOnWorkThread(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->setLoadingData(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string/jumbo v1, "pageInfo"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;

    invoke-direct {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;-><init>()V

    iput-object v0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-static {}, Lcom/samsung/android/settings/analyzestorage/data/database/repository/RepositoryFactory;->getGenerator()Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/external/database/repository/RepositoryFactoryImpl;->getAppRepository(Ljava/lang/Object;)Lcom/samsung/android/settings/analyzestorage/domain/repository/IAppInfoRepository;

    move-result-object v0

    invoke-virtual {p1, v0, v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->loadListItem(Lcom/samsung/android/settings/analyzestorage/domain/repository/IDataInfoRepository;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoaderParams;Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/DataLoader$IDataLoaderCallback;)V

    :cond_1
    return-void
.end method

.method public final onCleared()V
    .locals 3

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->context:Landroid/content/Context;

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore$Companion;->getInstance(I)Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/ActivityInfoStore;->getFragmentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sCallbackListener:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->clear()V

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemCount:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->removeObservers(Landroidx/lifecycle/LifecycleOwner;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mRefreshHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mPackageBroadcastReceiver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$1;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->onCleared()V

    return-void
.end method

.method public final onLoadFinished(Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;)V
    .locals 11

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    iget-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mCancelLoad:Z

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-boolean v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->success:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;->mExceptionListener:Lcom/samsung/android/settings/analyzestorage/presenter/exception/ExceptionListener;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->turnOffLoading()V

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleExceptionOnLoadFinished() ] to display an error message. mErrorType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->errorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;->mExceptionListener:Lcom/samsung/android/settings/analyzestorage/presenter/exception/ExceptionListener;

    iget-object v2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->errorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    check-cast v1, Lcom/samsung/android/settings/analyzestorage/ui/exception/ExceptionHandler;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "errorType"

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->groupInfo:Landroid/os/Bundle;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->getAppDataList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    const-string v5, "childCount"

    invoke-virtual {v1, v5, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    move v5, v3

    goto :goto_0

    :cond_2
    move v1, v4

    move v5, v1

    :goto_0
    iget-object v6, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "onLoadFinished() ] mSuccess : "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v8, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->success:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " , existGroup : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " , total items count : "

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , this : "

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mCancelLoad:Z

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->finishLoadingState()V

    goto/16 :goto_2

    :cond_4
    iget v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->loadExecutionId:I

    iget v5, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoadExecutionId:I

    if-ne v1, v5, :cond_7

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->groupInfo:Landroid/os/Bundle;

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string v5, "loadAppDataList() ] Empty data"

    invoke-static {v1, v5}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->setEmptyList(Z)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->finishLoadingState()V

    iget-object v0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object v1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mGroupInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setListItems(Ljava/util/List;)V

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->getAppDataList()Ljava/util/List;

    move-result-object v1

    iget-object v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->groupInfo:Landroid/os/Bundle;

    iget-object v5, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mGroupInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v5, v3}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v3, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    iget-object v1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-virtual {v2, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setListItems(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->finishLoadingState()V

    invoke-virtual {v0, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->setEmptyList(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const-string/jumbo v1, "selected_path"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "checkConditionAppDataLoading ] result.mLoadExecutionId : "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->loadExecutionId:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mListLoading.getLoadExecutionId() : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mLoadExecutionId:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    iget-object v0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->getEmptyListIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v5, 0x0

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    if-eqz v3, :cond_9

    check-cast v3, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonAppInfo;->getSize()J

    move-result-wide v7

    add-long/2addr v7, v5

    move-wide v5, v7

    goto :goto_3

    :cond_a
    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    const/4 v3, 0x4

    const-string v7, ", count : "

    const-string v8, "MB"

    const-wide/32 v9, 0xf4240

    if-ne v1, v3, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v9, v5, v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->getEmptyListIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setListItemSize ] unused app size : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/utils/preference/SettingStatusPreferenceUtils;->setInternalUnusedApplicationInfo(Landroid/content/Context;ILjava/lang/String;)V

    goto :goto_4

    :cond_b
    const/4 v3, 0x5

    if-ne v1, v3, :cond_c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-long v9, v5, v9

    invoke-virtual {v1, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->getEmptyListIfNull(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string/jumbo v9, "setListItemSize ] app cache size : "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_4
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->setLoadingData(Z)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mAppListTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/dataloaders/LoadResult;->getAppDataList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_e

    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    invoke-static {p0}, Lcom/samsung/android/settings/analyzestorage/domain/utils/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-nez p0, :cond_d

    new-instance p0, Ljava/util/HashSet;

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-direct {p0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_d
    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemCount:Landroidx/lifecycle/MutableLiveData;

    iget-object p1, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    iget-object p0, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckableItemList:Ljava/util/Set;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->updateCheckedAll(I)V

    goto :goto_5

    :cond_e
    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->resetCheckedItemInfo()V

    :goto_5
    return-void
.end method

.method public final onResult(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V
    .locals 7

    iget-boolean v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mIsCleared:Z

    if-nez v0, :cond_5

    iget v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mMenuType:I

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "onResult() ] "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/MenuType;->getMenuName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mIsSuccess:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mNeedRefresh:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , false , 0 , this : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->menu:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->result(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/EventListener;->mExceptionListener:Lcom/samsung/android/settings/analyzestorage/presenter/exception/ExceptionListener;

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/ui/exception/ExceptionHandler;

    invoke-virtual {v1, p1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->showOpResult(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;Lcom/samsung/android/settings/analyzestorage/ui/exception/ExceptionHandler;)V

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mExtra:Landroid/os/Bundle;

    const-wide/16 v1, 0x0

    const/16 v3, 0x154

    const-string v4, " , Cumulative Size : "

    if-eq v0, v3, :cond_3

    const/16 v3, 0x15e

    if-eq v0, v3, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "handleFreedUpSize() ] "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/MenuType;->getMenuName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " does not support FreedUpSize."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "app_cache_freed_up_size"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-lez p1, :cond_2

    iget-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mFreedUpSize:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mFreedUpSize:J

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string v0, "handleFreedUpSize() ] FreedUpSize By Clearing App Cache : "

    invoke-static {v5, v6, v0, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mFreedUpSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "unused_app_freed_up_size"

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long p1, v5, v1

    if-lez p1, :cond_4

    iget-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mFreedUpSize:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mFreedUpSize:J

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    const-string v0, "handleFreedUpSize() ] FreedUpSize By Uninstalling Unused Apps : "

    invoke-static {v5, v6, v0, v4}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$$ExternalSyntheticOutline0;->m(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mFreedUpSize:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public final refresh(Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->refresh$1(Z)V

    return-void
.end method

.method public final refresh$1(Z)V
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mRefreshHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController$2;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0xc8

    int-to-long v0, v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final setLoadingData(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLoadingData, saType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mNeedLoading:Z

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mAppListLoading:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPageInfo(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setPageInfo() ] mSaAppsType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , pageInfo : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/ConvertManager;->sSaTypeToPageInfo:Landroid/util/SparseArray;

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    invoke-virtual {v1, v0, v2}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    iget p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mActivityType:I

    iput p1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mActivityType:I

    const-string p1, "asType"

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->putExtra(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string v0, "instanceId"

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->putExtra(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string p1, "manageStorageSubPageInitialEntry"

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mExtra:Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    :goto_0
    return-void
.end method
