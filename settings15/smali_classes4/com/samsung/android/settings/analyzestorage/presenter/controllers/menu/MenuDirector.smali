.class public final Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

.field public menu:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    return-void
.end method


# virtual methods
.method public final execute(ILcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    const/16 v2, 0xd2

    const-string v3, "controller"

    if-eq p1, v2, :cond_5

    const/16 v2, 0x154

    if-eq p1, v2, :cond_4

    const/16 v2, 0x15e

    if-eq p1, v2, :cond_3

    const/16 v2, 0x186

    if-eq p1, v2, :cond_2

    const/16 v2, 0x190

    if-eq p1, v2, :cond_1

    const/16 v2, 0x2ee

    if-eq p1, v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ArchiveMenu;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/UninstallMenu;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/FormatMenu;

    invoke-direct {v2, v1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/FormatMenu;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/UnmountMenu;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;)V

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu;

    invoke-direct {v2, v1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/ClearAppCacheMenu;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)V

    goto :goto_0

    :cond_4
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/UninstallMenu;

    invoke-direct {v2, v1, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/UninstallMenu;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)V

    goto :goto_0

    :cond_5
    new-instance v2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/CancelMenu;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;-><init>(Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;)V

    :goto_0
    iput-object v2, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->menu:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/AbsMenu;->getParams()Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    move-result-object p0

    goto :goto_1

    :cond_6
    new-instance p0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;

    iget-object p2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;-><init>(Landroid/content/Context;)V

    :goto_1
    new-instance p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object v0, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->mResultListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "execute() ] menuType : "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/constant/MenuType;->getMenuName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MenuExecuteManager"

    invoke-static {v3, v2}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->sExecutionMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda0;

    invoke-static {v2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;

    if-eqz v0, :cond_7

    iput-object v1, p2, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;->mResultListener:Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;

    invoke-virtual {v0, p1, p0, p2}, Lcom/samsung/android/settings/analyzestorage/presenter/execution/AbsExecute;->onExecute(ILcom/samsung/android/settings/analyzestorage/presenter/execution/ExecutionParams;Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager;)Z

    move-result p0

    goto :goto_2

    :cond_7
    const/4 p0, 0x1

    :goto_2
    return p0
.end method

.method public final showOpResult(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;Lcom/samsung/android/settings/analyzestorage/ui/exception/ExceptionHandler;)V
    .locals 3

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mExtra:Landroid/os/Bundle;

    const-string v0, "getExtra(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    const-string v1, "getContext(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string v0, "getPageInfo(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "selectedType"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-boolean v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mIsSuccess:Z

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mErrorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    if-eqz v0, :cond_4

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_NONE:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    if-eq v0, v1, :cond_4

    const-string/jumbo v0, "path"

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "menuType"

    iget v1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mMenuType:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mSrcPageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    const-string/jumbo v1, "targetStorage"

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mFileInfo:Lcom/samsung/android/settings/analyzestorage/domain/entity/FileInfo;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/data/model/CommonFileInfo;->getDomainType()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mExtra:Landroid/os/Bundle;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_0
    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->sOverViewInternalExpandToSAEventId:Ljava/util/EnumMap;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mPageType:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;->mNavigationMode:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;->AnalyzeStorageFilesFromDC:Lcom/samsung/android/settings/analyzestorage/presenter/page/NavigationMode;

    if-ne p0, v1, :cond_1

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_DEVICE_CARE:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_SDCARD:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne p0, v0, :cond_2

    sget-boolean p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->sIsSdcardMounted:Z

    if-nez p0, :cond_2

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_SDCARD_UNMOUNT:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    goto :goto_1

    :cond_2
    sget-object p0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_USB:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    if-ne p0, v0, :cond_3

    sget-boolean p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageVolumeManager;->sIsUsbStorageMounted:Z

    if-nez p0, :cond_3

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->LOCAL_USB_UNMOUNT:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "pageType"

    invoke-virtual {p2, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mErrorType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const-string p1, "mErrorType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
