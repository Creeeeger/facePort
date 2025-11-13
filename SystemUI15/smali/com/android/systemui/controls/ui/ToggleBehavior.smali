.class public final Lcom/android/systemui/controls/ui/ToggleBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;
.implements Lcom/android/systemui/controls/ui/SecBehavior;
.implements Lcom/android/systemui/controls/ui/SecActionButtonBehavior;


# instance fields
.field public control:Landroid/service/controls/Control;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public template:Landroid/service/controls/templates/ToggleTemplate;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 3

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->control:Landroid/service/controls/Control;

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

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

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    instance-of v0, p1, Landroid/service/controls/templates/ToggleTemplate;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/service/controls/templates/ToggleTemplate;

    goto :goto_2

    :cond_2
    instance-of v0, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    if-eqz v0, :cond_6

    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    check-cast p1, Landroid/service/controls/templates/ToggleTemplate;

    :goto_2
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->template:Landroid/service/controls/templates/ToggleTemplate;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    move-object p1, v1

    :goto_3
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    const v0, 0x7f0a029c

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    const/16 v0, 0x2710

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->template:Landroid/service/controls/templates/ToggleTemplate;

    if-eqz p1, :cond_4

    goto :goto_4

    :cond_4
    move-object p1, v1

    :goto_4
    invoke-virtual {p1}, Landroid/service/controls/templates/ToggleTemplate;->isChecked()Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_5

    move-object v1, p0

    :cond_5
    const/4 p0, 0x1

    invoke-virtual {v1, p2, p1, p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    return-void

    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "Unsupported template type: "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ControlsUiController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object p0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz p0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->template:Landroid/service/controls/templates/ToggleTemplate;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/service/controls/templates/ToggleTemplate;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ToggleBehavior;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$2$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/ui/ToggleBehavior$initialize$2$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/ToggleBehavior;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
