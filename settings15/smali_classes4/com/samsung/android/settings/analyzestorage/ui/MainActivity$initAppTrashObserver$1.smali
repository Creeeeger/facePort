.class public final Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppTrashObserver$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppTrashObserver$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppTrashObserver$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 10

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppTrashObserver$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;

    const/4 v2, 0x1

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity$initAppTrashObserver$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Long;

    iget-object p0, v1, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->subListArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_5

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    invoke-virtual {p0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->getListItemTotalSizeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    goto :goto_1

    :cond_0
    move-object v8, v0

    :goto_1
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v6, v8, v6

    if-ltz v6, :cond_1

    invoke-static {v3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/StorageUsageManager;->getStorageFreeSpace(I)J

    move-result-wide v6

    const-wide/32 v8, 0x3b9aca00

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    move v6, v2

    goto :goto_2

    :cond_1
    move v6, v3

    :goto_2
    iget-object v5, v5, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/AnalyzeStorageSubList;->rootView:Landroid/view/View;

    if-eqz v5, :cond_2

    const v7, 0x7f0a05da

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    goto :goto_3

    :cond_2
    move-object v5, v0

    :goto_3
    if-nez v5, :cond_3

    goto :goto_5

    :cond_3
    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    const/16 v6, 0x8

    :goto_4
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_5
    add-int/2addr v4, v2

    goto :goto_0

    :cond_5
    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_7

    sget p0, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->$r8$clinit:I

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/ui/MainActivity;->getController()Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/HomeController;->overViewController:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    if-eqz p0, :cond_6

    invoke-virtual {p0, v2, v2}, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->updateUsageInfo(ZZ)V

    goto :goto_6

    :cond_6
    const-string/jumbo p0, "overViewController"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    throw v0

    :cond_7
    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
