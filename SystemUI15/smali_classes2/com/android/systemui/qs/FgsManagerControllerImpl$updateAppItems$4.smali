.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v1, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->appListAdapter:Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->runningApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    new-instance v2, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4$run$$inlined$sortedByDescending$1;

    invoke-direct {v2}, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4$run$$inlined$sortedByDescending$1;-><init>()V

    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v3, v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->data:Ljava/util/List;

    iput-object v3, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iput-object v0, v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->data:Ljava/util/List;

    iget-object v3, v1, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v3, v3, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v5

    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "updateNoItemTextView: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V

    iget-object v3, v3, Lcom/android/systemui/qs/SecFgsManagerController;->noItemTextView:Landroid/widget/TextView;

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/16 v5, 0x8

    :goto_1
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    :goto_2
    new-instance v3, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;

    invoke-direct {v3, v2, v0}, Lcom/android/systemui/qs/FgsManagerControllerImpl$AppListAdapter$setData$3;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Ljava/util/List;)V

    invoke-static {v3}, Landroidx/recyclerview/widget/DiffUtil;->calculateDiff(Landroidx/recyclerview/widget/DiffUtil$Callback;)Landroidx/recyclerview/widget/DiffUtil$DiffResult;

    move-result-object v0

    new-instance v2, Landroidx/recyclerview/widget/AdapterListUpdateCallback;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/AdapterListUpdateCallback;-><init>(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/DiffUtil$DiffResult;->dispatchUpdatesTo(Landroidx/recyclerview/widget/ListUpdateCallback;)V

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$updateAppItems$4;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->secFgsManagerController:Lcom/android/systemui/qs/SecFgsManagerController;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lcom/android/systemui/qs/SecFgsManagerController;->dialogSupplier:Ljava/util/function/Supplier;

    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p0, 0x0

    :goto_3
    if-eqz p0, :cond_5

    const-string/jumbo v0, "show dialog"

    invoke-static {v0}, Lcom/android/systemui/qs/SecFgsManagerController;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object p0

    const-string v0, "5153"

    invoke-static {p0, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method
