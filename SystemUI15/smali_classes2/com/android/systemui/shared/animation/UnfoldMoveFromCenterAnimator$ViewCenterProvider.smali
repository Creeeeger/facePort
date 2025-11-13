.class public interface abstract Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# virtual methods
.method public getViewCenter(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 3

    const/4 p0, 0x2

    new-array v0, p0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, p0

    add-int/2addr v2, v1

    iput v2, p2, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/2addr p1, p0

    add-int/2addr p1, v0

    iput p1, p2, Landroid/graphics/Point;->y:I

    return-void
.end method
