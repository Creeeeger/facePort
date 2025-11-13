.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initCancelMenu$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/core/view/MenuProvider;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initCancelMenu$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    return-void
.end method


# virtual methods
.method public final onCreateMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    const-string p0, "menu"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "menuInflater"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const p0, 0x7f0f0002

    invoke-virtual {p2, p0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onMenuItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "menuItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initCancelMenu$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->CANCEL:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->getMenuType()I

    move-result p1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mMenuDirector:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/menu/MenuDirector;->execute(ILcom/samsung/android/settings/analyzestorage/ui/menu/PrepareMenu;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public final onPrepareMenu(Landroid/view/Menu;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$initCancelMenu$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, p0, v1}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method
