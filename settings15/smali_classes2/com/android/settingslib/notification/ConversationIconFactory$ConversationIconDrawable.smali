.class public final Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# instance fields
.field public mBadgeIcon:Landroid/graphics/drawable/Drawable;

.field public mBaseIcon:Landroid/graphics/drawable/Drawable;

.field public mIconSize:I

.field public mPaddingPaint:Landroid/graphics/Paint;

.field public mRingPaint:Landroid/graphics/Paint;

.field public mShowRing:Z


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42600000    # 56.0f

    div-float/2addr v0, v1

    sget v1, Lcom/android/settingslib/notification/ConversationIconFactory;->RING_STROKE_WIDTH:F

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x42500000    # 52.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    const/high16 v3, 0x42200000    # 40.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x42380000    # 46.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mPaddingPaint:Landroid/graphics/Paint;

    int-to-float v1, v1

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget v5, Lcom/android/settingslib/notification/ConversationIconFactory;->CIRCLE_RADIUS:F

    mul-float/2addr v5, v0

    float-to-int v0, v5

    int-to-float v0, v0

    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBaseIcon:Landroid/graphics/drawable/Drawable;

    const-string v6, "ConversationIconFactory"

    if-eqz v5, :cond_0

    const/4 v7, 0x0

    invoke-virtual {v5, v7, v7, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBaseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_0
    const-string v5, "ConversationIconDrawable has null base icon"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_1

    int-to-float v5, v4

    iget-object v6, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mPaddingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v5, v0, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v5, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mBadgeIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    const-string v2, "ConversationIconDrawable has null badge icon"

    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-boolean v2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mShowRing:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    int-to-float v1, v4

    iget-object p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mRingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mIconSize:I

    return p0
.end method

.method public final getIntrinsicWidth()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/notification/ConversationIconFactory$ConversationIconDrawable;->mIconSize:I

    return p0
.end method

.method public final getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final setAlpha(I)V
    .locals 0

    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
