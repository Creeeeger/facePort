.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public actionBar:Landroidx/appcompat/app/ActionBar;

.field public final activity:Landroidx/fragment/app/FragmentActivity;

.field public adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

.field public bottomButton:Landroid/view/View;

.field public final context:Landroid/content/Context;

.field public final controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

.field public final customActionBar$delegate:Lkotlin/Lazy;

.field public emptyView:Lcom/samsung/android/settings/analyzestorage/ui/widget/EmptyView;

.field public final listItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

.field public final listMarginManager$delegate:Lkotlin/Lazy;

.field public final listViewLayout$delegate:Lkotlin/Lazy;

.field public final pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

.field public recyclerView:Lcom/samsung/android/settings/analyzestorage/ui/widget/MyFilesRecyclerView;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "controller"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "pageInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->pageInfo:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->context:Landroid/content/Context;

    iget-object p1, p2, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->listItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listViewLayout$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listViewLayout$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->listViewLayout$delegate:Lkotlin/Lazy;

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listMarginManager$2;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$listMarginManager$2;

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->listMarginManager$delegate:Lkotlin/Lazy;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$customActionBar$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$customActionBar$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;)V

    invoke-static {p1}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->customActionBar$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public final getCapacityOfPercent()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mSaAppsType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageTotalSize(I)J

    move-result-wide v0

    long-to-float v2, v0

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-static {v3, v0, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getLowMemoryMinPercent(Landroid/content/Context;J)F

    move-result v0

    mul-float/2addr v0, v2

    const-wide v1, 0x174876e800L

    long-to-float v1, v1

    div-float/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f1410b1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCapacityOfPercent() ]  capacity : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getCustomActionBar()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->customActionBar$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
