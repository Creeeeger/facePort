.class public Lcom/android/internal/policy/DockedDividerUtils;
.super Ljava/lang/Object;
.source "DockedDividerUtils.java"


# static fields
.field public static final blacklist INVALID_DIVIDER_RATIO:F


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist calculateBoundsForCellWithPosition(IILandroid/graphics/Rect;Landroid/graphics/Rect;I)V
    .locals 2
    .param p0, "position"    # I
    .param p1, "dockSide"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "splitArea"    # Landroid/graphics/Rect;
    .param p4, "dividerSize"    # I

    .line 81
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 82
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 93
    :pswitch_0
    add-int v0, p0, p4

    iput v0, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 90
    :pswitch_1
    add-int v0, p0, p4

    iput v0, p2, Landroid/graphics/Rect;->left:I

    .line 91
    goto :goto_0

    .line 87
    :pswitch_2
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 88
    goto :goto_0

    .line 84
    :pswitch_3
    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 85
    nop

    .line 96
    :goto_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_1
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 98
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 99
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist calculateBoundsForPosition(IILandroid/graphics/Rect;III)V
    .locals 7
    .param p0, "position"    # I
    .param p1, "dockSide"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "dividerSize"    # I

    .line 48
    const/4 v6, 0x0

    move v0, p0

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v6}, Lcom/android/internal/policy/DockedDividerUtils;->calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V

    .line 50
    return-void
.end method

.method public static blacklist calculateBoundsForPosition(IILandroid/graphics/Rect;IIILandroid/graphics/Rect;)V
    .locals 3
    .param p0, "position"    # I
    .param p1, "dockSide"    # I
    .param p2, "outRect"    # Landroid/graphics/Rect;
    .param p3, "displayWidth"    # I
    .param p4, "displayHeight"    # I
    .param p5, "dividerSize"    # I
    .param p6, "stableInsets"    # Landroid/graphics/Rect;

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p2, v0, v0, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 61
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    add-int v1, p0, p5

    iput v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 69
    :pswitch_1
    add-int v1, p0, p5

    iput v1, p2, Landroid/graphics/Rect;->left:I

    .line 70
    goto :goto_0

    .line 66
    :pswitch_2
    iput p0, p2, Landroid/graphics/Rect;->bottom:I

    .line 67
    goto :goto_0

    .line 63
    :pswitch_3
    iput p0, p2, Landroid/graphics/Rect;->right:I

    .line 64
    nop

    .line 75
    :goto_0
    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    invoke-static {p2, v0}, Lcom/android/internal/policy/DockedDividerUtils;->sanitizeStackBounds(Landroid/graphics/Rect;Z)V

    .line 76
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist calculateMiddlePosition(ZLandroid/graphics/Rect;III)I
    .locals 4
    .param p0, "isHorizontalDivision"    # Z
    .param p1, "insets"    # Landroid/graphics/Rect;
    .param p2, "displayWidth"    # I
    .param p3, "displayHeight"    # I
    .param p4, "dividerSize"    # I

    .line 149
    if-eqz p0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 150
    .local v0, "start":I
    :goto_0
    if-eqz p0, :cond_1

    .line 151
    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    sub-int v1, p3, v1

    goto :goto_1

    .line 152
    :cond_1
    iget v1, p1, Landroid/graphics/Rect;->right:I

    sub-int v1, p2, v1

    :goto_1
    nop

    .line 153
    .local v1, "end":I
    sub-int v2, v1, v0

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v0

    div-int/lit8 v3, p4, 0x2

    sub-int/2addr v2, v3

    return v2
.end method

