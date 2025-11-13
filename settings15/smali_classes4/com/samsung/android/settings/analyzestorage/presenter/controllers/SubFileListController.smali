.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DetailsResultListener;


# instance fields
.field public final mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$1;

.field public final mListItemTotalSizeData:Landroidx/lifecycle/MutableLiveData;

.field public final mLoading:Landroidx/lifecycle/MutableLiveData;

.field public mNeedUpdate:Z

.field public mSAHomePageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public mSaType:I


# direct methods
.method public constructor <init>(Landroid/app/Application;IILcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;-><init>(Landroid/content/Context;I)V

    const-string p2, "DataListPageController"

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-direct {p2, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;->mRefreshHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController$1;

    const-string p2, "FileListController"

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/PageControllerInterface;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;->mFileListObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/FileListObserver;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    invoke-direct {p2, p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListControllerInterface;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;->mBroadcastListener:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/BroadcastListeners;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mNeedUpdate:Z

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mListItemTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mLoading:Landroidx/lifecycle/MutableLiveData;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$1;

    const-string p2, "SubFileListController"

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mSaType:I

    invoke-virtual {p0, p4}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->setPageInfo(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    iget-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "content://myfiles"

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p3

    const-string/jumbo p4, "setting"

    invoke-virtual {p3, p4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p3

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mSaType:I

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const/4 p3, 0x0

    invoke-virtual {p2, p0, p3, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method


# virtual methods
.method public final onCleared()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mContentObserver:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    invoke-super {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/FileListController;->onCleared()V

    return-void
.end method

.method public final onResult(Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DirInfo;)V
    .locals 2

    iget-wide v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DirInfo;->mSize:J

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mListItemTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final refresh(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mListItemTotalSizeData:Landroidx/lifecycle/MutableLiveData;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/DataListPageController;->loadListItem(Z)V

    return-void
.end method

.method public final setLoadingData(Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLoadingData, saType : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mSaType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mLoading:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPageInfo(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V
    .locals 3

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mSAHomePageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mSaType:I

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/ConvertManager;->sSaTypeToPageInfo:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-direct {v1, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;)V

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mSAHomePageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mActivityType:I

    iput v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mActivityType:I

    const-string v0, "asType"

    iget v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/SubFileListController;->mSaType:I

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->putExtra(ILjava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string p1, "instanceId"

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->putExtra(ILjava/lang/String;)V

    return-void
.end method
