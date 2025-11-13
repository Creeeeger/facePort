.class public final Lcom/android/systemui/controls/ui/TemperatureControlBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;
.implements Lcom/android/systemui/controls/ui/SecBehavior;


# instance fields
.field public clipLayer:Landroid/graphics/drawable/Drawable;

.field public control:Landroid/service/controls/Control;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public subBehavior:Lcom/android/systemui/controls/ui/Behavior;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 6

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    iget-object p2, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object p1

    sget-object v1, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    const p2, 0x7f0a029c

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getCurrentActiveMode()I

    move-result p2

    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v2

    invoke-static {}, Landroid/service/controls/templates/ControlTemplate;->getNoTemplateObject()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-static {}, Landroid/service/controls/templates/ControlTemplate;->getErrorTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_6

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_4

    move-object v1, p1

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    iget-object v3, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->subBehavior:Lcom/android/systemui/controls/ui/Behavior;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v0

    :goto_4
    iget-object v4, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    move-object v4, v0

    :goto_5
    invoke-virtual {v4}, Landroid/service/controls/Control;->getStatus()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->control:Landroid/service/controls/Control;

    if-eqz v5, :cond_7

    move-object v0, v5

    :cond_7
    invoke-virtual {v0}, Landroid/service/controls/Control;->getDeviceType()I

    move-result v0

    invoke-static {p1, v4, v2, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->findBehaviorClass$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ILandroid/service/controls/templates/ControlTemplate;I)Ljava/util/function/Supplier;

    move-result-object p1

    invoke-virtual {v1, v3, p1, p2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Ljava/util/function/Supplier;I)Lcom/android/systemui/controls/ui/Behavior;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->subBehavior:Lcom/android/systemui/controls/ui/Behavior;

    goto :goto_a

    :cond_8
    :goto_6
    const/4 v2, 0x1

    if-eqz p2, :cond_9

    if-eq p2, v2, :cond_9

    move v3, v2

    goto :goto_7

    :cond_9
    move v3, v1

    :goto_7
    iget-object v4, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_a

    goto :goto_8

    :cond_a
    move-object v4, v0

    :goto_8
    if-eqz v3, :cond_b

    const/16 v1, 0x2710

    :cond_b
    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object v1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v1, :cond_c

    goto :goto_9

    :cond_c
    move-object v1, v0

    :goto_9
    invoke-virtual {v1, p2, v3, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    iget-object p2, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p2, :cond_d

    move-object v0, p2

    :cond_d
    iget-object p2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/controls/ui/TemperatureControlBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/TemperatureControlBehavior;Landroid/service/controls/templates/TemperatureControlTemplate;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_a
    return-void
.end method

.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->subBehavior:Lcom/android/systemui/controls/ui/Behavior;

    instance-of v0, p0, Lcom/android/systemui/controls/ui/SecBehavior;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lcom/android/systemui/controls/ui/SecBehavior;

    :cond_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lcom/android/systemui/controls/ui/SecBehavior;->dispose()V

    :cond_2
    return-void
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TemperatureControlBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    return-void
.end method
