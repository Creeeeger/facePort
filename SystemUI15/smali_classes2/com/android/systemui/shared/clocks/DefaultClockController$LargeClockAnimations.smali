.class public final Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;
.super Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/shared/clocks/AnimatableClockView;",
            "FF)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockAnimations;-><init>(Lcom/android/systemui/shared/clocks/DefaultClockController;Lcom/android/systemui/shared/clocks/AnimatableClockView;FF)V

    return-void
.end method


# virtual methods
.method public final onPositionUpdated(FF)V
    .locals 7

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    const/4 v3, 0x4

    if-ge v1, v3, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    goto :goto_1

    :cond_0
    move v3, v4

    :goto_1
    const/4 v5, 0x0

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    goto :goto_2

    :cond_1
    move v4, v0

    :goto_2
    invoke-virtual {v2, p2, v4, v1}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getDigitFraction(FZI)F

    move-result v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    mul-float/2addr v4, v3

    iget-object v6, v2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphOffsets:Ljava/util/List;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v6, v1, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-lez v5, :cond_2

    iget-object v2, v2, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphOffsets:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    sub-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->invalidate()V

    return-void
.end method

.method public final onPositionUpdated(IIF)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockAnimations;->this$0:Lcom/android/systemui/shared/clocks/DefaultClockController;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController;->largeClock:Lcom/android/systemui/shared/clocks/DefaultClockController$LargeClockFaceController;

    iget-object p0, p0, Lcom/android/systemui/shared/clocks/DefaultClockController$DefaultClockFaceController;->view:Lcom/android/systemui/shared/clocks/AnimatableClockView;

    invoke-virtual {p0}, Landroid/widget/TextView;->isLayoutRtl()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    if-lez p2, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result p2

    sub-int/2addr p2, p1

    :goto_1
    const/4 p1, 0x4

    if-ge v2, p1, :cond_2

    invoke-virtual {p0, p3, v1, v2}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->getDigitFraction(FZI)F

    move-result p1

    int-to-float v0, p2

    mul-float/2addr p1, v0

    sub-float/2addr p1, v0

    iget-object v0, p0, Lcom/android/systemui/shared/clocks/AnimatableClockView;->glyphOffsets:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/shared/clocks/AnimatableClockView;->invalidate()V

    return-void
.end method
