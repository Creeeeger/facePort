.class public final Landroidx/picker/features/composable/widget/ComposableActionViewHolder;
.super Landroidx/picker/features/composable/ActionableComposableViewHolder;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0015\u0010\u0012\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0003H\u0010\u00a2\u0006\u0002\u0008\u0014J\u0010\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0013\u001a\u00020\u0003H\u0016R\u000e\u0010\u0005\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R$\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007@BX\u0082\u000e\u00a2\u0006\n\n\u0002\u0010\u000b\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000c\u001a\u00020\rX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Landroidx/picker/features/composable/widget/ComposableActionViewHolder;",
        "Landroidx/picker/features/composable/ActionableComposableViewHolder;",
        "frameView",
        "Landroid/view/View;",
        "(Landroid/view/View;)V",
        "divider",
        "value",
        "",
        "hasCustomClickListener",
        "setHasCustomClickListener",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "imageButton",
        "Landroid/widget/ImageButton;",
        "bindData",
        "",
        "viewData",
        "Landroidx/picker/model/viewdata/ViewData;",
        "onBind",
        "itemView",
        "onBind$picker_app_release",
        "onViewRecycled",
        "picker-app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


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

    const-string v0, "frameView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a07ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    const v0, 0x7f0a0f9d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->divider:Landroid/view/View;

    return-void
.end method

.method private static final bindData$lambda$1$lambda$0(Lkotlin/jvm/functions/Function1;Landroidx/picker/model/viewdata/ViewData;Landroid/view/View;)V
    .locals 0

    const-string p2, "$actionClick"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$viewData"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final bindData$lambda$2(Landroidx/picker/model/viewdata/AppInfoViewData;)Z
    .locals 1

    const-string v0, "$appInfoViewData"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string/jumbo v0, "viewData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

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
    .locals 1

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/picker/features/composable/ActionableComposableViewHolder;->onViewRecycled(Landroid/view/View;)V

    iget-object p0, p0, Landroidx/picker/features/composable/widget/ComposableActionViewHolder;->imageButton:Landroid/widget/ImageButton;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
