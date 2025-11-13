.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $detailsManager:Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;

.field public final synthetic $listener:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DetailsResultListener;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$listener$1;Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$1;->$detailsManager:Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$1;->$listener:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DetailsResultListener;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Integer;

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$1;->$detailsManager:Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "DetailsManager"

    const-string v3, "cancelCheckedItemsLoader() "

    invoke-static {v2, v3}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/DetailsManager;->checkedItemLoader:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mIsCancel:Z

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$1;->$listener:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DetailsResultListener;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerMap:Ljava/util/Map;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mListenerList:Ljava/util/List;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getPageInfo()Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object p1

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AbsPageController;->mListItemHandler:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;

    iget-object p1, p1, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListItemHandler;->mCheckedItemList:Ljava/util/List;

    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    new-instance v3, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$listener$1;

    invoke-direct {v3, v0, v2, p1, p0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader$DataInfoTaskItem;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/analyzestorage/presenter/page/PageInfo;Ljava/util/List;Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeCheckedItemCount$listener$1;)V

    const-string p0, "CheckedItemsDetailsLoader"

    const-string p1, "createFileInfoTask "

    invoke-static {p0, p1}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    iput-boolean p0, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mIsCancel:Z

    iget-object p1, v1, Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/CheckedItemsDetailsLoader;->mLoadHandler:Lcom/samsung/android/settings/analyzestorage/presenter/managers/detailinfo/AbsDetailsInfoLoader$LoadHandler;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_2
    return-void
.end method