.method public static blacklist calculatePositionForBounds(Landroid/graphics/Rect;II)I
    .locals 1
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "dockSide"    # I
    .param p2, "dividerSize"    # I

    .line 133
    packed-switch p1, :pswitch_data_0

    .line 143
    const/4 v0, 0x0

    return v0

    .line 141
    :pswitch_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p2

    return v0

    .line 139
    :pswitch_1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p2

    return v0

    .line 137
    :pswitch_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    return v0

    .line 135
    :pswitch_3
    iget v0, p0, Landroid/graphics/Rect;->right:I

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist calculateSplitRatio(Landroid/content/res/Resources;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 6
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "main"    # Landroid/graphics/Rect;
    .param p2, "splitArea"    # Landroid/graphics/Rect;
    .param p3, "applyInsets"    # Landroid/graphics/Rect;

    .line 211
    invoke-static {p0}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerInsets(Landroid/content/res/Resources;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/internal/policy/DockedDividerUtils;->getDividerSize(Landroid/content/res/Resources;I)I

    move-result v0

    .line 212
    .local v0, "dividerSize":I
    invoke-static {p1, p2}, Lcom/android/internal/policy/DockedDividerUtils;->getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v1

    .line 213
    .local v1, "dockSide":I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 214
    .local v2, "stableBounds":Landroid/graphics/Rect;
    if-eqz p3, :cond_0

    .line 215
    invoke-virtual {v2, p3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Rect;)V

    .line 217
    :cond_0
    invoke-static {p1, v1, v0}, Lcom/android/internal/policy/DockedDividerUtils;->calculatePositionForBounds(Landroid/graphics/Rect;II)I

    move-result v3

    .line 218
    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->isHorizontalDivision(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    iget v4, v2, Landroid/graphics/Rect;->left:I

    :goto_0
    sub-int/2addr v3, v4

    .line 219
    .local v3, "positionInDisplay":I
    int-to-float v4, v3

    invoke-static {v1}, Lcom/android/internal/policy/DockedDividerUtils;->isHorizontalDivision(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    goto :goto_1

    .line 220
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v5

    :goto_1
    sub-int/2addr v5, v0

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 219
    return v4
.end method

.method public static blacklist getDividerInsets(Landroid/content/res/Resources;)I
    .locals 1
    .param p0, "res"    # Landroid/content/res/Resources;

    .line 173
    const v0, 0x105014b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public static blacklist getDividerSize(Landroid/content/res/Resources;I)I
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "dividerInsets"    # I

    .line 178
    const v0, 0x105014c

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 180
    .local v0, "windowWidth":I
    mul-int/lit8 v1, p1, 0x2

    sub-int v1, v0, v1

    return v1
.end method

.method public static blacklist getDockSide(II)I
    .locals 1
    .param p0, "displayWidth"    # I
    .param p1, "displayHeight"    # I

    .line 185
    if-le p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public static blacklist getDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .locals 2
    .param p0, "main"    # Landroid/graphics/Rect;
    .param p1, "display"    # Landroid/graphics/Rect;

    .line 190
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ge v0, v1, :cond_0

    .line 192
    const/4 v0, 0x1

    return v0

    .line 193
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ge v0, v1, :cond_1

    .line 195
    const/4 v0, 0x2

    return v0

    .line 196
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_2

    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_2

    .line 198
    const/4 v0, 0x3

    return v0

    .line 199
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-ne v0, v1, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_3

    .line 201
    const/4 v0, 0x4

    return v0

    .line 203
    :cond_3
    const/4 v0, -0x1

    return v0
.end method

.method public static blacklist invertDockSide(I)I
    .locals 1
    .param p0, "dockSide"    # I

    .line 157
    packed-switch p0, :pswitch_data_0

    .line 167
    const/4 v0, -0x1

    return v0

    .line 165
    :pswitch_0
    const/4 v0, 0x2

    return v0

    .line 163
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 161
    :pswitch_2
    const/4 v0, 0x4

    return v0

    .line 159
    :pswitch_3
    const/4 v0, 0x3

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static blacklist isHorizontalDivision(I)Z
    .locals 1
    .param p0, "dockSide"    # I

    .line 207
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static blacklist sanitizeStackBounds(Landroid/graphics/Rect;Z)V
    .locals 2
    .param p0, "bounds"    # Landroid/graphics/Rect;
    .param p1, "topLeft"    # Z

    .line 115
    if-eqz p1, :cond_1

    .line 116
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-lt v0, v1, :cond_0

    .line 117
    iget v0, p0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 119
    :cond_0
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    if-lt v0, v1, :cond_3

    .line 120
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 123
    :cond_1
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-gt v0, v1, :cond_2

    .line 124
    iget v0, p0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 126
    :cond_2
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Landroid/graphics/Rect;->top:I

    if-gt v0, v1, :cond_3

    .line 127
    iget v0, p0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 130
    :cond_3
    :goto_0
    return-void
.end method
