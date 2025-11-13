.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initRecyclerView$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $it:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initRecyclerView$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initRecyclerView$1$1;->$it:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initRecyclerView$1$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mIsEmptyList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mListItemInterface:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->getListItems()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior$initRecyclerView$1$1;->$it:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->updateItems(Ljava/util/List;)V

    :goto_0
    return-void
.end method
