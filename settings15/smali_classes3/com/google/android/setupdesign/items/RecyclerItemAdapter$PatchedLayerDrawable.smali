.class Lcom/google/android/setupdesign/items/RecyclerItemAdapter$PatchedLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# virtual methods
.method public final getPadding(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-nez p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->top:I

    if-nez p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->right:I

    if-nez p0, :cond_0

    iget p0, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
