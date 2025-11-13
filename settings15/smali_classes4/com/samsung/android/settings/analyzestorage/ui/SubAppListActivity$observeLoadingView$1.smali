.class public final Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;->$r8$classId:I

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 5

    iget v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Landroid/view/Menu;

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->CANCEL:Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/ui/menu/MenuIdType;->getMenuId()I

    move-result v0

    invoke-interface {p0, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {p0, p1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    const v0, 0x7f0a08e3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity$observeLoadingView$1;->this$0:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/ViewStub;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->loadingView:Landroid/view/View;

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getListBehavior()Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/filelist/AppListBehavior;->bottomButton:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;

    move-result-object v3

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/AppListController;->mListLoading:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;

    iget-object v3, v3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/filelist/ListLoading;->mIsEmptyList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v3}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_2

    :cond_5
    move v3, v1

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_3
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->loadingView:Landroid/view/View;

    if-nez v0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/SubAppListActivity;->listview$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
