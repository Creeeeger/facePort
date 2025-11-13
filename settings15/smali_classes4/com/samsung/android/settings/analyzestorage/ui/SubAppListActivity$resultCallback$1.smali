.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$resultCallback$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$ResultListener;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$resultCallback$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;)V
    .locals 2

    iget v0, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mMenuType:I

    const/16 v1, 0x15e

    if-eq v0, v1, :cond_0

    const/16 v1, 0x154

    if-ne v0, v1, :cond_2

    :cond_0
    iget-boolean p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/execution/MenuExecuteManager$Result;->mIsSuccess:Z

    if-eqz p1, :cond_2

    sget p1, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->$r8$clinit:I

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$resultCallback$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getListBehavior()Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    move-result-object p1

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->listItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mListItems:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;

    if-eqz p1, :cond_1

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsSubListAdapter;->updateItems(Ljava/util/List;)V

    :cond_1
    const/16 p1, 0x3e9

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    :cond_2
    return-void
.end method
