.class public final Landroidx/leanback/transition/FadeAndShortSlide$3;
.super Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroidx/leanback/transition/FadeAndShortSlide$CalculateSlide;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGoneX(Landroidx/leanback/transition/FadeAndShortSlide;Landroid/view/ViewGroup;Landroid/view/View;[I)F
    .locals 2

    const/4 p0, 0x0

    aget v0, p4, p0

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    invoke-virtual {p2, p4}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/transition/Visibility;->getEpicenter()Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_0

    aget p0, p4, p0

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result p4

    div-int/lit8 p4, p4, 0x2

    add-int/2addr p4, p0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result p4

    :goto_0
    if-ge v1, p4, :cond_1

    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p0

    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result p1

    sub-float/2addr p0, p1

    return p0

    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getTranslationX()F

    move-result p0

    invoke-virtual {p1, p2}, Landroidx/leanback/transition/FadeAndShortSlide;->getHorizontalDistance(Landroid/view/ViewGroup;)F

    move-result p1

    add-float/2addr p1, p0

    return p1
.end method
