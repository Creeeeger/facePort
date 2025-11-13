.class public final Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final activity:Landroidx/fragment/app/FragmentActivity;

.field public adapter:Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/ViewPagerAdapter;

.field public final controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

.field public final indicator:Landroid/widget/GridView;

.field public final indicatorAdapter$delegate:Lkotlin/Lazy;

.field public layoutState:I

.field public final pageChangeCallback:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$pageChangeCallback$1;

.field public final root:Landroid/view/View;

.field public supportedStorageList:Landroidx/lifecycle/MutableLiveData;

.field public final viewPager:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/fragment/app/FragmentActivity;Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;I)V
    .locals 0

    const-string p4, "activity"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "controller"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->root:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->activity:Landroidx/fragment/app/FragmentActivity;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    new-instance p2, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$indicatorAdapter$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$indicatorAdapter$2;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;)V

    invoke-static {p2}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicatorAdapter$delegate:Lkotlin/Lazy;

    new-instance p2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p2}, Landroidx/lifecycle/LiveData;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->supportedStorageList:Landroidx/lifecycle/MutableLiveData;

    const p2, 0x7f0a07e5

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p2

    const-string/jumbo p3, "requireViewById(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroid/widget/GridView;

    iput-object p2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    const p2, 0x7f0a0137

    invoke-virtual {p1, p2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/viewpager2/widget/ViewPager2;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->viewPager:Landroidx/viewpager2/widget/ViewPager2;

    new-instance p1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$pageChangeCallback$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$pageChangeCallback$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->pageChangeCallback:Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$pageChangeCallback$1;

    return-void
.end method


# virtual methods
.method public final getIndicatorAdapter()Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicatorAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/adapter/analyzestorage/AsIndicatorAdapter;

    return-object p0
.end method

.method public final initIndicator()V
    .locals 3

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
    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0700e6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    mul-int/2addr v1, v0

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;->indicator:Landroid/widget/GridView;

    new-instance v1, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$initIndicator$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView$initIndicator$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/pages/analyzestorage/OverView;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
