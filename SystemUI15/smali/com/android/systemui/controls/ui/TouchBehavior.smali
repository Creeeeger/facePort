.class public final Lcom/android/systemui/controls/ui/TouchBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;
.implements Lcom/android/systemui/controls/ui/SecBehavior;


# instance fields
.field public control:Landroid/service/controls/Control;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public hasCustomColorInNoTemplate:Z

.field public lastColorOffset:I

.field public statelessTouch:Z

.field public template:Landroid/service/controls/templates/ControlTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/TouchBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/TouchBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 4

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->control:Landroid/service/controls/Control;

    iput p2, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

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

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

    instance-of p1, p1, Landroid/service/controls/templates/StatelessTemplate;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz p1, :cond_3

    new-instance v0, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/controls/ui/TouchBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/TouchBehavior;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

    if-eqz p1, :cond_4

    goto :goto_3

    :cond_4
    move-object p1, v1

    :goto_3
    sget-object v0, Landroid/service/controls/templates/ControlTemplate;->NO_TEMPLATE:Landroid/service/controls/templates/ControlTemplate;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    move-object p1, v1

    :goto_4
    invoke-virtual {p1}, Landroid/service/controls/Control;->getCustomColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    if-eqz p1, :cond_6

    move p1, v0

    goto :goto_5

    :cond_6
    move p1, v2

    :goto_5
    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->hasCustomColorInNoTemplate:Z

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_7

    goto :goto_6

    :cond_7
    move-object p1, v1

    :goto_6
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/RippleDrawable;

    const v3, 0x7f0a029c

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled$1()Z

    move-result v3

    if-eqz v3, :cond_8

    const/16 v2, 0x2710

    :cond_8
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    iget-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_9

    move-object v1, p1

    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/controls/ui/TouchBehavior;->getEnabled$1()Z

    move-result p0

    invoke-virtual {v1, p2, p0, v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    return-void
.end method

.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

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

.method public final getEnabled$1()Z
    .locals 1

    iget v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->lastColorOffset:I

    if-gtz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->statelessTouch:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->hasCustomColorInNoTemplate:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/controls/ui/TouchBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/controls/ui/TouchBehavior$initialize$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Lcom/android/systemui/controls/ui/TouchBehavior;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
