.class public final Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public final categoryBtn:Landroid/widget/ImageView;

.field public final container:Landroid/widget/LinearLayout;

.field public final detailColor:Landroid/view/View;

.field public final detailName:Landroid/widget/TextView;

.field public final detailSize:Landroid/widget/TextView;

.field public item:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

.field public final itemView:Landroid/view/View;

.field public final loadingView:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;Landroidx/lifecycle/LifecycleOwner;Landroid/view/View;Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->this$0:Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->itemView:Landroid/view/View;

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->item:Lcom/samsung/android/settings/analyzestorage/data/constant/AnalyzeStorageConstants$UiItemType;

    const p4, 0x7f0a04e9

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->detailColor:Landroid/view/View;

    const p4, 0x7f0a04ea

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    iput-object p4, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->detailName:Landroid/widget/TextView;

    const v0, 0x7f0a04eb

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->detailSize:Landroid/widget/TextView;

    const v1, 0x7f0a02dd

    invoke-virtual {p3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->categoryBtn:Landroid/widget/ImageView;

    const v2, 0x7f0a08dd

    invoke-virtual {p3, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v2

    const-string/jumbo v3, "requireViewById(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object v2, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->loadingView:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const v2, 0x7f0a0412

    invoke-virtual {p3, v2}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;->container:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const-string v2, "getContext(...)"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/FeatureManager$UiFeature;->isDefaultTheme(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_2

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    const v2, 0x7f060061

    invoke-virtual {p3, v2}, Landroid/content/Context;->getColor(I)I

    move-result p3

    invoke-virtual {p1}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f060060

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    if-eqz p4, :cond_0

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_2
    iget-object p3, p1, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;->controller:Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;

    if-eqz p3, :cond_3

    iget-object p3, p3, Lcom/samsung/android/settings/analyzestorage/presenter/controllers/OverViewController;->mIsLoadingData:Landroidx/lifecycle/MutableLiveData;

    if-eqz p3, :cond_3

    new-instance p4, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder$observeLoadingView$1;

    invoke-direct {p4, p1, p0}, Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder$observeLoadingView$1;-><init>(Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem;Lcom/samsung/android/settings/analyzestorage/ui/view/analyzestorage/UsageDetailItem$UsageDetailViewHolder;)V

    invoke-virtual {p3, p2, p4}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    :cond_3
    return-void
.end method
