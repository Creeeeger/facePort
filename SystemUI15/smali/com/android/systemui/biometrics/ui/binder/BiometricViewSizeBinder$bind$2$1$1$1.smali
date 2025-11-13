.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $iconHolderView:Landroid/view/View;

.field public final synthetic $mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1$1;->$iconHolderView:Landroid/view/View;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    check-cast p1, Landroid/graphics/Rect;

    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1$1;->$iconHolderView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1$1;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iget-object v6, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1$1;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    const v7, 0x7f0a0180

    if-eqz v0, :cond_0

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    invoke-virtual {v6, v7, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v6, v7, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v6, v7, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    invoke-virtual {v5, v7, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v5, v7, v3, v1, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5, v7, v3, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    const/4 v8, 0x3

    const/4 v9, 0x4

    if-eqz v0, :cond_1

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToBottom:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {v6, v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v6, v7, v8, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    invoke-virtual {v5, v7, v9}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5, v7, v8, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-eqz v0, :cond_2

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-virtual {v6, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v6, v7, v4, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v6, v7, v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    invoke-virtual {v5, v7, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    invoke-virtual {v5, v7, v4, v1, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v5, v7, v4, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    :cond_2
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz v0, :cond_3

    iput v2, p2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    iput v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v6, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v6, v7, v9, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    invoke-virtual {v5, v7, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clear(II)V

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v9, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$1$1;->$iconHolderView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
