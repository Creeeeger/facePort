.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$pageChangeCallback$1;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$pageChangeCallback$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    return-void
.end method


# virtual methods
.method public final onPageSelected(I)V
    .locals 6

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$pageChangeCallback$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->recommendCardState:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->supportedCardList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-ge p1, v0, :cond_7

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v0

    iget v0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    const/4 v2, 0x1

    if-eq v0, p1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v3

    iput p1, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->getCurrentSupportedType()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz v4, :cond_2

    iget-object v4, v4, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->fileTypeCard:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_3

    :cond_2
    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_3
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz v5, :cond_4

    iget-object v5, v5, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->pathCard:Ljava/util/HashMap;

    if-eqz v5, :cond_4

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    goto :goto_3

    :cond_5
    move v2, v1

    :cond_6
    :goto_3
    invoke-static {v0, v4, v2, v1}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/SamsungAnalyticsConvertManager;->convertCardToSAEventId(IIZI)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;I)V

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->getCurrentSupportedType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->updateLayout(Ljava/lang/Integer;)V

    :cond_8
    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->updateHeightCard(I)V

    return-void
.end method
