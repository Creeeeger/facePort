.class public Landroidx/picker/adapter/viewholder/GridViewHolder;
.super Landroidx/picker/adapter/viewholder/PickerViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final appName:Landroid/widget/TextView;

.field public disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field public final gridItem:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public final highlightColor$delegate:Lkotlin/Lazy;

.field public final icon:Landroid/widget/ImageView;

.field public final shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field public final subIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    invoke-direct {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0b49

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const v0, 0x7f0a054b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->gridItem:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a0505

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0a0c38

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->subIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0d34

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    const v3, 0x3fa66666    # 1.3f

    cmpg-float v4, v2, v3

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    :goto_0
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iput-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->appName:Landroid/widget/TextView;

    new-instance v0, Landroidx/picker/adapter/viewholder/GridViewHolder$highlightColor$2;

    invoke-direct {v0, p1}, Landroidx/picker/adapter/viewholder/GridViewHolder$highlightColor$2;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->highlightColor$delegate:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    instance-of v1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v1, :cond_2

    iget-object v2, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->icon:Landroid/widget/ImageView;

    move-object v3, p1

    check-cast v3, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v4, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v4}, Landroidx/picker/model/AppData;->getAppInfo()Landroidx/picker/model/AppInfo;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-interface {v4}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v5, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v5, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    iget-object v6, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    invoke-static {v2, v5, v6}, Landroidx/picker/helper/ImageViewHelperKt;->loadIcon$default(Landroid/widget/ImageView;Landroidx/picker/loader/AppIconFlow;Lcom/facebook/shimmer/ShimmerFrameLayout;)Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v2, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->subIcon:Landroid/widget/ImageView;

    invoke-interface {v4}, Landroidx/picker/model/AppInfoData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->appName:Landroid/widget/TextView;

    invoke-interface {v4}, Landroidx/picker/model/AppInfoData;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v3, Landroidx/picker/model/viewdata/AppInfoViewData;->selectableItem:Landroidx/picker/loader/select/SelectableItem;

    if-eqz v2, :cond_2

    iget-object v3, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_1
    new-instance v3, Landroidx/picker/adapter/viewholder/GridViewHolder$bindData$2$1;

    invoke-direct {v3, p0}, Landroidx/picker/adapter/viewholder/GridViewHolder$bindData$2$1;-><init>(Landroidx/picker/adapter/viewholder/GridViewHolder;)V

    invoke-virtual {v2, v3}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v2

    iput-object v2, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Landroid/view/accessibility/AccessibilityManager;

    if-eqz v3, :cond_3

    check-cast v2, Landroid/view/accessibility/AccessibilityManager;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/picker/adapter/viewholder/PickerViewHolder;->item:Landroid/view/View;

    iget-object v3, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    if-eqz v1, :cond_5

    move-object v1, p1

    check-cast v1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v1, v1, Landroidx/picker/model/viewdata/AppInfoViewData;->highlightText:Landroidx/picker/features/observable/ObservableProperty;

    new-instance v2, Landroidx/picker/adapter/viewholder/GridViewHolder$bindData$4;

    invoke-direct {v2, p0}, Landroidx/picker/adapter/viewholder/GridViewHolder$bindData$4;-><init>(Landroidx/picker/adapter/viewholder/GridViewHolder;)V

    invoke-virtual {v1, v2}, Landroidx/picker/features/observable/ObservableProperty;->bind$picker_app_release(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/DisposableHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    new-instance v1, Landroidx/picker/adapter/viewholder/GridViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Landroidx/picker/adapter/viewholder/GridViewHolder$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    invoke-super {p0, p1}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->bindData(Landroidx/picker/model/viewdata/ViewData;)V

    return-void
.end method

.method public onViewRecycled()V
    .locals 2

    invoke-super {p0}, Landroidx/picker/adapter/viewholder/PickerViewHolder;->onViewRecycled()V

    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    iget-object v0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/picker/adapter/viewholder/GridViewHolder;->subIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
