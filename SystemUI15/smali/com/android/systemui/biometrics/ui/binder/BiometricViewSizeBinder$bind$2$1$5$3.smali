.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final synthetic $currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic $flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $panelView:Landroid/view/View;

.field public final synthetic $pxToDp:F

.field public final synthetic $smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;FLandroid/view/View;Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/constraintlayout/widget/ConstraintSet;Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/view/View;Landroid/view/accessibility/AccessibilityManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "F",
            "Landroid/view/View;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;",
            ">;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;",
            ">;",
            "Landroid/view/View;",
            "Landroid/view/accessibility/AccessibilityManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput p4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$pxToDp:F

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p9, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$panelView:Landroid/view/View;

    iput-object p10, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 8

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    sget-object v1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Left:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    if-ne p2, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    const v3, 0x7f0a0a5f

    iget-object v4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$flipConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v4, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintSet;)V

    :goto_1
    const v1, 0x7f0a070e

    invoke-virtual {v4, v3, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const v0, 0x7f0a09d1

    const/4 v1, 0x2

    invoke-virtual {v4, v3, v1, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    goto :goto_2

    :cond_2
    if-eqz p2, :cond_3

    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Top:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    if-ne p2, v0, :cond_3

    const/4 v0, 0x3

    const v1, 0x7f0a052c

    const/4 v6, 0x4

    invoke-virtual {v5, v3, v0, v1, v6}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const v1, 0x7f0a0222

    invoke-virtual {v5, v3, v6, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const v1, 0x7f0a0180

    const v6, 0x7f0a08ae

    invoke-virtual {v5, v6, v0, v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    const/16 v1, -0x18

    int-to-float v1, v1

    iget v7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$pxToDp:F

    mul-float/2addr v1, v7

    float-to-int v1, v1

    invoke-virtual {v5, v6, v0, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    const/4 v0, 0x0

    invoke-virtual {v5, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setVerticalBias(IF)V

    :cond_3
    :goto_2
    invoke-static {p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$currentSize:Lkotlin/jvm/internal/Ref$ObjectRef;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_4

    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Left:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    if-ne p2, v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/16 :goto_3

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/16 :goto_3

    :cond_5
    invoke-static {p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isMedium(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v0

    if-eqz v0, :cond_7

    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    if-eqz p2, :cond_6

    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Left:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    if-ne p2, v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_3

    :cond_7
    invoke-static {p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isMedium(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v0

    if-eqz v0, :cond_9

    if-eqz p2, :cond_8

    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;->Left:Lcom/android/systemui/biometrics/ui/viewmodel/PromptPosition;

    if-ne p2, v0, :cond_8

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v5, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_3

    :cond_9
    if-eqz p1, :cond_a

    sget-object v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;->LARGE:Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    if-ne p1, v0, :cond_a

    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    invoke-static {v0}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isMedium(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/transition/AutoTransition;

    invoke-direct {v0}, Landroid/transition/AutoTransition;-><init>()V

    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/transition/AutoTransition;->setDuration(J)Landroid/transition/TransitionSet;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-static {v2, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_a
    :goto_3
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$currentPosition:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;->access$bind$notifyAccessibilityChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$panelView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    iget-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$5$3;->$view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
