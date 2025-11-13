.class public final Landroidx/cardview/widget/CardViewApi21Impl;
.super Ljava/lang/Object;
.source "qb/99320575 d56624c1bb715a84cea9c0c1dda8efd1b9707127cfd9652e1a6ad0bfbdc507b8"


# virtual methods
.method public final setMaxElevation(Landroidx/cardview/widget/CardView$1;F)V
    .locals 4

    .line 1
    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    .line 4
    .line 5
    iget-object v0, p1, Landroidx/cardview/widget/CardView$1;->this$0:Landroidx/cardview/widget/CardView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 16
    .line 17
    cmpl-float v3, p2, v3

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    iget-boolean v3, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 22
    .line 23
    if-ne v3, v1, :cond_0

    .line 24
    .line 25
    iget-boolean v3, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 26
    .line 27
    if-ne v3, v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iput p2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 31
    .line 32
    iput-boolean v1, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForPadding:Z

    .line 33
    .line 34
    iput-boolean v2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mInsetForRadius:Z

    .line 35
    .line 36
    const/4 p2, 0x0

    .line 37
    invoke-virtual {p0, p2}, Landroidx/cardview/widget/RoundRectDrawable;->updateBounds(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getUseCompatPadding()Z

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    invoke-virtual {p1, p0, p0, p0, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    .line 51
    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    iget-object p0, p1, Landroidx/cardview/widget/CardView$1;->mCardBackground:Landroid/graphics/drawable/Drawable;

    .line 55
    .line 56
    check-cast p0, Landroidx/cardview/widget/RoundRectDrawable;

    .line 57
    .line 58
    iget p2, p0, Landroidx/cardview/widget/RoundRectDrawable;->mPadding:F

    .line 59
    .line 60
    iget p0, p0, Landroidx/cardview/widget/RoundRectDrawable;->mRadius:F

    .line 61
    .line 62
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    invoke-static {p2, p0, v1}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    float-to-double v1, v1

    .line 71
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    .line 72
    .line 73
    .line 74
    move-result-wide v1

    .line 75
    double-to-int v1, v1

    .line 76
    invoke-virtual {v0}, Landroidx/cardview/widget/CardView;->getPreventCornerOverlap()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {p2, p0, v0}, Landroidx/cardview/widget/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    .line 81
    .line 82
    .line 83
    move-result p0

    .line 84
    float-to-double v2, p0

    .line 85
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 86
    .line 87
    .line 88
    move-result-wide v2

    .line 89
    double-to-int p0, v2

    .line 90
    invoke-virtual {p1, v1, p0, v1, p0}, Landroidx/cardview/widget/CardView$1;->setShadowPadding(IIII)V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method
