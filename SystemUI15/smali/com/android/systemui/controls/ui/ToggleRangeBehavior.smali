.class public final Lcom/android/systemui/controls/ui/ToggleRangeBehavior;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/controls/ui/Behavior;
.implements Lcom/android/systemui/controls/ui/SecBehavior;
.implements Lcom/android/systemui/controls/ui/SecActionButtonBehavior;


# static fields
.field public static final Companion:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

.field public static inProgress:Z


# instance fields
.field public clipLayer:Landroid/graphics/drawable/Drawable;

.field public colorOffset:I

.field public context:Landroid/content/Context;

.field public control:Landroid/service/controls/Control;

.field public currentRangeValue:Ljava/lang/String;

.field public currentStatusText:Ljava/lang/CharSequence;

.field public cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

.field public isChecked:Z

.field public isToggleable:Z

.field public rangeAnimator:Landroid/animation/ValueAnimator;

.field public rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

.field public templateId:Ljava/lang/String;

.field public toggleRangeTemplate:Landroid/service/controls/templates/ToggleRangeTemplate;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->Companion:Lcom/android/systemui/controls/ui/ToggleRangeBehavior$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final bind(Lcom/android/systemui/controls/ui/ControlWithState;I)V
    .locals 5

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->control:Landroid/service/controls/Control;

    iput p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->colorOffset:I

    invoke-virtual {p1}, Landroid/service/controls/Control;->getStatusText()Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const v1, 0x7f0a029c

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->control:Landroid/service/controls/Control;

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v0

    :goto_2
    invoke-virtual {p1}, Landroid/service/controls/Control;->getControlTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->setupTemplate(Landroid/service/controls/templates/ControlTemplate;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v1

    iget-object v1, v1, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v1, :cond_5

    new-instance v2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$1;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_5
    invoke-virtual {p1}, Landroid/service/controls/templates/ControlTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->templateId:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p1, :cond_6

    goto :goto_4

    :cond_6
    move-object p1, v0

    :goto_4
    invoke-virtual {p1}, Landroid/service/controls/templates/RangeTemplate;->getCurrentValue()F

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v1, :cond_7

    goto :goto_5

    :cond_7
    move-object v1, v0

    :goto_5
    invoke-virtual {v1}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    move-object v2, v0

    :goto_6
    invoke-virtual {v2}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    move-result v2

    const/4 v3, 0x0

    const v4, 0x461c4000    # 10000.0f

    invoke-static {v3, v4, v1, v2, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p1

    float-to-int p1, p1

    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->updateRange(IZZ)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_9

    goto :goto_7

    :cond_9
    move-object p1, v0

    :goto_7
    iget-boolean v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v1, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_a

    move-object v0, p1

    :cond_a
    iget-object p1, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance p2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$bind$2;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/ControlViewHolder;->getSecControlViewHolder()Lcom/android/systemui/controls/ui/SecControlViewHolder;

    move-result-object v0

    iget-object v0, v0, Lcom/android/systemui/controls/ui/SecControlViewHolder;->actionIcon:Lcom/android/systemui/controls/ui/view/ControlsActionButton;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/ui/view/ControlsActionButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    return-void
.end method

.method public final endUpdateRange()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_1

    move-object v2, v0

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move-object v0, v1

    :goto_2
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v4, :cond_3

    goto :goto_3

    :cond_3
    move-object v4, v1

    :goto_3
    invoke-virtual {v4}, Landroid/service/controls/templates/RangeTemplate;->getTemplateId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move-object v5, v1

    :goto_4
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->findNearestStep(F)F

    move-result v5

    check-cast v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    iget-object v6, v2, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->controlsMetricsLogger:Lcom/android/systemui/controls/ControlsMetricsLogger;

    invoke-virtual {v2}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->isLocked()Z

    move-result v7

    invoke-interface {v6, v0, v7}, Lcom/android/systemui/controls/ControlsMetricsLogger;->drag(Lcom/android/systemui/controls/ui/ControlViewHolder;Z)V

    iget-object v6, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v6, v1

    :goto_5
    iget-object v6, v6, Lcom/android/systemui/controls/ui/ControlWithState;->ci:Lcom/android/systemui/controls/controller/ControlInfo;

    iget-object v6, v6, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    new-instance v7, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;

    invoke-direct {v7, v0, v4, v5}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$setValue$1;-><init>(Lcom/android/systemui/controls/ui/ControlViewHolder;Ljava/lang/String;F)V

    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->cws:Lcom/android/systemui/controls/ui/ControlWithState;

    if-eqz v0, :cond_6

    goto :goto_6

    :cond_6
    move-object v0, v1

    :goto_6
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlWithState;->control:Landroid/service/controls/Control;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/service/controls/Control;->isAuthRequired()Z

    move-result v3

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {v2, v6, v7, v0, v3}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->createAction(Ljava/lang/String;Lkotlin/jvm/functions/Function0;ZZ)Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->bouncerOrRun(Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl$Action;)V

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_8

    move-object v1, p0

    :cond_8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final findNearestStep(F)F
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    move-result v0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v3, :cond_1

    goto :goto_2

    :cond_1
    move-object v3, v1

    :goto_2
    invoke-virtual {v3}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gtz v3, :cond_5

    sub-float v3, p1, v0

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v3, v2

    if-gez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v2, :cond_2

    goto :goto_3

    :cond_2
    move-object v2, v1

    :goto_3
    invoke-virtual {v2}, Landroid/service/controls/templates/RangeTemplate;->getStepValue()F

    move-result v2

    add-float/2addr v0, v2

    move v2, v3

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_4

    move-object v1, p0

    :cond_4
    invoke-virtual {v1}, Landroid/service/controls/templates/RangeTemplate;->getStepValue()F

    move-result p0

    sub-float/2addr v0, p0

    return v0

    :cond_5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_6

    move-object v1, p0

    :cond_6
    invoke-virtual {v1}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    move-result p0

    return p0
.end method

.method public final format(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;
    .locals 2

    :try_start_0
    sget v0, Lkotlin/jvm/internal/StringCompanionObject;->$r8$clinit:I

    invoke-virtual {p0, p3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->findNearestStep(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ControlsUiController"

    const-string v1, "Illegal format in range template"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string p1, ""

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object p0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->format(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final getContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->toggleRangeTemplate:Landroid/service/controls/templates/ToggleRangeTemplate;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/service/controls/templates/ToggleRangeTemplate;->getActionDescription()Ljava/lang/CharSequence;

    move-result-object p0

    if-nez p0, :cond_1

    :cond_0
    const-string p0, ""

    :cond_1
    return-object p0
.end method

.method public final initialize(Lcom/android/systemui/controls/ui/ControlViewHolder;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    iget-object v0, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    new-instance v0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;

    iget-object v1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;Landroid/view/View;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->context:Landroid/content/Context;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iget-object p1, p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    new-instance v2, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;

    invoke-direct {v2, v1, v0, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$initialize$1;-><init>(Landroid/view/GestureDetector;Lcom/android/systemui/controls/ui/ToggleRangeBehavior$SecToggleRangeGestureListener;Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final levelToRangeValue(I)F
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p0, :cond_1

    move-object v1, p0

    :cond_1
    invoke-virtual {v1}, Landroid/service/controls/templates/RangeTemplate;->getMaxValue()F

    move-result p0

    const v1, 0x461c4000    # 10000.0f

    int-to-float p1, p1

    const/4 v2, 0x0

    invoke-static {v0, p0, v2, v1, p1}, Landroid/util/MathUtils;->constrainedMap(FFFFF)F

    move-result p0

    return p0
.end method

.method public final setupTemplate(Landroid/service/controls/templates/ControlTemplate;)Z
    .locals 3

    instance-of v0, p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    check-cast p1, Landroid/service/controls/templates/ToggleRangeTemplate;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->toggleRangeTemplate:Landroid/service/controls/templates/ToggleRangeTemplate;

    invoke-virtual {p1}, Landroid/service/controls/templates/ToggleRangeTemplate;->getRange()Landroid/service/controls/templates/RangeTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    iput-boolean v1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isToggleable:Z

    invoke-virtual {p1}, Landroid/service/controls/templates/ToggleRangeTemplate;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    goto :goto_1

    :cond_0
    instance-of v0, p1, Landroid/service/controls/templates/RangeTemplate;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Landroid/service/controls/templates/RangeTemplate;

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    invoke-virtual {p1}, Landroid/service/controls/templates/RangeTemplate;->getCurrentValue()F

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/service/controls/templates/RangeTemplate;->getMinValue()F

    move-result v0

    cmpg-float p1, p1, v0

    if-nez p1, :cond_2

    move v2, v1

    :cond_2
    xor-int/lit8 p1, v2, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->isChecked:Z

    goto :goto_1

    :cond_3
    instance-of v0, p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    if-eqz v0, :cond_4

    check-cast p1, Landroid/service/controls/templates/TemperatureControlTemplate;

    invoke-virtual {p1}, Landroid/service/controls/templates/TemperatureControlTemplate;->getTemplate()Landroid/service/controls/templates/ControlTemplate;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->setupTemplate(Landroid/service/controls/templates/ControlTemplate;)Z

    move-result v1

    goto :goto_1

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported template type: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ControlsUiController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    :goto_1
    return v1
.end method

.method public final updateRange(IZZ)V
    .locals 6

    const/16 v0, 0x2710

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v2

    if-nez v2, :cond_2

    if-lez p1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    iget v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->colorOffset:I

    invoke-virtual {v2, v4, p2, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->applyRenderInfo$frameworks__base__packages__SystemUI__android_common__SystemUI_core(IZZ)V

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    const/4 v2, 0x1

    if-eqz p3, :cond_b

    if-eqz p1, :cond_5

    if-ne p1, v0, :cond_4

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v2

    :goto_3
    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_6
    move-object v4, v3

    :goto_4
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v4

    if-eq v4, p1, :cond_e

    iget-object v4, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v4, :cond_7

    move-object v5, v4

    goto :goto_5

    :cond_7
    move-object v5, v3

    :goto_5
    iget-object v5, v5, Lcom/android/systemui/controls/ui/ControlViewHolder;->controlActionCoordinator:Lcom/android/systemui/controls/ui/ControlActionCoordinator;

    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    move-object v4, v3

    :goto_6
    check-cast v5, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v0, :cond_9

    const/16 v0, 0x1a

    goto :goto_7

    :cond_9
    const/16 v0, 0x1b

    :goto_7
    iget-object v4, v4, Lcom/android/systemui/controls/ui/ControlViewHolder;->layout:Landroid/view/ViewGroup;

    iget-object v5, v5, Lcom/android/systemui/controls/ui/ControlActionCoordinatorImpl;->vibrator:Lcom/android/systemui/statusbar/VibratorHelper;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    move-object v0, v3

    :goto_8
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    goto :goto_b

    :cond_b
    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->clipLayer:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_c

    goto :goto_9

    :cond_c
    move-object v0, v3

    :goto_9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v0

    if-eq p1, v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz v0, :cond_d

    goto :goto_a

    :cond_d
    move-object v0, v3

    :goto_a
    iget-object v0, v0, Lcom/android/systemui/controls/ui/ControlViewHolder;->clipLayer:Landroid/graphics/drawable/ClipDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I

    move-result v0

    filled-new-array {v0, p1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v4, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$1;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v4, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$2;

    invoke-direct {v4, p0}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior$updateRange$1$2;-><init>(Lcom/android/systemui/controls/ui/ToggleRangeBehavior;)V

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const-wide/16 v4, 0x2bc

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v4, Lcom/android/app/animation/Interpolators;->CONTROL_STATE:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iput-object v0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeAnimator:Landroid/animation/ValueAnimator;

    :cond_e
    :goto_b
    if-eqz p2, :cond_13

    invoke-virtual {p0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->levelToRangeValue(I)F

    move-result p1

    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->rangeTemplate:Landroid/service/controls/templates/RangeTemplate;

    if-eqz p2, :cond_f

    goto :goto_c

    :cond_f
    move-object p2, v3

    :goto_c
    invoke-virtual {p2}, Landroid/service/controls/templates/RangeTemplate;->getFormatString()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "%.1f"

    invoke-virtual {p0, p2, v0, p1}, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->format(Ljava/lang/String;Ljava/lang/String;F)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentRangeValue:Ljava/lang/String;

    if-eqz p3, :cond_11

    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p0, :cond_10

    move-object v3, p0

    :cond_10
    invoke-virtual {v3, p1, v2}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    goto :goto_d

    :cond_11
    iget-object p2, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p2, :cond_12

    move-object v3, p2

    :cond_12
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    invoke-virtual {v3, p0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    goto :goto_d

    :cond_13
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->cvh:Lcom/android/systemui/controls/ui/ControlViewHolder;

    if-eqz p1, :cond_14

    move-object v3, p1

    :cond_14
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ToggleRangeBehavior;->currentStatusText:Ljava/lang/CharSequence;

    sget-object p1, Lcom/android/systemui/controls/ui/ControlViewHolder;->FORCE_PANEL_DEVICES:Ljava/util/Set;

    invoke-virtual {v3, p0, v1}, Lcom/android/systemui/controls/ui/ControlViewHolder;->setStatusText(Ljava/lang/CharSequence;Z)V

    :goto_d
    return-void
.end method
