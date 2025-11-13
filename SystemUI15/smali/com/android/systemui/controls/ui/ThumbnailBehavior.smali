.class public final Lcom/android/systemui/controls/ui/ThumbnailBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;
.implements Lcom/android/systemui/controls/ui/SecBehavior;
.implements Lcom/android/systemui/controls/ui/SecActionButtonBehavior;


# instance fields
.field public final canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

.field public control:Landroid/service/controls/Control;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public shadowColor:I

.field public shadowOffsetX:F

.field public shadowOffsetY:F

.field public shadowRadius:F

.field public template:Landroid/service/controls/templates/ThumbnailTemplate;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    invoke-direct {v0, p1}, Lcom/android/systemui/controls/ui/CanUseIconPredicate;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->canUseIconPredicate:Lcom/android/systemui/controls/ui/CanUseIconPredicate;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 6

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->control:Landroid/service/controls/Control;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    instance-of v0, p1, Landroid/service/controls/templates/ThumbnailTemplate;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/service/controls/templates/ThumbnailTemplate;

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v1

    :goto_3
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    check-cast p1, Landroid/service/controls/templates/ThumbnailTemplate;

    :cond_4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v1

    :goto_4
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    const v0, 0x7f0a029c

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/ClipDrawable;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, v1

    :goto_5
    invoke-virtual {v0}, Landroid/service/controls/templates/ThumbnailTemplate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x2710

    goto :goto_6

    :cond_7
    move v0, v2

    :goto_6
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    move-object v0, v1

    :goto_7
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v3, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_9

    goto :goto_8

    :cond_9
    move-object v0, v1

    :goto_8
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v0, :cond_a

    new-instance v3, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$2;

    invoke-direct {v3, p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$2;-><init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;)V

    invoke-virtual {v0, v3}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    if-eqz v0, :cond_b

    goto :goto_9

    :cond_b
    move-object v0, v1

    :goto_9
    invoke-virtual {v0}, Landroid/service/controls/templates/ThumbnailTemplate;->isActive()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_c

    goto :goto_a

    :cond_c
    move-object v0, v1

    :goto_a
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_d

    goto :goto_b

    :cond_d
    move-object v0, v1

    :goto_b
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_e

    goto :goto_c

    :cond_e
    move-object v0, v1

    :goto_c
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowOffsetX:F

    iget v3, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowOffsetY:F

    iget v4, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowRadius:F

    iget v5, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowColor:I

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_f

    goto :goto_d

    :cond_f
    move-object v0, v1

    :goto_d
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    new-instance v2, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/systemui/controls/ui/ThumbnailBehavior$bind$3;-><init>(Lcom/android/systemui/controls/ui/ThumbnailBehavior;Landroid/graphics/drawable/ClipDrawable;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_11

    :cond_10
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_11

    goto :goto_e

    :cond_11
    move-object p1, v1

    :goto_e
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_12

    goto :goto_f

    :cond_12
    move-object p1, v1

    :goto_f
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_13

    goto :goto_10

    :cond_13
    move-object p1, v1

    :goto_10
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowColor:I

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    :goto_11
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_14

    goto :goto_12

    :cond_14
    move-object p1, v1

    :goto_12
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    if-eqz p0, :cond_15

    move-object v1, p0

    :cond_15
    invoke-virtual {v1}, Landroid/service/controls/templates/ThumbnailTemplate;->isActive()Z

    move-result p0

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p0, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    return-void
.end method

.method public final dispose()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->status:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowColor:I

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    move-object v0, v1

    :goto_3
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    move-object v0, v1

    :goto_4
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_6

    goto :goto_5

    :cond_6
    move-object v0, v1

    :goto_5
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/SecControlViewHolder;->initClipLayerAndBaseLayer()Lkotlin/Pair;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v2, :cond_7

    goto :goto_6

    :cond_7
    move-object v2, v1

    :goto_6
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/ClipDrawable;

    iput-object v3, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_8

    move-object v1, p0

    :cond_8
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/GradientDrawable;

    iput-object p0, v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->baseLayer:Landroid/graphics/drawable/GradientDrawable;

    return-void
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->template:Landroid/service/controls/templates/ThumbnailTemplate;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/service/controls/templates/ThumbnailTemplate;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 4

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702aa

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowOffsetX:F

    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ab

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowOffsetY:F

    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702a9

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowRadius:F

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/controls/ui/ThumbnailBehavior;->shadowColor:I

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/ui/ThumbnailBehavior$initialize$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ThumbnailBehavior;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
