.class public final synthetic Lcom/android/systemui/shade/NotificationPanelViewController$$ExternalSyntheticLambda30;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BiConsumer;


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/shade/NotificationPanelView;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p0

    float-to-int p0, p0

    iput p0, p1, Lcom/android/systemui/shade/NotificationPanelView;->mCurrentPanelAlpha:I

    iget-object p2, p1, Lcom/android/systemui/shade/NotificationPanelView;->mAlphaPaint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-virtual {p2, p0, v0, v0, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
