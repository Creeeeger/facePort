.class public final Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$StatusBarViewsCenterProvider;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getViewEdgeCenter(Landroid/view/View;Landroid/graphics/Point;Z)V
    .locals 4

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    xor-int/2addr p2, v0

    const/4 v0, 0x2

    new-array v3, v0, [I

    invoke-virtual {p0, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    aget v1, v3, v1

    aget v2, v3, v2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    div-int/2addr p2, v0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/2addr v3, v0

    sub-int/2addr p2, v3

    :goto_1
    add-int/2addr v1, p2

    iput v1, p1, Landroid/graphics/Point;->x:I

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    div-int/2addr p0, v0

    add-int/2addr p0, v2

    iput p0, p1, Landroid/graphics/Point;->y:I

    return-void
.end method


# virtual methods
.method public final getViewCenter(Landroid/view/View;Landroid/graphics/Point;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0c1a

    if-ne v0, v1, :cond_0

    const/4 p0, 0x1

    invoke-static {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$StatusBarViewsCenterProvider;->getViewEdgeCenter(Landroid/view/View;Landroid/graphics/Point;Z)V

    goto :goto_0

    :cond_0
    const v1, 0x7f0a0c15

    if-ne v0, v1, :cond_1

    const/4 p0, 0x0

    invoke-static {p1, p2, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarViewController$StatusBarViewsCenterProvider;->getViewEdgeCenter(Landroid/view/View;Landroid/graphics/Point;Z)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator$ViewCenterProvider;->getViewCenter(Landroid/view/View;Landroid/graphics/Point;)V

    :goto_0
    return-void
.end method
