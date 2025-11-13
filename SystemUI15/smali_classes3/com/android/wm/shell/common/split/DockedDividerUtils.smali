.class public final Lcom/android/wm/shell/common/split/DockedDividerUtils;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateBoundsForCellWithPosition(Landroid/graphics/Rect;Landroid/graphics/Rect;III)V
    .locals 3

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    if-eq p3, v0, :cond_2

    const/4 v2, 0x3

    if-eq p3, v2, :cond_1

    const/4 v2, 0x4

    if-eq p3, v2, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    add-int/2addr p2, p4

    iput p2, p0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_2
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_3
    iput p2, p0, Landroid/graphics/Rect;->right:I

    :goto_0
    if-eq p3, v1, :cond_5

    if-ne p3, v0, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :cond_5
    :goto_1
    invoke-static {p0, v1}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    invoke-virtual {p0, p1}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    return-void
.end method

.method public static calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_MULTI_SPLIT_BOUNDS_POLICY:Z

    if-eqz p3, :cond_0

    if-eqz p6, :cond_0

    invoke-virtual {p2, p6}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :cond_0
    const/4 p3, 0x2

    const/4 p4, 0x1

    if-eq p1, p4, :cond_4

    if-eq p1, p3, :cond_3

    const/4 p6, 0x3

    if-eq p1, p6, :cond_2

    const/4 p6, 0x4

    if-eq p1, p6, :cond_1

    goto :goto_0

    :cond_1
    add-int/2addr p0, p5

    iput p0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_2
    add-int/2addr p0, p5

    iput p0, p2, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_3
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_4
    iput p0, p2, Landroid/graphics/Rect;->right:I

    :goto_0
    if-eq p1, p4, :cond_5

    if-ne p1, p3, :cond_6

    :cond_5
    move v0, p4

    :cond_6
    invoke-static {p2, v0}, Lcom/android/wm/shell/common/split/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    return-void
.end method

.method public static calculateSplitRatio(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)F
    .locals 10

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v0, v1, :cond_0

    iget v6, p0, Landroid/graphics/Rect;->left:I

    iget v7, p1, Landroid/graphics/Rect;->left:I

    if-ne v6, v7, :cond_0

    iget v6, p0, Landroid/graphics/Rect;->right:I

    iget v7, p1, Landroid/graphics/Rect;->right:I

    if-ge v6, v7, :cond_0

    move v0, v5

    goto :goto_0

    :cond_0
    iget v6, p0, Landroid/graphics/Rect;->top:I

    iget v7, p1, Landroid/graphics/Rect;->top:I

    if-ne v6, v7, :cond_1

    iget v8, p0, Landroid/graphics/Rect;->left:I

    iget v9, p1, Landroid/graphics/Rect;->left:I

    if-ne v8, v9, :cond_1

    if-ge v0, v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    if-ne v6, v7, :cond_2

    iget v8, p0, Landroid/graphics/Rect;->right:I

    iget v9, p1, Landroid/graphics/Rect;->right:I

    if-ne v8, v9, :cond_2

    iget v8, p1, Landroid/graphics/Rect;->left:I

    iget v9, p0, Landroid/graphics/Rect;->left:I

    if-ge v8, v9, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_3

    if-ge v7, v6, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    const/4 v0, -0x1

    :goto_0
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    if-eqz p2, :cond_4

    invoke-virtual {v1, p2}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    :cond_4
    if-eq v0, v5, :cond_8

    if-eq v0, v2, :cond_7

    if-eq v0, v4, :cond_6

    if-eq v0, v3, :cond_5

    const/4 p0, 0x0

    goto :goto_2

    :cond_5
    iget p0, p0, Landroid/graphics/Rect;->top:I

    :goto_1
    sub-int/2addr p0, p3

    goto :goto_2

    :cond_6
    iget p0, p0, Landroid/graphics/Rect;->left:I

    goto :goto_1

    :cond_7
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    goto :goto_2

    :cond_8
    iget p0, p0, Landroid/graphics/Rect;->right:I

    :goto_2
    if-eq v0, v2, :cond_a

    if-ne v0, v3, :cond_9

    goto :goto_3

    :cond_9
    iget p2, v1, Landroid/graphics/Rect;->left:I

    goto :goto_4

    :cond_a
    :goto_3
    iget p2, v1, Landroid/graphics/Rect;->top:I

    :goto_4
    sub-int/2addr p0, p2

    int-to-float p0, p0

    if-eq v0, v2, :cond_c

    if-ne v0, v3, :cond_b

    goto :goto_5

    :cond_b
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    goto :goto_6

    :cond_c
    :goto_5
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p1

    :goto_6
    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method

.method public static sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget p1, p0, Landroid/graphics/Rect;->left:I

    iget v0, p0, Landroid/graphics/Rect;->right:I

    if-lt p1, v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    :cond_0
    iget p1, p0, Landroid/graphics/Rect;->top:I

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    if-lt p1, v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget p1, p0, Landroid/graphics/Rect;->right:I

    iget v0, p0, Landroid/graphics/Rect;->left:I

    if-gt p1, v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    :cond_2
    iget p1, p0, Landroid/graphics/Rect;->bottom:I

    iget v0, p0, Landroid/graphics/Rect;->top:I

    if-gt p1, v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    :cond_3
    :goto_0
    return-void
.end method
