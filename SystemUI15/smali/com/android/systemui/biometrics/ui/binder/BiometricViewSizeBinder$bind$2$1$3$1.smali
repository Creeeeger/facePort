.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $leftGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic $mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $midGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic $rightGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic $smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $topGuideline:Landroidx/constraintlayout/widget/Guideline;

.field public final synthetic $view:Landroid/view/View;

.field public final synthetic $windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/view/WindowManager;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroidx/constraintlayout/widget/Guideline;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$windowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$leftGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$rightGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$topGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p7, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$midGuideline:Landroidx/constraintlayout/widget/Guideline;

    iput-object p8, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$windowManager:Landroid/view/WindowManager;

    invoke-interface {p2}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    move-result-object p2

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    const v0, 0x7f0a019f

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v1, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$leftGuideline:Landroidx/constraintlayout/widget/Guideline;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    if-ltz p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v2, p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    goto :goto_0

    :cond_0
    if-gez p2, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    :cond_1
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$rightGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-ltz p2, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    goto :goto_1

    :cond_2
    if-gez p2, :cond_3

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    :cond_3
    :goto_1
    iget p2, p1, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$topGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-ltz p2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v2, p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    goto :goto_2

    :cond_4
    if-gez p2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v3, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-virtual {v1, p2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result p2

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-virtual {v2, p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    :cond_5
    :goto_2
    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$midGuideline:Landroidx/constraintlayout/widget/Guideline;

    if-eqz p2, :cond_8

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$view:Landroid/view/View;

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    sub-int/2addr v0, v2

    :goto_3
    iget v2, p1, Landroid/graphics/Rect;->right:I

    if-ltz v2, :cond_7

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$3$1;->$view:Landroid/view/View;

    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result p0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    sub-int/2addr p0, p1

    goto :goto_4

    :cond_7
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result p0

    :goto_4
    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v1, p0, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineBegin(II)V

    :cond_8
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
