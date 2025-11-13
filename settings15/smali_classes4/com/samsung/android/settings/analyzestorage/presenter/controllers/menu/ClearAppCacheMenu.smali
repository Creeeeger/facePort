.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu;
.super Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final menuExecute:Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;)V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu;->menuExecute:Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    return-void
.end method


# virtual methods
.method public final getParams()Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;
    .locals 6

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    invoke-direct {v2, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V

    iput-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->listItemInterface:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v2, v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    const-string v3, "getCheckedItemList(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, v2

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;->sEventContextMap:Landroid/util/SparseArray;

    sget-object v3, Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager$KeyboardMouseManagerHolder;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/keyboardmouse/KeyboardMouseManager;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Lcom/samsung/android/settings/analyzestorage/domain/entity/AppInfo;

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_4

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mFileOperationArgs:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;

    if-nez v2, :cond_3

    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mFileOperationArgs:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;

    :cond_3
    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mFileOperationArgs:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;

    iput-object v3, v2, Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/FileOperationArgs;->mSelectedApps:Ljava/util/List;

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu;->menuExecute:Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    if-eqz v2, :cond_5

    iget v3, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mInstanceId:I

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    const/16 v4, 0x15e

    invoke-virtual {v2, v4, v3, v1}, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;->getDialog(IILcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;)Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    move-result-object v1

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_1
    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mDialog:Lcom/samsung/android/settings/analyzestorage/ui/dialog/AbsDialog;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu$getParams$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu$getParams$1;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu;)V

    iput-object v1, v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;->mProgressListener:Lcom/samsung/android/settings/analyzestorage/domain/usecase/fileoperation/ProgressListener;

    return-object v0
.end method

.method public final result(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V
    .locals 6

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mPackageSuccessList:Ljava/util/List;

    const-string v1, "getPackageSuccessList(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mPackageSuccessList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mListItems + "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ListItemHandler"

    invoke-static {v3, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "mAppDataList + "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler$$ExternalSyntheticLambda1;

    const/4 v4, 0x0

    invoke-direct {v2, v4, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler$$ExternalSyntheticLambda1;

    const/4 v5, 0x1

    invoke-direct {v4, v5, p1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler$$ExternalSyntheticLambda1;-><init>(ILjava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mAppDataList:Ljava/util/List;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "cloneItemList + "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "cloneAppDataList + "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->setListItems(Ljava/util/List;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->resetCheckedItemInfo()V

    :cond_0
    return-void
.end method
