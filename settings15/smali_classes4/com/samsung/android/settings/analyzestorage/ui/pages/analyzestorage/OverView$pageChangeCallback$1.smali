.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$pageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$pageChangeCallback$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 4

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$pageChangeCallback$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->supportedStorageList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge p1, v0, :cond_8

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->supportedStorageList:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    const/16 v1, 0x226a

    goto :goto_5

    :cond_3
    :goto_2
    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_5

    const/16 v1, 0x2288

    goto :goto_5

    :cond_5
    :goto_3
    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x65

    if-ne v1, v2, :cond_7

    const/16 v1, 0x22b0

    goto :goto_5

    :cond_7
    :goto_4
    const/16 v1, 0x229c

    :goto_5
    invoke-static {v0, v1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v0

    iput p1, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_8
    return-void
.end method
