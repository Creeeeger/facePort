.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;I)V
    .locals 0

    iput p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1;->$r8$classId:I

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 9

    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;

    const/4 v4, 0x1

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;

    iget-object p0, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->supportedCardList:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v4

    const/4 v6, 0x2

    if-eqz v5, :cond_a

    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

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
    move v0, v2

    :goto_0
    iget-object v5, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700e6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->indicator:Landroid/widget/GridView;

    invoke-virtual {v8}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    mul-int/2addr v7, v0

    iput v7, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->indicator:Landroid/widget/GridView;

    invoke-virtual {v0, v8}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->indicator:Landroid/widget/GridView;

    new-instance v7, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$initRecommendCardIndicator$1;

    invoke-direct {v7, v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$initRecommendCardIndicator$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->supportedList:Ljava/util/List;

    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->indicator:Landroid/widget/GridView;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setNumColumns(I)V

    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->indicator:Landroid/widget/GridView;

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->indicator:Landroid/widget/GridView;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v6, :cond_1

    const/4 v7, 0x4

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->indicator:Landroid/widget/GridView;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v7, v6, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    invoke-virtual {v0, v7}, Landroid/widget/GridView;->setImportantForAccessibility(I)V

    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object v7, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    if-nez v0, :cond_4

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    iget-object v8, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    invoke-direct {v0, v5, v8}, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;-><init>(Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;)V

    iget v8, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->layoutState:I

    if-ne v8, v4, :cond_3

    move v8, v4

    goto :goto_3

    :cond_3
    move v8, v2

    :goto_3
    iput-boolean v8, v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->isLandScape:Z

    iput-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    invoke-virtual {v7, v0}, Landroidx/viewpager2/widget/ViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_4
    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "getBaseContext(...)"

    invoke-static {v0, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v5}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const v5, 0x7f0801e1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v5, v0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v5, :cond_6

    move-object v1, v0

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    :cond_6
    if-nez v1, :cond_7

    goto :goto_4

    :cond_7
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    :goto_4
    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->recommendCardState:Landroidx/lifecycle/MutableLiveData;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->supportedCardList:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    goto :goto_5

    :cond_8
    move v0, v2

    :goto_5
    if-lez v0, :cond_9

    invoke-virtual {v7, v0, v2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v1

    iput v0, v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_9
    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->pageChangeCallback:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$pageChangeCallback$1;

    invoke-virtual {v7, v0}, Landroidx/viewpager2/widget/ViewPager2;->registerOnPageChangeCallback(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$bindRecommendCardViewPager$2;

    invoke-direct {v0, v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$bindRecommendCardViewPager$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V

    invoke-virtual {v7, v0}, Landroidx/viewpager2/widget/ViewPager2;->setPageTransformer(Landroidx/viewpager2/widget/ViewPager2$PageTransformer;)V

    goto :goto_6

    :cond_a
    iget-object v1, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->root:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_6
    iget v0, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->type:I

    if-eqz v0, :cond_e

    if-eq v0, v4, :cond_d

    if-eq v0, v6, :cond_b

    goto :goto_8

    :cond_b
    iget-object v0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    if-eqz v0, :cond_c

    iget p1, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->updatedCardPosition:I

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_c
    iget-object p1, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    sub-int/2addr p0, v4

    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_8

    :cond_d
    iget-object p0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    if-eqz p0, :cond_11

    iget p1, p1, Lcom/samsung/android/settings/analyzestorage/data/model/RecommendCardState;->removedCardPosition:I

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    goto :goto_8

    :cond_e
    iget-object p1, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

    if-eqz p1, :cond_10

    iget-object v0, p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

    if-nez v0, :cond_f

    goto :goto_7

    :cond_f
    iput-object p0, v0, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;->supportedRecommendCardListTemp:Ljava/util/ArrayList;

    :goto_7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_10
    sget-object p1, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->ANALYZE_STORAGE_HOME:Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;

    invoke-virtual {p1}, Lcom/samsung/android/settings/analyzestorage/presenter/page/PageType;->getScreenIdForSA()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x2270

    invoke-static {p1, v0, p0}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(IILjava/lang/String;)V

    :cond_11
    :goto_8
    invoke-virtual {v3}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    move-result-object p0

    iget p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;->currentIndex:I

    invoke-virtual {v3, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->updateHeightCard(I)V

    return-void

    :pswitch_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_12

    iget-boolean p0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->inLoadingProgress:Z

    if-nez p0, :cond_15

    iput-boolean v4, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->inLoadingProgress:Z

    iget-object p0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->delayLoadingJob:Lkotlinx/coroutines/Job;

    if-nez p0, :cond_15

    sget-object p0, Lkotlinx/coroutines/Dispatchers;->Default:Lkotlinx/coroutines/scheduling/DefaultScheduler;

    sget-object p0, Lkotlinx/coroutines/internal/MainDispatcherLoader;->dispatcher:Lkotlinx/coroutines/android/HandlerContext;

    invoke-static {p0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/internal/ContextScope;

    move-result-object p0

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1$1;

    invoke-direct {p1, v3, v1}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$observeLoadingState$1$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;Lkotlin/coroutines/Continuation;)V

    const/4 v0, 0x3

    invoke-static {p0, v1, v1, p1, v0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    move-result-object p0

    iput-object p0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->delayLoadingJob:Lkotlinx/coroutines/Job;

    goto :goto_a

    :cond_12
    iget-object p0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->delayLoadingJob:Lkotlinx/coroutines/Job;

    if-eqz p0, :cond_13

    invoke-interface {p0, v1}, Lkotlinx/coroutines/Job;->cancel(Ljava/util/concurrent/CancellationException;)V

    :cond_13
    iput-object v1, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->delayLoadingJob:Lkotlinx/coroutines/Job;

    iget-object p0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->loadingView:Lcom/facebook/shimmer/ShimmerFrameLayout;

    if-nez p0, :cond_14

    goto :goto_9

    :cond_14
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_9
    iget-object p0, v3, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPagerLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_15
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
