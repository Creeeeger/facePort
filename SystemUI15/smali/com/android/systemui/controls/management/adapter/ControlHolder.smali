.class public final Lcom/android/systemui/controls/management/adapter/ControlHolder;
.super Lcom/android/systemui/controls/management/adapter/Holder;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public final holders:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/controls/ui/ControlViewHolder;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/Holder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p2, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iput-object p3, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->holders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/MainModel;)V
    .locals 8

    instance-of v0, p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    if-nez v0, :cond_0

    return-void

    :cond_0
    check-cast p1, Lcom/android/systemui/controls/management/model/MainControlModel;

    iget-object p1, p1, Lcom/android/systemui/controls/management/model/MainControlModel;->controlWithState:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz p1, :cond_1a

    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->controlViewHolder:Lcom/android/systemui/controls/ui/ControlViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    iget-object v3, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->controlsUtil:Lcom/android/systemui/controls/util/ControlsUtil;

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget-object v5, Lcom/android/systemui/controls/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/util/ControlsUtil$Companion;

    const v5, 0x7f07024d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array v6, v4, [I

    invoke-virtual {v3, v6, v4}, Landroid/widget/ImageView;->setImageState([IZ)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    const/16 v6, 0x8

    if-eqz v3, :cond_5

    iget-object v7, v3, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_2

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v7, v3, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIcon:Landroid/widget/ImageView;

    if-nez v7, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v3, v3, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionIconProgress:Landroid/widget/ProgressBar;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_5
    :goto_1
    iget-object v3, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->statusIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_6

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_6
    iget-object v3, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->animationView:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v3, :cond_7

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_7
    iget-object v3, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->overlayCustomIcon:Landroid/widget/ImageView;

    if-eqz v3, :cond_8

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    instance-of v3, v2, Lcom/android/systemui/controls/ui/TouchBehavior;

    if-eqz v3, :cond_a

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/controls/ui/TouchBehavior;

    iget-object v3, v3, Lcom/android/systemui/controls/ui/TouchBehavior;->template:Landroid/service/controls/templates/ControlTemplate;

    if-eqz v3, :cond_9

    goto :goto_2

    :cond_9
    move-object v3, v5

    :goto_2
    instance-of v3, v3, Landroid/service/controls/templates/StatelessTemplate;

    if-nez v3, :cond_c

    :cond_a
    iget-object v2, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secBehavior:Lcom/android/systemui/controls/ui/SecBehavior;

    if-eqz v2, :cond_b

    invoke-interface {v2}, Lcom/android/systemui/controls/ui/SecBehavior;->dispose()V

    iput-object v5, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secBehavior:Lcom/android/systemui/controls/ui/SecBehavior;

    :cond_b
    iget-object v1, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    move-object v2, v5

    :cond_c
    iput-object v2, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    iput-object p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v1

    iget-object v2, p1, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_d

    goto :goto_3

    :cond_d
    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v1, :cond_f

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/service/controls/Control;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/service/controls/Control;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_e
    :goto_3
    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->title:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/android/systemui/controls/controller/ControlInfo;->controlTitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->subtitle:Landroid/widget/TextView;

    iget-object v3, v2, Lcom/android/systemui/controls/controller/ControlInfo;->controlSubtitle:Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_f
    :goto_4
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_13

    iget-object p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setClickable(Z)V

    iget-object p1, v2, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    check-cast v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    move-result v3

    if-eqz v3, :cond_10

    goto :goto_6

    :cond_10
    iget-object v3, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    if-eqz v3, :cond_11

    iget-object v3, v3, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->controlId:Ljava/lang/String;

    goto :goto_5

    :cond_11
    move-object v3, v5

    :goto_5
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;->invoke()V

    :cond_12
    iput-object v5, v1, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->pendingAction:Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    :cond_13
    :goto_6
    iget-boolean p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    iput-boolean v4, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    iget-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlStatus()I

    move-result v3

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getDeviceType()I

    move-result v7

    invoke-static {v0, v3, v6, v7}, Lcom/android/systemui/controls/ui/ControlViewHolder;->findBehaviorClass$default(Lcom/android/systemui/controls/ui/ControlViewHolder;ILandroid/service/controls/templates/ControlTemplate;I)Ljava/util/function/Supplier;

    move-result-object v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/systemui/controls/ui/ControlViewHolder;->bindBehavior(Lcom/android/systemui/controls/ui/Behavior;Ljava/util/function/Supplier;I)Lcom/android/systemui/controls/ui/Behavior;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v1

    iget-object v3, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->behavior:Lcom/android/systemui/controls/ui/Behavior;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v4, v3, Lcom/android/systemui/controls/ui/SecBehavior;

    if-eqz v4, :cond_14

    check-cast v3, Lcom/android/systemui/controls/ui/SecBehavior;

    goto :goto_7

    :cond_14
    move-object v3, v5

    :goto_7
    iput-object v3, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->secBehavior:Lcom/android/systemui/controls/ui/SecBehavior;

    instance-of v4, v3, Lcom/android/systemui/controls/ui/SecActionButtonBehavior;

    if-eqz v4, :cond_15

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/controls/ui/SecActionButtonBehavior;

    :cond_15
    if-eqz v5, :cond_18

    invoke-interface {v5}, Lcom/android/systemui/controls/ui/SecActionButtonBehavior;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    iget-object v4, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v4, :cond_16

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_16

    iput-object v3, v4, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->actionButtonDescription:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->updateContentDescription()V

    :cond_16
    iget-object v4, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v4, :cond_17

    iget-object v5, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    iget-object v6, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    iput-object v6, v4, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->subTitle:Ljava/lang/CharSequence;

    iput-object v5, v4, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->updateContentDescription()V

    :cond_17
    iget-object v4, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    iget-object v1, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "setSecBehavior des = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", title = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", subtitle = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SecControlViewHolder"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_18
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->updateContentDescription()V

    if-eqz p1, :cond_19

    iget-boolean p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->isLoading:Z

    if-nez p1, :cond_19

    iget-object p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    invoke-interface {p1, v0}, Lcom/android/systemui/controls/ControlsMetricsLogger;->refreshEnd(Lcom/android/systemui/controls/ui/ControlViewHolder;)V

    :cond_19
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/ControlHolder;->holders:Ljava/util/Map;

    iget-object p1, v2, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/controls/ui/ControlViewHolder;

    :cond_1a
    return-void
.end method
