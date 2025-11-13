.class public final Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $iconHolderView:Landroid/view/View;

.field public final synthetic $largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field public final synthetic $viewsToHideWhenSmall:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroidx/constraintlayout/widget/ConstraintSet;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintSet;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            "Landroidx/constraintlayout/widget/ConstraintSet;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$viewsToHideWhenSmall:Ljava/util/List;

    iput-object p2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p3, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$iconHolderView:Landroid/view/View;

    iput-object p4, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    iput-object p5, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 9

    const/16 p2, 0x8

    check-cast p1, Lkotlin/Pair;

    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$viewsToHideWhenSmall:Ljava/util/List;

    iget-object v2, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$iconHolderView:Landroid/view/View;

    sget-object v3, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;->INSTANCE:Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-static {p1}, Lcom/android/systemui/biometrics/ui/viewmodel/PromptSizeKt;->isSmall(Lcom/android/systemui/biometrics/ui/viewmodel/PromptSize;)Z

    move-result v4

    instance-of v5, v3, Landroid/widget/TextView;

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move-object v5, v3

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-static {v5}, Lkotlin/text/StringsKt__StringsJVMKt;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v6

    goto :goto_1

    :cond_0
    move v5, v7

    :goto_1
    instance-of v8, v3, Landroid/widget/ImageView;

    if-eqz v8, :cond_1

    move-object v8, v3

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-nez v8, :cond_1

    goto :goto_2

    :cond_1
    move v6, v7

    :goto_2
    if-nez v4, :cond_2

    if-nez v5, :cond_2

    if-eqz v6, :cond_3

    :cond_2
    move v7, p2

    :cond_3
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$largeConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    const p1, 0x7f0a0182

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    const v3, 0x7f0a052c

    invoke-virtual {v1, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    const v4, 0x7f0a0a5f

    invoke-virtual {v1, v4, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    if-eqz v0, :cond_5

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$smallConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {v1, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    invoke-virtual {v1, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/BiometricViewSizeBinder$bind$2$1$4$3;->$mediumConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-virtual {p0, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    invoke-virtual {p0, v3, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setVisibility(II)V

    :cond_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
