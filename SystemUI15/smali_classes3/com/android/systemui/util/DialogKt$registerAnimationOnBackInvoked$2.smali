.class final Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1;"
    }
.end annotation


# instance fields
.field final synthetic $targetView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$2;->$targetView:Landroid/view/View;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/animation/back/BackTransformation;

    invoke-virtual {p0, p1}, Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$2;->invoke(Lcom/android/systemui/animation/back/BackTransformation;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/android/systemui/animation/back/BackTransformation;)V
    .locals 6

    iget-object p0, p0, Lcom/android/systemui/util/DialogKt$registerAnimationOnBackInvoked$2;->$targetView:Landroid/view/View;

    iget v0, p1, Lcom/android/systemui/animation/back/BackTransformation;->translateX:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p1, Lcom/android/systemui/animation/back/BackTransformation;->translateX:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    :cond_0
    iget v0, p1, Lcom/android/systemui/animation/back/BackTransformation;->translateY:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/systemui/animation/back/BackTransformation;->translateY:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/animation/back/BackTransformation;->scalePivotPosition:Lcom/android/systemui/animation/back/ScalePivotPosition;

    if-eqz v0, :cond_6

    sget-object v1, Lcom/android/systemui/animation/back/ScalePivotPosition$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v1, v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float/2addr v2, v5

    goto :goto_1

    :cond_2
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v4, :cond_5

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    goto :goto_2

    :cond_4
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p0

    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v5

    :goto_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setPivotX(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setPivotY(F)V

    :cond_6
    iget v0, p1, Lcom/android/systemui/animation/back/BackTransformation;->scale:F

    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-nez v0, :cond_7

    iget v0, p1, Lcom/android/systemui/animation/back/BackTransformation;->scale:F

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    iget p1, p1, Lcom/android/systemui/animation/back/BackTransformation;->scale:F

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :cond_7
    return-void
.end method
