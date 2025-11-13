.class public final Landroidx/picker/features/composable/widget/ComposableActionViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field private final divider:Landroid/view/View;

.field private hasCustomClickListener:Ljava/lang/Boolean;

.field private final imageButton:Landroid/widget/ImageButton;


# direct methods
.method public static synthetic $r8$lambda$0BNFwGA1KhTW0BZtcoS7cBmpVGQ(Lkotlin/jvm/functions/Function1;Landroidx/picker/model/viewdata/ViewData;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->bindData$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Landroidx/picker/model/viewdata/ViewData;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$M8aGQX41k-xMixJX_E02x0kxhuc(Landroidx/picker/model/viewdata/AppInfoViewData;)Z
    .locals 0

    invoke-static {p0}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->bindData$lambda$2(Landroidx/picker/model/viewdata/AppInfoViewData;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a0520

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    const v0, 0x7f0a0cdd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->divider:Landroid/view/View;

    return-void
.end method

.method private static final bindData$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Landroidx/picker/model/viewdata/ViewData;Landroid/view/View;)V
    .locals 0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final bindData$lambda$2(Landroidx/picker/model/viewdata/AppInfoViewData;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private final setHasCustomClickListener(Ljava/lang/Boolean;)V
    .locals 1

    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->divider:Landroid/view/View;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public bindData(Landroidx/picker/model/viewdata/ViewData;)V
    .locals 4

    move-object v0, p1

    check-cast v0, Landroidx/picker/model/viewdata/AppInfoViewData;

    iget-object v1, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    iget-object v2, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->appInfoData:Landroidx/picker/model/AppInfoData;

    invoke-interface {v2}, Landroidx/picker/model/AppInfoData;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, v0, Landroidx/picker/model/viewdata/AppInfoViewData;->onActionClick:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_0

    iget-object v2, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    new-instance v3, Landroidx/picker/features/composable/widget/ComposableActionViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1, p1}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;Landroidx/picker/model/viewdata/ViewData;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    new-instance p1, Landroidx/picker/features/composable/widget/ComposableActionViewHolder$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder$$ExternalSyntheticLambda1;-><init>(Landroidx/picker/model/viewdata/AppInfoViewData;)V

    invoke-virtual {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->setDoAction(Landroidx/core/util/Supplier;)V

    return-void
.end method

.method public onBind$picker_app_release(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->hasCustomClickListener:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->setHasCustomClickListener(Ljava/lang/Boolean;)V

    :cond_0
    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onBind$picker_app_release(Landroid/view/View;)V

    return-void
.end method

.method public onViewRecycled(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
