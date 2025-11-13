.class public final Landroidx/picker/features/composable/icon/ComposableIconViewHolder;
.super Landroidx/picker/features/composable/ComposableViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private disposableHandle:Lkotlinx/coroutines/DisposableHandle;

.field private final iconView:Landroid/widget/ImageView;

.field private final shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

.field private final subIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0b49

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/shimmer/ShimmerFrameLayout;

    iput-object v0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    const v0, 0x7f0a0505

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

    const v0, 0x7f0a0c38

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->subIconView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 3

    instance-of v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v0, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

    invoke-interface {v0}, Landroidx/picker/model/AppInfoData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

    iget-object v2, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->shimmerLayout:Lcom/facebook/shimmer/ShimmerFrameLayout;

    iget-object p1, p1, Landroidx/picker/model/viewdata/AppInfoViewData;->iconFlow:Landroidx/picker/loader/AppIconFlow;

    invoke-static {v1, p1, v2}, Landroidx/picker/helper/ImageViewHelperKt;->loadIcon$default(Landroid/widget/ImageView;Landroidx/picker/loader/AppIconFlow;Lcom/facebook/shimmer/ShimmerFrameLayout;)Landroidx/picker/helper/ImageViewHelperKt$$ExternalSyntheticLambda0;

    move-result-object p1

    iput-object p1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    :goto_0
    iget-object p0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->subIconView:Landroid/widget/ImageView;

    invoke-interface {v0}, Landroidx/picker/model/AppInfoData;->getSubIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_1
    instance-of v0, p1, Landroidx/picker/model/viewdata/CategoryViewData;

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

    check-cast p1, Landroidx/picker/model/viewdata/CategoryViewData;

    iget-object p1, p1, Landroidx/picker/model/viewdata/CategoryViewData;->appData:Landroidx/picker/model/appdata/CategoryAppData;

    iget-object p1, p1, Landroidx/picker/model/appdata/CategoryAppData;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    iget-object p1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->iconView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->subIconView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Landroidx/picker/features/composable/icon/ComposableIconViewHolder;->disposableHandle:Lkotlinx/coroutines/DisposableHandle;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lkotlinx/coroutines/DisposableHandle;->dispose()V

    :cond_0
    return-void
.end method
