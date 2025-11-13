.class public final Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;
.super Landroid/widget/GridLayout;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final SCALE_FACTOR:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3f59999a    # 0.85f

    iput p1, p0, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;->SCALE_FACTOR:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public static setViewFraction(Landroid/view/View;FFF)V
    .locals 1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    mul-float/2addr p1, p3

    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    const/high16 p1, 0x3f800000    # 1.0f

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    sub-float v0, p1, p2

    mul-float/2addr v0, p3

    add-float/2addr v0, p2

    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    :goto_1
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    sub-float/2addr p1, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final addView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    iget p0, p0, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;->SCALE_FACTOR:F

    invoke-static {p1, v0, p0, v0}, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;->setViewFraction(Landroid/view/View;FFF)V

    return-void
.end method

.method public final setPosition(FI)V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v0

    mul-int/2addr v0, p2

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v1

    mul-int/2addr v1, p2

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result p2

    if-ge v0, p2, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;->SCALE_FACTOR:F

    invoke-static {p2, v2, v3, p1}, Lcom/android/systemui/qs/customize/view/AnimatableTileGridLayout;->setViewFraction(Landroid/view/View;FFF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
