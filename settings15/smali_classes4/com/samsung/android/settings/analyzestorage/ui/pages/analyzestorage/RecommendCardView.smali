.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final activity:Landroidx/fragment/app/FragmentActivity;

.field public adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/RecommendCardViewPagerAdapter;

.field public controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/RecommendCardController;

.field public delayLoadingJob:Lkotlinx/coroutines/Job;

.field public final dummyText1line:Landroid/widget/FrameLayout;

.field public final dummyText2line:Landroid/widget/FrameLayout;

.field public inLoadingProgress:Z

.field public final indicator:Landroid/widget/GridView;

.field public layoutState:I

.field public final loadingView:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final loadingViewPager:Landroid/widget/LinearLayout;

.field public final pageChangeCallback:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$pageChangeCallback$1;

.field public final recommendCardIndicatorAdapter$delegate:Lkotlin/Lazy;

.field public final root:Landroid/view/View;

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;

.field public final viewPagerLayout:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->root:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->activity:Landroidx/fragment/app/FragmentActivity;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$recommendCardIndicatorAdapter$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$recommendCardIndicatorAdapter$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->recommendCardIndicatorAdapter$delegate:Lkotlin/Lazy;

    const p2, 0x7f0a1106

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo v0, "requireViewById(...)"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPagerLayout:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0c4f

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->indicator:Landroid/widget/GridView;

    const p2, 0x7f0a0138

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const p2, 0x7f0a08e1

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->loadingView:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const p2, 0x7f0a08e2

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->loadingViewPager:Landroid/widget/LinearLayout;

    const p2, 0x7f0a0fe2

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->dummyText1line:Landroid/widget/FrameLayout;

    const p2, 0x7f0a0fe3

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->dummyText2line:Landroid/widget/FrameLayout;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$pageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$pageChangeCallback$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->pageChangeCallback:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$pageChangeCallback$1;

    return-void
.end method


# virtual methods
.method public final getRecommendCardIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->recommendCardIndicatorAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    return-object p0
.end method

.method public final updateHeightCard(I)V
    .locals 3

    const-string/jumbo v0, "updateHeightCard: position - "

    const-string v1, "RecommendCardView"

    invoke-static {p1, v0, v1}, Landroidx/appcompat/widget/ListPopupWindow$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;

    invoke-direct {p1, v2, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView$updateHeightCard$1;-><init>(Landroid/view/View;Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final updateLoadingLayout(Z)V
    .locals 4

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->layoutState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->loadingViewPager:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v0, :cond_1

    const v3, 0x7f070128

    goto :goto_1

    :cond_1
    const v3, 0x7f070127

    :goto_1
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->dummyText1line:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/RecommendCardView;->dummyText2line:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    invoke-virtual {v1}, Landroid/app/Activity;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f07012c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    :cond_2
    return-void
.end method
