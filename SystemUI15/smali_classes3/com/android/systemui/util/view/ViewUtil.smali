.class public final Lcom/android/systemui/util/view/ViewUtil;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final $stable:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final setRectToViewWindowLocation(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 2

    const/4 p0, 0x2

    new-array p0, p0, [I

    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget p0, p0, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, p0

    invoke-virtual {p2, v0, p0, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public final touchIsWithinView(Landroid/view/View;FF)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object p0

    const/4 v0, 0x0

    aget p0, p0, v0

    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v3, p0

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, p0

    int-to-float p0, v3

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    int-to-float p0, v1

    cmpg-float p0, p0, p3

    if-gtz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    int-to-float p0, p0

    cmpg-float p0, p3, p0

    if-gtz p0, :cond_0

    move v0, v2

    :cond_0
    return v0
.end method
