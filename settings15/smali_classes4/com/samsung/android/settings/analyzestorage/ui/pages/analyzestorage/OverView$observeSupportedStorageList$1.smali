.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$observeSupportedStorageList$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$observeSupportedStorageList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 5

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$observeSupportedStorageList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->initIndicator()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->supportedList:Ljava/util/List;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ge v2, v4, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v2, v4, :cond_1

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {v0, v4}, Landroid/widget/GridView;->setImportantForAccessibility(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

    if-eqz v0, :cond_2

    iput-object p1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;->storageList:Ljava/util/List;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    invoke-virtual {p0, v1, v3}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->updateUsageInfo(ZZ)V

    :cond_3
    return-void
.end method
