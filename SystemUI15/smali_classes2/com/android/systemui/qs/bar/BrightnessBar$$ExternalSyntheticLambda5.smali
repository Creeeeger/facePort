.class public final synthetic Lcom/android/systemui/qs/bar/BrightnessBar$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/view/View$OnHoverListener;


# virtual methods
.method public final onHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p0

    const/16 p2, 0x9

    const/4 v0, 0x1

    if-eq p0, p2, :cond_1

    const/16 p2, 0xa

    const/4 v1, 0x0

    if-eq p0, p2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setHovered(Z)V

    const/16 p0, 0x100

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setHovered(Z)V

    const/16 p0, 0x80

    invoke-virtual {p1, p0}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :goto_0
    return v0
.end method
